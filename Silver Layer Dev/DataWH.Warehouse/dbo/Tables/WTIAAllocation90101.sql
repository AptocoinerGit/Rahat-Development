CREATE TABLE [dbo].[WTIAAllocation90101] (

	[Code-1] varchar(max) NULL, 
	[Description-10] varchar(max) NULL, 
	[Source-20] varchar(max) NULL, 
	[BasedOnType-30] varchar(max) NULL, 
	[BasedOnCriteria-40] varchar(max) NULL, 
	[Appliesto-50] varchar(max) NULL, 
	[LimitingQtyperSource-100] real NULL, 
	[LimitingUnitType-110] varchar(max) NULL, 
	[timestamp-0] int NULL, 
	[systemId-2000000000] varchar(max) NULL, 
	[SystemCreatedAt-2000000001] datetime2(3) NULL, 
	[SystemCreatedBy-2000000002] varchar(max) NULL, 
	[SystemModifiedAt-2000000003] datetime2(3) NULL, 
	[$Company] varchar(max) NULL, 
	[$DeliveredDateTime] datetime2(3) NULL, 
	[Blocked-60] bit NULL, 
	[InsertDate] datetime2(3) NULL, 
	[UpdateDate] datetime2(3) NULL
);