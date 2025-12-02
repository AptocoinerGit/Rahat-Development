--Exec usp_IncrementalLoad_PriceListHeader7000
--select * from [DataWH].[dbo].[PriceListHeader7000]
--Truncate table [DataWH].[dbo].[PriceListHeader7000]

CREATE   PROCEDURE usp_IncrementalLoad_PriceListHeader7000
AS
BEGIN

    -- Step 1: Insert new records
    INSERT INTO [DataWH].[dbo].[PriceListHeader7000] (
        [NoSeries-17],
        [Description-2],
        [Code-1],
        [SourceGroup-3],
        [SourceType-4],
        [SourceID-7],
        [PriceType-8],
        [AmountType-9],
        [PriceIncludesVAT-13],
        [AllowLineDisc-15],
        [AllowInvoiceDisc-16],
        [Status-18],
        [AllowUpdatingDefaults-20],
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
        s.[NoSeries-17],
        s.[Description-2],
        s.[Code-1],
        s.[SourceGroup-3],
        s.[SourceType-4],
        s.[SourceID-7],
        s.[PriceType-8],
        s.[AmountType-9],
        s.[PriceIncludesVAT-13],
        s.[AllowLineDisc-15],
        s.[AllowInvoiceDisc-16],
        s.[Status-18],
        s.[AllowUpdatingDefaults-20],
        s.[timestamp-0],
        s.[systemId-2000000000],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        s.[SystemCreatedBy-2000000002],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        s.[$Company],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')),
        CURRENT_TIMESTAMP
    FROM [Rahat_LH].[dbo].[PriceListHeader7000] s
    LEFT JOIN [DataWH].[dbo].[PriceListHeader7000] t
        ON s.[systemId-2000000000] = t.[systemId-2000000000]
    WHERE t.[systemId-2000000000] IS NULL
      AND s.[systemId-2000000000] IS NOT NULL;

    -- Step 2: Update changed records
    UPDATE t
    SET
        t.[NoSeries-17] = s.[NoSeries-17],
        t.[Description-2] = s.[Description-2],
        t.[Code-1] = s.[Code-1],
        t.[SourceGroup-3] = s.[SourceGroup-3],
        t.[SourceType-4] = s.[SourceType-4],
        t.[SourceID-7] = s.[SourceID-7],
        t.[PriceType-8] = s.[PriceType-8],
        t.[AmountType-9] = s.[AmountType-9],
        t.[PriceIncludesVAT-13] = s.[PriceIncludesVAT-13],
        t.[AllowLineDisc-15] = s.[AllowLineDisc-15],
        t.[AllowInvoiceDisc-16] = s.[AllowInvoiceDisc-16],
        t.[Status-18] = s.[Status-18],
        t.[AllowUpdatingDefaults-20] = s.[AllowUpdatingDefaults-20],
        t.[timestamp-0] = s.[timestamp-0],
        t.[SystemCreatedAt-2000000001] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        t.[SystemCreatedBy-2000000002] = s.[SystemCreatedBy-2000000002],
        t.[SystemModifiedAt-2000000003] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        t.[$Company] = s.[$Company],
        t.[$DeliveredDateTime] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')),
        t.[UpdateDate] = CURRENT_TIMESTAMP
    FROM [DataWH].[dbo].[PriceListHeader7000] t
    JOIN [Rahat_LH].[dbo].[PriceListHeader7000] s
        ON t.[systemId-2000000000] = s.[systemId-2000000000]
    WHERE
        ISNULL(t.[NoSeries-17], '') <> ISNULL(s.[NoSeries-17], '') OR
        ISNULL(t.[Description-2], '') <> ISNULL(s.[Description-2], '') OR
        ISNULL(t.[Code-1], '') <> ISNULL(s.[Code-1], '') OR
        ISNULL(t.[SourceGroup-3], '') <> ISNULL(s.[SourceGroup-3], '') OR
        ISNULL(t.[SourceType-4], '') <> ISNULL(s.[SourceType-4], '') OR
        ISNULL(t.[SourceID-7], '') <> ISNULL(s.[SourceID-7], '') OR
        ISNULL(t.[PriceType-8], '') <> ISNULL(s.[PriceType-8], '') OR
        ISNULL(t.[AmountType-9], '') <> ISNULL(s.[AmountType-9], '') OR
        ROUND(ISNULL(t.[PriceIncludesVAT-13], 0),3) <> ROUND(ISNULL(s.[PriceIncludesVAT-13], 0),3) OR
        ROUND(ISNULL(t.[AllowLineDisc-15], 0),3) <> ROUND(ISNULL(s.[AllowLineDisc-15], 0),3) OR
        ROUND(ISNULL(t.[AllowInvoiceDisc-16], 0),3) <> ROUND(ISNULL(s.[AllowInvoiceDisc-16], 0),3) OR
        ISNULL(t.[Status-18], '') <> ISNULL(s.[Status-18], '') OR
        ROUND(ISNULL(t.[AllowUpdatingDefaults-20], 0),3) <> ROUND(ISNULL(s.[AllowUpdatingDefaults-20], 0),3) OR
        ROUND(ISNULL(t.[timestamp-0], -1),3) <> ROUND(ISNULL(s.[timestamp-0], -1),3) OR
        ISNULL(t.[SystemCreatedAt-2000000001], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')), '1900-01-01') OR
        ISNULL(t.[SystemCreatedBy-2000000002], '') <> ISNULL(s.[SystemCreatedBy-2000000002], '') OR
        ISNULL(t.[SystemModifiedAt-2000000003], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')), '1900-01-01') OR
        ISNULL(t.[$Company], '') <> ISNULL(s.[$Company], '') OR
        ISNULL(t.[$DeliveredDateTime], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')), '1900-01-01');

    -- Step 3: Delete records missing from source
    DELETE FROM [DataWH].[dbo].[PriceListHeader7000]
    WHERE [systemId-2000000000] NOT IN (
        SELECT [systemId-2000000000]
        FROM [Rahat_LH].[dbo].[PriceListHeader7000]
        WHERE [systemId-2000000000] IS NOT NULL
    );
END;