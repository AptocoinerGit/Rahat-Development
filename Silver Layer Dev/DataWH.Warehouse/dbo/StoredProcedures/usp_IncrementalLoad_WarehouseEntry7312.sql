-- Exec usp_IncrementalLoad_WarehouseEntry7312
-- select * from [DataWH].[dbo].[WarehouseEntry7312]
-- Truncate table [DataWH].[dbo].[WarehouseEntry7312]


CREATE   PROCEDURE usp_IncrementalLoad_WarehouseEntry7312
AS
BEGIN

    -- Step 1: Insert new records
    INSERT INTO [DataWH].[dbo].[WarehouseEntry7312] (
        [JournalBatchName-2],
        [JournalTemplateName-45],
        [NoSeries-33],
        [SourceCode-26],
        [WTBAAlcoholTypeCode-87050],
        [EntryNo-1],
        [LineNo-3],
        [RegisteringDate-4],
        [LocationCode-5],
        [BinCode-7],
        [ItemNo-9],
        [Quantity-10],
        [QtyBase-11],
        [WarehouseRegisterNo-12],
        [SIFTBucketNo-13],
        [SourceType-20],
        [SourceSubtype-21],
        [SourceNo-22],
        [SourceLineNo-23],
        [SourceSublineNo-24],
        [SourceDocument-25],
        [Cubage-40],
        [Weight-41],
        [WhseDocumentType-51],
        [WhseDocumentLineNo-52],
        [EntryType-55],
        [ReferenceDocument-60],
        [ReferenceNo-61],
        [UserID-67],
        [QtyperUnitofMeasure-5404],
        [UnitofMeasureCode-5407],
        [PhysInvtCountingPeriodType-7381],
        [Dedicated-7382],
        [WTBAQuantityCase-87100],
        [WTBAQuantityBottle-87101],
        [WTBABillHoldType-87571],
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
        s.[JournalBatchName-2],
        s.[JournalTemplateName-45],
        s.[NoSeries-33],
        s.[SourceCode-26],
        s.[WTBAAlcoholTypeCode-87050],
        s.[EntryNo-1],
        s.[LineNo-3],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[RegisteringDate-4], '')),
        s.[LocationCode-5],
        s.[BinCode-7],
        s.[ItemNo-9],
        s.[Quantity-10],
        s.[QtyBase-11],
        s.[WarehouseRegisterNo-12],
        s.[SIFTBucketNo-13],
        s.[SourceType-20],
        s.[SourceSubtype-21],
        s.[SourceNo-22],
        s.[SourceLineNo-23],
        s.[SourceSublineNo-24],
        s.[SourceDocument-25],
        s.[Cubage-40],
        s.[Weight-41],
        s.[WhseDocumentType-51],
        s.[WhseDocumentLineNo-52],
        s.[EntryType-55],
        s.[ReferenceDocument-60],
        s.[ReferenceNo-61],
        s.[UserID-67],
        s.[QtyperUnitofMeasure-5404],
        s.[UnitofMeasureCode-5407],
        s.[PhysInvtCountingPeriodType-7381],
        s.[Dedicated-7382],
        s.[WTBAQuantityCase-87100],
        s.[WTBAQuantityBottle-87101],
        s.[WTBABillHoldType-87571],
        s.[timestamp-0],
        s.[systemId-2000000000],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        s.[SystemCreatedBy-2000000002],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        s.[$Company],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')),
        CURRENT_TIMESTAMP
    FROM [Rahat_LH].[dbo].[WarehouseEntry7312] s
    LEFT JOIN [DataWH].[dbo].[WarehouseEntry7312] t
        ON s.[systemId-2000000000] = t.[systemId-2000000000]
    WHERE t.[systemId-2000000000] IS NULL
      AND s.[systemId-2000000000] IS NOT NULL;

    -- Step 2: Update changed records
    UPDATE t
    SET
        t.[JournalBatchName-2] = s.[JournalBatchName-2],
        t.[JournalTemplateName-45] = s.[JournalTemplateName-45],
        t.[NoSeries-33] = s.[NoSeries-33],
        t.[SourceCode-26] = s.[SourceCode-26],
        t.[WTBAAlcoholTypeCode-87050] = s.[WTBAAlcoholTypeCode-87050],
        t.[EntryNo-1] = s.[EntryNo-1],
        t.[LineNo-3] = s.[LineNo-3],
        t.[RegisteringDate-4] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[RegisteringDate-4], '')),
        t.[LocationCode-5] = s.[LocationCode-5],
        t.[BinCode-7] = s.[BinCode-7],
        t.[ItemNo-9] = s.[ItemNo-9],
        t.[Quantity-10] = s.[Quantity-10],
        t.[QtyBase-11] = s.[QtyBase-11],
        t.[WarehouseRegisterNo-12] = s.[WarehouseRegisterNo-12],
        t.[SIFTBucketNo-13] = s.[SIFTBucketNo-13],
        t.[SourceType-20] = s.[SourceType-20],
        t.[SourceSubtype-21] = s.[SourceSubtype-21],
        t.[SourceNo-22] = s.[SourceNo-22],
        t.[SourceLineNo-23] = s.[SourceLineNo-23],
        t.[SourceSublineNo-24] = s.[SourceSublineNo-24],
        t.[SourceDocument-25] = s.[SourceDocument-25],
        t.[Cubage-40] = s.[Cubage-40],
        t.[Weight-41] = s.[Weight-41],
        t.[WhseDocumentType-51] = s.[WhseDocumentType-51],
        t.[WhseDocumentLineNo-52] = s.[WhseDocumentLineNo-52],
        t.[EntryType-55] = s.[EntryType-55],
        t.[ReferenceDocument-60] = s.[ReferenceDocument-60],
        t.[ReferenceNo-61] = s.[ReferenceNo-61],
        t.[UserID-67] = s.[UserID-67],
        t.[QtyperUnitofMeasure-5404] = s.[QtyperUnitofMeasure-5404],
        t.[UnitofMeasureCode-5407] = s.[UnitofMeasureCode-5407],
        t.[PhysInvtCountingPeriodType-7381] = s.[PhysInvtCountingPeriodType-7381],
        t.[Dedicated-7382] = s.[Dedicated-7382],
        t.[WTBAQuantityCase-87100] = s.[WTBAQuantityCase-87100],
        t.[WTBAQuantityBottle-87101] = s.[WTBAQuantityBottle-87101],
        t.[WTBABillHoldType-87571] = s.[WTBABillHoldType-87571],
        t.[timestamp-0] = s.[timestamp-0],
        t.[SystemCreatedAt-2000000001] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        t.[SystemCreatedBy-2000000002] = s.[SystemCreatedBy-2000000002],
        t.[SystemModifiedAt-2000000003] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        t.[$Company] = s.[$Company],
        t.[$DeliveredDateTime] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')),
        t.UpdateDate = CURRENT_TIMESTAMP
    FROM [DataWH].[dbo].[WarehouseEntry7312] t
    JOIN [Rahat_LH].[dbo].[WarehouseEntry7312] s
        ON t.[systemId-2000000000] = s.[systemId-2000000000]
    WHERE
        ISNULL(t.[JournalBatchName-2], '') <> ISNULL(s.[JournalBatchName-2], '') OR
        ISNULL(t.[JournalTemplateName-45], '') <> ISNULL(s.[JournalTemplateName-45], '') OR
        ISNULL(t.[NoSeries-33], '') <> ISNULL(s.[NoSeries-33], '') OR
        ISNULL(t.[SourceCode-26], '') <> ISNULL(s.[SourceCode-26], '') OR
        ISNULL(t.[WTBAAlcoholTypeCode-87050], '') <> ISNULL(s.[WTBAAlcoholTypeCode-87050], '') OR
        ISNULL(t.[EntryNo-1], -2147483648) <> ISNULL(s.[EntryNo-1], -2147483648) OR
        ISNULL(t.[LineNo-3], -2147483648) <> ISNULL(s.[LineNo-3], -2147483648) OR
        ISNULL(CAST(t.[RegisteringDate-4] AS DATE), '1900-01-01') <> ISNULL(CAST(s.[RegisteringDate-4] AS DATE), '1900-01-01') OR
        ISNULL(t.[LocationCode-5], '') <> ISNULL(s.[LocationCode-5], '') OR
        ISNULL(t.[BinCode-7], '') <> ISNULL(s.[BinCode-7], '') OR
        ISNULL(t.[ItemNo-9], '') <> ISNULL(s.[ItemNo-9], '') OR
        ROUND(ISNULL(t.[Quantity-10], -1), 3) <> ROUND(ISNULL(s.[Quantity-10], -1), 3) OR
        ROUND(ISNULL(t.[QtyBase-11], -1), 3) <> ROUND(ISNULL(s.[QtyBase-11], -1), 3) OR
        ISNULL(t.[WarehouseRegisterNo-12], -2147483648) <> ISNULL(s.[WarehouseRegisterNo-12], -2147483648) OR
        ISNULL(t.[SIFTBucketNo-13], -2147483648) <> ISNULL(s.[SIFTBucketNo-13], -2147483648) OR
        ISNULL(t.[SourceType-20], -2147483648) <> ISNULL(s.[SourceType-20], -2147483648) OR
        ISNULL(t.[SourceSubtype-21], '') <> ISNULL(s.[SourceSubtype-21], '') OR
        ISNULL(t.[SourceNo-22], '') <> ISNULL(s.[SourceNo-22], '') OR
        ISNULL(t.[SourceLineNo-23], -2147483648) <> ISNULL(s.[SourceLineNo-23], -2147483648) OR
        ISNULL(t.[SourceSublineNo-24], -2147483648) <> ISNULL(s.[SourceSublineNo-24], -2147483648) OR
        ISNULL(t.[SourceDocument-25], '') <> ISNULL(s.[SourceDocument-25], '') OR
        ROUND(ISNULL(t.[Cubage-40], -1), 3) <> ROUND(ISNULL(s.[Cubage-40], -1), 3) OR
        ROUND(ISNULL(t.[Weight-41], -1), 3) <> ROUND(ISNULL(s.[Weight-41], -1), 3) OR
        ISNULL(t.[WhseDocumentType-51], '') <> ISNULL(s.[WhseDocumentType-51], '') OR
        ISNULL(t.[WhseDocumentLineNo-52], -2147483648) <> ISNULL(s.[WhseDocumentLineNo-52], -2147483648) OR
        ISNULL(t.[EntryType-55], '') <> ISNULL(s.[EntryType-55], '') OR
        ISNULL(t.[ReferenceDocument-60], '') <> ISNULL(s.[ReferenceDocument-60], '') OR
        ISNULL(t.[ReferenceNo-61], '') <> ISNULL(s.[ReferenceNo-61], '') OR
        ISNULL(t.[UserID-67], '') <> ISNULL(s.[UserID-67], '') OR
        ROUND(ISNULL(t.[QtyperUnitofMeasure-5404], -1), 3) <> ROUND(ISNULL(s.[QtyperUnitofMeasure-5404], -1), 3) OR
        ISNULL(t.[UnitofMeasureCode-5407], '') <> ISNULL(s.[UnitofMeasureCode-5407], '') OR
        ISNULL(t.[PhysInvtCountingPeriodType-7381], '') <> ISNULL(s.[PhysInvtCountingPeriodType-7381], '') OR
        ISNULL(t.[Dedicated-7382], 0) <> ISNULL(s.[Dedicated-7382], 0) OR
        ROUND(ISNULL(t.[WTBAQuantityCase-87100], -1), 3) <> ROUND(ISNULL(s.[WTBAQuantityCase-87100], -1), 3) OR
        ROUND(ISNULL(t.[WTBAQuantityBottle-87101], -1), 3) <> ROUND(ISNULL(s.[WTBAQuantityBottle-87101], -1), 3) OR
        ISNULL(t.[WTBABillHoldType-87571], '') <> ISNULL(s.[WTBABillHoldType-87571], '') OR
        ISNULL(t.[timestamp-0], 0x0) <> ISNULL(s.[timestamp-0], 0x0) OR  -- timestamp is binary; compare directly
        ISNULL(t.[SystemCreatedAt-2000000001], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')), '1900-01-01') OR
        ISNULL(t.[SystemCreatedBy-2000000002], '') <> ISNULL(s.[SystemCreatedBy-2000000002], '') OR
        ISNULL(t.[SystemModifiedAt-2000000003], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')), '1900-01-01') OR
        ISNULL(t.[$Company], '') <> ISNULL(s.[$Company], '') OR
        ISNULL(t.[$DeliveredDateTime], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')), '1900-01-01');

    -- Step 3: Delete missing records
    DELETE t
    FROM [DataWH].[dbo].[WarehouseEntry7312] t
    WHERE NOT EXISTS (
        SELECT 1
        FROM [Rahat_LH].[dbo].[WarehouseEntry7312] s
        WHERE s.[systemId-2000000000] = t.[systemId-2000000000]
    );
END;