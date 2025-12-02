CREATE   PROCEDURE dbo.Load_BillHold_Data
AS
BEGIN

    ;WITH last_dates AS (
        SELECT
            [BinCode-7],
            [ItemNo-9],
            MAX([RegisteringDate-4]) AS last_date
        FROM Bronze_2.WarehouseEntry7312
        WHERE [EntryType-55] = 'Positive Adjmt.'
        GROUP BY [BinCode-7], [ItemNo-9]
    ),
    bh AS (
        SELECT
            CASE 
                WHEN d.last_date < DATEADD(MONTH, -6, GETDATE()) 
                    THEN '> 6 months'
                ELSE FORMAT(d.last_date, 'MM/dd/yyyy')
            END AS InvoicedDate,
            t.[BinCode-7] AS CustomerNo,
            t.[ItemNo-9] AS ItemNo,
            SUM(CAST(t.[Quantity-10] AS DECIMAL(18,2))) AS RemainingQty
        FROM Bronze_2.WarehouseEntry7312 t
        INNER JOIN last_dates d
            ON t.[BinCode-7] = d.[BinCode-7]
           AND t.[ItemNo-9]  = d.[ItemNo-9]
        GROUP BY d.last_date, t.[BinCode-7], t.[ItemNo-9]
        HAVING SUM(CAST(t.[Quantity-10] AS DECIMAL(18,2))) > 0.02
    )

    SELECT
        bh.CustomerNo,
        bh.ItemNo,
        bh.RemainingQty,
        bh.InvoicedDate,
        i.[Description-3]       AS ItemDescription,
        c.[Name-2]              AS CustomerName,
        c.[SalespersonCode-29]  AS SalesPersonCode,
        sl.[Quantity-15]        AS SalesQty
    FROM bh
    LEFT JOIN Bronze_2.Item27 i
        ON bh.ItemNo = i.[ItemNo-9]     -- match item code
    LEFT JOIN Bronze_2.Customer18 c
        ON bh.CustomerNo = c.[No-1]     -- match customer code
    LEFT JOIN Bronze_2.SalesLine37 sl
        ON bh.CustomerNo = sl.[SelltoCustomerNo-2]
       AND bh.ItemNo     = sl.[No-6] 
    ORDER BY bh.CustomerNo, bh.ItemNo;

END