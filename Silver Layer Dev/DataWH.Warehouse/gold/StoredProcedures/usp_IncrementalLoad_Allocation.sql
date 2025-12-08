--Exec gold.usp_IncrementalLoad_Allocation
--select * from gold.Allocation
--Truncate table gold.Allocation

CREATE   PROCEDURE gold.usp_IncrementalLoad_Allocation
AS
BEGIN

    -- Step 1: Insert new records
    INSERT INTO gold.Allocation (
        based_on_criteria,
        allocation_description,
        expiration_date,
        item_no,
        item_description,
        remainingQty,
        sales_quantity,
        SalespersonCode
    )
    SELECT
        a.[BasedOnCriteria-40]                                   AS based_on_criteria,
        a.[Description-10]                                       AS allocation_description,
        TRY_CONVERT(date, l.[ExpirationDate-110])                AS expiration_date,  
        l.[ItemNo-20]                                            AS item_no,
        i.[Description-3]                                        AS item_description,
        CAST(l.[RemainingQtyBase-70]   AS decimal(18,2))         AS remainingQty,
        CAST(sle.[Quantity-30]         AS decimal(18,2))         AS sales_quantity,
        COALESCE(c.[SalespersonCode-29], a.[BasedOnCriteria-40]) AS SalespersonCode

    FROM [dbo].[WTIAAllocationLedgerEntry90103]    AS l
    LEFT JOIN [dbo].[Item27]                       AS i
           ON l.[ItemNo-20] = i.[No-1]
    LEFT JOIN [dbo].[WTIAAllocation90101]          AS a
           ON l.[AllocationCode-30] = a.[Code-1]
    LEFT JOIN [dbo].[Customer18]                   AS c
           ON a.[BasedOnCriteria-40] = c.[No-1]
    LEFT JOIN [dbo].[WTIAAllocSalesLineEntry90107] AS sle
           ON l.[AllocationCode-30] = sle.[AllocationCode-10]
          AND l.[ItemNo-20]         = sle.[ItemNo-20]
    --WHERE l.[Open-90] = 1  ;

    -- Step 2: Update changed records
    UPDATE t
    SET
        t.based_on_criteria           = a.[BasedOnCriteria-40],
        t.allocation_description      = a.[Description-10],
        t.expiration_date             = TRY_CONVERT(date, l.[ExpirationDate-110]),
        t.item_no                     = l.[ItemNo-20],
        t.item_description            = i.[Description-3],
        t.remainingQty                = CAST(l.[RemainingQtyBase-70] AS decimal(18,2)),
        t.sales_quantity              = CAST(sle.[Quantity-30] AS decimal(18,2)),
        t.SalespersonCode             = COALESCE(c.[SalespersonCode-29], a.[BasedOnCriteria-40])
    FROM gold.Allocation t
    JOIN [dbo].[WTIAAllocationLedgerEntry90103] AS l
      ON t.item_no = l.[ItemNo-20]
    JOIN [dbo].[Item27]                         AS i
      ON l.[ItemNo-20] = i.[No-1]
    JOIN [dbo].[WTIAAllocation90101]            AS a
      ON l.[AllocationCode-30] = a.[Code-1]
    JOIN [dbo].[Customer18]                     AS c
      ON a.[BasedOnCriteria-40] = c.[No-1]
    JOIN [dbo].[WTIAAllocSalesLineEntry90107]   AS sle
      ON l.[AllocationCode-30] = sle.[AllocationCode-10]
      AND l.[ItemNo-20]        = sle.[ItemNo-20]
    WHERE l.[Open-90] = 1 
      AND (
        ISNULL(t.based_on_criteria, '')         <> ISNULL(a.[BasedOnCriteria-40], '') OR
        ISNULL(t.allocation_description, '')    <> ISNULL(a.[Description-10], '') OR
        ISNULL(t.expiration_date, '1900-01-01') <> ISNULL(TRY_CONVERT(date, l.[ExpirationDate-110]), '1900-01-01') OR
        ISNULL(t.item_no, '')                   <> ISNULL(l.[ItemNo-20], '') OR
        ISNULL(t.item_description, '')          <> ISNULL(i.[Description-3], '') OR
        ROUND(ISNULL(t.remainingQty, -1), 2)    <> ROUND(ISNULL(CAST(l.[RemainingQtyBase-70] AS decimal(18,2)), -1), 2) OR
        ROUND(ISNULL(t.sales_quantity, -1), 2)  <> ROUND(ISNULL(CAST(sle.[Quantity-30] AS decimal(18,2)), -1), 2) OR
        ISNULL(t.SalespersonCode, '')           <> ISNULL(COALESCE(c.[SalespersonCode-29], a.[BasedOnCriteria-40]), '')
      );

END;