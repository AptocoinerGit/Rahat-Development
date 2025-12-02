CREATE TABLE [gold].[BHReport_AuditLog] (

	[RunStartTime] datetime2(3) NULL, 
	[RunEndTime] datetime2(3) NULL, 
	[Status] varchar(20) NULL, 
	[InsertCount] int NULL, 
	[UpdateCount] int NULL, 
	[DeleteCount] int NULL, 
	[TotalProcessed] int NULL, 
	[ErrorMessage] varchar(max) NULL
);