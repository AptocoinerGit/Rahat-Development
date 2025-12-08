CREATE   PROCEDURE sp_Upsert_BillAndHoldGold
AS
BEGIN
    

    
    -- 1. Build the SOURCE Bill & Hold data
    


    SELECT 
        [BinCode-7] AS customerNo,
        [ItemNo-9] AS itemNo,
        MAX([RegisteringDate-4]) AS last_date
    INTO #LastDates
    FROM [DataWH].[dbo].WarehouseEntry7312
    WHERE [EntryType-55] = 'Positive Adjmt.'
    GROUP BY [BinCode-7], [ItemNo-9];


   

    SELECT
        T.[BinCode-7] AS customerNo,
        T.[ItemNo-9] AS itemNo,
        SUM(CAST(T.[Quantity-10] AS DECIMAL(38,2))) AS remainingQty,
        CASE 
            WHEN D.last_date < DATEADD(MONTH, -6, CAST(GETDATE() AS DATE))
                THEN '> 6 months'
            ELSE CONVERT(VARCHAR(10), D.last_date, 101)
        END AS invoicedDate
    INTO #BH
    FROM [DataWH].[dbo].WarehouseEntry7312 T
    INNER JOIN #LastDates D 
        ON T.[BinCode-7] = D.customerNo
       AND T.[ItemNo-9] = D.itemNo
    GROUP BY D.last_date, T.[BinCode-7], T.[ItemNo-9]
    HAVING SUM(CAST(T.[Quantity-10] AS DECIMAL(38,2))) > 0.02;


    -- 2. Add Item master
    

    SELECT 
        [No-1] AS itemNo,
        [Description-3] AS item_description
    INTO #Item
    FROM [DataWH].[dbo].Item27;


    
    -- 3. Add Customer master
 

    SELECT
        [No-1] AS customerNo,
        [Name-2] AS customerName,
        [SalespersonCode-29] AS salespersonCode
    INTO #Customer
    FROM [DataWH].[dbo].Customer18;


    -- 4. Sales (WC-BH)
    

    SELECT
        [SelltoCustomerNo-2] AS customerNo,
        [No-6] AS itemNo,
        SUM([Quantity-15]) AS salesQty
    INTO #Sales
    FROM [DataWH].[dbo].SalesLine37
    WHERE [LocationCode-7] = 'WC-BH'
    GROUP BY [SelltoCustomerNo-2], [No-6];


    
    -- 5. Build FINAL SOURCE for comparison
    

    SELECT  
        B.customerNo,
        B.itemNo,
        B.remainingQty,
        B.invoicedDate,
        I.item_description,
        C.customerName,
        C.salespersonCode,
        ISNULL(S.salesQty, 0) AS salesQty
    INTO #SourceBH
    FROM #BH B
    LEFT JOIN #Item I ON B.itemNo = I.itemNo
    LEFT JOIN #Customer C ON B.customerNo = C.customerNo
    LEFT JOIN #Sales S 
        ON B.customerNo = S.customerNo
       AND B.itemNo = S.itemNo;


    
    -- 6. INSERT NEW RECORDS 
    
    INSERT INTO DataWH.gold.BHReport (
        customerNo, itemNo, remainingQty, invoicedDate,
        item_description, customerName, salespersonCode, salesQty, InsertDate
    )
    SELECT
        src.*
        ,GETDATE()
    FROM #SourceBH src
    LEFT JOIN DataWH.gold.BHReport tgt
        ON src.customerNo = tgt.customerNo
       AND src.itemNo = tgt.itemNo
    WHERE tgt.customerNo IS NULL and tgt.itemNo IS NULL  ;  -- NEW rows only


    
    -- 7. UPDATE CHANGED RECORDS (overwrite)
    
    UPDATE tgt
    SET 
        tgt.remainingQty     = src.remainingQty,
        tgt.invoicedDate     = src.invoicedDate,
        tgt.item_description = src.item_description,
        tgt.customerName     = src.customerName,
        tgt.salespersonCode  = src.salespersonCode,
        tgt.salesQty         = src.salesQty,
        tgt.UpdateDate        = GETDATE()
    FROM DataWH.gold.BHReport tgt
    INNER JOIN #SourceBH src
        ON src.customerNo = tgt.customerNo
       AND src.itemNo = tgt.itemNo
    WHERE 
        tgt.remainingQty    <> src.remainingQty OR
        tgt.invoicedDate    <> src.invoicedDate OR
        tgt.item_description<> src.item_description OR
        tgt.customerName    <> src.customerName OR
        tgt.salespersonCode <> src.salespersonCode OR
        tgt.salesQty        <> src.salesQty;


    
    -- 8. DELETE rows no present in source
    
    DELETE tgt
    FROM DataWH.gold.BHReport tgt
    LEFT JOIN #SourceBH src
        ON src.customerNo = tgt.customerNo
       AND src.itemNo = tgt.itemNo
    WHERE src.customerNo IS NULL and tgt.itemNo IS NULL;


    
    -- 9. Cleanup
    
    DROP TABLE IF EXISTS #LastDates;
    DROP TABLE IF EXISTS #BH;
    DROP TABLE IF EXISTS #Item;
    DROP TABLE IF EXISTS #Customer;
    DROP TABLE IF EXISTS #Sales;
    DROP TABLE IF EXISTS #SourceBH;

END;