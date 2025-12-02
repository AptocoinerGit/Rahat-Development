[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "BinContent7302_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared BinContent7302 = let
  Source = Excel.Workbook(Web.Contents("https://www.dropbox.com/scl/fi/znd9jqzokd89u0fph5nv2/Sample-Data.xlsx?rlkey=e88is46o5bld47q6beqwunvo9&st=em7oqanm&dl=1"), null, true),
  #"Navigation 1" = Source{[Item = "BinContent7302", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"SystemCreatedAt-2000000001", type datetime}, {"SystemCreatedBy-2000000002", type text}, {"SystemModifiedAt-2000000003", type datetime}, {"SystemModifiedBy-2000000004", type text}, {"$Company", type text}, {"$DeliveredDateTime", type datetime}, {"VariantCode-5402", type text}, {"QtyperUnitofMeasure-5404", Int64.Type}, {"UnitofMeasureCode-5407", type text}, {"Dedicated-6502", Int64.Type}, {"timestamp-0", Int64.Type}, {"systemId-2000000000", type text}, {"MinQty-15", Int64.Type}, {"MaxQty-16", Int64.Type}, {"BinRanking-21", Int64.Type}, {"Fixed-37", Int64.Type}, {"CrossDockBin-40", Int64.Type}, {"Default-41", Int64.Type}, {"ZoneCode-2", type text}, {"BinCode-3", type text}, {"ItemNo-4", type text}, {"BinTypeCode-10", type text}, {"WarehouseClassCode-11", type text}, {"BlockMovement-12", type text}, {"LocationCode-1", type text}})
in
  #"Changed column type";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "ItemReference5777_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared ItemReference5777 = let
  Source = Excel.Workbook(Web.Contents("https://www.dropbox.com/scl/fi/znd9jqzokd89u0fph5nv2/Sample-Data.xlsx?rlkey=e88is46o5bld47q6beqwunvo9&st=em7oqanm&dl=1"), null, true),
  #"Navigation 1" = Source{[Item = "ItemReference5777", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"ItemNo-1", type text}, {"VariantCode-2", type text}, {"UnitofMeasure-3", type text}, {"ReferenceType-4", type text}, {"ReferenceTypeNo-5", type text}, {"ReferenceNo-6", type text}, {"$Company", type text}, {"$DeliveredDateTime", type datetime}, {"timestamp-0", Int64.Type}, {"systemId-2000000000", type text}, {"SystemCreatedAt-2000000001", type datetime}, {"SystemCreatedBy-2000000002", type text}, {"SystemModifiedAt-2000000003", type datetime}, {"SystemModifiedBy-2000000004", type text}, {"Description-7", type text}, {"StartingDate-10", type text}, {"EndingDate-11", type text}, {"SupplierRefEntryNo-8000", Int64.Type}, {"WTBABarcodeType-87000", type text}, {"Description2-9", type text}})
in
  #"Changed column type";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "TeamSalesperson5084_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared TeamSalesperson5084 = let
  Source = Excel.Workbook(Web.Contents("https://www.dropbox.com/scl/fi/znd9jqzokd89u0fph5nv2/Sample-Data.xlsx?rlkey=e88is46o5bld47q6beqwunvo9&st=em7oqanm&dl=1"), null, true),
  #"Navigation 1" = Source{[Item = "TeamSalesperson5084", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"SystemCreatedBy-2000000002", type text}, {"SystemModifiedAt-2000000003", type datetime}, {"SystemModifiedBy-2000000004", type text}, {"$Company", type text}, {"$DeliveredDateTime", type datetime}, {"TeamCode-1", type text}, {"SalespersonCode-2", type text}, {"timestamp-0", Int64.Type}, {"systemId-2000000000", type text}, {"SystemCreatedAt-2000000001", type datetime}})
in
  #"Changed column type";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "WTBAOriginRegion87005_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared WTBAOriginRegion87005 = let
  Source = Excel.Workbook(Web.Contents("https://www.dropbox.com/scl/fi/znd9jqzokd89u0fph5nv2/Sample-Data.xlsx?rlkey=e88is46o5bld47q6beqwunvo9&st=em7oqanm&dl=1"), null, true),
  #"Navigation 1" = Source{[Item = "WTBAOriginRegion87005", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Code-1", type text}, {"Description-10", type text}, {"SystemModifiedBy-2000000004", type text}, {"$Company", type text}, {"$DeliveredDateTime", type datetime}, {"CountryCode-20", type text}, {"timestamp-0", Int64.Type}, {"systemId-2000000000", type text}, {"SystemCreatedAt-2000000001", type datetime}, {"SystemCreatedBy-2000000002", type text}, {"SystemModifiedAt-2000000003", type datetime}})
in
  #"Changed column type";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "WTBAVarietal87014_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared WTBAVarietal87014 = let
  Source = Excel.Workbook(Web.Contents("https://www.dropbox.com/scl/fi/znd9jqzokd89u0fph5nv2/Sample-Data.xlsx?rlkey=e88is46o5bld47q6beqwunvo9&st=em7oqanm&dl=1"), null, true),
  #"Navigation 1" = Source{[Item = "WTBAVarietal87014", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Code-1", type text}, {"Description-10", type text}, {"timestamp-0", Int64.Type}, {"systemId-2000000000", type text}, {"SystemCreatedAt-2000000001", type datetime}, {"SystemCreatedBy-2000000002", type text}, {"SystemModifiedAt-2000000003", type datetime}, {"SystemModifiedBy-2000000004", type text}, {"$Company", type text}, {"$DeliveredDateTime", type datetime}})
in
  #"Changed column type";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "WTBAWineColor87016_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared WTBAWineColor87016 = let
  Source = Excel.Workbook(Web.Contents("https://www.dropbox.com/scl/fi/znd9jqzokd89u0fph5nv2/Sample-Data.xlsx?rlkey=e88is46o5bld47q6beqwunvo9&st=em7oqanm&dl=1"), null, true),
  #"Navigation 1" = Source{[Item = "WTBAWineColor87016", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Code-1", type text}, {"Description-10", type text}, {"timestamp-0", Int64.Type}, {"systemId-2000000000", type text}, {"SystemCreatedAt-2000000001", type datetime}, {"SystemCreatedBy-2000000002", type text}, {"SystemModifiedAt-2000000003", type datetime}, {"SystemModifiedBy-2000000004", type text}, {"$Company", type text}, {"$DeliveredDateTime", type datetime}})
in
  #"Changed column type";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "WTIAAllocationLedgerEntry90103_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared WTIAAllocationLedgerEntry90103 = let
  Source = Excel.Workbook(Web.Contents("https://www.dropbox.com/scl/fi/znd9jqzokd89u0fph5nv2/Sample-Data.xlsx?rlkey=e88is46o5bld47q6beqwunvo9&st=em7oqanm&dl=1"), null, true),
  #"Navigation 1" = Source{[Item = "WTIAAllocationLedgerEntry90103", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"EntryNo-1", Int64.Type}, {"Type-10", type text}, {"ItemNo-20", type text}, {"VariantCode-25", type text}, {"AllocationCode-30", type text}, {"DocumentNo-40", type text}, {"SystemCreatedAt-2000000001", type datetime}, {"SystemCreatedBy-2000000002", type text}, {"SystemModifiedAt-2000000003", type datetime}, {"SystemModifiedBy-2000000004", type text}, {"$Company", type text}, {"$DeliveredDateTime", type datetime}, {"RemainingGallons-213", Int64.Type}, {"SourceType-280", type text}, {"SourceNo-290", type text}, {"AppliedtoEntryNo-500", Int64.Type}, {"timestamp-0", Int64.Type}, {"systemId-2000000000", type text}, {"QuantityBottle-201", Int64.Type}, {"Liters-202", type number}, {"Gallons-203", type number}, {"RemainingQtyCase-210", Int64.Type}, {"RemainingQtyBottle-211", Int64.Type}, {"RemainingLiters-212", Int64.Type}, {"Description-120", type text}, {"SalesOrderNo-130", type text}, {"SalesOrderLineNo-140", Int64.Type}, {"PostedSalesInvoiceNo-150", type text}, {"PostedSalesLineNo-160", Int64.Type}, {"QuantityCase-200", type number}, {"LocationCode-50", type text}, {"QuantityBase-60", type number}, {"RemainingQtyBase-70", Int64.Type}, {"Open-90", Int64.Type}, {"PostingDate-100", Int64.Type}, {"ExpirationDate-110", type text}}),
  #"Changed column type 1" = Table.TransformColumnTypes(#"Changed column type", {{"PostingDate-100", type date}, {"QuantityBase-60", type number}})
in
  #"Changed column type 1";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "WTBASubRegion87017_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared WTBASubRegion87017 = let
  Source = Excel.Workbook(Web.Contents("https://www.dropbox.com/scl/fi/znd9jqzokd89u0fph5nv2/Sample-Data.xlsx?rlkey=e88is46o5bld47q6beqwunvo9&st=em7oqanm&dl=1"), null, true),
  #"Navigation 1" = Source{[Item = "WTBASubRegion87017", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Code-1", type text}, {"Description-10", type text}, {"timestamp-0", Int64.Type}, {"systemId-2000000000", type text}, {"SystemCreatedAt-2000000001", type datetime}, {"SystemCreatedBy-2000000002", type text}, {"SystemModifiedAt-2000000003", type datetime}, {"SystemModifiedBy-2000000004", type text}, {"$Company", type text}, {"$DeliveredDateTime", type datetime}})
in
  #"Changed column type";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "WTIAAllocation90101_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared WTIAAllocation90101 = let
  Source = Excel.Workbook(Web.Contents("https://www.dropbox.com/scl/fi/znd9jqzokd89u0fph5nv2/Sample-Data.xlsx?rlkey=e88is46o5bld47q6beqwunvo9&st=em7oqanm&dl=1"), null, true),
  #"Navigation 1" = Source{[Item = "WTIAAllocation90101", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Code-1", type text}, {"Description-10", type text}, {"Source-20", type text}, {"BasedOnType-30", type text}, {"BasedOnCriteria-40", type text}, {"Appliesto-50", type text}, {"SystemCreatedBy-2000000002", type text}, {"SystemModifiedAt-2000000003", type datetime}, {"SystemModifiedBy-2000000004", type text}, {"$Company", type text}, {"$DeliveredDateTime", type datetime}, {"Blocked-60", Int64.Type}, {"LimitingQtyperSource-100", Int64.Type}, {"LimitingUnitType-110", type text}, {"timestamp-0", Int64.Type}, {"systemId-2000000000", type text}, {"SystemCreatedAt-2000000001", type datetime}})
in
  #"Changed column type";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "WTBAVintage87008_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared WTBAVintage87008 = let
  Source = Excel.Workbook(Web.Contents("https://www.dropbox.com/scl/fi/znd9jqzokd89u0fph5nv2/Sample-Data.xlsx?rlkey=e88is46o5bld47q6beqwunvo9&st=em7oqanm&dl=1"), null, true),
  #"Navigation 1" = Source{[Item = "WTBAVintage87008", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"timestamp-0", Int64.Type}, {"systemId-2000000000", type text}, {"SystemCreatedAt-2000000001", type datetime}, {"SystemCreatedBy-2000000002", type text}, {"SystemModifiedAt-2000000003", type datetime}, {"SystemModifiedBy-2000000004", type text}, {"$Company", type text}, {"$DeliveredDateTime", type datetime}}),
  #"Replaced value" = Table.ReplaceValue(#"Changed column type", "N/V", "NULL", Replacer.ReplaceValue, {"Code-1"}),
  #"Changed column type 1" = Table.TransformColumnTypes(#"Replaced value", {{"Code-1", Int64.Type}}),
  #"Replaced value 1" = Table.ReplaceValue(#"Changed column type 1", "N/V", "NULL", Replacer.ReplaceValue, {"Description-10"}),
  #"Changed column type 2" = Table.TransformColumnTypes(#"Replaced value 1", {{"Description-10", Int64.Type}})
in
  #"Changed column type 2";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "WTIAAllocSalesLineEntry90107_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared WTIAAllocSalesLineEntry90107 = let
  Source = Excel.Workbook(Web.Contents("https://www.dropbox.com/scl/fi/znd9jqzokd89u0fph5nv2/Sample-Data.xlsx?rlkey=e88is46o5bld47q6beqwunvo9&st=em7oqanm&dl=1"), null, true),
  #"Navigation 1" = Source{[Item = "WTIAAllocSalesLineEntry90107", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"DocumentType-1", type text}, {"DocumentNo-2", type text}, {"DocumentLineNo-3", Int64.Type}, {"LineNo-4", Int64.Type}, {"AllocationCode-10", type text}, {"ItemNo-20", type text}, {"$DeliveredDateTime", type datetime}, {"systemId-2000000000", type text}, {"SystemCreatedAt-2000000001", type datetime}, {"SystemCreatedBy-2000000002", type text}, {"SystemModifiedAt-2000000003", type datetime}, {"SystemModifiedBy-2000000004", type text}, {"$Company", type text}, {"QuantitytoShip-170", Int64.Type}, {"QuantitytoShipBase-175", Int64.Type}, {"AllocLedgEntryLocationCode-180", type text}, {"SourceType-280", type text}, {"SourceNo-290", type text}, {"timestamp-0", Int64.Type}, {"BaseUnitofMeasureCode-70", type text}, {"TransactionType-80", type text}, {"AppliestoEntryNo-90", Int64.Type}, {"LocationCode-100", type text}, {"QUantityShipped-160", Int64.Type}, {"QuantityShippedBase-165", Int64.Type}, {"Quantity-30", type number}, {"UnitofMeasureCode-40", type text}, {"QuantityBase-50", type number}, {"QuantityCase-51", type number}, {"QuantityBottle-52", Int64.Type}, {"QtyperUnitOfMeasure-60", Int64.Type}}),
  #"Changed column type 1" = Table.TransformColumnTypes(#"Changed column type", {{"QuantitytoShip-170", type number}, {"QuantitytoShipBase-175", type number}, {"QUantityShipped-160", type number}, {"QuantityShippedBase-165", type number}, {"QuantityBottle-52", type number}, {"QtyperUnitOfMeasure-60", type number}})
in
  #"Changed column type 1";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "WarehouseEntry7312_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared WarehouseEntry7312 = let
  Source = Excel.Workbook(Web.Contents("https://www.dropbox.com/scl/fi/znd9jqzokd89u0fph5nv2/Sample-Data.xlsx?rlkey=e88is46o5bld47q6beqwunvo9&st=em7oqanm&dl=1"), null, true),
  #"Navigation 1" = Source{[Item = "WarehouseEntry7312", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"EntryNo-1", Int64.Type}, {"JournalBatchName-2", type text}, {"LineNo-3", Int64.Type}, {"RegisteringDate-4", Int64.Type}, {"LocationCode-5", type text}, {"ZoneCode-6", type text}, {"SystemModifiedBy-2000000004", type text}, {"$Company", type text}, {"$DeliveredDateTime", type datetime}, {"WTBABillHoldType-87571", type text}, {"timestamp-0", Int64.Type}, {"systemId-2000000000", type text}, {"SystemCreatedAt-2000000001", type datetime}, {"SystemCreatedBy-2000000002", type text}, {"SystemModifiedAt-2000000003", type datetime}, {"PhysInvtCountingPeriodType-7381", type text}, {"Dedicated-7382", Int64.Type}, {"WTBAAlcoholTypeCode-87050", type text}, {"WTBAQuantityCase-87100", type number}, {"WTBAQuantityBottle-87101", Int64.Type}, {"WTBABillHoldExpirationDate-87570", type text}, {"SerialNo-6500", type text}, {"LotNo-6501", type text}, {"WarrantyDate-6502", type text}, {"ExpirationDate-6503", type text}, {"PackageNo-6515", type text}, {"PhysInvtCountingPeriodCode-7380", type text}, {"ReferenceDocument-60", type text}, {"ReferenceNo-61", type text}, {"UserID-67", type text}, {"VariantCode-5402", type text}, {"QtyperUnitofMeasure-5404", Int64.Type}, {"UnitofMeasureCode-5407", type text}, {"Weight-41", Int64.Type}, {"JournalTemplateName-45", type text}, {"WhseDocumentNo-50", type text}, {"WhseDocumentType-51", type text}, {"WhseDocumentLineNo-52", Int64.Type}, {"EntryType-55", type text}, {"SourceDocument-25", type text}, {"SourceCode-26", type text}, {"ReasonCode-29", type text}, {"NoSeries-33", type text}, {"BinTypeCode-35", type text}, {"Cubage-40", Int64.Type}, {"SIFTBucketNo-13", Int64.Type}, {"SourceType-20", Int64.Type}, {"SourceSubtype-21", Int64.Type}, {"SourceNo-22", type text}, {"SourceLineNo-23", Int64.Type}, {"SourceSublineNo-24", Int64.Type}, {"BinCode-7", type text}, {"Description-8", type text}, {"ItemNo-9", type text}, {"Quantity-10", type number}, {"QtyBase-11", type number}, {"WarehouseRegisterNo-12", Int64.Type}}),
  #"Changed column type 1" = Table.TransformColumnTypes(#"Changed column type", {{"RegisteringDate-4", type date}})
in
  #"Changed column type 1";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "PriceListHeader7000_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared PriceListHeader7000 = let
  Source = Excel.Workbook(Web.Contents("https://www.dropbox.com/scl/fi/znd9jqzokd89u0fph5nv2/Sample-Data.xlsx?rlkey=e88is46o5bld47q6beqwunvo9&st=em7oqanm&dl=1"), null, true),
  #"Navigation 1" = Source{[Item = "PriceListHeader7000", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"SystemModifiedBy-2000000004", type text}, {"$Company", type text}, {"$DeliveredDateTime", type datetime}, {"AssigntoParentNo-22", type text}, {"timestamp-0", Int64.Type}, {"systemId-2000000000", type text}, {"SystemCreatedAt-2000000001", type datetime}, {"SystemCreatedBy-2000000002", type text}, {"SystemModifiedAt-2000000003", type datetime}, {"AllowInvoiceDisc-16", Int64.Type}, {"NoSeries-17", type text}, {"Status-18", type text}, {"FilterSourceNo-19", type text}, {"AllowUpdatingDefaults-20", Int64.Type}, {"AssigntoNo-21", type text}, {"CurrencyCode-10", type text}, {"StartingDate-11", type text}, {"EndingDate-12", type text}, {"PriceIncludesVAT-13", Int64.Type}, {"VATBusPostingGrPrice-14", type text}, {"AllowLineDisc-15", Int64.Type}, {"SourceType-4", type text}, {"SourceNo-5", type text}, {"ParentSourceNo-6", type text}, {"SourceID-7", type text}, {"PriceType-8", type text}, {"AmountType-9", type text}, {"Code-1", type text}, {"Description-2", type text}, {"SourceGroup-3", type text}})
in
  #"Changed column type";
shared BinContent7302_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "2f1c0603-0152-47df-8538-a5b9c2fed106"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "6b9b268b-1bfc-4e19-9bea-11d7a6b8d89b"]}[Data],
  TableNavigation = Navigation_2{[Id = "BinContent7302", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared ItemReference5777_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "2f1c0603-0152-47df-8538-a5b9c2fed106"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "6b9b268b-1bfc-4e19-9bea-11d7a6b8d89b"]}[Data],
  TableNavigation = Navigation_2{[Id = "ItemReference5777", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared TeamSalesperson5084_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "2f1c0603-0152-47df-8538-a5b9c2fed106"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "6b9b268b-1bfc-4e19-9bea-11d7a6b8d89b"]}[Data],
  TableNavigation = Navigation_2{[Id = "TeamSalesperson5084", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared WTBAOriginRegion87005_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "2f1c0603-0152-47df-8538-a5b9c2fed106"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "6b9b268b-1bfc-4e19-9bea-11d7a6b8d89b"]}[Data],
  TableNavigation = Navigation_2{[Id = "WTBAOriginRegion87005", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared WTBAVarietal87014_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "2f1c0603-0152-47df-8538-a5b9c2fed106"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "6b9b268b-1bfc-4e19-9bea-11d7a6b8d89b"]}[Data],
  TableNavigation = Navigation_2{[Id = "WTBAVarietal87014", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared WTBAWineColor87016_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "2f1c0603-0152-47df-8538-a5b9c2fed106"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "6b9b268b-1bfc-4e19-9bea-11d7a6b8d89b"]}[Data],
  TableNavigation = Navigation_2{[Id = "WTBAWineColor87016", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared WTIAAllocationLedgerEntry90103_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "2f1c0603-0152-47df-8538-a5b9c2fed106"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "6b9b268b-1bfc-4e19-9bea-11d7a6b8d89b"]}[Data],
  TableNavigation = Navigation_2{[Id = "WTIAAllocationLedgerEntry90103", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared WTBASubRegion87017_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "2f1c0603-0152-47df-8538-a5b9c2fed106"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "6b9b268b-1bfc-4e19-9bea-11d7a6b8d89b"]}[Data],
  TableNavigation = Navigation_2{[Id = "WTBASubRegion87017", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared WTIAAllocation90101_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "2f1c0603-0152-47df-8538-a5b9c2fed106"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "6b9b268b-1bfc-4e19-9bea-11d7a6b8d89b"]}[Data],
  TableNavigation = Navigation_2{[Id = "WTIAAllocation90101", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared WTBAVintage87008_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "2f1c0603-0152-47df-8538-a5b9c2fed106"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "6b9b268b-1bfc-4e19-9bea-11d7a6b8d89b"]}[Data],
  TableNavigation = Navigation_2{[Id = "WTBAVintage87008", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared WTIAAllocSalesLineEntry90107_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "2f1c0603-0152-47df-8538-a5b9c2fed106"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "6b9b268b-1bfc-4e19-9bea-11d7a6b8d89b"]}[Data],
  TableNavigation = Navigation_2{[Id = "WTIAAllocSalesLineEntry90107", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared WarehouseEntry7312_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "2f1c0603-0152-47df-8538-a5b9c2fed106"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "6b9b268b-1bfc-4e19-9bea-11d7a6b8d89b"]}[Data],
  TableNavigation = Navigation_2{[Id = "WarehouseEntry7312", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared PriceListHeader7000_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "2f1c0603-0152-47df-8538-a5b9c2fed106"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "6b9b268b-1bfc-4e19-9bea-11d7a6b8d89b"]}[Data],
  TableNavigation = Navigation_2{[Id = "PriceListHeader7000", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
