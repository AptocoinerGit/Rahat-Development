--Exec usp_IncrementalLoad_WTIAAllocSalesLineEntry90107
--select * from [DataWH].[dbo].[WTIAAllocSalesLineEntry90107]
--Truncate table [DataWH].[dbo].[WTIAAllocSalesLineEntry90107]

CREATE   PROCEDURE usp_IncrementalLoad_WTIAAllocSalesLineEntry90107
AS
BEGIN
    -- Step 1: Insert new records
    INSERT INTO [DataWH].[dbo].[WTIAAllocSalesLineEntry90107] (
        [SourceNo-290],
        [AllocationCode-10],
        [AllocLedgEntryLocationCode-180],
        [ItemNo-20],
        [UnitofMeasureCode-40],
        [BaseUnitofMeasureCode-70],
        [LocationCode-100],
        [DocumentType-1],
        [DocumentNo-2],
        [DocumentLineNo-3],
        [LineNo-4],
        [Quantity-30],
        [QuantityBase-50],
        [QuantityCase-51],
        [QuantityBottle-52],
        [QtyperUnitOfMeasure-60],
        [TransactionType-80],
        [AppliestoEntryNo-90],
        [QUantityShipped-160],
        [QuantityShippedBase-165],
        [QuantitytoShip-170],
        [QuantitytoShipBase-175],
        [SourceType-280],
        [timestamp-0],
        [systemId-2000000000],
        [SystemCreatedAt-2000000001],
        [SystemCreatedBy-2000000002],
        [SystemModifiedAt-2000000003],
        [$Company],
        [$DeliveredDateTime],
        InsertDate
    )
    SELECT
        s.[SourceNo-290],
        s.[AllocationCode-10],
        s.[AllocLedgEntryLocationCode-180],
        s.[ItemNo-20],
        s.[UnitofMeasureCode-40],
        s.[BaseUnitofMeasureCode-70],
        s.[LocationCode-100],
        s.[DocumentType-1],
        s.[DocumentNo-2],
        s.[DocumentLineNo-3],
        s.[LineNo-4],
        s.[Quantity-30],
        s.[QuantityBase-50],
        s.[QuantityCase-51],
        s.[QuantityBottle-52],
        s.[QtyperUnitOfMeasure-60],
        s.[TransactionType-80],
        s.[AppliestoEntryNo-90],
        s.[QUantityShipped-160],
        s.[QuantityShippedBase-165],
        s.[QuantitytoShip-170],
        s.[QuantitytoShipBase-175],
        s.[SourceType-280],
        s.[timestamp-0],
        s.[systemId-2000000000],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        s.[SystemCreatedBy-2000000002],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        s.[$Company],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')),
        CURRENT_TIMESTAMP
    FROM [Rahat_LH].[dbo].[WTIAAllocSalesLineEntry90107] s
    LEFT JOIN [DataWH].[dbo].[WTIAAllocSalesLineEntry90107] t
        ON s.[systemId-2000000000] = t.[systemId-2000000000]
    WHERE t.[systemId-2000000000] IS NULL
      AND s.[systemId-2000000000] IS NOT NULL;

    -- Step 2: Update changed records
    UPDATE t
    SET
        t.[SourceNo-290] = s.[SourceNo-290],
        t.[AllocationCode-10] = s.[AllocationCode-10],
        t.[AllocLedgEntryLocationCode-180] = s.[AllocLedgEntryLocationCode-180],
        t.[ItemNo-20] = s.[ItemNo-20],
        t.[UnitofMeasureCode-40] = s.[UnitofMeasureCode-40],
        t.[BaseUnitofMeasureCode-70] = s.[BaseUnitofMeasureCode-70],
        t.[LocationCode-100] = s.[LocationCode-100],
        t.[DocumentType-1] = s.[DocumentType-1],
        t.[DocumentNo-2] = s.[DocumentNo-2],
        t.[DocumentLineNo-3] = s.[DocumentLineNo-3],
        t.[LineNo-4] = s.[LineNo-4],
        t.[Quantity-30] = s.[Quantity-30],
        t.[QuantityBase-50] = s.[QuantityBase-50],
        t.[QuantityCase-51] = s.[QuantityCase-51],
        t.[QuantityBottle-52] = s.[QuantityBottle-52],
        t.[QtyperUnitOfMeasure-60] = s.[QtyperUnitOfMeasure-60],
        t.[TransactionType-80] = s.[TransactionType-80],
        t.[AppliestoEntryNo-90] = s.[AppliestoEntryNo-90],
        t.[QUantityShipped-160] = s.[QUantityShipped-160],
        t.[QuantityShippedBase-165] = s.[QuantityShippedBase-165],
        t.[QuantitytoShip-170] = s.[QuantitytoShip-170],
        t.[QuantitytoShipBase-175] = s.[QuantitytoShipBase-175],
        t.[SourceType-280] = s.[SourceType-280],
        t.[timestamp-0] = s.[timestamp-0],
        t.[SystemCreatedAt-2000000001] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        t.[SystemCreatedBy-2000000002] = s.[SystemCreatedBy-2000000002],
        t.[SystemModifiedAt-2000000003] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        t.[$Company] = s.[$Company],
        t.[$DeliveredDateTime] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')),
        UpdateDate = CURRENT_TIMESTAMP
    FROM [DataWH].[dbo].[WTIAAllocSalesLineEntry90107] t
    JOIN [Rahat_LH].[dbo].[WTIAAllocSalesLineEntry90107] s
        ON t.[systemId-2000000000] = s.[systemId-2000000000]
    WHERE
        ISNULL(t.[SourceNo-290], '') <> ISNULL(s.[SourceNo-290], '') OR
        ISNULL(t.[AllocationCode-10], '') <> ISNULL(s.[AllocationCode-10], '') OR
        ISNULL(t.[AllocLedgEntryLocationCode-180], '') <> ISNULL(s.[AllocLedgEntryLocationCode-180], '') OR
        ISNULL(t.[ItemNo-20], '') <> ISNULL(s.[ItemNo-20], '') OR
        ISNULL(t.[UnitofMeasureCode-40], '') <> ISNULL(s.[UnitofMeasureCode-40], '') OR
        ISNULL(t.[BaseUnitofMeasureCode-70], '') <> ISNULL(s.[BaseUnitofMeasureCode-70], '') OR
        ISNULL(t.[LocationCode-100], '') <> ISNULL(s.[LocationCode-100], '') OR
        ISNULL(t.[DocumentType-1], '') <> ISNULL(s.[DocumentType-1], '') OR
        ISNULL(t.[DocumentNo-2], '') <> ISNULL(s.[DocumentNo-2], '') OR
        ROUND(ISNULL(t.[DocumentLineNo-3], -1),3) <> ROUND(ISNULL(s.[DocumentLineNo-3], -1),3) OR
        ROUND(ISNULL(t.[LineNo-4], -1),3) <> ROUND(ISNULL(s.[LineNo-4], -1),3) OR
        ROUND(ISNULL(t.[Quantity-30], -1),3) <> ROUND(ISNULL(s.[Quantity-30], -1),3) OR
        ROUND(ISNULL(t.[QuantityBase-50], -1),3) <> ROUND(ISNULL(s.[QuantityBase-50], -1),3) OR
        ROUND(ISNULL(t.[QuantityCase-51], -1),3) <> ROUND(ISNULL(s.[QuantityCase-51], -1),3) OR
        ROUND(ISNULL(t.[QuantityBottle-52], -1),3) <> ROUND(ISNULL(s.[QuantityBottle-52], -1),3) OR
        ROUND(ISNULL(t.[QtyperUnitOfMeasure-60], -1),3) <> ROUND(ISNULL(s.[QtyperUnitOfMeasure-60], -1),3) OR
        ISNULL(t.[TransactionType-80], '') <> ISNULL(s.[TransactionType-80], '') OR
        ROUND(ISNULL(t.[AppliestoEntryNo-90], -1),3) <> ROUND(ISNULL(s.[AppliestoEntryNo-90], -1),3) OR
        ROUND(ISNULL(t.[QUantityShipped-160], -1),3) <> ROUND(ISNULL(s.[QUantityShipped-160], -1),3) OR
        ROUND(ISNULL(t.[QuantityShippedBase-165], -1),3) <> ROUND(ISNULL(s.[QuantityShippedBase-165], -1),3) OR
        ROUND(ISNULL(t.[QuantitytoShip-170], -1),3) <> ROUND(ISNULL(s.[QuantitytoShip-170], -1),3) OR
        ROUND(ISNULL(t.[QuantitytoShipBase-175], -1),3) <> ROUND(ISNULL(s.[QuantitytoShipBase-175], -1),3) OR
        ISNULL(t.[SourceType-280], '') <> ISNULL(s.[SourceType-280], '') OR
        ROUND(ISNULL(t.[timestamp-0], -1),3) <> ROUND(ISNULL(s.[timestamp-0], -1),3) OR
        ISNULL(t.[SystemCreatedAt-2000000001], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')), '1900-01-01') OR
        ISNULL(t.[SystemCreatedBy-2000000002], '') <> ISNULL(s.[SystemCreatedBy-2000000002], '') OR
        ISNULL(t.[SystemModifiedAt-2000000003], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')), '1900-01-01') OR
        ISNULL(t.[$Company], '') <> ISNULL(s.[$Company], '') OR
        ISNULL(t.[$DeliveredDateTime], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')), '1900-01-01');

    -- Step 3: Delete missing records
    DELETE FROM [DataWH].[dbo].[WTIAAllocSalesLineEntry90107]
    WHERE [systemId-2000000000] NOT IN (
        SELECT [systemId-2000000000] FROM [Rahat_LH].[dbo].[WTIAAllocSalesLineEntry90107]
    );
END;