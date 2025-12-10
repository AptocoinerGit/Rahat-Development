--Exec gold.usp_IncrementalLoad_Allocation
--select * from gold.Allocation
--Truncate table gold.Allocation

CREATE   PROCEDURE gold.usp_IncrementalLoad_Allocation
AS
BEGIN

-- temp table

    SELECT
        a.[BasedOnCriteria-40] AS based_on_criteria,
        a.[Description-10] AS allocation_description,
        TRY_CONVERT(date, l.[ExpirationDate-110]) AS expiration_date,
        l.[ItemNo-20] AS item_no,
        i.[Description-3] AS item_description,
        CAST(l.[RemainingQtyBase-70] AS decimal(18,2)) AS remainingQty,
        CAST(sle.[Quantity-30] AS decimal(18,2)) AS sales_quantity,
        COALESCE(c.[SalespersonCode-29], a.[BasedOnCriteria-40]) AS SalespersonCode,
        l.[systemId-2000000000] as ledgerentry_systemId,
        ISNULL(sle.[systemId-2000000000],'NA') as salesline_systemId
    INTO #AllocationTemp
    FROM [dbo].[WTIAAllocationLedgerEntry90103] l
    LEFT JOIN [dbo].[WTIAAllocation90101] a
           ON l.[AllocationCode-30] = a.[Code-1]
    LEFT JOIN [dbo].[Item27] i
           ON l.[ItemNo-20] = i.[No-1]
    LEFT JOIN [dbo].[Customer18] c
           ON a.[BasedOnCriteria-40] = c.[No-1]
    LEFT JOIN [dbo].[WTIAAllocSalesLineEntry90107] sle
           ON l.[AllocationCode-30] = sle.[AllocationCode-10]
          AND l.[ItemNo-20] = sle.[ItemNo-20]
    WHERE l.[Open-90] = 1;
    
-- Inserting

    INSERT INTO gold.Allocation (
     based_on_criteria, allocation_description, expiration_date,
        item_no, item_description, remainingQty, sales_quantity, SalespersonCode, salesline_systemId, ledgerentry_systemId
    )
    SELECT t.based_on_criteria, t.allocation_description, t.expiration_date,
        t.item_no, t.item_description, t.remainingQty, t.sales_quantity, t.SalespersonCode, t.salesline_systemId, t.ledgerentry_systemId

    FROM #AllocationTemp t
    LEFT JOIN gold.Allocation tgt
         ON tgt.ledgerentry_systemId = t.ledgerentry_systemId 
    AND tgt.salesline_systemId = t.salesline_systemId
    WHERE tgt.ledgerentry_systemId IS NULL; 

--Updating

    UPDATE tgt
    SET 
        tgt.based_on_criteria      = t.based_on_criteria,
        tgt.allocation_description = t.allocation_description,
        tgt.expiration_date        = t.expiration_date,
        tgt.item_no                = t.item_no,
        tgt.item_description       = t.item_description,
        tgt.remainingQty           = t.remainingQty,
        tgt.sales_quantity         = t.sales_quantity,
        tgt.SalespersonCode        = t.SalespersonCode
    FROM gold.Allocation tgt
    JOIN #AllocationTemp t
        ON tgt.ledgerentry_systemId = t.ledgerentry_systemId
        AND tgt.salesline_systemId = t.salesline_systemId
    WHERE
        ISNULL(tgt.based_on_criteria, '')            <> ISNULL(t.based_on_criteria, '')
        OR ISNULL(tgt.allocation_description, '')    <> ISNULL(t.allocation_description, '')
        OR ISNULL(tgt.expiration_date, '')           <> ISNULL(t.expiration_date, '')
        OR ISNULL(tgt.item_no, '')                   <> ISNULL(t.item_no, '')
        OR ISNULL(tgt.item_description, '')          <> ISNULL(t.item_description, '')
        OR ROUND(ISNULL(tgt.remainingQty, 0), 2)     <> ROUND(ISNULL(t.remainingQty, 0), 2)
        OR ROUND(ISNULL(tgt.sales_quantity, 0), 2)   <> ROUND(ISNULL(t.sales_quantity, 0), 2)
        OR ISNULL(tgt.SalespersonCode, '')           <> ISNULL(t.SalespersonCode, '');

--Deleteing

    DELETE tgt
    FROM gold.Allocation tgt
    LEFT JOIN #AllocationTemp t
        ON  tgt.ledgerentry_systemId = t.ledgerentry_systemId
        AND tgt.salesline_systemId = t.salesline_systemId
    WHERE t.ledgerentry_systemId IS NULL;

    DROP TABLE IF EXISTS #AllocationTemp;

END;