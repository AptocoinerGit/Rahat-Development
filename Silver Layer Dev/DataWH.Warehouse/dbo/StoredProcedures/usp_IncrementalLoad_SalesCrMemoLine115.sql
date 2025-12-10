---  Exec usp_IncrementalLoad_SalesCrMemoLine115
---  select * from DataWH.dbo.SalesCrMemoLine115
---  truncate table DataWH..SalesCrMemoLine115

CREATE   PROCEDURE usp_IncrementalLoad_SalesCrMemoLine115
AS
BEGIN
    ----------------------------
    -- Step 1: Insert New Records
    ----------------------------
    INSERT INTO DataWH.dbo.SalesCrMemoLine115 (
    [WCSAL04PalletDiscGroupCode-50121],
    [BinCode-5403],
    [WTBAOrderChargeCode-87600],
    [WTBASampleReasonCode-87700],
    [WCSAL04SampleDiscGroupCode-50120],
    [CustomerDiscGroup-7002],
    [ShortcutDimension1Code-40],
    [WTPCSalesPriceGroupCode-89200],
    [WTPCSalesPriceCategoryCode-89203],
    [ReturnReasonCode-6608],
    [OrderNo-65],
    [WTUSBeverageTaxAreaCode-88400],
    [ItemCategoryCode-5709],
    [PostingGroup-8],
    [WTBABrandNo-87150],
    [WTBAAlcoholTypeCode-87050],
    [WTBABottleSize-87020],
    [UnitofMeasure-13],
    [UnitofMeasureCode-5407],
    [GenProdPostingGroup-75],
    [WCTEWSalespersonCode-50000],
    [WTBABudgetSalespersonCode-87702],
    [GenBusPostingGroup-74],
    [BilltoCustomerNo-68],
    [CustomerPriceGroup-42],
    [No-6],
    [SelltoCustomerNo-2],
    [LocationCode-7],
    [ShipmentDate-10],
    [WTBADocumentDate-87100],
    [Description-11],
    [PostingDate-131],
    [$Company],
    [$DeliveredDateTime],
    [Amount-29],
    [ApplfromItemEntry-5811],
    [BlanketOrderLineNo-98],
    [DepruntilFAPostingDate-5605],
    [DimensionSetID-480],
    [DocumentNo-3],
    [GrossWeight-34],
    [ICPartnerRefType-107],
    [InvDiscountAmount-69],
    [ItemReferenceType-5727],
    [JobContractEntryNo-1002],
    [LineNo-4],
    [NetWeight-35],
    [OrderLineNo-66],
    [PmtDiscountAmount-145],
    [PriceCalculationMethod-7000],
    [Quantity-15],
    [RetentionAttachedtoLineNo-10001],
    [UnitsperParcel-36],
    [VAT-25],
    [VATBaseAmount-99],
    [VATCalculationType-77],
    [WCAR06ManualCommAmount-50112],
    [WCAR06MaxComm-50113],
    [WCAR06SalesCommClosed-50101],
    [WCAR06SalesCommLedgEntry-50102],
    [WCINT01ShortShipped-50220],
    [WTBABillHoldEntryNo-87570],
    [WTBACasePack-87010],
    [WTBAGrossWeight-87823],
    [WTBALineDiscAmountBottle-87042],
    [WTBALineDiscAmountCase-87041],
    [WTBALineDiscountUnitAmount-87040],
    [WTBALinkedLineNo-87000],
    [WTBALiters-87300],
    [WTBAOriginalQtyBottle-87343],
    [WTBAOriginalQtyCase-87342],
    [WTBAOriginalQuantity-87340],
    [WTBAOriginalQuantityBase-87341],
    [WTBASampleTotalAmount-87701],
    [WTBAVolume-87824],
    [WTCBBillBack-89050],
    [WTCBChargebackLedgerEntry-89040],
    [WTCBDeplAllowLineAmt-89030],
    [WTCBDeplAllowUnitAmtType-89000],
    [WTPCSalesPriceCalcMethod-89201],
    [WTPCSalesPriceLinkId-89204],
    [WTUSBeverageTax-88401],
    [AllowInvoiceDisc-32],
    [AllowLineDisc-7001],
    [AmountIncludingVAT-30],
    [AppltoItemEntry-38],
    [AttachedtoLineNo-80],
    --   [ContractLineNo-8052],
    [LineAmount-103],
    [LineDiscount-27],
    [LineDiscountAmount-28],
    [LineDiscountCalculation-180],
    [Nonstock-5710],
    [PrepaymentLine-123],
    [QtyperUnitofMeasure-5404],
    [QuantityBase-5415],
    [RetentionVAT-10002],
    [ReturnReceiptLineNo-6601],
    [SystemCreatedAt-2000000001],
    [SystemCreatedBy-2000000002],
    [SystemCreatedEntry-101],
    [SystemModifiedAt-2000000003],
    [TaxLiable-86],
    [Type-5],
    [UnitCost-100],
    [UnitCostLCY-23],
    [UnitPrice-22],
    [UnitVolume-37],
    [UseDuplicationList-5613],
    [VATDifference-104],
    [WCAR06DefaultComm-50114],
    [WCAR06DefaultCommAmount-50115],
    [WCAR06ManualComm-50111],
    [WCAR06SalesCommissionable-50100],
    [WCINT01ShortShipOrigQty-50221],
    [WTBAGallons-87301],
    [WTBANetWeight-87870],
    [WTBAQuantityBottle-87083],
    [WTBAQuantityCase-87080],
    [WTBAQuantityPallet-87880],
    [WTBASalesPriceOverride-87030],
    [WTBASampleEntryNo-87704],
    [WTCBDeplAllowLineUnitAmt-89020],
    [WTCBDeplAllowUnitAmt-89010],
    [WTPCSalesPriceCalcQty-89202],
    [timestamp-0],
    [systemId-2000000000],
    [InsertDate]
    
)
SELECT
    s.[WCSAL04PalletDiscGroupCode-50121],
    s.[BinCode-5403],
    s.[WTBAOrderChargeCode-87600],
    s.[WTBASampleReasonCode-87700],
    s.[WCSAL04SampleDiscGroupCode-50120],
    s.[CustomerDiscGroup-7002],
    s.[ShortcutDimension1Code-40],
    s.[WTPCSalesPriceGroupCode-89200],
    s.[WTPCSalesPriceCategoryCode-89203],
    s.[ReturnReasonCode-6608],
    s.[OrderNo-65],
    s.[WTUSBeverageTaxAreaCode-88400],
    s.[ItemCategoryCode-5709],
    s.[PostingGroup-8],
    s.[WTBABrandNo-87150],
    s.[WTBAAlcoholTypeCode-87050],
    s.[WTBABottleSize-87020],
    s.[UnitofMeasure-13],
    s.[UnitofMeasureCode-5407],
    s.[GenProdPostingGroup-75],
    s.[WCTEWSalespersonCode-50000],
    s.[WTBABudgetSalespersonCode-87702],
    s.[GenBusPostingGroup-74],
    s.[BilltoCustomerNo-68],
    s.[CustomerPriceGroup-42],
    s.[No-6],
    s.[SelltoCustomerNo-2],
    s.[LocationCode-7],
    s.[ShipmentDate-10],
    s.[WTBADocumentDate-87100],
    s.[Description-11],
    s.[PostingDate-131],
    s.[$Company],
    s.[$DeliveredDateTime],
    s.[Amount-29],
    s.[ApplfromItemEntry-5811],
    s.[BlanketOrderLineNo-98],
    s.[DepruntilFAPostingDate-5605],
    s.[DimensionSetID-480],
    s.[DocumentNo-3],
    s.[GrossWeight-34],
    s.[ICPartnerRefType-107],
    s.[InvDiscountAmount-69],
    s.[ItemReferenceType-5727],
    s.[JobContractEntryNo-1002],
    s.[LineNo-4],
    s.[NetWeight-35],
    s.[OrderLineNo-66],
    s.[PmtDiscountAmount-145],
    s.[PriceCalculationMethod-7000],
    s.[Quantity-15],
    s.[RetentionAttachedtoLineNo-10001],
    s.[UnitsperParcel-36],
    s.[VAT-25],
    s.[VATBaseAmount-99],
    s.[VATCalculationType-77],
    s.[WCAR06ManualCommAmount-50112],
    s.[WCAR06MaxComm-50113],
    s.[WCAR06SalesCommClosed-50101],
    s.[WCAR06SalesCommLedgEntry-50102],
    s.[WCINT01ShortShipped-50220],
    s.[WTBABillHoldEntryNo-87570],
    s.[WTBACasePack-87010],
    s.[WTBAGrossWeight-87823],
    s.[WTBALineDiscAmountBottle-87042],
    s.[WTBALineDiscAmountCase-87041],
    s.[WTBALineDiscountUnitAmount-87040],
    s.[WTBALinkedLineNo-87000],
    s.[WTBALiters-87300],
    s.[WTBAOriginalQtyBottle-87343],
    s.[WTBAOriginalQtyCase-87342],
    s.[WTBAOriginalQuantity-87340],
    s.[WTBAOriginalQuantityBase-87341],
    s.[WTBASampleTotalAmount-87701],
    s.[WTBAVolume-87824],
    s.[WTCBBillBack-89050],
    s.[WTCBChargebackLedgerEntry-89040],
    s.[WTCBDeplAllowLineAmt-89030],
    s.[WTCBDeplAllowUnitAmtType-89000],
    s.[WTPCSalesPriceCalcMethod-89201],
    s.[WTPCSalesPriceLinkId-89204],
    s.[WTUSBeverageTax-88401],
    s.[AllowInvoiceDisc-32],
    s.[AllowLineDisc-7001],
    s.[AmountIncludingVAT-30],
    s.[AppltoItemEntry-38],
    s.[AttachedtoLineNo-80],
    --  s.[ContractLineNo-8052],
    s.[LineAmount-103],
    s.[LineDiscount-27],
    s.[LineDiscountAmount-28],
    s.[LineDiscountCalculation-180],
    s.[Nonstock-5710],
    s.[PrepaymentLine-123],
    s.[QtyperUnitofMeasure-5404],
    s.[QuantityBase-5415],
    s.[RetentionVAT-10002],
    s.[ReturnReceiptLineNo-6601],
    s.[SystemCreatedAt-2000000001],
    s.[SystemCreatedBy-2000000002],
    s.[SystemCreatedEntry-101],
    s.[SystemModifiedAt-2000000003],
    s.[TaxLiable-86],
    s.[Type-5],
    s.[UnitCost-100],
    s.[UnitCostLCY-23],
    s.[UnitPrice-22],
    s.[UnitVolume-37],
    s.[UseDuplicationList-5613],
    s.[VATDifference-104],
    s.[WCAR06DefaultComm-50114],
    s.[WCAR06DefaultCommAmount-50115],
    s.[WCAR06ManualComm-50111],
    s.[WCAR06SalesCommissionable-50100],
    s.[WCINT01ShortShipOrigQty-50221],
    s.[WTBAGallons-87301],
    s.[WTBANetWeight-87870],
    s.[WTBAQuantityBottle-87083],
    s.[WTBAQuantityCase-87080],
    s.[WTBAQuantityPallet-87880],
    s.[WTBASalesPriceOverride-87030],
    s.[WTBASampleEntryNo-87704],
    s.[WTCBDeplAllowLineUnitAmt-89020],
    s.[WTCBDeplAllowUnitAmt-89010],
    s.[WTPCSalesPriceCalcQty-89202],
    s.[timestamp-0],
    s.[systemId-2000000000],
    GETDATE()   -- InsertDate
 
FROM [Rahat_LH].[dbo].[SalesCrMemoLine115] s
LEFT JOIN DataWH.dbo.SalesCrMemoLine115 t
    ON t.[systemId-2000000000] = s.[systemId-2000000000]
WHERE t.[systemId-2000000000] IS NULL
AND s.[systemId-2000000000] IS NOT NULL;


    -------------------------------------
    -- Step 2: Update Modified Records
    -------------------------------------
   UPDATE t
SET
    t.[WCSAL04PalletDiscGroupCode-50121] = s.[WCSAL04PalletDiscGroupCode-50121],
    t.[BinCode-5403] = s.[BinCode-5403],
    t.[WTBAOrderChargeCode-87600] = s.[WTBAOrderChargeCode-87600],
    t.[WTBASampleReasonCode-87700] = s.[WTBASampleReasonCode-87700],
    t.[WCSAL04SampleDiscGroupCode-50120] = s.[WCSAL04SampleDiscGroupCode-50120],
    t.[CustomerDiscGroup-7002] = s.[CustomerDiscGroup-7002],
    t.[ShortcutDimension1Code-40] = s.[ShortcutDimension1Code-40],
    t.[WTPCSalesPriceGroupCode-89200] = s.[WTPCSalesPriceGroupCode-89200],
    t.[WTPCSalesPriceCategoryCode-89203] = s.[WTPCSalesPriceCategoryCode-89203],
    t.[ReturnReasonCode-6608] = s.[ReturnReasonCode-6608],
    t.[OrderNo-65] = s.[OrderNo-65],
    t.[WTUSBeverageTaxAreaCode-88400] = s.[WTUSBeverageTaxAreaCode-88400],
    t.[ItemCategoryCode-5709] = s.[ItemCategoryCode-5709],
    t.[PostingGroup-8] = s.[PostingGroup-8],
    t.[WTBABrandNo-87150] = s.[WTBABrandNo-87150],
    t.[WTBAAlcoholTypeCode-87050] = s.[WTBAAlcoholTypeCode-87050],
    t.[WTBABottleSize-87020] = s.[WTBABottleSize-87020],
    t.[UnitofMeasure-13] = s.[UnitofMeasure-13],
    t.[UnitofMeasureCode-5407] = s.[UnitofMeasureCode-5407],
    t.[GenProdPostingGroup-75] = s.[GenProdPostingGroup-75],
    t.[WCTEWSalespersonCode-50000] = s.[WCTEWSalespersonCode-50000],
    t.[WTBABudgetSalespersonCode-87702] = s.[WTBABudgetSalespersonCode-87702],
    t.[GenBusPostingGroup-74] = s.[GenBusPostingGroup-74],
    t.[BilltoCustomerNo-68] = s.[BilltoCustomerNo-68],
    t.[CustomerPriceGroup-42] = s.[CustomerPriceGroup-42],
    t.[No-6] = s.[No-6],
    t.[SelltoCustomerNo-2] = s.[SelltoCustomerNo-2],
    t.[LocationCode-7] = s.[LocationCode-7],
    t.[ShipmentDate-10] = s.[ShipmentDate-10],
    t.[WTBADocumentDate-87100] = s.[WTBADocumentDate-87100],
    t.[Description-11] = s.[Description-11],
    t.[PostingDate-131] = s.[PostingDate-131],
    t.[$Company] = s.[$Company],
    t.[$DeliveredDateTime] = s.[$DeliveredDateTime],
    t.[Amount-29] = s.[Amount-29],
    t.[ApplfromItemEntry-5811] = s.[ApplfromItemEntry-5811],
    t.[BlanketOrderLineNo-98] = s.[BlanketOrderLineNo-98],
    t.[DepruntilFAPostingDate-5605] = s.[DepruntilFAPostingDate-5605],
    t.[DimensionSetID-480] = s.[DimensionSetID-480],
    t.[DocumentNo-3] = s.[DocumentNo-3],
    t.[GrossWeight-34] = s.[GrossWeight-34],
    t.[ICPartnerRefType-107] = s.[ICPartnerRefType-107],
    t.[InvDiscountAmount-69] = s.[InvDiscountAmount-69],
    t.[ItemReferenceType-5727] = s.[ItemReferenceType-5727],
    t.[JobContractEntryNo-1002] = s.[JobContractEntryNo-1002],
    t.[LineNo-4] = s.[LineNo-4],
    t.[NetWeight-35] = s.[NetWeight-35],
    t.[OrderLineNo-66] = s.[OrderLineNo-66],
    t.[PmtDiscountAmount-145] = s.[PmtDiscountAmount-145],
    t.[PriceCalculationMethod-7000] = s.[PriceCalculationMethod-7000],
    t.[Quantity-15] = s.[Quantity-15],
    t.[RetentionAttachedtoLineNo-10001] = s.[RetentionAttachedtoLineNo-10001],
    t.[UnitsperParcel-36] = s.[UnitsperParcel-36],
    t.[VAT-25] = s.[VAT-25],
    t.[VATBaseAmount-99] = s.[VATBaseAmount-99],
    t.[VATCalculationType-77] = s.[VATCalculationType-77],
    t.[WCAR06ManualCommAmount-50112] = s.[WCAR06ManualCommAmount-50112],
    t.[WCAR06MaxComm-50113] = s.[WCAR06MaxComm-50113],
    t.[WCAR06SalesCommClosed-50101] = s.[WCAR06SalesCommClosed-50101],
    t.[WCAR06SalesCommLedgEntry-50102] = s.[WCAR06SalesCommLedgEntry-50102],
    t.[WCINT01ShortShipped-50220] = s.[WCINT01ShortShipped-50220],
    t.[WTBABillHoldEntryNo-87570] = s.[WTBABillHoldEntryNo-87570],
    t.[WTBACasePack-87010] = s.[WTBACasePack-87010],
    t.[WTBAGrossWeight-87823] = s.[WTBAGrossWeight-87823],
    t.[WTBALineDiscAmountBottle-87042] = s.[WTBALineDiscAmountBottle-87042],
    t.[WTBALineDiscAmountCase-87041] = s.[WTBALineDiscAmountCase-87041],
    t.[WTBALineDiscountUnitAmount-87040] = s.[WTBALineDiscountUnitAmount-87040],
    t.[WTBALinkedLineNo-87000] = s.[WTBALinkedLineNo-87000],
    t.[WTBALiters-87300] = s.[WTBALiters-87300],
    t.[WTBAOriginalQtyBottle-87343] = s.[WTBAOriginalQtyBottle-87343],
    t.[WTBAOriginalQtyCase-87342] = s.[WTBAOriginalQtyCase-87342],
    t.[WTBAOriginalQuantity-87340] = s.[WTBAOriginalQuantity-87340],
    t.[WTBAOriginalQuantityBase-87341] = s.[WTBAOriginalQuantityBase-87341],
    t.[WTBASampleTotalAmount-87701] = s.[WTBASampleTotalAmount-87701],
    t.[WTBAVolume-87824] = s.[WTBAVolume-87824],
    t.[WTCBBillBack-89050] = s.[WTCBBillBack-89050],
    t.[WTCBChargebackLedgerEntry-89040] = s.[WTCBChargebackLedgerEntry-89040],
    t.[WTCBDeplAllowLineAmt-89030] = s.[WTCBDeplAllowLineAmt-89030],
    t.[WTCBDeplAllowUnitAmtType-89000] = s.[WTCBDeplAllowUnitAmtType-89000],
    t.[WTPCSalesPriceCalcMethod-89201] = s.[WTPCSalesPriceCalcMethod-89201],
    t.[WTPCSalesPriceLinkId-89204] = s.[WTPCSalesPriceLinkId-89204],
    t.[WTUSBeverageTax-88401] = s.[WTUSBeverageTax-88401],
    t.[AllowInvoiceDisc-32] = s.[AllowInvoiceDisc-32],
    t.[AllowLineDisc-7001] = s.[AllowLineDisc-7001],
    t.[AmountIncludingVAT-30] = s.[AmountIncludingVAT-30],
    t.[AppltoItemEntry-38] = s.[AppltoItemEntry-38],
    t.[AttachedtoLineNo-80] = s.[AttachedtoLineNo-80],
    --   t.[ContractLineNo-8052] = s.[ContractLineNo-8052],
    t.[LineAmount-103] = s.[LineAmount-103],
    t.[LineDiscount-27] = s.[LineDiscount-27],
    t.[LineDiscountAmount-28] = s.[LineDiscountAmount-28],
    t.[LineDiscountCalculation-180] = s.[LineDiscountCalculation-180],
    t.[Nonstock-5710] = s.[Nonstock-5710],
    t.[PrepaymentLine-123] = s.[PrepaymentLine-123],
    t.[QtyperUnitofMeasure-5404] = s.[QtyperUnitofMeasure-5404],
    t.[QuantityBase-5415] = s.[QuantityBase-5415],
    t.[RetentionVAT-10002] = s.[RetentionVAT-10002],
    t.[ReturnReceiptLineNo-6601] = s.[ReturnReceiptLineNo-6601],
    t.[SystemCreatedAt-2000000001] = s.[SystemCreatedAt-2000000001],
    t.[SystemCreatedBy-2000000002] = s.[SystemCreatedBy-2000000002],
    t.[SystemCreatedEntry-101] = s.[SystemCreatedEntry-101],
    
    t.[TaxLiable-86] = s.[TaxLiable-86],
    t.[Type-5] = s.[Type-5],
    t.[UnitCost-100] = s.[UnitCost-100],
    t.[UnitCostLCY-23] = s.[UnitCostLCY-23],
    t.[UnitPrice-22] = s.[UnitPrice-22],
    t.[UnitVolume-37] = s.[UnitVolume-37],
    t.[UseDuplicationList-5613] = s.[UseDuplicationList-5613],
    t.[VATDifference-104] = s.[VATDifference-104],
    t.[WCAR06DefaultComm-50114] = s.[WCAR06DefaultComm-50114],
    t.[WCAR06DefaultCommAmount-50115] = s.[WCAR06DefaultCommAmount-50115],
    t.[WCAR06ManualComm-50111] = s.[WCAR06ManualComm-50111],
    t.[WCAR06SalesCommissionable-50100] = s.[WCAR06SalesCommissionable-50100],
    t.[WCINT01ShortShipOrigQty-50221] = s.[WCINT01ShortShipOrigQty-50221],
    t.[WTBAGallons-87301] = s.[WTBAGallons-87301],
    t.[WTBANetWeight-87870] = s.[WTBANetWeight-87870],
    t.[WTBAQuantityBottle-87083] = s.[WTBAQuantityBottle-87083],
    t.[WTBAQuantityCase-87080] = s.[WTBAQuantityCase-87080],
    t.[WTBAQuantityPallet-87880] = s.[WTBAQuantityPallet-87880],
    t.[WTBASalesPriceOverride-87030] = s.[WTBASalesPriceOverride-87030],
    t.[WTBASampleEntryNo-87704] = s.[WTBASampleEntryNo-87704],
    t.[WTCBDeplAllowLineUnitAmt-89020] = s.[WTCBDeplAllowLineUnitAmt-89020],
    t.[WTCBDeplAllowUnitAmt-89010] = s.[WTCBDeplAllowUnitAmt-89010],
    t.[WTPCSalesPriceCalcQty-89202] = s.[WTPCSalesPriceCalcQty-89202],
    t.[timestamp-0] = s.[timestamp-0],
    t.[UpdateDate] = GETDATE()
FROM DataWH.dbo.SalesCrMemoLine115 t
INNER JOIN [Rahat_LH].[dbo].[SalesCrMemoLine115] s
    ON t.[systemId-2000000000] = s.[systemId-2000000000]
WHERE 
            (
      
ISNULL(t.[WCSAL04PalletDiscGroupCode-50121], '') <> ISNULL(s.[WCSAL04PalletDiscGroupCode-50121], '') OR
ISNULL(t.[BinCode-5403], '') <> ISNULL(s.[BinCode-5403], '') OR
ISNULL(t.[WTBAOrderChargeCode-87600], '') <> ISNULL(s.[WTBAOrderChargeCode-87600], '') OR
ISNULL(t.[WTBASampleReasonCode-87700], '') <> ISNULL(s.[WTBASampleReasonCode-87700], '') OR
ISNULL(t.[WCSAL04SampleDiscGroupCode-50120], '') <> ISNULL(s.[WCSAL04SampleDiscGroupCode-50120], '') OR
ISNULL(t.[CustomerDiscGroup-7002], '') <> ISNULL(s.[CustomerDiscGroup-7002], '') OR
ISNULL(t.[ShortcutDimension1Code-40], '') <> ISNULL(s.[ShortcutDimension1Code-40], '') OR
ISNULL(t.[WTPCSalesPriceGroupCode-89200], '') <> ISNULL(s.[WTPCSalesPriceGroupCode-89200], '') OR
ISNULL(t.[WTPCSalesPriceCategoryCode-89203], '') <> ISNULL(s.[WTPCSalesPriceCategoryCode-89203], '') OR
ISNULL(t.[ReturnReasonCode-6608], '') <> ISNULL(s.[ReturnReasonCode-6608], '') OR
ISNULL(t.[OrderNo-65], '') <> ISNULL(s.[OrderNo-65], '') OR
ISNULL(t.[WTUSBeverageTaxAreaCode-88400], '') <> ISNULL(s.[WTUSBeverageTaxAreaCode-88400], '') OR
ISNULL(t.[ItemCategoryCode-5709], '') <> ISNULL(s.[ItemCategoryCode-5709], '') OR
ISNULL(t.[PostingGroup-8], '') <> ISNULL(s.[PostingGroup-8], '') OR
ISNULL(t.[WTBABrandNo-87150], '') <> ISNULL(s.[WTBABrandNo-87150], '') OR
ISNULL(t.[WTBAAlcoholTypeCode-87050], '') <> ISNULL(s.[WTBAAlcoholTypeCode-87050], '') OR
ISNULL(t.[WTBABottleSize-87020], '') <> ISNULL(s.[WTBABottleSize-87020], '') OR
ISNULL(t.[UnitofMeasure-13], '') <> ISNULL(s.[UnitofMeasure-13], '') OR
ISNULL(t.[UnitofMeasureCode-5407], '') <> ISNULL(s.[UnitofMeasureCode-5407], '') OR
ISNULL(t.[GenProdPostingGroup-75], '') <> ISNULL(s.[GenProdPostingGroup-75], '') OR
ISNULL(t.[WCTEWSalespersonCode-50000], '') <> ISNULL(s.[WCTEWSalespersonCode-50000], '') OR
ISNULL(t.[WTBABudgetSalespersonCode-87702], '') <> ISNULL(s.[WTBABudgetSalespersonCode-87702], '') OR
ISNULL(t.[GenBusPostingGroup-74], '') <> ISNULL(s.[GenBusPostingGroup-74], '') OR
ISNULL(t.[BilltoCustomerNo-68], '') <> ISNULL(s.[BilltoCustomerNo-68], '') OR
ISNULL(t.[CustomerPriceGroup-42], '') <> ISNULL(s.[CustomerPriceGroup-42], '') OR
ISNULL(t.[No-6], '') <> ISNULL(s.[No-6], '') OR
ISNULL(t.[SelltoCustomerNo-2], '') <> ISNULL(s.[SelltoCustomerNo-2], '') OR
ISNULL(t.[LocationCode-7], '') <> ISNULL(s.[LocationCode-7], '') OR
ISNULL(t.[ShipmentDate-10], '') <> ISNULL(s.[ShipmentDate-10], '') OR
ISNULL(t.[WTBADocumentDate-87100], '') <> ISNULL(s.[WTBADocumentDate-87100], '') OR
ISNULL(t.[Description-11], '') <> ISNULL(s.[Description-11], '') OR
ISNULL(t.[PostingDate-131], '') <> ISNULL(s.[PostingDate-131], '') OR
ISNULL(t.[$Company], '') <> ISNULL(s.[$Company], '') OR
ISNULL(t.[$DeliveredDateTime], '') <> ISNULL(s.[$DeliveredDateTime], '') OR
ISNULL(t.[Amount-29], 0.0) <> ISNULL(s.[Amount-29], 0.0) OR
ISNULL(t.[ApplfromItemEntry-5811], '') <> ISNULL(s.[ApplfromItemEntry-5811], '') OR
ISNULL(t.[BlanketOrderLineNo-98], '') <> ISNULL(s.[BlanketOrderLineNo-98], '') OR
ISNULL(t.[DepruntilFAPostingDate-5605], '') <> ISNULL(s.[DepruntilFAPostingDate-5605], '') OR
ISNULL(t.[DimensionSetID-480], '') <> ISNULL(s.[DimensionSetID-480], '') OR
ISNULL(t.[DocumentNo-3], '') <> ISNULL(s.[DocumentNo-3], '') OR
ISNULL(t.[GrossWeight-34], 0.0) <> ISNULL(s.[GrossWeight-34], 0.0) OR
ISNULL(t.[ICPartnerRefType-107], '') <> ISNULL(s.[ICPartnerRefType-107], '') OR
ISNULL(t.[InvDiscountAmount-69], 0.0) <> ISNULL(s.[InvDiscountAmount-69], 0.0) OR
ISNULL(t.[ItemReferenceType-5727], '') <> ISNULL(s.[ItemReferenceType-5727], '') OR
ISNULL(t.[JobContractEntryNo-1002], '') <> ISNULL(s.[JobContractEntryNo-1002], '') OR
ISNULL(t.[LineNo-4], '') <> ISNULL(s.[LineNo-4], '') OR
ISNULL(t.[NetWeight-35], 0.0) <> ISNULL(s.[NetWeight-35], 0.0) OR
ISNULL(t.[OrderLineNo-66], '') <> ISNULL(s.[OrderLineNo-66], '') OR
ISNULL(t.[PmtDiscountAmount-145], 0.0) <> ISNULL(s.[PmtDiscountAmount-145], 0.0) OR
ISNULL(t.[PriceCalculationMethod-7000], '') <> ISNULL(s.[PriceCalculationMethod-7000], '') OR
ISNULL(t.[Quantity-15], 0.0) <> ISNULL(s.[Quantity-15], 0.0) OR
ISNULL(t.[RetentionAttachedtoLineNo-10001], '') <> ISNULL(s.[RetentionAttachedtoLineNo-10001], '') OR
ISNULL(t.[UnitsperParcel-36], 0.0) <> ISNULL(s.[UnitsperParcel-36], 0.0) OR
ISNULL(t.[VAT-25], 0.0) <> ISNULL(s.[VAT-25], 0.0) OR
ISNULL(t.[VATBaseAmount-99], 0.0) <> ISNULL(s.[VATBaseAmount-99], 0.0) OR
ISNULL(t.[VATCalculationType-77], '') <> ISNULL(s.[VATCalculationType-77], '') OR
ISNULL(t.[WCAR06ManualCommAmount-50112], 0.0) <> ISNULL(s.[WCAR06ManualCommAmount-50112], 0.0) OR
ISNULL(t.[WCAR06MaxComm-50113], 0.0) <> ISNULL(s.[WCAR06MaxComm-50113], 0.0) OR
ISNULL(t.[WCAR06SalesCommClosed-50101], '') <> ISNULL(s.[WCAR06SalesCommClosed-50101], '') OR
ISNULL(t.[WCAR06SalesCommLedgEntry-50102], '') <> ISNULL(s.[WCAR06SalesCommLedgEntry-50102], '') OR
ISNULL(t.[WCINT01ShortShipped-50220], '') <> ISNULL(s.[WCINT01ShortShipped-50220], '') OR
ISNULL(t.[WTBABillHoldEntryNo-87570], '') <> ISNULL(s.[WTBABillHoldEntryNo-87570], '') OR
ISNULL(t.[WTBACasePack-87010], '') <> ISNULL(s.[WTBACasePack-87010], '') OR
ISNULL(t.[WTBAGrossWeight-87823], 0.0) <> ISNULL(s.[WTBAGrossWeight-87823], 0.0) OR
ISNULL(t.[WTBALineDiscAmountBottle-87042], 0.0) <> ISNULL(s.[WTBALineDiscAmountBottle-87042], 0.0) OR
ISNULL(t.[WTBALineDiscAmountCase-87041], 0.0) <> ISNULL(s.[WTBALineDiscAmountCase-87041], 0.0) OR
ISNULL(t.[WTBALineDiscountUnitAmount-87040], 0.0) <> ISNULL(s.[WTBALineDiscountUnitAmount-87040], 0.0) OR
ISNULL(t.[WTBALinkedLineNo-87000], '') <> ISNULL(s.[WTBALinkedLineNo-87000], '') OR
ISNULL(t.[WTBALiters-87300], 0.0) <> ISNULL(s.[WTBALiters-87300], 0.0) OR
ISNULL(t.[WTBAOriginalQtyBottle-87343], 0.0) <> ISNULL(s.[WTBAOriginalQtyBottle-87343], 0.0) OR
ISNULL(t.[WTBAOriginalQtyCase-87342], 0.0) <> ISNULL(s.[WTBAOriginalQtyCase-87342], 0.0) OR
ISNULL(t.[WTBAOriginalQuantity-87340], 0.0) <> ISNULL(s.[WTBAOriginalQuantity-87340], 0.0) OR
ISNULL(t.[WTBAOriginalQuantityBase-87341], 0.0) <> ISNULL(s.[WTBAOriginalQuantityBase-87341], 0.0) OR
ISNULL(t.[WTBASampleTotalAmount-87701], 0.0) <> ISNULL(s.[WTBASampleTotalAmount-87701], 0.0) OR
ISNULL(t.[WTBAVolume-87824], 0.0) <> ISNULL(s.[WTBAVolume-87824], 0.0) OR
ISNULL(t.[WTCBBillBack-89050], '') <> ISNULL(s.[WTCBBillBack-89050], '') OR
ISNULL(t.[WTCBChargebackLedgerEntry-89040], '') <> ISNULL(s.[WTCBChargebackLedgerEntry-89040], '') OR
ISNULL(t.[WTCBDeplAllowLineAmt-89030], 0.0) <> ISNULL(s.[WTCBDeplAllowLineAmt-89030], 0.0) OR
ISNULL(t.[WTCBDeplAllowUnitAmtType-89000], '') <> ISNULL(s.[WTCBDeplAllowUnitAmtType-89000], '') OR
ISNULL(t.[WTPCSalesPriceCalcMethod-89201], '') <> ISNULL(s.[WTPCSalesPriceCalcMethod-89201], '') OR
ISNULL(t.[WTPCSalesPriceLinkId-89204], '') <> ISNULL(s.[WTPCSalesPriceLinkId-89204], '') OR
ISNULL(t.[WTUSBeverageTax-88401], 0.0) <> ISNULL(s.[WTUSBeverageTax-88401], 0.0) OR
ISNULL(t.[AllowInvoiceDisc-32], '') <> ISNULL(s.[AllowInvoiceDisc-32], '') OR
ISNULL(t.[AllowLineDisc-7001], '') <> ISNULL(s.[AllowLineDisc-7001], '') OR
ISNULL(t.[AmountIncludingVAT-30], 0.0) <> ISNULL(s.[AmountIncludingVAT-30], 0.0) OR
ISNULL(t.[AppltoItemEntry-38], '') <> ISNULL(s.[AppltoItemEntry-38], '') OR
ISNULL(t.[AttachedtoLineNo-80], '') <> ISNULL(s.[AttachedtoLineNo-80], '') OR
--  ISNULL(t.[ContractLineNo-8052], '') <> ISNULL(s.[ContractLineNo-8052], '') OR
ISNULL(t.[LineAmount-103], 0.0) <> ISNULL(s.[LineAmount-103], 0.0) OR
ISNULL(t.[LineDiscount-27], 0.0) <> ISNULL(s.[LineDiscount-27], 0.0) OR
ISNULL(t.[LineDiscountAmount-28], 0.0) <> ISNULL(s.[LineDiscountAmount-28], 0.0) OR
ISNULL(t.[LineDiscountCalculation-180], '') <> ISNULL(s.[LineDiscountCalculation-180], '') OR
ISNULL(t.[Nonstock-5710], '') <> ISNULL(s.[Nonstock-5710], '') OR
ISNULL(t.[PrepaymentLine-123], '') <> ISNULL(s.[PrepaymentLine-123], '') OR
ISNULL(t.[QtyperUnitofMeasure-5404], 0.0) <> ISNULL(s.[QtyperUnitofMeasure-5404], 0.0) OR
ISNULL(t.[QuantityBase-5415], 0.0) <> ISNULL(s.[QuantityBase-5415], 0.0) OR
ISNULL(t.[RetentionVAT-10002], 0.0) <> ISNULL(s.[RetentionVAT-10002], 0.0) OR
ISNULL(t.[ReturnReceiptLineNo-6601], '') <> ISNULL(s.[ReturnReceiptLineNo-6601], '') OR
ISNULL(t.[SystemCreatedAt-2000000001], '') <> ISNULL(s.[SystemCreatedAt-2000000001], '') OR
ISNULL(t.[SystemCreatedBy-2000000002], '') <> ISNULL(s.[SystemCreatedBy-2000000002], '') OR
ISNULL(t.[SystemCreatedEntry-101], '') <> ISNULL(s.[SystemCreatedEntry-101], '') OR
ISNULL(t.[TaxLiable-86], '') <> ISNULL(s.[TaxLiable-86], '') OR
ISNULL(t.[Type-5], '') <> ISNULL(s.[Type-5], '') OR
ISNULL(t.[UnitCost-100], 0.0) <> ISNULL(s.[UnitCost-100], 0.0) OR
ISNULL(t.[UnitCostLCY-23], 0.0) <> ISNULL(s.[UnitCostLCY-23], 0.0) OR
ISNULL(t.[UnitPrice-22], 0.0) <> ISNULL(s.[UnitPrice-22], 0.0) OR
ISNULL(t.[UnitVolume-37], 0.0) <> ISNULL(s.[UnitVolume-37], 0.0) OR
ISNULL(t.[UseDuplicationList-5613], '') <> ISNULL(s.[UseDuplicationList-5613], '') OR
ISNULL(t.[VATDifference-104], 0.0) <> ISNULL(s.[VATDifference-104], 0.0) OR
ISNULL(t.[WCAR06DefaultComm-50114], '') <> ISNULL(s.[WCAR06DefaultComm-50114], '') OR
ISNULL(t.[WCAR06DefaultCommAmount-50115], 0.0) <> ISNULL(s.[WCAR06DefaultCommAmount-50115], 0.0) OR
ISNULL(t.[WCAR06ManualComm-50111], '') <> ISNULL(s.[WCAR06ManualComm-50111], '') OR
ISNULL(t.[WCAR06SalesCommissionable-50100], '') <> ISNULL(s.[WCAR06SalesCommissionable-50100], '') OR
ISNULL(t.[WCINT01ShortShipOrigQty-50221], 0.0) <> ISNULL(s.[WCINT01ShortShipOrigQty-50221], 0.0) OR
ISNULL(t.[WTBAGallons-87301], 0.0) <> ISNULL(s.[WTBAGallons-87301], 0.0) OR
ISNULL(t.[WTBANetWeight-87870], 0.0) <> ISNULL(s.[WTBANetWeight-87870], 0.0) OR
ISNULL(t.[WTBAQuantityBottle-87083], 0.0) <> ISNULL(s.[WTBAQuantityBottle-87083], 0.0) OR
ISNULL(t.[WTBAQuantityCase-87080], 0.0) <> ISNULL(s.[WTBAQuantityCase-87080], 0.0) OR
ISNULL(t.[WTBAQuantityPallet-87880], 0.0) <> ISNULL(s.[WTBAQuantityPallet-87880], 0.0) OR
ISNULL(t.[WTBASalesPriceOverride-87030], 0.0) <> ISNULL(s.[WTBASalesPriceOverride-87030], 0.0) OR
ISNULL(t.[WTBASampleEntryNo-87704], '') <> ISNULL(s.[WTBASampleEntryNo-87704], '') OR
ISNULL(t.[WTCBDeplAllowLineUnitAmt-89020], 0.0) <> ISNULL(s.[WTCBDeplAllowLineUnitAmt-89020], 0.0) OR
ISNULL(t.[WTCBDeplAllowUnitAmt-89010], 0.0) <> ISNULL(s.[WTCBDeplAllowUnitAmt-89010], 0.0) OR
ISNULL(t.[WTPCSalesPriceCalcQty-89202], 0.0) <> ISNULL(s.[WTPCSalesPriceCalcQty-89202], 0.0) OR
ISNULL(t.[timestamp-0], '') <> ISNULL(s.[timestamp-0], '')


            )

    -------------------------------
    -- Step 3: Delete Old Records
    -------------------------------
    DELETE FROM DataWH.dbo.SalesCrMemoLine115
    WHERE [systemId-2000000000] NOT IN (
        SELECT [systemId-2000000000] FROM [Rahat_LH].[dbo].[SalesCrMemoLine115]
    );
END;