--EXEC Get_BillHold_Data

CREATE   PROCEDURE Get_BillHold_Data
AS
BEGIN

    WITH last_dates AS (
        SELECT
            [BinCode-7],
            [ItemNo-9],
            MAX([RegisteringDate-4]) AS last_date
        FROM [DataWH].[dbo].[WarehouseEntry7312]
        WHERE [EntryType-55] = 'Positive Adjmt.'
        GROUP BY [BinCode-7], [ItemNo-9]
    )
    SELECT
        CASE 
            WHEN d.last_date < DATEADD(MONTH, -6, GETDATE()) 
                THEN '> 6 months'
            ELSE FORMAT(d.last_date, 'MM/dd/yyyy')
        END AS invoicedDate,
        t.[BinCode-7] AS CustomerNo,
        t.[ItemNo-9] AS ItemNo,
        SUM(CAST(t.[Quantity-10] AS DECIMAL(38,2))) AS total_quantity
    FROM [DataWH].[dbo].[WarehouseEntry7312] t
    JOIN last_dates d
        ON t.[BinCode-7] = d.[BinCode-7]
       AND t.[ItemNo-9]  = d.[ItemNo-9]
    -- Optional: enable this if Bill & Hold is at a specific location
    -- WHERE t.[LocationCode-5] = 'WC-BH'
    GROUP BY d.last_date, t.[BinCode-7], t.[ItemNo-9]
    HAVING SUM(CAST(t.[Quantity-10] AS DECIMAL(38,2))) > 0.02
    ORDER BY t.[BinCode-7], t.[ItemNo-9];

END