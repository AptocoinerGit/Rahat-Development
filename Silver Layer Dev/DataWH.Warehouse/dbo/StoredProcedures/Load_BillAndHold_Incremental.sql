--Select * from [DataWH].[gold].[Bill & Hold]
--EXEC Load_BillAndHold_Incremental
--Truncate table [DataWH].[gold].[Bill & Hold]


CREATE   PROCEDURE Load_BillAndHold_Incremental
AS
BEGIN

     WITH SourceData AS (
        SELECT 
            w.[BinCode-7]        AS CustomerNo,
            w.[ItemNo-9]         AS ItemNo,
            w.[Quantity-10]      AS RemainingQty,
            w.[RegisteringDate-4] AS InvoicedDate,
            i.[Description-3]    AS ItemDescription,
            c.[Name-2]           AS CustomerName,
            c.[SalespersonCode-29] AS SalesPersonCode,
            s.[Quantity-15]      AS SalesQty
        FROM [DataWH].[dbo].[WarehouseEntry7312] w
        LEFT JOIN [DataWH].[dbo].[Item27] i
            ON w.[ItemNo-9] = i.[No-1]
        LEFT JOIN [DataWH].[dbo].[Customer18] c
            ON w.[BinCode-7] = c.[No-1]
        LEFT JOIN [DataWH].[dbo].[SalesLine37] s
            ON w.[ItemNo-9] = s.[No-6]
           AND w.[BinCode-7] = s.[SelltoCustomerNo-2]
        )

    MERGE gold.[Bill & Hold] AS tgt
    USING SourceData AS src
        ON tgt.CustomerNo = src.CustomerNo
       AND tgt.ItemNo     = src.ItemNo
    WHEN MATCHED AND (
            ISNULL(tgt.RemainingQty, 0)      <> ISNULL(src.RemainingQty, 0)
         OR ISNULL(tgt.InvoicedDate, '')     <> ISNULL(src.InvoicedDate, '')
         OR ISNULL(tgt.ItemDescription, '')  <> ISNULL(src.ItemDescription, '')
         OR ISNULL(tgt.CustomerName, '')     <> ISNULL(src.CustomerName, '')
         OR ISNULL(tgt.SalesPersonCode, '')  <> ISNULL(src.SalesPersonCode, '')
         OR ISNULL(tgt.SalesQty, 0)          <> ISNULL(src.SalesQty, 0)
    )
        THEN UPDATE SET 
            tgt.RemainingQty     = src.RemainingQty,
            tgt.InvoicedDate     = src.InvoicedDate,
            tgt.ItemDescription  = src.ItemDescription,
            tgt.CustomerName     = src.CustomerName,
            tgt.SalesPersonCode  = src.SalesPersonCode,
            tgt.SalesQty         = src.SalesQty

    WHEN NOT MATCHED BY TARGET
        THEN INSERT (CustomerNo, ItemNo, RemainingQty, InvoicedDate, 
                     ItemDescription, CustomerName, SalesPersonCode, SalesQty)
             VALUES (src.CustomerNo, src.ItemNo, src.RemainingQty, src.InvoicedDate,
                     src.ItemDescription, src.CustomerName, src.SalesPersonCode, src.SalesQty)

    WHEN NOT MATCHED BY SOURCE
        THEN DELETE;

END