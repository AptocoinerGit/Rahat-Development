--Select * from [DataWH].[gold].[Bill & Hold]
--EXEC Load_BillAndHold_3
--Truncate table [DataWH].[gold].[Bill & Hold]


CREATE   PROCEDURE Load_BillAndHold_3
AS
BEGIN

    ----------------------------------------------------------
    -- STEP 1: Compute Bill & Hold quantities (Cell 3)
    ----------------------------------------------------------
    ;WITH last_dates AS (
        SELECT
            [BinCode-7],
            [ItemNo-9],
            MAX([RegisteringDate-4]) AS last_date
        FROM [DataWH].[dbo].[WarehouseEntry7312]
        WHERE [EntryType-55] = 'Positive Adjmt.'
        GROUP BY [BinCode-7], [ItemNo-9]
    ),
    BillHoldData AS (
        SELECT
            CASE 
                WHEN d.last_date < DATEADD(MONTH, -6, GETDATE()) 
                    THEN '> 6 months'
                ELSE FORMAT(d.last_date, 'MM/dd/yyyy')
            END AS invoicedDate,
            t.[BinCode-7] AS CustomerNo,
            t.[ItemNo-9] AS ItemNo,
            SUM(CAST(t.[Quantity-10] AS DECIMAL(38,2))) AS remainingQty
        FROM [DataWH].[dbo].[WarehouseEntry7312] t
        JOIN last_dates d
            ON t.[BinCode-7] = d.[BinCode-7]
           AND t.[ItemNo-9] = d.[ItemNo-9]
        GROUP BY d.last_date, t.[BinCode-7], t.[ItemNo-9]
        HAVING SUM(CAST(t.[Quantity-10] AS DECIMAL(38,2))) > 0.02
    )

    ----------------------------------------------------------
    -- STEP 2: Enrich with Item, Customer, Sales Qty (Cell 4)
    ----------------------------------------------------------
    , EnrichedBH AS (
        SELECT
            bh.CustomerNo,
            bh.ItemNo,
            bh.remainingQty,
            bh.invoicedDate,
            i.[Description-3] AS itemDescription,
            c.[Name-2] AS customerName,
            c.[SalespersonCode-29] AS salespersonCode,
            sl.salesQty
        FROM BillHoldData bh
        LEFT JOIN [DataWH].[dbo].[Item27] i
            ON bh.ItemNo = i.[No-1]
        LEFT JOIN [DataWH].[dbo].[Customer18] c
            ON bh.CustomerNo = c.[No-1]
        LEFT JOIN (
            SELECT 
                [SelltoCustomerNo-2],
                [No-6],
                SUM([Quantity-15]) AS salesQty
            FROM [DataWH].[dbo].[SalesLine37]
            WHERE [LocationCode-7] = 'WC-BH'
            GROUP BY [SelltoCustomerNo-2], [No-6]
        ) sl
            ON bh.CustomerNo = sl.[SelltoCustomerNo-2]
           AND bh.ItemNo = sl.[No-6]
    )

    ----------------------------------------------------------
    -- STEP 3: INSERT new fact rows (Incremental)
    ----------------------------------------------------------
    INSERT INTO [DataWH].[gold].[Bill & Hold] (
        CustomerNo,
        ItemNo,
        RemainingQty,
        InvoicedDate,
        ItemDescription,
        CustomerName,
        SalesPersonCode,
        SalesQty
    )
    SELECT 
        e.CustomerNo,
        e.ItemNo,
        e.remainingQty,
        TRY_CONVERT(DATE, NULLIF(e.invoicedDate, '')),
        e.itemDescription,
        e.customerName,
        e.salespersonCode,
        e.salesQty
    FROM EnrichedBH e
    LEFT JOIN [DataWH].[gold].[Bill & Hold] tgt
        ON tgt.CustomerNo = e.CustomerNo
       AND tgt.ItemNo = e.ItemNo
    WHERE tgt.CustomerNo IS NULL;

    ----------------------------------------------------------
    -- STEP 4: UPDATE modified rows
    ----------------------------------------------------------
    UPDATE tgt
    SET 
        RemainingQty = e.remainingQty,
        InvoicedDate = TRY_CONVERT(DATE, NULLIF(e.invoicedDate, '')),
        ItemDescription = e.itemDescription,
        CustomerName = e.customerName,
        SalesPersonCode = e.salespersonCode,
        SalesQty = e.salesQty
    FROM [DataWH].[gold].[Bill & Hold] tgt
    JOIN EnrichedBH e
        ON tgt.CustomerNo = e.CustomerNo
       AND tgt.ItemNo = e.ItemNo
    WHERE 
        ISNULL(tgt.RemainingQty, 0)          <> ISNULL(e.remainingQty, 0)
     OR ISNULL(tgt.ItemDescription, '')      <> ISNULL(e.itemDescription, '')
     OR ISNULL(tgt.CustomerName, '')         <> ISNULL(e.customerName, '')
     OR ISNULL(tgt.SalesPersonCode, '')      <> ISNULL(e.salespersonCode, '')
     OR ISNULL(tgt.SalesQty, 0)              <> ISNULL(e.salesQty, 0)
     OR ISNULL(tgt.InvoicedDate, '1900-01-01') 
                <> TRY_CONVERT(DATE, NULLIF(e.invoicedDate, ''));

    ----------------------------------------------------------
    -- STEP 5: DELETE old rows missing from source
    ----------------------------------------------------------
    DELETE tgt
    FROM [DataWH].[gold].[Bill & Hold] tgt
    WHERE NOT EXISTS (
        SELECT 1
        FROM EnrichedBH e
        WHERE e.CustomerNo = tgt.CustomerNo
          AND e.ItemNo     = tgt.ItemNo
    );

END;