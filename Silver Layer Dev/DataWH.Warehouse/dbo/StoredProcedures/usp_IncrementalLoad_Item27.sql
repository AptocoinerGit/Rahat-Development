---  Exec usp_IncrementalLoad_Item27
---  select * from [DataWH].[dbo].[Item27]
---  TRUNCATE TABLE [DataWH].[dbo].[Item27]


CREATE   PROCEDURE usp_IncrementalLoad_Item27
AS
BEGIN
    -- Step 1: Insert new records
    INSERT INTO [DataWH].[dbo].[Item27] (
        [ApplicationWkshUserID-521],
        [WTIAAllocJnlUnitofMeasure-90107],
        [PutawayUnitofMeasureCode-7307],
        [GTIN-1217],
        [VendorItemNo-32],
        [WCINV08WHItemNo-50045],
        [WTUSSalesLimAllocMethod-88035],
        [LeadTimeCalculation-33],
        [WTBAClosureTypeCode-87065],
        [WTBASubRegionCode-87006],
        [WarehouseClassCode-7300],
        [ItemDiscGroup-14],
        [WTBAWineColor-87025],
        [WTUSCOLANo-88500],
        [WTBAOriginRegionCode-87005],
        [WTBAVarietalCode-87007],
        [WTBABrandNo-87150],
        [WTBAVintageCode-87000],
        [WTBAAlcoholTypeCode-87015],
        [WCINV04PurchaserCode-50010],
        [WTBALabelCode-87080],
        [CountryRegionofOriginCode-95],
        [WCINV14ItemPortfolio-50150],
        [GenProdPostingGroup-91],
        [InventoryPostingGroup-11],
        [VendorNo-31],
        [WTBABottleSize-87020],
        [$Company],
        [$DeliveredDateTime],
        [AllowInvoiceDisc-15],
        [AllowOnlineAdjustment-30],
        [AssemblyPolicy-910],
        [AutomaticExtTexts-96],
        [BaseUnitofMeasure-8],
        [Blocked-54],
        [BudgetProfit-52],
        [BudgetQuantity-50],
        [BudgetedAmount-51],
        [CarbonCreditPerUOM-6213],
        [CommissionGroup-17],
        [CostingMethod-21],
        [CostisAdjusted-29],
        -- [CoupledtoCRM-720],
        [CreatedFromNonstockItem-5703],
        [Critical-99000875],
        [DampenerQuantity-5446],
        [Description-3],
        [DiscreteOrderQuantity-5410],
        [DutyDue-39],
        [DutyUnitConversion-48],
        [ExcludedfromCostAdjustment-5801],
        [FlushingMethod-5417],
        [GHGCredit-6212],
        [GenProdPostingGroupId-8007],
        [GrossWeight-41],
        [HasSalesForecast-21850],
        [IncludeInventory-5441],
        [IndirectCost-28],
        [InventoryPostingGroupId-8006],
        [InventoryValueZero-5409],
        [ItemCategoryCode-5702],
        [ItemCategoryId-8005],
        [LastDateModified-62],
        [LastDateTimeModified-61],
        [LastDirectCost-25],
        [LastTimeModified-63],
        [LotSize-5401],
        [LowLevelCode-5400],
        [ManufacturingPolicy-5442],
        [MaximumInventory-35],
        [MaximumOrderQuantity-5412],
        [MinimumOrderQuantity-5411],
        [NetWeight-42],
        [No-1],
        [OrderMultiple-5414],
        [OrderTrackingPolicy-99000773],
        [OverflowLevel-5447],
        [OverheadRate-99000757],
        [PreventNegativeInventory-121],
        [PriceIncludesVAT-87],
        [PriceProfitCalculation-19],
        [PriceUnitConversion-9],
        [Profit-20],
        [PurchUnitofMeasure-5426],
        [PurchasingBlocked-8004],
        [ReorderPoint-34],
        [ReorderQuantity-36],
        [ReorderingPolicy-5440],
        [ReplenishmentSystem-5419],
        [Reserve-100],
        [RolledupCapOverheadCost-99000760],
        [RolledupCapacityCost-5405],
        [RolledupMaterialCost-5404],
        [RolledupMfgOvhdCost-99000759],
        [RolledupSubcontractedCost-99000758],
        [RoundingPrecision-5422],
        [SafetyStockQuantity-5413],
        [SalesBlocked-8003],
        [SalesUnitofMeasure-5425],
        [Scrap-5407],
        [SearchDescription-4],
        [ServiceBlocked-8010],
        --[ServiceCommitmentOption-8052],
        [SingleLevelCapOvhdCost-99000755],
        [SingleLevelCapacityCost-99000753],
        [SingleLevelMaterialCost-99000752],
        [SingleLevelMfgOvhdCost-99000756],
        [SingleLevelSubcontrdCost-99000754],
        [StandardCost-24],
        [StatisticsGroup-16],
        [StockoutWarning-120],
        [SystemCreatedAt-2000000001],
        [SystemCreatedBy-2000000002],
        [SystemModifiedAt-2000000003],
        [TaxGroupId-8002],
        [Type-10],
        [UnitCost-22],
        [UnitListPrice-38],
        [UnitPrice-18],
        [UnitVolume-44],
        [UnitofMeasureId-8001],
        [UnitsperParcel-43],
        [UseCrossDocking-7384],
        [VariantMandatoryifExists-122],
        [WCAR06SalesCommissionable-50100],
        [WCINT02ExportedtoJFHB-50250],
        [WCINT03ExportedtoMMK-50280],
        [WCINT04PABlocked-50650],
        [WCINT04SplitAllowed-50651],
        [WCINV08AgedInventory-50043],
        [WCINV08ExpectedQtyfromVend-50044],
        [WCINV08NAforSalesreps-50046],
        [WCINV08SuggestedRetailPrice-50047],
        [WCINV19DonotPrintonCat-50520],
        [WCSAL04AllowPalletDiscount-50121],
        [WCSAL04AllowSampleDiscount-50120],
        [WCTEWPrestige-50000],
        [WTBAAlcoholContent-87030],
        [WTBABiodynamic-87064],
        [WTBACasePack-87010],
        [WTBACasesperPallet-87096],
        [WTBACasesperPalletLayer-87090],
        [WTBADoNotAllowSamples-87700],
        [WTBAExclfromSampleBudget-87701],
        [WTBALastDirectCostBottle-87116],
        [WTBALastDirectCostCase-87115],
        [WTBALayersperPallet-87095],
        [WTBAOrganic-87063],
        [WTBAProof-87031],
        [WTBASalesOrderReview-87850],
        [WTBAStandardCostBottle-87121],
        [WTBAStandardCostCase-87120],
        [WTBAUnitCostBottle-87111],
        [WTBAUnitCostCase-87110],
        [WTBAVegan-87062],
        [WTIAAllocate-90100],
        [WTIAAllocationReservInt-90102],
        [WTIAAllocationisCurrent-90104],
        [WTIAFullAllocationRequired-90101],
        [WTIALimitingQtyperSource-90130],
        [WTIALimitingUnitType-90140],
        [WTUSDonotPricePost-88800],
        [WTUSSalesLimitation-88030],
        [systemId-2000000000],
        [timestamp-0],
        [InsertDate]
        
    )
    SELECT
        s.[ApplicationWkshUserID-521],
        s.[WTIAAllocJnlUnitofMeasure-90107],
        s.[PutawayUnitofMeasureCode-7307],
        s.[GTIN-1217],
        s.[VendorItemNo-32],
        s.[WCINV08WHItemNo-50045],
        s.[WTUSSalesLimAllocMethod-88035],
        s.[LeadTimeCalculation-33],
        s.[WTBAClosureTypeCode-87065],
        s.[WTBASubRegionCode-87006],
        s.[WarehouseClassCode-7300],
        s.[ItemDiscGroup-14],
        s.[WTBAWineColor-87025],
        s.[WTUSCOLANo-88500],
        s.[WTBAOriginRegionCode-87005],
        s.[WTBAVarietalCode-87007],
        s.[WTBABrandNo-87150],
        s.[WTBAVintageCode-87000],
        s.[WTBAAlcoholTypeCode-87015],
        s.[WCINV04PurchaserCode-50010],
        s.[WTBALabelCode-87080],
        s.[CountryRegionofOriginCode-95],
        s.[WCINV14ItemPortfolio-50150],
        s.[GenProdPostingGroup-91],
        s.[InventoryPostingGroup-11],
        s.[VendorNo-31],
        s.[WTBABottleSize-87020],
        s.[$Company],
        s.[$DeliveredDateTime],
        s.[AllowInvoiceDisc-15],
        s.[AllowOnlineAdjustment-30],
        s.[AssemblyPolicy-910],
        s.[AutomaticExtTexts-96],
        s.[BaseUnitofMeasure-8],
        s.[Blocked-54],
        s.[BudgetProfit-52],
        s.[BudgetQuantity-50],
        s.[BudgetedAmount-51],
        s.[CarbonCreditPerUOM-6213],
        s.[CommissionGroup-17],
        s.[CostingMethod-21],
        s.[CostisAdjusted-29],
        --s.[CoupledtoCRM-720],
        s.[CreatedFromNonstockItem-5703],
        s.[Critical-99000875],
        s.[DampenerQuantity-5446],
        s.[Description-3],
        s.[DiscreteOrderQuantity-5410],
        s.[DutyDue-39],
        s.[DutyUnitConversion-48],
        s.[ExcludedfromCostAdjustment-5801],
        s.[FlushingMethod-5417],
        s.[GHGCredit-6212],
        s.[GenProdPostingGroupId-8007],
        s.[GrossWeight-41],
        s.[HasSalesForecast-21850],
        s.[IncludeInventory-5441],
        s.[IndirectCost-28],
        s.[InventoryPostingGroupId-8006],
        s.[InventoryValueZero-5409],
        s.[ItemCategoryCode-5702],
        s.[ItemCategoryId-8005],
        s.[LastDateModified-62],
        s.[LastDateTimeModified-61],
        s.[LastDirectCost-25],
        s.[LastTimeModified-63],
        s.[LotSize-5401],
        s.[LowLevelCode-5400],
        s.[ManufacturingPolicy-5442],
        s.[MaximumInventory-35],
        s.[MaximumOrderQuantity-5412],
        s.[MinimumOrderQuantity-5411],
        s.[NetWeight-42],
        s.[No-1],
        s.[OrderMultiple-5414],
        s.[OrderTrackingPolicy-99000773],
        s.[OverflowLevel-5447],
        s.[OverheadRate-99000757],
        s.[PreventNegativeInventory-121],
        s.[PriceIncludesVAT-87],
        s.[PriceProfitCalculation-19],
        s.[PriceUnitConversion-9],
        s.[Profit-20],
        s.[PurchUnitofMeasure-5426],
        s.[PurchasingBlocked-8004],
        s.[ReorderPoint-34],
        s.[ReorderQuantity-36],
        s.[ReorderingPolicy-5440],
        s.[ReplenishmentSystem-5419],
        s.[Reserve-100],
        s.[RolledupCapOverheadCost-99000760],
        s.[RolledupCapacityCost-5405],
        s.[RolledupMaterialCost-5404],
        s.[RolledupMfgOvhdCost-99000759],
        s.[RolledupSubcontractedCost-99000758],
        s.[RoundingPrecision-5422],
        s.[SafetyStockQuantity-5413],
        s.[SalesBlocked-8003],
        s.[SalesUnitofMeasure-5425],
        s.[Scrap-5407],
        s.[SearchDescription-4],
        s.[ServiceBlocked-8010],
        --s.[ServiceCommitmentOption-8052],
        s.[SingleLevelCapOvhdCost-99000755],
        s.[SingleLevelCapacityCost-99000753],
        s.[SingleLevelMaterialCost-99000752],
        s.[SingleLevelMfgOvhdCost-99000756],
        s.[SingleLevelSubcontrdCost-99000754],
        s.[StandardCost-24],
        s.[StatisticsGroup-16],
        s.[StockoutWarning-120],
        s.[SystemCreatedAt-2000000001],
        s.[SystemCreatedBy-2000000002],
        s.[SystemModifiedAt-2000000003],
        s.[TaxGroupId-8002],
        s.[Type-10],
        s.[UnitCost-22],
        s.[UnitListPrice-38],
        s.[UnitPrice-18],
        s.[UnitVolume-44],
        s.[UnitofMeasureId-8001],
        s.[UnitsperParcel-43],
        s.[UseCrossDocking-7384],
        s.[VariantMandatoryifExists-122],
        s.[WCAR06SalesCommissionable-50100],
        s.[WCINT02ExportedtoJFHB-50250],
        s.[WCINT03ExportedtoMMK-50280],
        s.[WCINT04PABlocked-50650],
        s.[WCINT04SplitAllowed-50651],
        s.[WCINV08AgedInventory-50043],
        s.[WCINV08ExpectedQtyfromVend-50044],
        s.[WCINV08NAforSalesreps-50046],
        s.[WCINV08SuggestedRetailPrice-50047],
        s.[WCINV19DonotPrintonCat-50520],
        s.[WCSAL04AllowPalletDiscount-50121],
        s.[WCSAL04AllowSampleDiscount-50120],
        s.[WCTEWPrestige-50000],
        s.[WTBAAlcoholContent-87030],
        s.[WTBABiodynamic-87064],
        s.[WTBACasePack-87010],
        s.[WTBACasesperPallet-87096],
        s.[WTBACasesperPalletLayer-87090],
        s.[WTBADoNotAllowSamples-87700],
        s.[WTBAExclfromSampleBudget-87701],
        s.[WTBALastDirectCostBottle-87116],
        s.[WTBALastDirectCostCase-87115],
        s.[WTBALayersperPallet-87095],
        s.[WTBAOrganic-87063],
        s.[WTBAProof-87031],
        s.[WTBASalesOrderReview-87850],
        s.[WTBAStandardCostBottle-87121],
        s.[WTBAStandardCostCase-87120],
        s.[WTBAUnitCostBottle-87111],
        s.[WTBAUnitCostCase-87110],
        s.[WTBAVegan-87062],
        s.[WTIAAllocate-90100],
        s.[WTIAAllocationReservInt-90102],
        s.[WTIAAllocationisCurrent-90104],
        s.[WTIAFullAllocationRequired-90101],
        s.[WTIALimitingQtyperSource-90130],
        s.[WTIALimitingUnitType-90140],
        s.[WTUSDonotPricePost-88800],
        s.[WTUSSalesLimitation-88030],
        s.[systemId-2000000000],
        s.[timestamp-0],
        GETDATE()
       
    FROM [Rahat_LH].[dbo].[Item27] s
    LEFT JOIN [DataWH].[dbo].[Item27] t
        ON s.[systemId-2000000000] = t.[systemId-2000000000]
    WHERE t.[systemId-2000000000] IS NULL
      AND s.[systemId-2000000000] IS NOT NULL;

    -- Step 2: Update changed records
    UPDATE t
    SET
        t.[ApplicationWkshUserID-521] = s.[ApplicationWkshUserID-521],
        t.[WTIAAllocJnlUnitofMeasure-90107] = s.[WTIAAllocJnlUnitofMeasure-90107],
        t.[PutawayUnitofMeasureCode-7307] = s.[PutawayUnitofMeasureCode-7307],
        t.[GTIN-1217] = s.[GTIN-1217],
        t.[VendorItemNo-32] = s.[VendorItemNo-32],
        t.[WCINV08WHItemNo-50045] = s.[WCINV08WHItemNo-50045],
        t.[WTUSSalesLimAllocMethod-88035] = s.[WTUSSalesLimAllocMethod-88035],
        t.[LeadTimeCalculation-33] = s.[LeadTimeCalculation-33],
        t.[WTBAClosureTypeCode-87065] = s.[WTBAClosureTypeCode-87065],
        t.[WTBASubRegionCode-87006] = s.[WTBASubRegionCode-87006],
        t.[WarehouseClassCode-7300] = s.[WarehouseClassCode-7300],
        t.[ItemDiscGroup-14] = s.[ItemDiscGroup-14],
        t.[WTBAWineColor-87025] = s.[WTBAWineColor-87025],
        t.[WTUSCOLANo-88500] = s.[WTUSCOLANo-88500],
        t.[WTBAOriginRegionCode-87005] = s.[WTBAOriginRegionCode-87005],
        t.[WTBAVarietalCode-87007] = s.[WTBAVarietalCode-87007],
        t.[WTBABrandNo-87150] = s.[WTBABrandNo-87150],
        t.[WTBAVintageCode-87000] = s.[WTBAVintageCode-87000],
        t.[WTBAAlcoholTypeCode-87015] = s.[WTBAAlcoholTypeCode-87015],
        t.[WCINV04PurchaserCode-50010] = s.[WCINV04PurchaserCode-50010],
        t.[WTBALabelCode-87080] = s.[WTBALabelCode-87080],
        t.[CountryRegionofOriginCode-95] = s.[CountryRegionofOriginCode-95],
        t.[WCINV14ItemPortfolio-50150] = s.[WCINV14ItemPortfolio-50150],
        t.[GenProdPostingGroup-91] = s.[GenProdPostingGroup-91],
        t.[InventoryPostingGroup-11] = s.[InventoryPostingGroup-11],
        t.[VendorNo-31] = s.[VendorNo-31],
        t.[WTBABottleSize-87020] = s.[WTBABottleSize-87020],
        t.[$Company] = s.[$Company],
        t.[$DeliveredDateTime] = s.[$DeliveredDateTime],
        t.[AllowInvoiceDisc-15] = s.[AllowInvoiceDisc-15],
        t.[AllowOnlineAdjustment-30] = s.[AllowOnlineAdjustment-30],
        t.[AssemblyPolicy-910] = s.[AssemblyPolicy-910],
        t.[AutomaticExtTexts-96] = s.[AutomaticExtTexts-96],
        t.[BaseUnitofMeasure-8] = s.[BaseUnitofMeasure-8],
        t.[Blocked-54] = s.[Blocked-54],
        t.[BudgetProfit-52] = s.[BudgetProfit-52],
        t.[BudgetQuantity-50] = s.[BudgetQuantity-50],
        t.[BudgetedAmount-51] = s.[BudgetedAmount-51],
        t.[CarbonCreditPerUOM-6213] = s.[CarbonCreditPerUOM-6213],
        t.[CommissionGroup-17] = s.[CommissionGroup-17],
        t.[CostingMethod-21] = s.[CostingMethod-21],
        t.[CostisAdjusted-29] = s.[CostisAdjusted-29],
        --  t.[CoupledtoCRM-720] = s.[CoupledtoCRM-720],
        t.[CreatedFromNonstockItem-5703] = s.[CreatedFromNonstockItem-5703],
        t.[Critical-99000875] = s.[Critical-99000875],
        t.[DampenerQuantity-5446] = s.[DampenerQuantity-5446],
        t.[Description-3] = s.[Description-3],
        t.[DiscreteOrderQuantity-5410] = s.[DiscreteOrderQuantity-5410],
        t.[DutyDue-39] = s.[DutyDue-39],
        t.[DutyUnitConversion-48] = s.[DutyUnitConversion-48],
        t.[ExcludedfromCostAdjustment-5801] = s.[ExcludedfromCostAdjustment-5801],
        t.[FlushingMethod-5417] = s.[FlushingMethod-5417],
        t.[GHGCredit-6212] = s.[GHGCredit-6212],
        t.[GenProdPostingGroupId-8007] = s.[GenProdPostingGroupId-8007],
        t.[GrossWeight-41] = s.[GrossWeight-41],
        t.[HasSalesForecast-21850] = s.[HasSalesForecast-21850],
        t.[IncludeInventory-5441] = s.[IncludeInventory-5441],
        t.[IndirectCost-28] = s.[IndirectCost-28],
        t.[InventoryPostingGroupId-8006] = s.[InventoryPostingGroupId-8006],
        t.[InventoryValueZero-5409] = s.[InventoryValueZero-5409],
        t.[ItemCategoryCode-5702] = s.[ItemCategoryCode-5702],
        t.[ItemCategoryId-8005] = s.[ItemCategoryId-8005],
        t.[LastDateModified-62] = s.[LastDateModified-62],
        t.[LastDateTimeModified-61] = s.[LastDateTimeModified-61],
        t.[LastDirectCost-25] = s.[LastDirectCost-25],
        t.[LastTimeModified-63] = s.[LastTimeModified-63],
        t.[LotSize-5401] = s.[LotSize-5401],
        t.[LowLevelCode-5400] = s.[LowLevelCode-5400],
        t.[ManufacturingPolicy-5442] = s.[ManufacturingPolicy-5442],
        t.[MaximumInventory-35] = s.[MaximumInventory-35],
        t.[MaximumOrderQuantity-5412] = s.[MaximumOrderQuantity-5412],
        t.[MinimumOrderQuantity-5411] = s.[MinimumOrderQuantity-5411],
        t.[NetWeight-42] = s.[NetWeight-42],
        t.[No-1] = s.[No-1],
        t.[OrderMultiple-5414] = s.[OrderMultiple-5414],
        t.[OrderTrackingPolicy-99000773] = s.[OrderTrackingPolicy-99000773],
        t.[OverflowLevel-5447] = s.[OverflowLevel-5447],
        t.[OverheadRate-99000757] = s.[OverheadRate-99000757],
        t.[PreventNegativeInventory-121] = s.[PreventNegativeInventory-121],
        t.[PriceIncludesVAT-87] = s.[PriceIncludesVAT-87],
        t.[PriceProfitCalculation-19] = s.[PriceProfitCalculation-19],
        t.[PriceUnitConversion-9] = s.[PriceUnitConversion-9],
        t.[Profit-20] = s.[Profit-20],
        t.[PurchUnitofMeasure-5426] = s.[PurchUnitofMeasure-5426],
        t.[PurchasingBlocked-8004] = s.[PurchasingBlocked-8004],
        t.[ReorderPoint-34] = s.[ReorderPoint-34],
        t.[ReorderQuantity-36] = s.[ReorderQuantity-36],
        t.[ReorderingPolicy-5440] = s.[ReorderingPolicy-5440],
        t.[ReplenishmentSystem-5419] = s.[ReplenishmentSystem-5419],
        t.[Reserve-100] = s.[Reserve-100],
        t.[RolledupCapOverheadCost-99000760] = s.[RolledupCapOverheadCost-99000760],
        t.[RolledupCapacityCost-5405] = s.[RolledupCapacityCost-5405],
        t.[RolledupMaterialCost-5404] = s.[RolledupMaterialCost-5404],
        t.[RolledupMfgOvhdCost-99000759] = s.[RolledupMfgOvhdCost-99000759],
        t.[RolledupSubcontractedCost-99000758] = s.[RolledupSubcontractedCost-99000758],
        t.[RoundingPrecision-5422] = s.[RoundingPrecision-5422],
        t.[SafetyStockQuantity-5413] = s.[SafetyStockQuantity-5413],
        t.[SalesBlocked-8003] = s.[SalesBlocked-8003],
        t.[SalesUnitofMeasure-5425] = s.[SalesUnitofMeasure-5425],
        t.[Scrap-5407] = s.[Scrap-5407],
        t.[SearchDescription-4] = s.[SearchDescription-4],
        t.[ServiceBlocked-8010] = s.[ServiceBlocked-8010],
        --  t.[ServiceCommitmentOption-8052] = s.[ServiceCommitmentOption-8052],
        t.[SingleLevelCapOvhdCost-99000755] = s.[SingleLevelCapOvhdCost-99000755],
        t.[SingleLevelCapacityCost-99000753] = s.[SingleLevelCapacityCost-99000753],
        t.[SingleLevelMaterialCost-99000752] = s.[SingleLevelMaterialCost-99000752],
        t.[SingleLevelMfgOvhdCost-99000756] = s.[SingleLevelMfgOvhdCost-99000756],
        t.[SingleLevelSubcontrdCost-99000754] = s.[SingleLevelSubcontrdCost-99000754],
        t.[StandardCost-24] = s.[StandardCost-24],
        t.[StatisticsGroup-16] = s.[StatisticsGroup-16],
        t.[StockoutWarning-120] = s.[StockoutWarning-120],
        t.[SystemCreatedAt-2000000001] = s.[SystemCreatedAt-2000000001],
        t.[SystemCreatedBy-2000000002] = s.[SystemCreatedBy-2000000002],
        t.[SystemModifiedAt-2000000003] = s.[SystemModifiedAt-2000000003],
        t.[TaxGroupId-8002] = s.[TaxGroupId-8002],
        t.[Type-10] = s.[Type-10],
        t.[UnitCost-22] = s.[UnitCost-22],
        t.[UnitListPrice-38] = s.[UnitListPrice-38],
        t.[UnitPrice-18] = s.[UnitPrice-18],
        t.[UnitVolume-44] = s.[UnitVolume-44],
        t.[UnitofMeasureId-8001] = s.[UnitofMeasureId-8001],
        t.[UnitsperParcel-43] = s.[UnitsperParcel-43],
        t.[UseCrossDocking-7384] = s.[UseCrossDocking-7384],
        t.[VariantMandatoryifExists-122] = s.[VariantMandatoryifExists-122],
        t.[WCAR06SalesCommissionable-50100] = s.[WCAR06SalesCommissionable-50100],
        t.[WCINT02ExportedtoJFHB-50250] = s.[WCINT02ExportedtoJFHB-50250],
        t.[WCINT03ExportedtoMMK-50280] = s.[WCINT03ExportedtoMMK-50280],
        t.[WCINT04PABlocked-50650] = s.[WCINT04PABlocked-50650],
        t.[WCINT04SplitAllowed-50651] = s.[WCINT04SplitAllowed-50651],
        t.[WCINV08AgedInventory-50043] = s.[WCINV08AgedInventory-50043],
        t.[WCINV08ExpectedQtyfromVend-50044] = s.[WCINV08ExpectedQtyfromVend-50044],
        t.[WCINV08NAforSalesreps-50046] = s.[WCINV08NAforSalesreps-50046],
        t.[WCINV08SuggestedRetailPrice-50047] = s.[WCINV08SuggestedRetailPrice-50047],
        t.[WCINV19DonotPrintonCat-50520] = s.[WCINV19DonotPrintonCat-50520],
        t.[WCSAL04AllowPalletDiscount-50121] = s.[WCSAL04AllowPalletDiscount-50121],
        t.[WCSAL04AllowSampleDiscount-50120] = s.[WCSAL04AllowSampleDiscount-50120],
        t.[WCTEWPrestige-50000] = s.[WCTEWPrestige-50000],
        t.[WTBAAlcoholContent-87030] = s.[WTBAAlcoholContent-87030],
        t.[WTBABiodynamic-87064] = s.[WTBABiodynamic-87064],
        t.[WTBACasePack-87010] = s.[WTBACasePack-87010],
        t.[WTBACasesperPallet-87096] = s.[WTBACasesperPallet-87096],
        t.[WTBACasesperPalletLayer-87090] = s.[WTBACasesperPalletLayer-87090],
        t.[WTBADoNotAllowSamples-87700] = s.[WTBADoNotAllowSamples-87700],
        t.[WTBAExclfromSampleBudget-87701] = s.[WTBAExclfromSampleBudget-87701],
        t.[WTBALastDirectCostBottle-87116] = s.[WTBALastDirectCostBottle-87116],
        t.[WTBALastDirectCostCase-87115] = s.[WTBALastDirectCostCase-87115],
        t.[WTBALayersperPallet-87095] = s.[WTBALayersperPallet-87095],
        t.[WTBAOrganic-87063] = s.[WTBAOrganic-87063],
        t.[WTBAProof-87031] = s.[WTBAProof-87031],
        t.[WTBASalesOrderReview-87850] = s.[WTBASalesOrderReview-87850],
        t.[WTBAStandardCostBottle-87121] = s.[WTBAStandardCostBottle-87121],
        t.[WTBAStandardCostCase-87120] = s.[WTBAStandardCostCase-87120],
        t.[WTBAUnitCostBottle-87111] = s.[WTBAUnitCostBottle-87111],
        t.[WTBAUnitCostCase-87110] = s.[WTBAUnitCostCase-87110],
        t.[WTBAVegan-87062] = s.[WTBAVegan-87062],
        t.[WTIAAllocate-90100] = s.[WTIAAllocate-90100],
        t.[WTIAAllocationReservInt-90102] = s.[WTIAAllocationReservInt-90102],
        t.[WTIAAllocationisCurrent-90104] = s.[WTIAAllocationisCurrent-90104],
        t.[WTIAFullAllocationRequired-90101] = s.[WTIAFullAllocationRequired-90101],
        t.[WTIALimitingQtyperSource-90130] = s.[WTIALimitingQtyperSource-90130],
        t.[WTIALimitingUnitType-90140] = s.[WTIALimitingUnitType-90140],
        t.[WTUSDonotPricePost-88800] = s.[WTUSDonotPricePost-88800],
        t.[WTUSSalesLimitation-88030] = s.[WTUSSalesLimitation-88030],
        t.[systemId-2000000000] = s.[systemId-2000000000],
        t.[timestamp-0] = s.[timestamp-0],
        t.[UpdateDate] = GETDATE()
    FROM [DataWH].[dbo].[Item27] t
    JOIN [Rahat_LH].[dbo].[Item27] s
        ON t.[systemId-2000000000] = s.[systemId-2000000000]
    WHERE
        ISNULL(t.[ApplicationWkshUserID-521], '') <> ISNULL(s.[ApplicationWkshUserID-521], '') OR
        ISNULL(t.[WTIAAllocJnlUnitofMeasure-90107], '') <> ISNULL(s.[WTIAAllocJnlUnitofMeasure-90107], '') OR
        ISNULL(t.[PutawayUnitofMeasureCode-7307], '') <> ISNULL(s.[PutawayUnitofMeasureCode-7307], '') OR
        ISNULL(t.[GTIN-1217], '') <> ISNULL(s.[GTIN-1217], '') OR
        ISNULL(t.[VendorItemNo-32], '') <> ISNULL(s.[VendorItemNo-32], '') OR
        ISNULL(t.[WCINV08WHItemNo-50045], '') <> ISNULL(s.[WCINV08WHItemNo-50045], '') OR
        ISNULL(t.[WTUSSalesLimAllocMethod-88035], '') <> ISNULL(s.[WTUSSalesLimAllocMethod-88035], '') OR
        ISNULL(t.[LeadTimeCalculation-33], '') <> ISNULL(s.[LeadTimeCalculation-33], '') OR
        ISNULL(t.[WTBAClosureTypeCode-87065], '') <> ISNULL(s.[WTBAClosureTypeCode-87065], '') OR
        ISNULL(t.[WTBASubRegionCode-87006], '') <> ISNULL(s.[WTBASubRegionCode-87006], '') OR
        ISNULL(t.[WarehouseClassCode-7300], '') <> ISNULL(s.[WarehouseClassCode-7300], '') OR
        ISNULL(t.[ItemDiscGroup-14], '') <> ISNULL(s.[ItemDiscGroup-14], '') OR
        ISNULL(t.[WTBAWineColor-87025], '') <> ISNULL(s.[WTBAWineColor-87025], '') OR
        ISNULL(t.[WTUSCOLANo-88500], '') <> ISNULL(s.[WTUSCOLANo-88500], '') OR
        ISNULL(t.[WTBAOriginRegionCode-87005], '') <> ISNULL(s.[WTBAOriginRegionCode-87005], '') OR
        ISNULL(t.[WTBAVarietalCode-87007], '') <> ISNULL(s.[WTBAVarietalCode-87007], '') OR
        ISNULL(t.[WTBABrandNo-87150], '') <> ISNULL(s.[WTBABrandNo-87150], '') OR
        ISNULL(t.[WTBAVintageCode-87000], '') <> ISNULL(s.[WTBAVintageCode-87000], '') OR
        ISNULL(t.[WTBAAlcoholTypeCode-87015], '') <> ISNULL(s.[WTBAAlcoholTypeCode-87015], '') OR
        ISNULL(t.[WCINV04PurchaserCode-50010], '') <> ISNULL(s.[WCINV04PurchaserCode-50010], '') OR
        ISNULL(t.[WTBALabelCode-87080], '') <> ISNULL(s.[WTBALabelCode-87080], '') OR
        ISNULL(t.[CountryRegionofOriginCode-95], '') <> ISNULL(s.[CountryRegionofOriginCode-95], '') OR
        ISNULL(t.[WCINV14ItemPortfolio-50150], '') <> ISNULL(s.[WCINV14ItemPortfolio-50150], '') OR
        ISNULL(t.[GenProdPostingGroup-91], '') <> ISNULL(s.[GenProdPostingGroup-91], '') OR
        ISNULL(t.[InventoryPostingGroup-11], '') <> ISNULL(s.[InventoryPostingGroup-11], '') OR
        ISNULL(t.[VendorNo-31], '') <> ISNULL(s.[VendorNo-31], '') OR
        ISNULL(t.[WTBABottleSize-87020], '') <> ISNULL(s.[WTBABottleSize-87020], '') OR
        ISNULL(t.[$Company], '') <> ISNULL(s.[$Company], '') OR
        ISNULL(t.[$DeliveredDateTime], '') <> ISNULL(s.[$DeliveredDateTime], '') OR
        ISNULL(t.[AllowInvoiceDisc-15], '') <> ISNULL(s.[AllowInvoiceDisc-15], '') OR
        ISNULL(t.[AllowOnlineAdjustment-30], '') <> ISNULL(s.[AllowOnlineAdjustment-30], '') OR
        ISNULL(t.[AssemblyPolicy-910], '') <> ISNULL(s.[AssemblyPolicy-910], '') OR
        ISNULL(t.[AutomaticExtTexts-96], '') <> ISNULL(s.[AutomaticExtTexts-96], '') OR
        ISNULL(t.[BaseUnitofMeasure-8], '') <> ISNULL(s.[BaseUnitofMeasure-8], '') OR
        ISNULL(t.[Blocked-54], '') <> ISNULL(s.[Blocked-54], '') OR
        ISNULL(t.[BudgetProfit-52], '') <> ISNULL(s.[BudgetProfit-52], '') OR
        ISNULL(t.[BudgetQuantity-50], '') <> ISNULL(s.[BudgetQuantity-50], '') OR
        ISNULL(t.[BudgetedAmount-51], '') <> ISNULL(s.[BudgetedAmount-51], '') OR
        ISNULL(t.[CarbonCreditPerUOM-6213], '') <> ISNULL(s.[CarbonCreditPerUOM-6213], '') OR
        ISNULL(t.[CommissionGroup-17], '') <> ISNULL(s.[CommissionGroup-17], '') OR
        ISNULL(t.[CostingMethod-21], '') <> ISNULL(s.[CostingMethod-21], '') OR
        ISNULL(t.[CostisAdjusted-29], '') <> ISNULL(s.[CostisAdjusted-29], '') OR
        -- ISNULL(t.[CoupledtoCRM-720], '') <> ISNULL(s.[CoupledtoCRM-720], '') OR
        ISNULL(t.[CreatedFromNonstockItem-5703], '') <> ISNULL(s.[CreatedFromNonstockItem-5703], '') OR
        ISNULL(t.[Critical-99000875], '') <> ISNULL(s.[Critical-99000875], '') OR
        ISNULL(t.[DampenerQuantity-5446], '') <> ISNULL(s.[DampenerQuantity-5446], '') OR
        ISNULL(t.[Description-3], '') <> ISNULL(s.[Description-3], '') OR
        ISNULL(t.[DiscreteOrderQuantity-5410], '') <> ISNULL(s.[DiscreteOrderQuantity-5410], '') OR
        ISNULL(t.[DutyDue-39], '') <> ISNULL(s.[DutyDue-39], '') OR
        ISNULL(t.[DutyUnitConversion-48], '') <> ISNULL(s.[DutyUnitConversion-48], '') OR
        ISNULL(t.[ExcludedfromCostAdjustment-5801], '') <> ISNULL(s.[ExcludedfromCostAdjustment-5801], '') OR
        ISNULL(t.[FlushingMethod-5417], '') <> ISNULL(s.[FlushingMethod-5417], '') OR
        ISNULL(t.[GHGCredit-6212], '') <> ISNULL(s.[GHGCredit-6212], '') OR
        ISNULL(t.[GenProdPostingGroupId-8007], '') <> ISNULL(s.[GenProdPostingGroupId-8007], '') OR
        ISNULL(t.[GrossWeight-41], '') <> ISNULL(s.[GrossWeight-41], '') OR
        ISNULL(t.[HasSalesForecast-21850], '') <> ISNULL(s.[HasSalesForecast-21850], '') OR
        ISNULL(t.[IncludeInventory-5441], '') <> ISNULL(s.[IncludeInventory-5441], '') OR
        ISNULL(t.[IndirectCost-28], '') <> ISNULL(s.[IndirectCost-28], '') OR
        ISNULL(t.[InventoryPostingGroupId-8006], '') <> ISNULL(s.[InventoryPostingGroupId-8006], '') OR
        ISNULL(t.[InventoryValueZero-5409], '') <> ISNULL(s.[InventoryValueZero-5409], '') OR
        ISNULL(t.[ItemCategoryCode-5702], '') <> ISNULL(s.[ItemCategoryCode-5702], '') OR
        ISNULL(t.[ItemCategoryId-8005], '') <> ISNULL(s.[ItemCategoryId-8005], '') OR
        ISNULL(t.[LastDateModified-62], '') <> ISNULL(s.[LastDateModified-62], '') OR
        ISNULL(t.[LastDateTimeModified-61], '') <> ISNULL(s.[LastDateTimeModified-61], '') OR
        ISNULL(t.[LastDirectCost-25], '') <> ISNULL(s.[LastDirectCost-25], '') OR
        ISNULL(t.[LastTimeModified-63], '') <> ISNULL(s.[LastTimeModified-63], '') OR
        ISNULL(t.[LotSize-5401], '') <> ISNULL(s.[LotSize-5401], '') OR
        ISNULL(t.[LowLevelCode-5400], '') <> ISNULL(s.[LowLevelCode-5400], '') OR
        ISNULL(t.[ManufacturingPolicy-5442], '') <> ISNULL(s.[ManufacturingPolicy-5442], '') OR
        ISNULL(t.[MaximumInventory-35], '') <> ISNULL(s.[MaximumInventory-35], '') OR
        ISNULL(t.[MaximumOrderQuantity-5412], '') <> ISNULL(s.[MaximumOrderQuantity-5412], '') OR
        ISNULL(t.[MinimumOrderQuantity-5411], '') <> ISNULL(s.[MinimumOrderQuantity-5411], '') OR
        ISNULL(t.[NetWeight-42], '') <> ISNULL(s.[NetWeight-42], '') OR
        ISNULL(t.[No-1], '') <> ISNULL(s.[No-1], '') OR
        ISNULL(t.[OrderMultiple-5414], '') <> ISNULL(s.[OrderMultiple-5414], '') OR
        ISNULL(t.[OrderTrackingPolicy-99000773], '') <> ISNULL(s.[OrderTrackingPolicy-99000773], '') OR
        ISNULL(t.[OverflowLevel-5447], '') <> ISNULL(s.[OverflowLevel-5447], '') OR
        ISNULL(t.[OverheadRate-99000757], '') <> ISNULL(s.[OverheadRate-99000757], '') OR
        ISNULL(t.[PreventNegativeInventory-121], '') <> ISNULL(s.[PreventNegativeInventory-121], '') OR
        ISNULL(t.[PriceIncludesVAT-87], '') <> ISNULL(s.[PriceIncludesVAT-87], '') OR
        ISNULL(t.[PriceProfitCalculation-19], '') <> ISNULL(s.[PriceProfitCalculation-19], '') OR
        ISNULL(t.[PriceUnitConversion-9], '') <> ISNULL(s.[PriceUnitConversion-9], '') OR
        ISNULL(t.[Profit-20], '') <> ISNULL(s.[Profit-20], '') OR
        ISNULL(t.[PurchUnitofMeasure-5426], '') <> ISNULL(s.[PurchUnitofMeasure-5426], '') OR
        ISNULL(t.[PurchasingBlocked-8004], '') <> ISNULL(s.[PurchasingBlocked-8004], '') OR
        ISNULL(t.[ReorderPoint-34], '') <> ISNULL(s.[ReorderPoint-34], '') OR
        ISNULL(t.[ReorderQuantity-36], '') <> ISNULL(s.[ReorderQuantity-36], '') OR
        ISNULL(t.[ReorderingPolicy-5440], '') <> ISNULL(s.[ReorderingPolicy-5440], '') OR
        ISNULL(t.[ReplenishmentSystem-5419], '') <> ISNULL(s.[ReplenishmentSystem-5419], '') OR
        ISNULL(t.[Reserve-100], '') <> ISNULL(s.[Reserve-100], '') OR
        ISNULL(t.[RolledupCapOverheadCost-99000760], '') <> ISNULL(s.[RolledupCapOverheadCost-99000760], '') OR
        ISNULL(t.[RolledupCapacityCost-5405], '') <> ISNULL(s.[RolledupCapacityCost-5405], '') OR
        ISNULL(t.[RolledupMaterialCost-5404], '') <> ISNULL(s.[RolledupMaterialCost-5404], '') OR
        ISNULL(t.[RolledupMfgOvhdCost-99000759], '') <> ISNULL(s.[RolledupMfgOvhdCost-99000759], '') OR
        ISNULL(t.[RolledupSubcontractedCost-99000758], '') <> ISNULL(s.[RolledupSubcontractedCost-99000758], '') OR
        ISNULL(t.[RoundingPrecision-5422], '') <> ISNULL(s.[RoundingPrecision-5422], '') OR
        ISNULL(t.[SafetyStockQuantity-5413], '') <> ISNULL(s.[SafetyStockQuantity-5413], '') OR
        ISNULL(t.[SalesBlocked-8003], '') <> ISNULL(s.[SalesBlocked-8003], '') OR
        ISNULL(t.[SalesUnitofMeasure-5425], '') <> ISNULL(s.[SalesUnitofMeasure-5425], '') OR
        ISNULL(t.[Scrap-5407], '') <> ISNULL(s.[Scrap-5407], '') OR
        ISNULL(t.[SearchDescription-4], '') <> ISNULL(s.[SearchDescription-4], '') OR
        ISNULL(t.[ServiceBlocked-8010], '') <> ISNULL(s.[ServiceBlocked-8010], '') OR
        --  ISNULL(t.[ServiceCommitmentOption-8052], '') <> ISNULL(s.[ServiceCommitmentOption-8052], '') OR
        ISNULL(t.[SingleLevelCapOvhdCost-99000755], '') <> ISNULL(s.[SingleLevelCapOvhdCost-99000755], '') OR
        ISNULL(t.[SingleLevelCapacityCost-99000753], '') <> ISNULL(s.[SingleLevelCapacityCost-99000753], '') OR
        ISNULL(t.[SingleLevelMaterialCost-99000752], '') <> ISNULL(s.[SingleLevelMaterialCost-99000752], '') OR
        ISNULL(t.[SingleLevelMfgOvhdCost-99000756], '') <> ISNULL(s.[SingleLevelMfgOvhdCost-99000756], '') OR
        ISNULL(t.[SingleLevelSubcontrdCost-99000754], '') <> ISNULL(s.[SingleLevelSubcontrdCost-99000754], '') OR
        ISNULL(t.[StandardCost-24], '') <> ISNULL(s.[StandardCost-24], '') OR
        ISNULL(t.[StatisticsGroup-16], '') <> ISNULL(s.[StatisticsGroup-16], '') OR
        ISNULL(t.[StockoutWarning-120], '') <> ISNULL(s.[StockoutWarning-120], '') OR
        ISNULL(t.[SystemCreatedAt-2000000001], '') <> ISNULL(s.[SystemCreatedAt-2000000001], '') OR
        ISNULL(t.[SystemCreatedBy-2000000002], '') <> ISNULL(s.[SystemCreatedBy-2000000002], '') OR
        ISNULL(t.[SystemModifiedAt-2000000003], '') <> ISNULL(s.[SystemModifiedAt-2000000003], '') OR
        ISNULL(t.[TaxGroupId-8002], '') <> ISNULL(s.[TaxGroupId-8002], '') OR
        ISNULL(t.[Type-10], '') <> ISNULL(s.[Type-10], '') OR
        ISNULL(t.[UnitCost-22], '') <> ISNULL(s.[UnitCost-22], '') OR
        ISNULL(t.[UnitListPrice-38], '') <> ISNULL(s.[UnitListPrice-38], '') OR
        ISNULL(t.[UnitPrice-18], '') <> ISNULL(s.[UnitPrice-18], '') OR
        ISNULL(t.[UnitVolume-44], '') <> ISNULL(s.[UnitVolume-44], '') OR
        ISNULL(t.[UnitofMeasureId-8001], '') <> ISNULL(s.[UnitofMeasureId-8001], '') OR
        ISNULL(t.[UnitsperParcel-43], '') <> ISNULL(s.[UnitsperParcel-43], '') OR
        ISNULL(t.[UseCrossDocking-7384], '') <> ISNULL(s.[UseCrossDocking-7384], '') OR
        ISNULL(t.[VariantMandatoryifExists-122], '') <> ISNULL(s.[VariantMandatoryifExists-122], '') OR
        ISNULL(t.[WCAR06SalesCommissionable-50100], '') <> ISNULL(s.[WCAR06SalesCommissionable-50100], '') OR
        ISNULL(t.[WCINT02ExportedtoJFHB-50250], '') <> ISNULL(s.[WCINT02ExportedtoJFHB-50250], '') OR
        ISNULL(t.[WCINT03ExportedtoMMK-50280], '') <> ISNULL(s.[WCINT03ExportedtoMMK-50280], '') OR
        ISNULL(t.[WCINT04PABlocked-50650], '') <> ISNULL(s.[WCINT04PABlocked-50650], '') OR
        ISNULL(t.[WCINT04SplitAllowed-50651], '') <> ISNULL(s.[WCINT04SplitAllowed-50651], '') OR
        ISNULL(t.[WCINV08AgedInventory-50043], '') <> ISNULL(s.[WCINV08AgedInventory-50043], '') OR
        ISNULL(t.[WCINV08ExpectedQtyfromVend-50044], '') <> ISNULL(s.[WCINV08ExpectedQtyfromVend-50044], '') OR
        ISNULL(t.[WCINV08NAforSalesreps-50046], '') <> ISNULL(s.[WCINV08NAforSalesreps-50046], '') OR
        ISNULL(t.[WCINV08SuggestedRetailPrice-50047], '') <> ISNULL(s.[WCINV08SuggestedRetailPrice-50047], '') OR
        ISNULL(t.[WCINV19DonotPrintonCat-50520], '') <> ISNULL(s.[WCINV19DonotPrintonCat-50520], '') OR
        ISNULL(t.[WCSAL04AllowPalletDiscount-50121], '') <> ISNULL(s.[WCSAL04AllowPalletDiscount-50121], '') OR
        ISNULL(t.[WCSAL04AllowSampleDiscount-50120], '') <> ISNULL(s.[WCSAL04AllowSampleDiscount-50120], '') OR
        ISNULL(t.[WCTEWPrestige-50000], '') <> ISNULL(s.[WCTEWPrestige-50000], '') OR
        ISNULL(t.[WTBAAlcoholContent-87030], '') <> ISNULL(s.[WTBAAlcoholContent-87030], '') OR
        ISNULL(t.[WTBABiodynamic-87064], '') <> ISNULL(s.[WTBABiodynamic-87064], '') OR
        ISNULL(t.[WTBACasePack-87010], '') <> ISNULL(s.[WTBACasePack-87010], '') OR
        ISNULL(t.[WTBACasesperPallet-87096], '') <> ISNULL(s.[WTBACasesperPallet-87096], '') OR
        ISNULL(t.[WTBACasesperPalletLayer-87090], '') <> ISNULL(s.[WTBACasesperPalletLayer-87090], '') OR
        ISNULL(t.[WTBADoNotAllowSamples-87700], '') <> ISNULL(s.[WTBADoNotAllowSamples-87700], '') OR
        ISNULL(t.[WTBAExclfromSampleBudget-87701], '') <> ISNULL(s.[WTBAExclfromSampleBudget-87701], '') OR
        ISNULL(t.[WTBALastDirectCostBottle-87116], '') <> ISNULL(s.[WTBALastDirectCostBottle-87116], '') OR
        ISNULL(t.[WTBALastDirectCostCase-87115], '') <> ISNULL(s.[WTBALastDirectCostCase-87115], '') OR
        ISNULL(t.[WTBALayersperPallet-87095], '') <> ISNULL(s.[WTBALayersperPallet-87095], '') OR
        ISNULL(t.[WTBAOrganic-87063], '') <> ISNULL(s.[WTBAOrganic-87063], '') OR
        ISNULL(t.[WTBAProof-87031], '') <> ISNULL(s.[WTBAProof-87031], '') OR
        ISNULL(t.[WTBASalesOrderReview-87850], '') <> ISNULL(s.[WTBASalesOrderReview-87850], '') OR
        ISNULL(t.[WTBAStandardCostBottle-87121], '') <> ISNULL(s.[WTBAStandardCostBottle-87121], '') OR
        ISNULL(t.[WTBAStandardCostCase-87120], '') <> ISNULL(s.[WTBAStandardCostCase-87120], '') OR
        ISNULL(t.[WTBAUnitCostBottle-87111], '') <> ISNULL(s.[WTBAUnitCostBottle-87111], '') OR
        ISNULL(t.[WTBAUnitCostCase-87110], '') <> ISNULL(s.[WTBAUnitCostCase-87110], '') OR
        ISNULL(t.[WTBAVegan-87062], '') <> ISNULL(s.[WTBAVegan-87062], '') OR
        ISNULL(t.[WTIAAllocate-90100], '') <> ISNULL(s.[WTIAAllocate-90100], '') OR
        ISNULL(t.[WTIAAllocationReservInt-90102], '') <> ISNULL(s.[WTIAAllocationReservInt-90102], '') OR
        ISNULL(t.[WTIAAllocationisCurrent-90104], '') <> ISNULL(s.[WTIAAllocationisCurrent-90104], '') OR
        ISNULL(t.[WTIAFullAllocationRequired-90101], '') <> ISNULL(s.[WTIAFullAllocationRequired-90101], '') OR
        ISNULL(t.[WTIALimitingQtyperSource-90130], '') <> ISNULL(s.[WTIALimitingQtyperSource-90130], '') OR
        ISNULL(t.[WTIALimitingUnitType-90140], '') <> ISNULL(s.[WTIALimitingUnitType-90140], '') OR
        ISNULL(t.[WTUSDonotPricePost-88800], '') <> ISNULL(s.[WTUSDonotPricePost-88800], '') OR
        ISNULL(t.[WTUSSalesLimitation-88030], '') <> ISNULL(s.[WTUSSalesLimitation-88030], '') OR
        ISNULL(t.[systemId-2000000000], '') <> ISNULL(s.[systemId-2000000000], '')
        OR t.[timestamp-0] <> s.[timestamp-0];

    -- Step 3: Delete missing records
    DELETE FROM [DataWH].[dbo].[Item27]
    WHERE [systemId-2000000000] NOT IN (
        SELECT [systemId-2000000000] FROM [Rahat_LH].[dbo].[Item27]
    );
END;