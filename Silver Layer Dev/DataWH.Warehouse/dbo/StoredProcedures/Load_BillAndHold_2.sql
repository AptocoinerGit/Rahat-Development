--Select * from [DataWH].[gold].[Bill & Hold]
--EXEC Load_BillAndHold_2
--Truncate table [DataWH].[gold].[Bill & Hold]


--select * from [DataWH].[gold].[BHReport] where 

CREATE   PROCEDURE Load_BillAndHold_2
AS
BEGIN

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
                ELSE CONVERT(VARCHAR(10), d.last_date, 101)  -- MM/dd/yyyy format
            END AS invoicedDate,
            t.[BinCode-7] AS CustomerNo,
            t.[ItemNo-9] AS ItemNo,
            SUM(CAST(t.[Quantity-10] AS DECIMAL(38,2))) AS total_quantity
        FROM [DataWH].[dbo].[WarehouseEntry7312] t
        JOIN last_dates d
            ON t.[BinCode-7] = d.[BinCode-7]
           AND t.[ItemNo-9]  = d.[ItemNo-9]
        WHERE t.[LocationCode-5] = 'WC-BH'
        GROUP BY d.last_date, t.[BinCode-7], t.[ItemNo-9]
        HAVING SUM(CAST(t.[Quantity-10] AS DECIMAL(38,2))) > 0.02
    )
    --select * from BillHoldData;
    -- Create temp table with calculated Bill & Hold data

    SELECT 
        bhd.CustomerNo,
        bhd.ItemNo,
        bhd.total_quantity AS RemainingQty,
        bhd.invoicedDate AS InvoicedDate,
        i.[Description-3] AS ItemDescription,
        c.[Name-2] AS CustomerName,
        c.[SalespersonCode-29] AS SalesPersonCode,
        isnull(s.[Quantity-15],0) AS SalesQty
    INTO #BillHoldTemp
    FROM BillHoldData bhd
    LEFT JOIN [DataWH].[dbo].[Item27] i
         ON bhd.ItemNo = i.[No-1]
    LEFT JOIN [DataWH].[dbo].[Customer18] c
        ON bhd.CustomerNo = c.[No-1]
    LEFT JOIN [DataWH].[dbo].[SalesLine37] s
        ON bhd.ItemNo = s.[No-6]
        AND bhd.CustomerNo = s.[SelltoCustomerNo-2];


    -- INSERT new records
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
        t.CustomerNo,
        t.ItemNo,
        t.RemainingQty,
        t.InvoicedDate,
        t.ItemDescription,
        t.CustomerName,
        t.SalesPersonCode,
        t.SalesQty
    FROM #BillHoldTemp t
    LEFT JOIN [DataWH].[gold].[Bill & Hold] tgt
        ON tgt.CustomerNo = t.CustomerNo
       AND tgt.ItemNo     = t.ItemNo
    WHERE tgt.CustomerNo IS NULL
    And tgt.ItemNo IS NULL;

    ----------------------------------------------------------
    -- UPDATE changed records
    ----------------------------------------------------------

    UPDATE tgt
    SET 
        RemainingQty    = t.RemainingQty,
        InvoicedDate    = t.InvoicedDate,
        ItemDescription = t.ItemDescription,
        CustomerName    = t.CustomerName,
        SalesPersonCode = t.SalesPersonCode,
        SalesQty        = t.SalesQty
    FROM [DataWH].[gold].[Bill & Hold] tgt
    INNER JOIN #BillHoldTemp t
        ON tgt.CustomerNo = t.CustomerNo
       AND tgt.ItemNo     = t.ItemNo
    WHERE
        ROUND(ISNULL(tgt.RemainingQty, 0),2) <> ROUND(ISNULL(t.RemainingQty, 0),2)
        OR ISNULL(tgt.InvoicedDate, '') <> ISNULL(t.InvoicedDate, '')
        OR ISNULL(tgt.ItemDescription, '') <> ISNULL(t.ItemDescription, '')
        OR ISNULL(tgt.CustomerName, '') <> ISNULL(t.CustomerName, '')
        OR ISNULL(tgt.SalesPersonCode, '') <> ISNULL(t.SalesPersonCode, '')
        OR ROUND(ISNULL(tgt.SalesQty, 0),2) <> ROUND(ISNULL(t.SalesQty, 0),2);

    ----------------------------------------------------------
    -- DELETE records that no longer exist in source
    ----------------------------------------------------------
    DELETE tgt
    FROM [DataWH].[gold].[Bill & Hold] tgt
    WHERE NOT EXISTS (
        SELECT 1
        FROM #BillHoldTemp t
        WHERE tgt.CustomerNo = t.CustomerNo
          AND tgt.ItemNo     = t.ItemNo
    );

    -- Clean up temp table
    DROP TABLE IF EXISTS #BillHoldTemp;

END;