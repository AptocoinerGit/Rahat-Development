--exec sp_Upsert_BillAndHoldGold
--select * from DataWH.gold.BHReport_AuditLog
--TRUNCATE table [DataWH].[gold].[BHReport]




CREATE   PROCEDURE sp_Upsert_BillAndHoldGold
AS
BEGIN
    

    ---------------------------------------------------------------
    -- AUDIT VARIABLES
    ---------------------------------------------------------------
    DECLARE @StartTime DATETIME = GETDATE();
    DECLARE @InsertCount INT = 0;
    DECLARE @UpdateCount INT = 0;
    DECLARE @DeleteCount INT = 0;
    DECLARE @TotalProcessed INT = 0;
    DECLARE @ErrorMessage VARCHAR(MAX) = NULL;

    BEGIN TRY

        ---------------------------------------------------------------
        -- 1. Build LastDates
        ---------------------------------------------------------------
        SELECT 
            [BinCode-7] AS customerNo,
            [ItemNo-9] AS itemNo,
            MAX([RegisteringDate-4]) AS last_date
        INTO #LastDates
        FROM [DataWH].[dbo].WarehouseEntry7312
        WHERE [EntryType-55] = 'Positive Adjmt.'
        GROUP BY [BinCode-7], [ItemNo-9];


        ---------------------------------------------------------------
        -- 2. Build BH Inventory Table
        ---------------------------------------------------------------
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
           WHERE T.[LocationCode-5] = 'WC-BH'
        GROUP BY D.last_date, T.[BinCode-7], T.[ItemNo-9]
        HAVING SUM(CAST(T.[Quantity-10] AS DECIMAL(38,2))) > 0.02;



        ---------------------------------------------------------------
        -- 5. Sales (WC-BH)
        ---------------------------------------------------------------
        SELECT
            [SelltoCustomerNo-2] AS customerNo,
            [No-6] AS itemNo,
            ISNULL(SUM([Quantity-15]),0) AS salesQty
        INTO #Sales
        FROM [DataWH].[dbo].SalesLine37
        WHERE [LocationCode-7] = 'WC-BH'
        GROUP BY [SelltoCustomerNo-2], [No-6];


        
        ---------------------------------------------------------------
        -- 3. Item master
        ---------------------------------------------------------------
        SELECT 
            [No-1] AS itemNo,
            [Description-3] AS item_description
        INTO #Item
        FROM [DataWH].[dbo].Item27;


        ---------------------------------------------------------------
        -- 4. Customer master
        ---------------------------------------------------------------
        SELECT
            [No-1] AS customerNo,
            [Name-2] AS customerName,
            [SalespersonCode-29] AS salespersonCode
        INTO #Customer
        FROM [DataWH].[dbo].Customer18;





        ---------------------------------------------------------------
        -- 6. Build Final Source Dataset
        ---------------------------------------------------------------
        SELECT  
            B.customerNo,
            B.itemNo,
            B.remainingQty,
            B.invoicedDate,
            I.item_description,
            C.customerName,
            C.salespersonCode,
            S.salesQty AS salesQty
        INTO #SourceBH
        FROM #BH B
        LEFT JOIN #Item I ON B.itemNo = I.itemNo
        LEFT JOIN #Customer C ON B.customerNo = C.customerNo
        LEFT JOIN #Sales S 
            ON B.customerNo = S.customerNo
           AND B.itemNo = S.itemNo;


        SET @TotalProcessed = (SELECT COUNT(*) FROM #SourceBH);


        ---------------------------------------------------------------
        -- 7. INSERT NEW RECORDS
        ---------------------------------------------------------------
        INSERT INTO DataWH.gold.BHReport (
            customerNo, itemNo, remainingQty, invoicedDate,
            item_description, customerName, salespersonCode, salesQty, InsertDate
        )
        SELECT src.*, GETDATE()
        FROM #SourceBH src
        LEFT JOIN DataWH.gold.BHReport tgt
            ON src.customerNo = tgt.customerNo
           AND src.itemNo = tgt.itemNo
        WHERE tgt.customerNo IS NULL 
          AND tgt.itemNo IS NULL;

        SET @InsertCount = @@ROWCOUNT;


        ---------------------------------------------------------------
        -- 8. UPDATE CHANGED RECORDS
        ---------------------------------------------------------------
        UPDATE tgt
        SET 
            tgt.remainingQty     = src.remainingQty,
            tgt.invoicedDate     = src.invoicedDate,
            tgt.item_description = src.item_description,
            tgt.customerName     = src.customerName,
            tgt.salespersonCode  = src.salespersonCode,
            tgt.salesQty         = src.salesQty,
            tgt.UpdateDate       = GETDATE()
        FROM DataWH.gold.BHReport tgt
        INNER JOIN #SourceBH src
            ON src.customerNo = tgt.customerNo
           AND src.itemNo = tgt.itemNo
        WHERE 
           ROUND(tgt.remainingQty, 2) <> ROUND(src.remainingQty, 2) OR
            tgt.invoicedDate    <> src.invoicedDate OR
            tgt.item_description<> src.item_description OR
            tgt.customerName    <> src.customerName OR
            tgt.salespersonCode <> src.salespersonCode OR
            ROUND(tgt.salesQty, 2) <> ROUND(src.salesQty, 2);

        SET @UpdateCount = @@ROWCOUNT;


        ---------------------------------------------------------------
        -- 9. DELETE RECORDS NOT PRESENT ANYMORE
        ---------------------------------------------------------------
        DELETE tgt
        FROM DataWH.gold.BHReport tgt
        LEFT JOIN #SourceBH src
            ON src.customerNo = tgt.customerNo
           AND src.itemNo = tgt.itemNo
        WHERE src.customerNo IS NULL and src.itemNo is null;

        SET @DeleteCount = @@ROWCOUNT;


        ---------------------------------------------------------------
        -- 10. AUDIT LOG - SUCCESS
        ---------------------------------------------------------------
        INSERT INTO DataWH.gold.BHReport_AuditLog
        (
            RunStartTime, RunEndTime, Status,  
            InsertCount, UpdateCount, DeleteCount, TotalProcessed
        )
        VALUES
        (
            @StartTime, GETDATE(), 'SUCCESS',
            @InsertCount, @UpdateCount, @DeleteCount, @TotalProcessed
        );


    END TRY

    BEGIN CATCH

        SET @ErrorMessage = ERROR_MESSAGE();

        INSERT INTO DataWH.gold.BHReport_AuditLog
        (
            RunStartTime, RunEndTime, Status,  
            InsertCount, UpdateCount, DeleteCount, TotalProcessed, ErrorMessage
        )
        VALUES
        (
            @StartTime, GETDATE(), 'FAILED',
            @InsertCount, @UpdateCount, @DeleteCount, @TotalProcessed,
            @ErrorMessage
        );

        THROW;

    END CATCH;


    ---------------------------------------------------------------
    -- 11. Cleanup Temp Tables
    ---------------------------------------------------------------
    DROP TABLE IF EXISTS #LastDates;
    DROP TABLE IF EXISTS #BH;
    DROP TABLE IF EXISTS #Item;
    DROP TABLE IF EXISTS #Customer;
    DROP TABLE IF EXISTS #Sales;
    DROP TABLE IF EXISTS #SourceBH;

END;