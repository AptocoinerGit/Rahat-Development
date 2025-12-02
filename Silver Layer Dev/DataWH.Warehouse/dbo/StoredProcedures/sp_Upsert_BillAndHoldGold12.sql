--Select * from [DataWH].[gold].[Bill & Hold]
--EXEC sp_Upsert_BillAndHoldGold12
--Truncate table [DataWH].[gold].[Bill & Hold]


CREATE   PROCEDURE sp_Upsert_BillAndHoldGold12
AS
BEGIN
    -----------------------------------------------------------
    -- 1. Build the SOURCE Bill & Hold data (Filter WC-BH)
    -----------------------------------------------------------

    SELECT 
        [BinCode-7] AS customerNo,
        [ItemNo-9] AS itemNo,
        MAX([RegisteringDate-4]) AS last_date
    INTO #LastDates
    FROM [DataWH].[dbo].WarehouseEntry7312
    WHERE [EntryType-55] = 'Positive Adjmt.'
      --AND [LocationCode-5] = 'WC-BH'         
    GROUP BY [BinCode-7], [ItemNo-9];


    SELECT
        T.[BinCode-7] AS customerNo,
        T.[ItemNo-9] AS itemNo,
        SUM(CAST(T.[Quantity-10] AS DECIMAL(38,2))) AS RemainingQty,
        CASE 
            WHEN D.last_date < DATEADD(MONTH, -6, CAST(GETDATE() AS DATE))
                THEN '> 6 months'
            ELSE CONVERT(VARCHAR(10), D.last_date, 101)
        END AS InvoicedDate
    INTO #BH
    FROM [DataWH].[dbo].WarehouseEntry7312 T
    INNER JOIN #LastDates D 
        ON T.[BinCode-7] = D.customerNo
       AND T.[ItemNo-9] = D.itemNo
    --WHERE T.[LocationCode-5] = 'WC-BH'        
    GROUP BY D.last_date, T.[BinCode-7], T.[ItemNo-9]
    HAVING SUM(CAST(T.[Quantity-10] AS DECIMAL(38,2))) > 0.02;


    -----------------------------------------------------------
    -- 2. Item Master
    -----------------------------------------------------------

    SELECT 
        [No-1] AS itemNo,
        [Description-3] AS ItemDescription
    INTO #Item
    FROM [DataWH].[dbo].Item27;


    -----------------------------------------------------------
    -- 3. Customer Master
    -----------------------------------------------------------

    SELECT
        [No-1] AS customerNo,
        [Name-2] AS customerName,
        [SalespersonCode-29] AS SalesPersonCode
    INTO #Customer
    FROM [DataWH].[dbo].Customer18;


    -----------------------------------------------------------
    -- 4. Sales (WC-BH only)
    -----------------------------------------------------------

    SELECT
        [SelltoCustomerNo-2] AS CustomerNo,
        [No-6] AS itemNo,
        SUM([Quantity-15]) AS SalesQty
    INTO #Sales
    FROM [DataWH].[dbo].SalesLine37
    WHERE [LocationCode-7] = 'WC-BH'
    GROUP BY [SelltoCustomerNo-2], [No-6];


    -----------------------------------------------------------
    -- 5. Build FINAL SOURCE for comparison
    -----------------------------------------------------------

    SELECT  
        B.CustomerNo,
        B.ItemNo,
        B.RemainingQty,
        B.InvoicedDate,
        I.ItemDescription,
        C.CustomerName,
        C.SalesPersonCode,
        ISNULL(S.SalesQty, 0) AS SalesQty
    INTO #SourceBH
    FROM #BH B
    LEFT JOIN #Item I ON B.itemNo = I.itemNo
    LEFT JOIN #Customer C ON B.CustomerNo = C.CustomerNo
    LEFT JOIN #Sales S 
        ON B.CustomerNo = S.CustomerNo
       AND B.ItemNo = S.ItemNo;


    -----------------------------------------------------------
    -- 6. INSERT NEW RECORDS
    -----------------------------------------------------------

    INSERT INTO [DataWH].[gold].[Bill & Hold] (
        CustomerNo, ItemNo, RemainingQty, InvoicedDate,
        ItemDescription, CustomerName, SalesPersonCode, SalesQty
    )
    SELECT
        src.*
    FROM #SourceBH src
    LEFT JOIN [DataWH].[gold].[Bill & Hold] tgt
        ON src.CustomerNo = tgt.CustomerNo
       AND src.ItemNo = tgt.ItemNo
    WHERE tgt.CustomerNo IS NULL AND tgt.ItemNo IS NULL;


    -----------------------------------------------------------
    -- 7. UPDATE CHANGED RECORDS
    -----------------------------------------------------------

    UPDATE tgt
    SET 
        tgt.RemainingQty     = src.RemainingQty,
        tgt.InvoicedDate     = src.InvoicedDate,
        tgt.ItemDescription  = src.ItemDescription,
        tgt.CustomerName     = src.CustomerName,
        tgt.SalesPersonCode  = src.SalesPersonCode,
        tgt.SalesQty         = src.SalesQty
    FROM [DataWH].[gold].[Bill & Hold] tgt
    INNER JOIN #SourceBH src
        ON src.CustomerNo = tgt.CustomerNo
       AND src.ItemNo = tgt.ItemNo
    WHERE 
        tgt.RemainingQty     <> src.RemainingQty OR
        tgt.InvoicedDate     <> src.InvoicedDate OR
        tgt.ItemDescription  <> src.ItemDescription OR
        tgt.CustomerName     <> src.CustomerName OR
        tgt.SalesPersonCode  <> src.SalesPersonCode OR
        tgt.SalesQty         <> src.SalesQty;


    -----------------------------------------------------------
    -- 8. DELETE ROWS NOT PRESENT IN SOURCE
    -----------------------------------------------------------

    DELETE tgt
    FROM [DataWH].[gold].[Bill & Hold] tgt
    LEFT JOIN #SourceBH src
        ON src.CustomerNo = tgt.CustomerNo
       AND src.ItemNo = tgt.ItemNo
    WHERE src.CustomerNo IS NULL AND tgt.ItemNo IS NULL;


    -----------------------------------------------------------
    -- 9. Cleanup
    -----------------------------------------------------------

    DROP TABLE IF EXISTS #LastDates;
    DROP TABLE IF EXISTS #BH;
    DROP TABLE IF EXISTS #Item;
    DROP TABLE IF EXISTS #Customer;
    DROP TABLE IF EXISTS #Sales;
    DROP TABLE IF EXISTS #SourceBH;

END;