CREATE TABLE [gold].[SalesComparison] (

	[salesperson_code] varchar(50) NULL, 
	[customer_no] varchar(50) NULL, 
	[customer_name] varchar(200) NULL, 
	[sales_mtd] decimal(18,2) NULL, 
	[sales_mtd_ly] decimal(18,2) NULL, 
	[sales_mtd_diff] decimal(18,2) NULL, 
	[sales_mtd_pct_change] decimal(18,6) NULL, 
	[sales_ytd] decimal(18,2) NULL, 
	[sales_ytd_ly] decimal(18,2) NULL, 
	[sales_ytd_diff] decimal(18,2) NULL, 
	[sales_ytd_pct_change] decimal(18,6) NULL, 
	[created_at] datetime2(3) NULL
);