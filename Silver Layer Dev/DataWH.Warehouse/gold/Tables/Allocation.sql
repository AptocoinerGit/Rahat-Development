CREATE TABLE [gold].[Allocation] (

	[based_on_criteria] varchar(255) NULL, 
	[allocation_description] varchar(255) NULL, 
	[expiration_date] date NULL, 
	[item_no] varchar(50) NULL, 
	[item_description] varchar(255) NULL, 
	[remainingQty] decimal(18,2) NULL, 
	[sales_quantity] decimal(18,2) NULL, 
	[SalespersonCode] varchar(50) NULL, 
	[salesline_systemId] varchar(max) NULL, 
	[ledgerentry_systemId] varchar(max) NULL
);