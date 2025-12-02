--Exec usp_IncrementalLoad_WTIAAllocation90101
--select * from [DataWH].[dbo].[WTIAAllocation90101]
--Truncate table [DataWH].[dbo].[WTIAAllocation90101]

CREATE   PROCEDURE usp_IncrementalLoad_WTIAAllocation90101
AS
BEGIN
     
    -- Step 1: Insert new records
    INSERT INTO [DataWH].[dbo].[WTIAAllocation90101] (
        [Code-1],
        [Description-10],
        [Source-20],
        [BasedOnType-30],
        [BasedOnCriteria-40],
        [Appliesto-50],
        [LimitingQtyperSource-100],
        [LimitingUnitType-110],
        [timestamp-0],
        [systemId-2000000000],
        [SystemCreatedAt-2000000001],
        [SystemCreatedBy-2000000002],
        [SystemModifiedAt-2000000003],
        [$Company],
        [$DeliveredDateTime],
        [Blocked-60],
        InsertDate
    )
    SELECT
        s.[Code-1],
        s.[Description-10],
        s.[Source-20],
        s.[BasedOnType-30],
        s.[BasedOnCriteria-40],
        s.[Appliesto-50],
        s.[LimitingQtyperSource-100],
        s.[LimitingUnitType-110],
        s.[timestamp-0],
        s.[systemId-2000000000],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        s.[SystemCreatedBy-2000000002],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        s.[$Company],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')),
        s.[Blocked-60],
        CURRENT_TIMESTAMP
    FROM [Rahat_LH].[dbo].[WTIAAllocation90101] s
    LEFT JOIN [DataWH].[dbo].[WTIAAllocation90101] t
        ON s.[systemId-2000000000] = t.[systemId-2000000000]
    WHERE t.[systemId-2000000000] IS NULL
      AND s.[systemId-2000000000] IS NOT NULL;

     
    -- Step 2: Update changed records
    UPDATE t
    SET
        t.[Code-1] = s.[Code-1],
        t.[Description-10] = s.[Description-10],
        t.[Source-20] = s.[Source-20],
        t.[BasedOnType-30] = s.[BasedOnType-30],
        t.[BasedOnCriteria-40] = s.[BasedOnCriteria-40],
        t.[Appliesto-50] = s.[Appliesto-50],
        t.[LimitingQtyperSource-100] = s.[LimitingQtyperSource-100],
        t.[LimitingUnitType-110] = s.[LimitingUnitType-110],
        t.[timestamp-0] = s.[timestamp-0],
        t.[SystemCreatedAt-2000000001] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        t.[SystemCreatedBy-2000000002] = s.[SystemCreatedBy-2000000002],
        t.[SystemModifiedAt-2000000003] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        t.[$Company] = s.[$Company],
        t.[$DeliveredDateTime] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')),
        t.[Blocked-60] = s.[Blocked-60],
        UpdateDate = CURRENT_TIMESTAMP
    FROM [DataWH].[dbo].[WTIAAllocation90101] t
    JOIN [Rahat_LH].[dbo].[WTIAAllocation90101] s
        ON t.[systemId-2000000000] = s.[systemId-2000000000]
    WHERE
        ISNULL(t.[Code-1], '') <> ISNULL(s.[Code-1], '') OR
        ISNULL(t.[Description-10], '') <> ISNULL(s.[Description-10], '') OR
        ISNULL(t.[Source-20], '') <> ISNULL(s.[Source-20], '') OR
        ISNULL(t.[BasedOnType-30], '') <> ISNULL(s.[BasedOnType-30], '') OR
        ISNULL(t.[BasedOnCriteria-40], '') <> ISNULL(s.[BasedOnCriteria-40], '') OR
        ISNULL(t.[Appliesto-50], '') <> ISNULL(s.[Appliesto-50], '') OR
        ROUND(ISNULL(t.[LimitingQtyperSource-100], -1),3) <> ROUND(ISNULL(s.[LimitingQtyperSource-100], -1),3) OR
        ISNULL(t.[LimitingUnitType-110], '') <> ISNULL(s.[LimitingUnitType-110], '') OR
        ROUND(ISNULL(t.[timestamp-0], -1),3) <> ROUND(ISNULL(s.[timestamp-0], -1),3) OR
        ISNULL(t.[SystemCreatedAt-2000000001], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')), '1900-01-01') OR
        ISNULL(t.[SystemCreatedBy-2000000002], '') <> ISNULL(s.[SystemCreatedBy-2000000002], '') OR
        ISNULL(t.[SystemModifiedAt-2000000003], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')), '1900-01-01') OR
        ISNULL(t.[$Company], '') <> ISNULL(s.[$Company], '') OR
        ISNULL(t.[$DeliveredDateTime], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')), '1900-01-01') OR
        ROUND(ISNULL(t.[Blocked-60], -1),3) <> ROUND(ISNULL(s.[Blocked-60], -1),3);
   
    -- Step 3: Delete missing records
    DELETE FROM [DataWH].[dbo].[WTIAAllocation90101]
    WHERE [systemId-2000000000] NOT IN (
        SELECT [systemId-2000000000] FROM [Rahat_LH].[dbo].[WTIAAllocation90101]
    );
    
END;