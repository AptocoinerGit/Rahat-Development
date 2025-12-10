--Exec gold.usp_SalesComparison
--select * from gold.SalesComparison
--Truncate table gold.SalesComparison

CREATE   PROCEDURE [gold].[usp_SalesComparison]
AS
BEGIN

    DECLARE @RunTime DATETIME2(3) = SYSUTCDATETIME();

    DECLARE @Today DATE = CAST(GETDATE() AS DATE);
    DECLARE @StartMonth DATE = CAST(DATEADD(DAY, 1 - DAY(GETDATE()), GETDATE()) AS DATE);
    DECLARE @StartMonthLY DATE = CAST(DATEADD(YEAR, -1, @StartMonth) AS DATE);
    DECLARE @EndMonthLY DATE = EOMONTH(DATEADD(YEAR, -1, GETDATE()));
    DECLARE @TodayLY DATE = CAST(DATEADD(YEAR, -1, GETDATE()) AS DATE);
    DECLARE @StartYear DATE = CAST(DATEFROMPARTS(YEAR(GETDATE()), 1, 1) AS DATE);
    DECLARE @StartYearLY DATE = CAST(DATEFROMPARTS(YEAR(GETDATE()) - 1, 1, 1) AS DATE);

    -----------------------------------------------------------------------
    -- 1) Build the SOURCE result set (same logic as your old INSERT)
    -----------------------------------------------------------------------
    ;WITH SourceData AS (
        SELECT
            b.salesperson_code,
            b.customer_no,
            MAX(b.customer_name) AS customer_name,
            SUM(CASE WHEN b.posting_date BETWEEN @StartMonth AND @Today THEN b.amount ELSE 0 END) AS sales_mtd,
            SUM(CASE WHEN b.posting_date BETWEEN @StartMonthLY AND @EndMonthLY THEN b.amount ELSE 0 END) AS sales_mtd_ly,
            SUM(CASE WHEN b.posting_date BETWEEN @StartMonth AND @Today THEN b.amount ELSE 0 END)
            - SUM(CASE WHEN b.posting_date BETWEEN @StartMonthLY AND @EndMonthLY THEN b.amount ELSE 0 END) AS sales_mtd_diff,
            CASE 
                WHEN SUM(CASE WHEN b.posting_date BETWEEN @StartMonthLY AND @EndMonthLY THEN b.amount ELSE 0 END) = 0 THEN 0
                ELSE
                    (
                        SUM(CASE WHEN b.posting_date BETWEEN @StartMonth AND @Today THEN b.amount ELSE 0 END) -
                        SUM(CASE WHEN b.posting_date BETWEEN @StartMonthLY AND @EndMonthLY THEN b.amount ELSE 0 END)
                    ) /
                    NULLIF(SUM(CASE WHEN b.posting_date BETWEEN @StartMonthLY AND @EndMonthLY THEN b.amount ELSE 0 END), 0)
            END AS sales_mtd_pct_change,
            SUM(CASE WHEN b.posting_date BETWEEN @StartYear AND @Today THEN b.amount ELSE 0 END) AS sales_ytd,
            SUM(CASE WHEN b.posting_date BETWEEN @StartYearLY AND @TodayLY THEN b.amount ELSE 0 END) AS sales_ytd_ly,
            SUM(CASE WHEN b.posting_date BETWEEN @StartYear AND @Today THEN b.amount ELSE 0 END)
            - SUM(CASE WHEN b.posting_date BETWEEN @StartYearLY AND @TodayLY THEN b.amount ELSE 0 END) AS sales_ytd_diff,
            CASE 
                WHEN SUM(CASE WHEN b.posting_date BETWEEN @StartYearLY AND @TodayLY THEN b.amount ELSE 0 END) = 0 THEN 0
                ELSE
                    (
                        SUM(CASE WHEN b.posting_date BETWEEN @StartYear AND @Today THEN b.amount ELSE 0 END) -
                        SUM(CASE WHEN b.posting_date BETWEEN @StartYearLY AND @TodayLY THEN b.amount ELSE 0 END)
                    ) /
                    NULLIF(SUM(CASE WHEN b.posting_date BETWEEN @StartYearLY AND @TodayLY THEN b.amount ELSE 0 END), 0)
            END AS sales_ytd_pct_change
        FROM (
            -- Posted invoices
            SELECT
                h.[SelltoCustomerNo-2] AS customer_no,
                h.[SelltoCustomerName-79] AS customer_name,
                c.[SalespersonCode-29] AS salesperson_code,
                CAST(h.[PostingDate-20] AS DATE) AS posting_date,
                COALESCE(l.[Amount-29], 0) AS amount
            FROM [silver].[SalesInvoiceLine113] l
            JOIN [silver].[SalesInvoiceHeader112] h ON l.[DocumentNo-3] = h.[No-3]
            LEFT JOIN [silver].[Customer18]       c ON c.[No-1] = h.[SelltoCustomerNo-2]
            WHERE c.[TerritoryCode-15] <> 'SAMPLES'

            UNION ALL

            -- Credit memos (negative)
            SELECT
                ch.[SelltoCustomerNo-2] AS customer_no,
                ch.[SelltoCustomerName-79] AS customer_name,
                c.[SalespersonCode-29] AS salesperson_code,
                CAST(ch.[PostingDate-20] AS DATE) AS posting_date,
                -COALESCE(cl.[Amount-29], 0) AS amount
            FROM [silver].[SalesCrMemoLine115] cl
            JOIN [silver].[SalesCrMemoHeader114] ch ON cl.[DocumentNo-3] = ch.[No-3]
            LEFT JOIN [silver].[Customer18]       c ON c.[No-1] = ch.[SelltoCustomerNo-2]
            WHERE c.[TerritoryCode-15] <> 'SAMPLES'
        ) b
        GROUP BY b.customer_no, b.salesperson_code
    )
    -----------------------------------------------------------------------
    -- 2) INSERT NEW rows
    -----------------------------------------------------------------------
    INSERT INTO gold.SalesComparison (
        salesperson_code,
		customer_no,
		customer_name,
        sales_mtd, 
		sales_mtd_ly,
		sales_mtd_diff,
		sales_mtd_pct_change,
        sales_ytd,
		sales_ytd_ly,
		sales_ytd_diff,
		sales_ytd_pct_change,
        created_at
    )
    SELECT
        s.salesperson_code,
		s.customer_no,
		s.customer_name,
        s.sales_mtd, 
		s.sales_mtd_ly,
		s.sales_mtd_diff,
		s.sales_mtd_pct_change,
        s.sales_ytd,
		s.sales_ytd_ly, 
		s.sales_ytd_diff,
		s.sales_ytd_pct_change,
        @RunTime
    FROM SourceData s
    LEFT JOIN gold.SalesComparison t
        ON t.salesperson_code = s.salesperson_code
       AND t.customer_no      = s.customer_no
    WHERE t.customer_no IS NULL;

    -----------------------------------------------------------------------
    -- 3) UPDATE changed rows
    -----------------------------------------------------------------------
    UPDATE t
    SET
        t.customer_name        = s.customer_name,
        t.sales_mtd            = s.sales_mtd,
        t.sales_mtd_ly         = s.sales_mtd_ly,
        t.sales_mtd_diff       = s.sales_mtd_diff,
        t.sales_mtd_pct_change = s.sales_mtd_pct_change,
        t.sales_ytd            = s.sales_ytd,
        t.sales_ytd_ly         = s.sales_ytd_ly,
        t.sales_ytd_diff       = s.sales_ytd_diff,
        t.sales_ytd_pct_change = s.sales_ytd_pct_change,
        t.created_at           = @RunTime
    FROM gold.SalesComparison t
    JOIN SourceData s
        ON t.salesperson_code  = s.salesperson_code
       AND t.customer_no       = s.customer_no
    WHERE
        (
            ISNULL(t.sales_mtd, -1)              <> ISNULL(s.sales_mtd, -1) OR
            ISNULL(t.sales_mtd_ly, -1)           <> ISNULL(s.sales_mtd_ly, -1) OR
            ISNULL(t.sales_mtd_diff, -1)         <> ISNULL(s.sales_mtd_diff, -1) OR
            ISNULL(t.sales_mtd_pct_change, -1)   <> ISNULL(s.sales_mtd_pct_change, -1) OR
            ISNULL(t.sales_ytd, -1)              <> ISNULL(s.sales_ytd, -1) OR
            ISNULL(t.sales_ytd_ly, -1)           <> ISNULL(s.sales_ytd_ly, -1) OR
            ISNULL(t.sales_ytd_diff, -1)         <> ISNULL(s.sales_ytd_diff, -1) OR
            ISNULL(t.sales_ytd_pct_change, -1)   <> ISNULL(s.sales_ytd_pct_change, -1)
        );

    -----------------------------------------------------------------------
    -- 4) DELETE rows missing from source
    -----------------------------------------------------------------------
    DELETE t
    FROM gold.SalesComparison t
    LEFT JOIN SourceData s
        ON t.salesperson_code = s.salesperson_code
       AND t.customer_no      = s.customer_no
    WHERE s.customer_no IS NULL;

END;