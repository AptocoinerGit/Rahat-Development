--Exec usp_IncrementalLoad_WTBAVarietal87014
--select * from [DataWH].[dbo].[WTBAVarietal87014]
--Truncate table [DataWH].[dbo].[WTBAVarietal87014]

CREATE   PROCEDURE usp_IncrementalLoad_WTBAVarietal87014
AS
BEGIN

    -- Step 1: Insert new records
    INSERT INTO [DataWH].[dbo].[WTBAVarietal87014] (
        [Description-10],
        [Code-1],
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
        s.[Description-10],
        s.[Code-1],
        s.[timestamp-0],
        s.[systemId-2000000000],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        s.[SystemCreatedBy-2000000002],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        s.[$Company],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')),
        CURRENT_TIMESTAMP
    FROM [Rahat_LH].[dbo].[WTBAVarietal87014] s
    LEFT JOIN [DataWH].[dbo].[WTBAVarietal87014] t
        ON s.[systemId-2000000000] = t.[systemId-2000000000]
    WHERE t.[systemId-2000000000] IS NULL
      AND s.[systemId-2000000000] IS NOT NULL;

    -- Step 2: Update changed records
    UPDATE t
    SET
        t.[Description-10] = s.[Description-10],
        t.[Code-1] = s.[Code-1],
        t.[timestamp-0] = s.[timestamp-0],
        t.[SystemCreatedAt-2000000001] = s.[SystemCreatedAt-2000000001],
        t.[SystemCreatedBy-2000000002] = s.[SystemCreatedBy-2000000002],
        t.[SystemModifiedAt-2000000003] = s.[SystemModifiedAt-2000000003],
        t.[$Company] = s.[$Company],
        t.[$DeliveredDateTime] = s.[$DeliveredDateTime],
        t.[UpdateDate] = CURRENT_TIMESTAMP
    FROM [DataWH].[dbo].[WTBAVarietal87014] t
    JOIN [Rahat_LH].[dbo].[WTBAVarietal87014] s
        ON t.[systemId-2000000000] = s.[systemId-2000000000]
    WHERE
        ISNULL(t.[Description-10], '') <> ISNULL(s.[Description-10], '') OR
        ISNULL(t.[Code-1], '') <> ISNULL(s.[Code-1], '') OR
        ROUND(ISNULL(t.[timestamp-0], -1),3) <> ROUND(ISNULL(s.[timestamp-0], -1),3) OR
        ISNULL(t.[SystemCreatedAt-2000000001], '1900-01-01') <> ISNULL(s.[SystemCreatedAt-2000000001],'1900-01-01') OR
        ISNULL(t.[SystemCreatedBy-2000000002], '') <> ISNULL(s.[SystemCreatedBy-2000000002], '') OR
        ISNULL(t.[SystemModifiedAt-2000000003], '1900-01-01') <> ISNULL(s.[SystemModifiedAt-2000000003], '1900-01-01') OR
        ISNULL(t.[$Company], '') <> ISNULL(s.[$Company], '') OR
        ISNULL(t.[$DeliveredDateTime], '1900-01-01') <> ISNULL(s.[$DeliveredDateTime], '1900-01-01');

    -- Step 3: Delete records missing from source
    DELETE FROM [DataWH].[dbo].[WTBAVarietal87014]
    WHERE [systemId-2000000000] NOT IN (
        SELECT [systemId-2000000000]
        FROM [Rahat_LH].[dbo].[WTBAVarietal87014]
        WHERE [systemId-2000000000] IS NOT NULL
    );
END;