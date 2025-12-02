CREATE TABLE [gold].[BHReport] (

	[customerNo] varchar(50) NULL, 
	[itemNo] varchar(50) NULL, 
	[invoicedDate] varchar(20) NULL, 
	[item_description] varchar(255) NULL, 
	[customerName] varchar(255) NULL, 
	[salespersonCode] varchar(50) NULL, 
	[InsertDate] datetime2(3) NULL, 
	[UpdateDate] datetime2(3) NULL, 
	[salesQty] real NULL, 
	[remainingQty] real NULL
);