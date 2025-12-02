--Exec usp_IncrementalLoad_WTIAAllocationLedgerEntry90103
--select * from [DataWH].[dbo].[WTIAAllocationLedgerEntry90103]
--Truncate table [DataWH].[dbo].[WTIAAllocationLedgerEntry90103]

CREATE   PROCEDURE usp_IncrementalLoad_WTIAAllocationLedgerEntry90103
AS
BEGIN

    -- Step 1: Insert new records
    INSERT INTO [DataWH].[dbo].[WTIAAllocationLedgerEntry90103] (
        [ExpirationDate-110],
        [SourceNo-290],
        [Description-120],
        [SalesOrderNo-130],
        [PostedSalesInvoiceNo-150],
        [EntryNo-1],
        [Type-10],
        [ItemNo-20],
        [AllocationCode-30],
        [DocumentNo-40],
        [LocationCode-50],
        [QuantityBase-60],
        [RemainingQtyBase-70],
        [Open-90],
        [PostingDate-100],
        [SalesOrderLineNo-140],
        [PostedSalesLineNo-160],
        [QuantityCase-200],
        [QuantityBottle-201],
        [Liters-202],
        [Gallons-203],
        [RemainingQtyCase-210],
        [RemainingQtyBottle-211],
        [RemainingLiters-212],
        [RemainingGallons-213],
        [SourceType-280],
        [AppliedtoEntryNo-500],
        [timestamp-0],
        [systemId-2000000000],
        [SystemCreatedAt-2000000001],
        [SystemCreatedBy-2000000002],
        [SystemModifiedAt-2000000003],
        [$Company],
        [$DeliveredDateTime],
        [InsertDate]
    )
    SELECT
        TRY_CONVERT(DATE, NULLIF(s.[ExpirationDate-110], '')),
        s.[SourceNo-290],
        s.[Description-120],
        s.[SalesOrderNo-130],
        s.[PostedSalesInvoiceNo-150],
        s.[EntryNo-1],
        s.[Type-10],
        s.[ItemNo-20],
        s.[AllocationCode-30],
        s.[DocumentNo-40],
        s.[LocationCode-50],
        s.[QuantityBase-60],
        s.[RemainingQtyBase-70],
        s.[Open-90],
        TRY_CONVERT(DATE, NULLIF(s.[PostingDate-100], '')),
        s.[SalesOrderLineNo-140],
        s.[PostedSalesLineNo-160],
        s.[QuantityCase-200],
        s.[QuantityBottle-201],
        s.[Liters-202],
        s.[Gallons-203],
        s.[RemainingQtyCase-210],
        s.[RemainingQtyBottle-211],
        s.[RemainingLiters-212],
        s.[RemainingGallons-213],
        s.[SourceType-280],
        s.[AppliedtoEntryNo-500],
        s.[timestamp-0],
        s.[systemId-2000000000],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        s.[SystemCreatedBy-2000000002],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        s.[$Company],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')),
        CURRENT_TIMESTAMP
    FROM [Rahat_LH].[dbo].[WTIAAllocationLedgerEntry90103] s
    LEFT JOIN [DataWH].[dbo].[WTIAAllocationLedgerEntry90103] t
        ON s.[systemId-2000000000] = t.[systemId-2000000000]
    WHERE t.[systemId-2000000000] IS NULL
      AND s.[systemId-2000000000] IS NOT NULL;

    -- Step 2: Update changed records
    UPDATE t
    SET
        t.[ExpirationDate-110] = TRY_CONVERT(DATE, NULLIF(s.[ExpirationDate-110], '')),
        t.[SourceNo-290] = s.[SourceNo-290],
        t.[Description-120] = s.[Description-120],
        t.[SalesOrderNo-130] = s.[SalesOrderNo-130],
        t.[PostedSalesInvoiceNo-150] = s.[PostedSalesInvoiceNo-150],
        t.[EntryNo-1] = s.[EntryNo-1],
        t.[Type-10] = s.[Type-10],
        t.[ItemNo-20] = s.[ItemNo-20],
        t.[AllocationCode-30] = s.[AllocationCode-30],
        t.[DocumentNo-40] = s.[DocumentNo-40],
        t.[LocationCode-50] = s.[LocationCode-50],
        t.[QuantityBase-60] = s.[QuantityBase-60],
        t.[RemainingQtyBase-70] = s.[RemainingQtyBase-70],
        t.[Open-90] = s.[Open-90],
        t.[PostingDate-100] = TRY_CONVERT(DATE, NULLIF(s.[PostingDate-100], '')),
        t.[SalesOrderLineNo-140] = s.[SalesOrderLineNo-140],
        t.[PostedSalesLineNo-160] = s.[PostedSalesLineNo-160],
        t.[QuantityCase-200] = s.[QuantityCase-200],
        t.[QuantityBottle-201] = s.[QuantityBottle-201],
        t.[Liters-202] = s.[Liters-202],
        t.[Gallons-203] = s.[Gallons-203],
        t.[RemainingQtyCase-210] = s.[RemainingQtyCase-210],
        t.[RemainingQtyBottle-211] = s.[RemainingQtyBottle-211],
        t.[RemainingLiters-212] = s.[RemainingLiters-212],
        t.[RemainingGallons-213] = s.[RemainingGallons-213],
        t.[SourceType-280] = s.[SourceType-280],
        t.[AppliedtoEntryNo-500] = s.[AppliedtoEntryNo-500],
        t.[timestamp-0] = s.[timestamp-0],
        t.[SystemCreatedAt-2000000001] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        t.[SystemCreatedBy-2000000002] = s.[SystemCreatedBy-2000000002],
        t.[SystemModifiedAt-2000000003] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        t.[$Company] = s.[$Company],
        t.[$DeliveredDateTime] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')),
        t.[UpdateDate] = CURRENT_TIMESTAMP
    FROM [DataWH].[dbo].[WTIAAllocationLedgerEntry90103] t
    JOIN [Rahat_LH].[dbo].[WTIAAllocationLedgerEntry90103] s
        ON t.[systemId-2000000000] = s.[systemId-2000000000]
    WHERE
        ISNULL(t.[ExpirationDate-110], '1900-01-01') <> ISNULL(TRY_CONVERT(DATE, NULLIF(s.[ExpirationDate-110], '')), '1900-01-01') OR
        ISNULL(t.[SourceNo-290], '') <> ISNULL(s.[SourceNo-290], '') OR
        ISNULL(t.[Description-120], '') <> ISNULL(s.[Description-120], '') OR
        ISNULL(t.[SalesOrderNo-130], '') <> ISNULL(s.[SalesOrderNo-130], '') OR
        ISNULL(t.[PostedSalesInvoiceNo-150], '') <> ISNULL(s.[PostedSalesInvoiceNo-150], '') OR
        ROUND(ISNULL(t.[EntryNo-1], -1),3) <> ROUND(ISNULL(s.[EntryNo-1], -1),3) OR
        ISNULL(t.[Type-10], '') <> ISNULL(s.[Type-10], '') OR
        ISNULL(t.[ItemNo-20], '') <> ISNULL(s.[ItemNo-20], '') OR
        ISNULL(t.[AllocationCode-30], '') <> ISNULL(s.[AllocationCode-30], '') OR
        ISNULL(t.[DocumentNo-40], '') <> ISNULL(s.[DocumentNo-40], '') OR
        ISNULL(t.[LocationCode-50], '') <> ISNULL(s.[LocationCode-50], '') OR
        ROUND(ISNULL(t.[QuantityBase-60], -1), 3) <> ROUND(ISNULL(s.[QuantityBase-60], -1), 3) OR
        ROUND(ISNULL(t.[RemainingQtyBase-70], -1), 3) <> ROUND(ISNULL(s.[RemainingQtyBase-70], -1), 3) OR
        ISNULL(t.[Open-90], CAST(0 AS BIT)) <> ISNULL(s.[Open-90], CAST(0 AS BIT)) OR
        ISNULL(t.[PostingDate-100], '1900-01-01') <> ISNULL(TRY_CONVERT(DATE, NULLIF(s.[PostingDate-100], '')), '1900-01-01') OR
        ROUND(ISNULL(t.[SalesOrderLineNo-140], -1),3) <> ROUND(ISNULL(s.[SalesOrderLineNo-140], -1),3) OR
        ROUND(ISNULL(t.[PostedSalesLineNo-160], -1),3) <> ROUND(ISNULL(s.[PostedSalesLineNo-160], -1),3) OR
        ROUND(ISNULL(t.[QuantityCase-200], -1), 3) <> ROUND(ISNULL(s.[QuantityCase-200], -1), 3) OR
        ROUND(ISNULL(t.[QuantityBottle-201], -1), 3) <> ROUND(ISNULL(s.[QuantityBottle-201], -1), 3) OR
        ROUND(ISNULL(t.[Liters-202], -1), 3) <> ROUND(ISNULL(s.[Liters-202], -1), 3) OR
        ROUND(ISNULL(t.[Gallons-203], -1), 3) <> ROUND(ISNULL(s.[Gallons-203], -1), 3) OR
        ROUND(ISNULL(t.[RemainingQtyCase-210], -1), 3) <> ROUND(ISNULL(s.[RemainingQtyCase-210], -1), 3) OR
        ROUND(ISNULL(t.[RemainingQtyBottle-211], -1), 3) <> ROUND(ISNULL(s.[RemainingQtyBottle-211], -1), 3) OR
        ROUND(ISNULL(t.[RemainingLiters-212], -1), 3) <> ROUND(ISNULL(s.[RemainingLiters-212], -1), 3) OR
        ROUND(ISNULL(t.[RemainingGallons-213], -1), 3) <> ROUND(ISNULL(s.[RemainingGallons-213], -1), 3) OR
        ISNULL(t.[SourceType-280], '') <> ISNULL(s.[SourceType-280], '') OR
        ROUND(ISNULL(t.[AppliedtoEntryNo-500], -1),3) <> ROUND(ISNULL(s.[AppliedtoEntryNo-500], -1),3) OR
        ROUND(ISNULL(t.[timestamp-0], -1),3) <> ROUND(ISNULL(s.[timestamp-0], -1) ,3)OR  
        ISNULL(t.[SystemCreatedAt-2000000001], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')), '1900-01-01') OR
        ISNULL(t.[SystemCreatedBy-2000000002], '') <> ISNULL(s.[SystemCreatedBy-2000000002], '') OR
        ISNULL(t.[SystemModifiedAt-2000000003], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')), '1900-01-01') OR
        ISNULL(t.[$Company], '') <> ISNULL(s.[$Company], '') OR
        ISNULL(t.[$DeliveredDateTime], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')), '1900-01-01');

    -- Step 3: Delete records missing from source
    DELETE FROM [DataWH].[dbo].[WTIAAllocationLedgerEntry90103]
    WHERE [systemId-2000000000] NOT IN (
        SELECT [systemId-2000000000]
        FROM [Rahat_LH].[dbo].[WTIAAllocationLedgerEntry90103]
        WHERE [systemId-2000000000] IS NOT NULL
    );
END;