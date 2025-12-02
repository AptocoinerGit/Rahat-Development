--Exec usp_IncrementalLoad_SalesLine37
--select * from [DataWH].[dbo].[SalesLine37]
--Truncate table [DataWH].[dbo].[SalesLine37]

CREATE   PROCEDURE usp_IncrementalLoad_SalesLine37_Custom
AS
BEGIN

    -- Step 1: Insert new records
    INSERT INTO [DataWH].[dbo].[SalesLine37_Custom] (
        [BinCode-5403],
        [WTBASampleReasonCode-87700],
        [WTBAOrderChargeCode-87600],
        [RequestedDeliveryDate-5790],
        [WTPCSalesPriceGroupCode-89200],
        [WTPCSalesPriceCategoryCode-89203],
        [CustomerDiscGroup-7002],
        [WTUSBeverageTaxAreaCode-88400],
        [WCSAL04SampleDiscGroupCode-50120],
        [PostingGroup-8],
        [UnitofMeasure-13],
        [GenProdPostingGroup-75],
        [UnitofMeasureCode-5407],
        [WTBAAlcoholTypeCode-87050],
        [WTBABrandNo-87150],
        [WTIAAllocationInheritCode-90110],
        [ItemCategoryCode-5709],
        [WTBABottleSize-87020],
        [SelltoCustomerNo-2],
        [No-6],
        [LocationCode-7],
        [ShipmentDate-10],
        [CustomerPriceGroup-42],
        [BilltoCustomerNo-68],
        [GenBusPostingGroup-74],
        [PlannedDeliveryDate-5794],
        [PlannedShipmentDate-5795],
        [WCTEWSalespersonCode-50000],
        [WTBADocumentDate-87100],
        [WTBAOrderDate-87110],
        [WTBABudgetSalespersonCode-87702],
        [ShortcutDimension1Code-40],
        [ShippingAgentCode-5796],
        [Description-11],
        [DocumentType-1],
        [DocumentNo-3],
        [LineNo-4],
        [Type-5],
        [Quantity-15],
        [OutstandingQuantity-16],
        [QtytoInvoice-17],
        [QtytoShip-18],
        [UnitPrice-22],
        [UnitCostLCY-23],
        [VAT-25],
        [LineDiscount-27],
        [LineDiscountAmount-28],
        [Amount-29],
        [AmountIncludingVAT-30],
        [AllowInvoiceDisc-32],
        [GrossWeight-34],
        [NetWeight-35],
        [UnitsperParcel-36],
        [UnitVolume-37],
        [AppltoItemEntry-38],
        [RecalculateInvoiceDisc-56],
        [OutstandingAmount-57],
        [QtyShippedNotInvoiced-58],
        [ShippedNotInvoiced-59],
        [QuantityShipped-60],
        [QuantityInvoiced-61],
        [ShipmentLineNo-64],
        [Profit-67],
        [InvDiscountAmount-69],
        [PurchOrderLineNo-72],
        [DropShipment-73],
        [VATCalculationType-77],
        [AttachedtoLineNo-80],
        [TaxLiable-86],
        [OutstandingAmountLCY-92],
        [ShippedNotInvoicedLCY-93],
        [ShippedNotInvLCYNoVAT-94],
        [Reserve-96],
        [BlanketOrderLineNo-98],
        [VATBaseAmount-99],
        [UnitCost-100],
        [SystemCreatedEntry-101],
        [LineAmount-103],
        [VATDifference-104],
        [InvDiscAmounttoInvoice-105],
        [ICPartnerRefType-107],
        [Prepayment-109],
        [PrepmtLineAmount-110],
        [PrepmtAmtInv-111],
        [PrepmtAmtInclVAT-112],
        [PrepaymentAmount-113],
        [PrepmtVATBaseAmt-114],
        [PrepaymentVAT-115],
        [PrepmtVATCalcType-116],
        [PrepaymentTaxLiable-119],
        [PrepmtAmttoDeduct-121],
        [PrepmtAmtDeducted-122],
        [PrepaymentLine-123],
        [PrepmtAmountInvInclVAT-124],
        [PrepmtAmountInvLCY-129],
        [PrepmtVATAmountInvLCY-132],
        [PrepaymentVATDifference-135],
        [PrepmtVATDifftoDeduct-136],
        [PrepmtVATDiffDeducted-137],
        [PmtDiscountAmount-145],
        [PrepmtPmtDiscountAmount-146],
        [LineDiscountCalculation-180],
        [DimensionSetID-480],
        [QtytoAssembletoOrder-900],
        [QtytoAsmtoOrderBase-901],
        [JobContractEntryNo-1002],
        [QtyperUnitofMeasure-5404],
        [Planned-5405],
        [QtyRoundingPrecision-5406],
        [QtyRoundingPrecisionBase-5408],
        [QuantityBase-5415],
        [OutstandingQtyBase-5416],
        [QtytoInvoiceBase-5417],
        [QtytoShipBase-5418],
        [QtyShippedNotInvdBase-5458],
        [QtyShippedBase-5460],
        [QtyInvoicedBase-5461],
        [DepruntilFAPostingDate-5605],
        [UseDuplicationList-5613],
        [OutofStockSubstitution-5701],
        [Nonstock-5710],
        [SpecialOrder-5713],
        [SpecialOrderPurchLineNo-5715],
        [ItemReferenceType-5727],
        [CompletelyShipped-5752],
        [AllowItemChargeAssignment-5800],
        [ReturnQtytoReceive-5803],
        [ReturnQtytoReceiveBase-5804],
        [ReturnQtyRcdNotInvd-5805],
        [RetQtyRcdNotInvdBase-5806],
        [ReturnRcdNotInvd-5807],
        [ReturnRcdNotInvdLCY-5808],
        [ReturnQtyReceived-5809],
        [ReturnQtyReceivedBase-5810],
        [ApplfromItemEntry-5811],
        [CO2eperUnit-6214],
        [TotalCO2e-6215],
        [PostedTotalCO2e-6216],
        [ReturnReceiptLineNo-6601],
        [CopiedFromPostedDoc-6610],
        [PriceCalculationMethod-7000],
        [AllowLineDisc-7001],
        [Subtype-7003],
        [Discount-8058],
        [ExcludefromDocTotal-8059],
        [RetentionAttachedtoLineNo-10001],
        [RetentionVAT-10002],
        [ShpfyOrderLineId-30100],
        [ShpfyRefundId-30103],
        [ShpfyRefundLineId-30104],
        [ShpfyRefundShippingLineId-30105],
        [WCAR06SalesCommissionable-50100],
        [WCAR06ManualComm-50111],
        [WCAR06ManualCommAmount-50112],
        [WCAR06MaxComm-50113],
        [WCAR06DefaultComm-50114],
        [WCAR06DefaultCommAmount-50115],
        [WCINT01ShortShipped-50220],
        [WCINT01ShortShipOrigQty-50221],
        [WCMBCLastOrderQuantity-50400],
        [WCMBCLastOrderUnitPrice-50402],
        [WTBALinkedLineNo-87000],
        [WTBACasePack-87010],
        [WTBASalesPriceOverride-87030],
        [WTBALineDiscountUnitAmount-87040],
        [WTBALineDiscAmountCase-87041],
        [WTBALineDiscAmountBottle-87042],
        [WTBAQuantityCase-87080],
        [WTBAQtytoShipCase-87081],
        [WTBAQtyShippedCase-87082],
        [WTBAQuantityBottle-87083],
        [WTBAQtytoShipBottle-87084],
        [WTBAQtyShippedBottle-87085],
        [WTBAQtytoInvoiceCase-87086],
        [WTBAQtytoInvoiceBottle-87087],
        [WTBAQtyInvoicedCase-87088],
        [WTBAQtyInvoicedBottle-87089],
        [WTBARetQtytoRecvBottle-87090],
        [WTBARetQtytoRecvCase-87091],
        [WTBARetQtyReceivedBottle-87092],
        [WTBARetQtyReceivedCase-87093],
        [WTBAOutstandingQtyCase-87094],
        [WTBAOutstandingQtyBottle-87095],
        [WTBALiters-87300],
        [WTBAGallons-87301],
        [WTBAOriginalQuantity-87340],
        [WTBAOriginalQuantityBase-87341],
        [WTBAOriginalQtyCase-87342],
        [WTBAOriginalQtyBottle-87343],
        [WTBABillHoldEntryNo-87570],
        [WTBASampleTotalAmount-87701],
        [WTBAStatus-87703],
        [WTBAGrossWeight-87823],
        [WTBAVolume-87824],
        [WTBASOReviewStatus-87851],
        [WTBANetWeight-87870],
        [WTBAQuantityPallet-87880],
        [WTUSBeverageTax-88401],
        [WTCBDeplAllowUnitAmtType-89000],
        [WTCBDeplAllowUnitAmt-89010],
        [WTCBDeplAllowLineUnitAmt-89020],
        [WTCBDeplAllowLineAmt-89030],
        [WTCBBillBack-89050],
        [WTPCSalesPriceCalcMethod-89201],
        [WTPCSalesPriceCalcQty-89202],
        [WTPCSalesPriceLinkId-89204],
        [ERCGenSelectionOption-71276915],
        [ERCSelectedPQLineNo-71276919],
        [ERCRMAAutoDispose-71276920],
        [ERCAPMDisplayUnitPrice-71276921],
        [ERCAPMDisplayAmount-71276922],
        [timestamp-0],
        [systemId-2000000000],
        [SystemCreatedAt-2000000001],
        [SystemCreatedBy-2000000002],
        [SystemModifiedAt-2000000003],
        [$Company],
        [$DeliveredDateTime],
        InsertDate
    )
    SELECT
        s.[BinCode-5403],
        s.[WTBASampleReasonCode-87700],
        s.[WTBAOrderChargeCode-87600],
        s.[RequestedDeliveryDate-5790],
        s.[WTPCSalesPriceGroupCode-89200],
        s.[WTPCSalesPriceCategoryCode-89203],
        s.[CustomerDiscGroup-7002],
        s.[WTUSBeverageTaxAreaCode-88400],
        s.[WCSAL04SampleDiscGroupCode-50120],
        s.[PostingGroup-8],
        s.[UnitofMeasure-13],
        s.[GenProdPostingGroup-75],
        s.[UnitofMeasureCode-5407],
        s.[WTBAAlcoholTypeCode-87050],
        s.[WTBABrandNo-87150],
        s.[WTIAAllocationInheritCode-90110],
        s.[ItemCategoryCode-5709],
        s.[WTBABottleSize-87020],
        s.[SelltoCustomerNo-2],
        s.[No-6],
        s.[LocationCode-7],
        s.[ShipmentDate-10],
        s.[CustomerPriceGroup-42],
        s.[BilltoCustomerNo-68],
        s.[GenBusPostingGroup-74],
        s.[PlannedDeliveryDate-5794],
        s.[PlannedShipmentDate-5795],
        s.[WCTEWSalespersonCode-50000],
        s.[WTBADocumentDate-87100],
        s.[WTBAOrderDate-87110],
        s.[WTBABudgetSalespersonCode-87702],
        s.[ShortcutDimension1Code-40],
        s.[ShippingAgentCode-5796],
        s.[Description-11],
        s.[DocumentType-1],
        s.[DocumentNo-3],
        s.[LineNo-4],
        s.[Type-5],
        s.[Quantity-15],
        s.[OutstandingQuantity-16],
        s.[QtytoInvoice-17],
        s.[QtytoShip-18],
        s.[UnitPrice-22],
        s.[UnitCostLCY-23],
        s.[VAT-25],
        s.[LineDiscount-27],
        s.[LineDiscountAmount-28],
        s.[Amount-29],
        s.[AmountIncludingVAT-30],
        s.[AllowInvoiceDisc-32],
        s.[GrossWeight-34],
        s.[NetWeight-35],
        s.[UnitsperParcel-36],
        s.[UnitVolume-37],
        s.[AppltoItemEntry-38],
        s.[RecalculateInvoiceDisc-56],
        s.[OutstandingAmount-57],
        s.[QtyShippedNotInvoiced-58],
        s.[ShippedNotInvoiced-59],
        s.[QuantityShipped-60],
        s.[QuantityInvoiced-61],
        s.[ShipmentLineNo-64],
        s.[Profit-67],
        s.[InvDiscountAmount-69],
        s.[PurchOrderLineNo-72],
        s.[DropShipment-73],
        s.[VATCalculationType-77],
        s.[AttachedtoLineNo-80],
        s.[TaxLiable-86],
        s.[OutstandingAmountLCY-92],
        s.[ShippedNotInvoicedLCY-93],
        s.[ShippedNotInvLCYNoVAT-94],
        s.[Reserve-96],
        s.[BlanketOrderLineNo-98],
        s.[VATBaseAmount-99],
        s.[UnitCost-100],
        s.[SystemCreatedEntry-101],
        s.[LineAmount-103],
        s.[VATDifference-104],
        s.[InvDiscAmounttoInvoice-105],
        s.[ICPartnerRefType-107],
        s.[Prepayment-109],
        s.[PrepmtLineAmount-110],
        s.[PrepmtAmtInv-111],
        s.[PrepmtAmtInclVAT-112],
        s.[PrepaymentAmount-113],
        s.[PrepmtVATBaseAmt-114],
        s.[PrepaymentVAT-115],
        s.[PrepmtVATCalcType-116],
        s.[PrepaymentTaxLiable-119],
        s.[PrepmtAmttoDeduct-121],
        s.[PrepmtAmtDeducted-122],
        s.[PrepaymentLine-123],
        s.[PrepmtAmountInvInclVAT-124],
        s.[PrepmtAmountInvLCY-129],
        s.[PrepmtVATAmountInvLCY-132],
        s.[PrepaymentVATDifference-135],
        s.[PrepmtVATDifftoDeduct-136],
        s.[PrepmtVATDiffDeducted-137],
        s.[PmtDiscountAmount-145],
        s.[PrepmtPmtDiscountAmount-146],
        s.[LineDiscountCalculation-180],
        s.[DimensionSetID-480],
        s.[QtytoAssembletoOrder-900],
        s.[QtytoAsmtoOrderBase-901],
        s.[JobContractEntryNo-1002],
        s.[QtyperUnitofMeasure-5404],
        s.[Planned-5405],
        s.[QtyRoundingPrecision-5406],
        s.[QtyRoundingPrecisionBase-5408],
        s.[QuantityBase-5415],
        s.[OutstandingQtyBase-5416],
        s.[QtytoInvoiceBase-5417],
        s.[QtytoShipBase-5418],
        s.[QtyShippedNotInvdBase-5458],
        s.[QtyShippedBase-5460],
        s.[QtyInvoicedBase-5461],
        s.[DepruntilFAPostingDate-5605],
        s.[UseDuplicationList-5613],
        s.[OutofStockSubstitution-5701],
        s.[Nonstock-5710],
        s.[SpecialOrder-5713],
        s.[SpecialOrderPurchLineNo-5715],
        s.[ItemReferenceType-5727],
        s.[CompletelyShipped-5752],
        s.[AllowItemChargeAssignment-5800],
        s.[ReturnQtytoReceive-5803],
        s.[ReturnQtytoReceiveBase-5804],
        s.[ReturnQtyRcdNotInvd-5805],
        s.[RetQtyRcdNotInvdBase-5806],
        s.[ReturnRcdNotInvd-5807],
        s.[ReturnRcdNotInvdLCY-5808],
        s.[ReturnQtyReceived-5809],
        s.[ReturnQtyReceivedBase-5810],
        s.[ApplfromItemEntry-5811],
        s.[CO2eperUnit-6214],
        s.[TotalCO2e-6215],
        s.[PostedTotalCO2e-6216],
        s.[ReturnReceiptLineNo-6601],
        s.[CopiedFromPostedDoc-6610],
        s.[PriceCalculationMethod-7000],
        s.[AllowLineDisc-7001],
        s.[Subtype-7003],
        s.[Discount-8058],
        s.[ExcludefromDocTotal-8059],
        s.[RetentionAttachedtoLineNo-10001],
        s.[RetentionVAT-10002],
        s.[ShpfyOrderLineId-30100],
        s.[ShpfyRefundId-30103],
        s.[ShpfyRefundLineId-30104],
        s.[ShpfyRefundShippingLineId-30105],
        s.[WCAR06SalesCommissionable-50100],
        s.[WCAR06ManualComm-50111],
        s.[WCAR06ManualCommAmount-50112],
        s.[WCAR06MaxComm-50113],
        s.[WCAR06DefaultComm-50114],
        s.[WCAR06DefaultCommAmount-50115],
        s.[WCINT01ShortShipped-50220],
        s.[WCINT01ShortShipOrigQty-50221],
        s.[WCMBCLastOrderQuantity-50400],
        s.[WCMBCLastOrderUnitPrice-50402],
        s.[WTBALinkedLineNo-87000],
        s.[WTBACasePack-87010],
        s.[WTBASalesPriceOverride-87030],
        s.[WTBALineDiscountUnitAmount-87040],
        s.[WTBALineDiscAmountCase-87041],
        s.[WTBALineDiscAmountBottle-87042],
        s.[WTBAQuantityCase-87080],
        s.[WTBAQtytoShipCase-87081],
        s.[WTBAQtyShippedCase-87082],
        s.[WTBAQuantityBottle-87083],
        s.[WTBAQtytoShipBottle-87084],
        s.[WTBAQtyShippedBottle-87085],
        s.[WTBAQtytoInvoiceCase-87086],
        s.[WTBAQtytoInvoiceBottle-87087],
        s.[WTBAQtyInvoicedCase-87088],
        s.[WTBAQtyInvoicedBottle-87089],
        s.[WTBARetQtytoRecvBottle-87090],
        s.[WTBARetQtytoRecvCase-87091],
        s.[WTBARetQtyReceivedBottle-87092],
        s.[WTBARetQtyReceivedCase-87093],
        s.[WTBAOutstandingQtyCase-87094],
        s.[WTBAOutstandingQtyBottle-87095],
        s.[WTBALiters-87300],
        s.[WTBAGallons-87301],
        s.[WTBAOriginalQuantity-87340],
        s.[WTBAOriginalQuantityBase-87341],
        s.[WTBAOriginalQtyCase-87342],
        s.[WTBAOriginalQtyBottle-87343],
        s.[WTBABillHoldEntryNo-87570],
        s.[WTBASampleTotalAmount-87701],
        s.[WTBAStatus-87703],
        s.[WTBAGrossWeight-87823],
        s.[WTBAVolume-87824],
        s.[WTBASOReviewStatus-87851],
        s.[WTBANetWeight-87870],
        s.[WTBAQuantityPallet-87880],
        s.[WTUSBeverageTax-88401],
        s.[WTCBDeplAllowUnitAmtType-89000],
        s.[WTCBDeplAllowUnitAmt-89010],
        s.[WTCBDeplAllowLineUnitAmt-89020],
        s.[WTCBDeplAllowLineAmt-89030],
        s.[WTCBBillBack-89050],
        s.[WTPCSalesPriceCalcMethod-89201],
        s.[WTPCSalesPriceCalcQty-89202],
        s.[WTPCSalesPriceLinkId-89204],
        s.[ERCGenSelectionOption-71276915],
        s.[ERCSelectedPQLineNo-71276919],
        s.[ERCRMAAutoDispose-71276920],
        s.[ERCAPMDisplayUnitPrice-71276921],
        s.[ERCAPMDisplayAmount-71276922],
        s.[timestamp-0],
        s.[systemId-2000000000],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        s.[SystemCreatedBy-2000000002],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        s.[$Company],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')),
        CURRENT_TIMESTAMP
    FROM [Rahat_LH].[dbo].[SalesLine37] s
    LEFT JOIN [DataWH].[dbo].[SalesLine37_Custom] t
        ON s.[systemId-2000000000] = t.[systemId-2000000000]
    WHERE t.[systemId-2000000000] IS NULL
      AND s.[systemId-2000000000] IS NOT NULL;

    -- Step 2: Update changed records
    UPDATE t
    SET
        t.[BinCode-5403] = s.[BinCode-5403],
        t.[WTBASampleReasonCode-87700] = s.[WTBASampleReasonCode-87700],
        t.[WTBAOrderChargeCode-87600] = s.[WTBAOrderChargeCode-87600],
        t.[RequestedDeliveryDate-5790] = s.[RequestedDeliveryDate-5790],
        t.[WTPCSalesPriceGroupCode-89200] = s.[WTPCSalesPriceGroupCode-89200],
        t.[WTPCSalesPriceCategoryCode-89203] = s.[WTPCSalesPriceCategoryCode-89203],
        t.[CustomerDiscGroup-7002] = s.[CustomerDiscGroup-7002],
        t.[WTUSBeverageTaxAreaCode-88400] = s.[WTUSBeverageTaxAreaCode-88400],
        t.[WCSAL04SampleDiscGroupCode-50120] = s.[WCSAL04SampleDiscGroupCode-50120],
        t.[PostingGroup-8] = s.[PostingGroup-8],
        t.[UnitofMeasure-13] = s.[UnitofMeasure-13],
        t.[GenProdPostingGroup-75] = s.[GenProdPostingGroup-75],
        t.[UnitofMeasureCode-5407] = s.[UnitofMeasureCode-5407],
        t.[WTBAAlcoholTypeCode-87050] = s.[WTBAAlcoholTypeCode-87050],
        t.[WTBABrandNo-87150] = s.[WTBABrandNo-87150],
        t.[WTIAAllocationInheritCode-90110] = s.[WTIAAllocationInheritCode-90110],
        t.[ItemCategoryCode-5709] = s.[ItemCategoryCode-5709],
        t.[WTBABottleSize-87020] = s.[WTBABottleSize-87020],
        t.[SelltoCustomerNo-2] = s.[SelltoCustomerNo-2],
        t.[No-6] = s.[No-6],
        t.[LocationCode-7] = s.[LocationCode-7],
        t.[ShipmentDate-10] = s.[ShipmentDate-10],
        t.[CustomerPriceGroup-42] = s.[CustomerPriceGroup-42],
        t.[BilltoCustomerNo-68] = s.[BilltoCustomerNo-68],
        t.[GenBusPostingGroup-74] = s.[GenBusPostingGroup-74],
        t.[PlannedDeliveryDate-5794] = s.[PlannedDeliveryDate-5794],
        t.[PlannedShipmentDate-5795] = s.[PlannedShipmentDate-5795],
        t.[WCTEWSalespersonCode-50000] = s.[WCTEWSalespersonCode-50000],
        t.[WTBADocumentDate-87100] = s.[WTBADocumentDate-87100],
        t.[WTBAOrderDate-87110] = s.[WTBAOrderDate-87110],
        t.[WTBABudgetSalespersonCode-87702] = s.[WTBABudgetSalespersonCode-87702],
        t.[ShortcutDimension1Code-40] = s.[ShortcutDimension1Code-40],
        t.[ShippingAgentCode-5796] = s.[ShippingAgentCode-5796],
        t.[Description-11] = s.[Description-11],
        t.[DocumentType-1] = s.[DocumentType-1],
        t.[DocumentNo-3] = s.[DocumentNo-3],
        t.[LineNo-4] = s.[LineNo-4],
        t.[Type-5] = s.[Type-5],
        t.[Quantity-15] = s.[Quantity-15],
        t.[OutstandingQuantity-16] = s.[OutstandingQuantity-16],
        t.[QtytoInvoice-17] = s.[QtytoInvoice-17],
        t.[QtytoShip-18] = s.[QtytoShip-18],
        t.[UnitPrice-22] = s.[UnitPrice-22],
        t.[UnitCostLCY-23] = s.[UnitCostLCY-23],
        t.[VAT-25] = s.[VAT-25],
        t.[LineDiscount-27] = s.[LineDiscount-27],
        t.[LineDiscountAmount-28] = s.[LineDiscountAmount-28],
        t.[Amount-29] = s.[Amount-29],
        t.[AmountIncludingVAT-30] = s.[AmountIncludingVAT-30],
        t.[AllowInvoiceDisc-32] = s.[AllowInvoiceDisc-32],
        t.[GrossWeight-34] = s.[GrossWeight-34],
        t.[NetWeight-35] = s.[NetWeight-35],
        t.[UnitsperParcel-36] = s.[UnitsperParcel-36],
        t.[UnitVolume-37] = s.[UnitVolume-37],
        t.[AppltoItemEntry-38] = s.[AppltoItemEntry-38],
        t.[RecalculateInvoiceDisc-56] = s.[RecalculateInvoiceDisc-56],
        t.[OutstandingAmount-57] = s.[OutstandingAmount-57],
        t.[QtyShippedNotInvoiced-58] = s.[QtyShippedNotInvoiced-58],
        t.[ShippedNotInvoiced-59] = s.[ShippedNotInvoiced-59],
        t.[QuantityShipped-60] = s.[QuantityShipped-60],
        t.[QuantityInvoiced-61] = s.[QuantityInvoiced-61],
        t.[ShipmentLineNo-64] = s.[ShipmentLineNo-64],
        t.[Profit-67] = s.[Profit-67],
        t.[InvDiscountAmount-69] = s.[InvDiscountAmount-69],
        t.[PurchOrderLineNo-72] = s.[PurchOrderLineNo-72],
        t.[DropShipment-73] = s.[DropShipment-73],
        t.[VATCalculationType-77] = s.[VATCalculationType-77],
        t.[AttachedtoLineNo-80] = s.[AttachedtoLineNo-80],
        t.[TaxLiable-86] = s.[TaxLiable-86],
        t.[OutstandingAmountLCY-92] = s.[OutstandingAmountLCY-92],
        t.[ShippedNotInvoicedLCY-93] = s.[ShippedNotInvoicedLCY-93],
        t.[ShippedNotInvLCYNoVAT-94] = s.[ShippedNotInvLCYNoVAT-94],
        t.[Reserve-96] = s.[Reserve-96],
        t.[BlanketOrderLineNo-98] = s.[BlanketOrderLineNo-98],
        t.[VATBaseAmount-99] = s.[VATBaseAmount-99],
        t.[UnitCost-100] = s.[UnitCost-100],
        t.[SystemCreatedEntry-101] = s.[SystemCreatedEntry-101],
        t.[LineAmount-103] = s.[LineAmount-103],
        t.[VATDifference-104] = s.[VATDifference-104],
        t.[InvDiscAmounttoInvoice-105] = s.[InvDiscAmounttoInvoice-105],
        t.[ICPartnerRefType-107] = s.[ICPartnerRefType-107],
        t.[Prepayment-109] = s.[Prepayment-109],
        t.[PrepmtLineAmount-110] = s.[PrepmtLineAmount-110],
        t.[PrepmtAmtInv-111] = s.[PrepmtAmtInv-111],
        t.[PrepmtAmtInclVAT-112] = s.[PrepmtAmtInclVAT-112],
        t.[PrepaymentAmount-113] = s.[PrepaymentAmount-113],
        t.[PrepmtVATBaseAmt-114] = s.[PrepmtVATBaseAmt-114],
        t.[PrepaymentVAT-115] = s.[PrepaymentVAT-115],
        t.[PrepmtVATCalcType-116] = s.[PrepmtVATCalcType-116],
        t.[PrepaymentTaxLiable-119] = s.[PrepaymentTaxLiable-119],
        t.[PrepmtAmttoDeduct-121] = s.[PrepmtAmttoDeduct-121],
        t.[PrepmtAmtDeducted-122] = s.[PrepmtAmtDeducted-122],
        t.[PrepaymentLine-123] = s.[PrepaymentLine-123],
        t.[PrepmtAmountInvInclVAT-124] = s.[PrepmtAmountInvInclVAT-124],
        t.[PrepmtAmountInvLCY-129] = s.[PrepmtAmountInvLCY-129],
        t.[PrepmtVATAmountInvLCY-132] = s.[PrepmtVATAmountInvLCY-132],
        t.[PrepaymentVATDifference-135] = s.[PrepaymentVATDifference-135],
        t.[PrepmtVATDifftoDeduct-136] = s.[PrepmtVATDifftoDeduct-136],
        t.[PrepmtVATDiffDeducted-137] = s.[PrepmtVATDiffDeducted-137],
        t.[PmtDiscountAmount-145] = s.[PmtDiscountAmount-145],
        t.[PrepmtPmtDiscountAmount-146] = s.[PrepmtPmtDiscountAmount-146],
        t.[LineDiscountCalculation-180] = s.[LineDiscountCalculation-180],
        t.[DimensionSetID-480] = s.[DimensionSetID-480],
        t.[QtytoAssembletoOrder-900] = s.[QtytoAssembletoOrder-900],
        t.[QtytoAsmtoOrderBase-901] = s.[QtytoAsmtoOrderBase-901],
        t.[JobContractEntryNo-1002] = s.[JobContractEntryNo-1002],
        t.[QtyperUnitofMeasure-5404] = s.[QtyperUnitofMeasure-5404],
        t.[Planned-5405] = s.[Planned-5405],
        t.[QtyRoundingPrecision-5406] = s.[QtyRoundingPrecision-5406],
        t.[QtyRoundingPrecisionBase-5408] = s.[QtyRoundingPrecisionBase-5408],
        t.[QuantityBase-5415] = s.[QuantityBase-5415],
        t.[OutstandingQtyBase-5416] = s.[OutstandingQtyBase-5416],
        t.[QtytoInvoiceBase-5417] = s.[QtytoInvoiceBase-5417],
        t.[QtytoShipBase-5418] = s.[QtytoShipBase-5418],
        t.[QtyShippedNotInvdBase-5458] = s.[QtyShippedNotInvdBase-5458],
        t.[QtyShippedBase-5460] = s.[QtyShippedBase-5460],
        t.[QtyInvoicedBase-5461] = s.[QtyInvoicedBase-5461],
        t.[DepruntilFAPostingDate-5605] = s.[DepruntilFAPostingDate-5605],
        t.[UseDuplicationList-5613] = s.[UseDuplicationList-5613],
        t.[OutofStockSubstitution-5701] = s.[OutofStockSubstitution-5701],
        t.[Nonstock-5710] = s.[Nonstock-5710],
        t.[SpecialOrder-5713] = s.[SpecialOrder-5713],
        t.[SpecialOrderPurchLineNo-5715] = s.[SpecialOrderPurchLineNo-5715],
        t.[ItemReferenceType-5727] = s.[ItemReferenceType-5727],
        t.[CompletelyShipped-5752] = s.[CompletelyShipped-5752],
        t.[AllowItemChargeAssignment-5800] = s.[AllowItemChargeAssignment-5800],
        t.[ReturnQtytoReceive-5803] = s.[ReturnQtytoReceive-5803],
        t.[ReturnQtytoReceiveBase-5804] = s.[ReturnQtytoReceiveBase-5804],
        t.[ReturnQtyRcdNotInvd-5805] = s.[ReturnQtyRcdNotInvd-5805],
        t.[RetQtyRcdNotInvdBase-5806] = s.[RetQtyRcdNotInvdBase-5806],
        t.[ReturnRcdNotInvd-5807] = s.[ReturnRcdNotInvd-5807],
        t.[ReturnRcdNotInvdLCY-5808] = s.[ReturnRcdNotInvdLCY-5808],
        t.[ReturnQtyReceived-5809] = s.[ReturnQtyReceived-5809],
        t.[ReturnQtyReceivedBase-5810] = s.[ReturnQtyReceivedBase-5810],
        t.[ApplfromItemEntry-5811] = s.[ApplfromItemEntry-5811],
        t.[CO2eperUnit-6214] = s.[CO2eperUnit-6214],
        t.[TotalCO2e-6215] = s.[TotalCO2e-6215],
        t.[PostedTotalCO2e-6216] = s.[PostedTotalCO2e-6216],
        t.[ReturnReceiptLineNo-6601] = s.[ReturnReceiptLineNo-6601],
        t.[CopiedFromPostedDoc-6610] = s.[CopiedFromPostedDoc-6610],
        t.[PriceCalculationMethod-7000] = s.[PriceCalculationMethod-7000],
        t.[AllowLineDisc-7001] = s.[AllowLineDisc-7001],
        t.[Subtype-7003] = s.[Subtype-7003],
        t.[Discount-8058] = s.[Discount-8058],
        t.[ExcludefromDocTotal-8059] = s.[ExcludefromDocTotal-8059],
        t.[RetentionAttachedtoLineNo-10001] = s.[RetentionAttachedtoLineNo-10001],
        t.[RetentionVAT-10002] = s.[RetentionVAT-10002],
        t.[ShpfyOrderLineId-30100] = s.[ShpfyOrderLineId-30100],
        t.[ShpfyRefundId-30103] = s.[ShpfyRefundId-30103],
        t.[ShpfyRefundLineId-30104] = s.[ShpfyRefundLineId-30104],
        t.[ShpfyRefundShippingLineId-30105] = s.[ShpfyRefundShippingLineId-30105],
        t.[WCAR06SalesCommissionable-50100] = s.[WCAR06SalesCommissionable-50100],
        t.[WCAR06ManualComm-50111] = s.[WCAR06ManualComm-50111],
        t.[WCAR06ManualCommAmount-50112] = s.[WCAR06ManualCommAmount-50112],
        t.[WCAR06MaxComm-50113] = s.[WCAR06MaxComm-50113],
        t.[WCAR06DefaultComm-50114] = s.[WCAR06DefaultComm-50114],
        t.[WCAR06DefaultCommAmount-50115] = s.[WCAR06DefaultCommAmount-50115],
        t.[WCINT01ShortShipped-50220] = s.[WCINT01ShortShipped-50220],
        t.[WCINT01ShortShipOrigQty-50221] = s.[WCINT01ShortShipOrigQty-50221],
        t.[WCMBCLastOrderQuantity-50400] = s.[WCMBCLastOrderQuantity-50400],
        t.[WCMBCLastOrderUnitPrice-50402] = s.[WCMBCLastOrderUnitPrice-50402],
        t.[WTBALinkedLineNo-87000] = s.[WTBALinkedLineNo-87000],
        t.[WTBACasePack-87010] = s.[WTBACasePack-87010],
        t.[WTBASalesPriceOverride-87030] = s.[WTBASalesPriceOverride-87030],
        t.[WTBALineDiscountUnitAmount-87040] = s.[WTBALineDiscountUnitAmount-87040],
        t.[WTBALineDiscAmountCase-87041] = s.[WTBALineDiscAmountCase-87041],
        t.[WTBALineDiscAmountBottle-87042] = s.[WTBALineDiscAmountBottle-87042],
        t.[WTBAQuantityCase-87080] = s.[WTBAQuantityCase-87080],
        t.[WTBAQtytoShipCase-87081] = s.[WTBAQtytoShipCase-87081],
        t.[WTBAQtyShippedCase-87082] = s.[WTBAQtyShippedCase-87082],
        t.[WTBAQuantityBottle-87083] = s.[WTBAQuantityBottle-87083],
        t.[WTBAQtytoShipBottle-87084] = s.[WTBAQtytoShipBottle-87084],
        t.[WTBAQtyShippedBottle-87085] = s.[WTBAQtyShippedBottle-87085],
        t.[WTBAQtytoInvoiceCase-87086] = s.[WTBAQtytoInvoiceCase-87086],
        t.[WTBAQtytoInvoiceBottle-87087] = s.[WTBAQtytoInvoiceBottle-87087],
        t.[WTBAQtyInvoicedCase-87088] = s.[WTBAQtyInvoicedCase-87088],
        t.[WTBAQtyInvoicedBottle-87089] = s.[WTBAQtyInvoicedBottle-87089],
        t.[WTBARetQtytoRecvBottle-87090] = s.[WTBARetQtytoRecvBottle-87090],
        t.[WTBARetQtytoRecvCase-87091] = s.[WTBARetQtytoRecvCase-87091],
        t.[WTBARetQtyReceivedBottle-87092] = s.[WTBARetQtyReceivedBottle-87092],
        t.[WTBARetQtyReceivedCase-87093] = s.[WTBARetQtyReceivedCase-87093],
        t.[WTBAOutstandingQtyCase-87094] = s.[WTBAOutstandingQtyCase-87094],
        t.[WTBAOutstandingQtyBottle-87095] = s.[WTBAOutstandingQtyBottle-87095],
        t.[WTBALiters-87300] = s.[WTBALiters-87300],
        t.[WTBAGallons-87301] = s.[WTBAGallons-87301],
        t.[WTBAOriginalQuantity-87340] = s.[WTBAOriginalQuantity-87340],
        t.[WTBAOriginalQuantityBase-87341] = s.[WTBAOriginalQuantityBase-87341],
        t.[WTBAOriginalQtyCase-87342] = s.[WTBAOriginalQtyCase-87342],
        t.[WTBAOriginalQtyBottle-87343] = s.[WTBAOriginalQtyBottle-87343],
        t.[WTBABillHoldEntryNo-87570] = s.[WTBABillHoldEntryNo-87570],
        t.[WTBASampleTotalAmount-87701] = s.[WTBASampleTotalAmount-87701],
        t.[WTBAStatus-87703] = s.[WTBAStatus-87703],
        t.[WTBAGrossWeight-87823] = s.[WTBAGrossWeight-87823],
        t.[WTBAVolume-87824] = s.[WTBAVolume-87824],
        t.[WTBASOReviewStatus-87851] = s.[WTBASOReviewStatus-87851],
        t.[WTBANetWeight-87870] = s.[WTBANetWeight-87870],
        t.[WTBAQuantityPallet-87880] = s.[WTBAQuantityPallet-87880],
        t.[WTUSBeverageTax-88401] = s.[WTUSBeverageTax-88401],
        t.[WTCBDeplAllowUnitAmtType-89000] = s.[WTCBDeplAllowUnitAmtType-89000],
        t.[WTCBDeplAllowUnitAmt-89010] = s.[WTCBDeplAllowUnitAmt-89010],
        t.[WTCBDeplAllowLineUnitAmt-89020] = s.[WTCBDeplAllowLineUnitAmt-89020],
        t.[WTCBDeplAllowLineAmt-89030] = s.[WTCBDeplAllowLineAmt-89030],
        t.[WTCBBillBack-89050] = s.[WTCBBillBack-89050],
        t.[WTPCSalesPriceCalcMethod-89201] = s.[WTPCSalesPriceCalcMethod-89201],
        t.[WTPCSalesPriceCalcQty-89202] = s.[WTPCSalesPriceCalcQty-89202],
        t.[WTPCSalesPriceLinkId-89204] = s.[WTPCSalesPriceLinkId-89204],
        t.[ERCGenSelectionOption-71276915] = s.[ERCGenSelectionOption-71276915],
        t.[ERCSelectedPQLineNo-71276919] = s.[ERCSelectedPQLineNo-71276919],
        t.[ERCRMAAutoDispose-71276920] = s.[ERCRMAAutoDispose-71276920],
        t.[ERCAPMDisplayUnitPrice-71276921] = s.[ERCAPMDisplayUnitPrice-71276921],
        t.[ERCAPMDisplayAmount-71276922] = s.[ERCAPMDisplayAmount-71276922],
        t.[timestamp-0] = s.[timestamp-0],
        t.[SystemCreatedAt-2000000001] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        t.[SystemCreatedBy-2000000002] = s.[SystemCreatedBy-2000000002],
        t.[SystemModifiedAt-2000000003] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        t.[$Company] = s.[$Company],
        t.[$DeliveredDateTime] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')),
        t.UpdateDate = CURRENT_TIMESTAMP
    FROM [DataWH].[dbo].[SalesLine37_Custom] t
    JOIN [Rahat_LH].[dbo].[SalesLine37] s
        ON t.[systemId-2000000000] = s.[systemId-2000000000]
    WHERE
        ISNULL(t.[BinCode-5403], '') <> ISNULL(s.[BinCode-5403], '') OR
        ISNULL(t.[WTBASampleReasonCode-87700], '') <> ISNULL(s.[WTBASampleReasonCode-87700], '') OR
        ISNULL(t.[WTBAOrderChargeCode-87600], '') <> ISNULL(s.[WTBAOrderChargeCode-87600], '') OR
        ISNULL(t.[RequestedDeliveryDate-5790], '1900-01-01') <> ISNULL(s.[RequestedDeliveryDate-5790], '1900-01-01') OR
        ISNULL(t.[WTPCSalesPriceGroupCode-89200], '') <> ISNULL(s.[WTPCSalesPriceGroupCode-89200], '') OR
        ISNULL(t.[WTPCSalesPriceCategoryCode-89203], '') <> ISNULL(s.[WTPCSalesPriceCategoryCode-89203], '') OR
        ISNULL(t.[CustomerDiscGroup-7002], '') <> ISNULL(s.[CustomerDiscGroup-7002], '') OR
        ISNULL(t.[WTUSBeverageTaxAreaCode-88400], '') <> ISNULL(s.[WTUSBeverageTaxAreaCode-88400], '') OR
        ISNULL(t.[WCSAL04SampleDiscGroupCode-50120], '') <> ISNULL(s.[WCSAL04SampleDiscGroupCode-50120], '') OR
        ISNULL(t.[PostingGroup-8], '') <> ISNULL(s.[PostingGroup-8], '') OR
        ISNULL(t.[UnitofMeasure-13], '') <> ISNULL(s.[UnitofMeasure-13], '') OR
        ISNULL(t.[GenProdPostingGroup-75], '') <> ISNULL(s.[GenProdPostingGroup-75], '') OR
        ISNULL(t.[UnitofMeasureCode-5407], '') <> ISNULL(s.[UnitofMeasureCode-5407], '') OR
        ISNULL(t.[WTBAAlcoholTypeCode-87050], '') <> ISNULL(s.[WTBAAlcoholTypeCode-87050], '') OR
        ISNULL(t.[WTBABrandNo-87150], '') <> ISNULL(s.[WTBABrandNo-87150], '') OR
        ISNULL(t.[WTIAAllocationInheritCode-90110], '') <> ISNULL(s.[WTIAAllocationInheritCode-90110], '') OR
        ISNULL(t.[ItemCategoryCode-5709], '') <> ISNULL(s.[ItemCategoryCode-5709], '') OR
        ISNULL(t.[WTBABottleSize-87020], '') <> ISNULL(s.[WTBABottleSize-87020], '') OR
        ISNULL(t.[SelltoCustomerNo-2], '') <> ISNULL(s.[SelltoCustomerNo-2], '') OR
        ISNULL(t.[No-6], '') <> ISNULL(s.[No-6], '') OR
        ISNULL(t.[LocationCode-7], '') <> ISNULL(s.[LocationCode-7], '') OR
        ISNULL(t.[ShipmentDate-10], '1900-01-01') <> ISNULL(s.[ShipmentDate-10], '1900-01-01') OR
        ISNULL(t.[CustomerPriceGroup-42], '') <> ISNULL(s.[CustomerPriceGroup-42], '') OR
        ISNULL(t.[BilltoCustomerNo-68], '') <> ISNULL(s.[BilltoCustomerNo-68], '') OR
        ISNULL(t.[GenBusPostingGroup-74], '') <> ISNULL(s.[GenBusPostingGroup-74], '') OR
        ISNULL(t.[PlannedDeliveryDate-5794], '1900-01-01') <> ISNULL(s.[PlannedDeliveryDate-5794], '1900-01-01') OR
        ISNULL(t.[PlannedShipmentDate-5795], '1900-01-01') <> ISNULL(s.[PlannedShipmentDate-5795], '1900-01-01') OR
        ISNULL(t.[WCTEWSalespersonCode-50000], '') <> ISNULL(s.[WCTEWSalespersonCode-50000], '') OR
        ISNULL(t.[WTBADocumentDate-87100], '1900-01-01') <> ISNULL(s.[WTBADocumentDate-87100], '1900-01-01') OR
        ISNULL(t.[WTBAOrderDate-87110], '1900-01-01') <> ISNULL(s.[WTBAOrderDate-87110], '1900-01-01') OR
        ISNULL(t.[WTBABudgetSalespersonCode-87702], '') <> ISNULL(s.[WTBABudgetSalespersonCode-87702], '') OR
        ISNULL(t.[ShortcutDimension1Code-40], '') <> ISNULL(s.[ShortcutDimension1Code-40], '') OR
        ISNULL(t.[ShippingAgentCode-5796], '') <> ISNULL(s.[ShippingAgentCode-5796], '') OR
        LTRIM(RTRIM(ISNULL(t.[Description-11], ''))) <> LTRIM(RTRIM(ISNULL(s.[Description-11], ''))) OR
        ISNULL(t.[DocumentType-1], '') <> ISNULL(s.[DocumentType-1], '') OR
        ISNULL(t.[DocumentNo-3], '') <> ISNULL(s.[DocumentNo-3], '') OR
        ROUND(ISNULL(t.[LineNo-4], -1), 0) <> ROUND(ISNULL(s.[LineNo-4], -1), 0) OR
        ISNULL(t.[Type-5], '') <> ISNULL(s.[Type-5], '') OR
        ROUND(ISNULL(t.[Quantity-15], -1), 0) <> ROUND(ISNULL(s.[Quantity-15], -1), 0) OR
        ROUND(ISNULL(t.[OutstandingQuantity-16], -1), 0) <> ROUND(ISNULL(s.[OutstandingQuantity-16], -1), 0) OR
        ROUND(ISNULL(t.[QtytoInvoice-17], -1), 0) <> ROUND(ISNULL(s.[QtytoInvoice-17], -1), 0) OR
        ROUND(ISNULL(t.[QtytoShip-18], -1), 0) <> ROUND(ISNULL(s.[QtytoShip-18], -1), 0) OR
        ROUND(ISNULL(t.[UnitPrice-22], -1), 0) <> ROUND(ISNULL(s.[UnitPrice-22], -1), 0) OR
        ROUND(ISNULL(t.[UnitCostLCY-23], -1), 0) <> ROUND(ISNULL(s.[UnitCostLCY-23], -1), 0) OR
        ROUND(ISNULL(t.[VAT-25], -1), 0) <> ROUND(ISNULL(s.[VAT-25], -1), 0) OR
        ROUND(ISNULL(t.[LineDiscount-27], -1), 0) <> ROUND(ISNULL(s.[LineDiscount-27], -1), 0) OR
        ROUND(ISNULL(t.[LineDiscountAmount-28], -1), 0) <> ROUND(ISNULL(s.[LineDiscountAmount-28], -1), 0) OR
        ROUND(ISNULL(t.[Amount-29], -1), 0) <> ROUND(ISNULL(s.[Amount-29], -1), 0) OR
        ROUND(ISNULL(t.[AmountIncludingVAT-30], -1), 0) <> ROUND(ISNULL(s.[AmountIncludingVAT-30], -1), 0) OR
        ISNULL(t.[AllowInvoiceDisc-32], CAST(0 AS BIT)) <> ISNULL(s.[AllowInvoiceDisc-32], CAST(0 AS BIT)) OR
        ROUND(ISNULL(t.[GrossWeight-34], -1), 0) <> ROUND(ISNULL(s.[GrossWeight-34], -1), 0) OR
        ROUND(ISNULL(t.[NetWeight-35], -1), 0) <> ROUND(ISNULL(s.[NetWeight-35], -1), 0) OR
        ROUND(ISNULL(t.[UnitsperParcel-36], -1), 0) <> ROUND(ISNULL(s.[UnitsperParcel-36], -1), 0) OR
        ROUND(ISNULL(t.[UnitVolume-37], -1), 0) <> ROUND(ISNULL(s.[UnitVolume-37], -1), 0) OR
        ROUND(ISNULL(t.[AppltoItemEntry-38], -1), 0) <> ROUND(ISNULL(s.[AppltoItemEntry-38], -1), 0) OR
        ISNULL(t.[RecalculateInvoiceDisc-56], CAST(0 AS BIT)) <> ISNULL(s.[RecalculateInvoiceDisc-56], CAST(0 AS BIT)) OR
        ROUND(ISNULL(t.[OutstandingAmount-57], -1), 0) <> ROUND(ISNULL(s.[OutstandingAmount-57], -1), 0) OR
        ROUND(ISNULL(t.[QtyShippedNotInvoiced-58], -1), 0) <> ROUND(ISNULL(s.[QtyShippedNotInvoiced-58], -1), 0) OR
        ROUND(ISNULL(t.[ShippedNotInvoiced-59], -1), 0) <> ROUND(ISNULL(s.[ShippedNotInvoiced-59], -1), 0) OR
        ROUND(ISNULL(t.[QuantityShipped-60], -1), 0) <> ROUND(ISNULL(s.[QuantityShipped-60], -1), 0) OR
        ROUND(ISNULL(t.[QuantityInvoiced-61], -1), 0) <> ROUND(ISNULL(s.[QuantityInvoiced-61], -1), 0) OR
        ROUND(ISNULL(t.[ShipmentLineNo-64], -1), 0) <> ROUND(ISNULL(s.[ShipmentLineNo-64], -1), 0) OR
        ROUND(ISNULL(t.[Profit-67], -1), 0) <> ROUND(ISNULL(s.[Profit-67], -1), 0) OR
        ROUND(ISNULL(t.[InvDiscountAmount-69], -1), 0) <> ROUND(ISNULL(s.[InvDiscountAmount-69], -1), 0) OR
        ROUND(ISNULL(t.[PurchOrderLineNo-72], -1), 0) <> ROUND(ISNULL(s.[PurchOrderLineNo-72], -1), 0) OR
        ISNULL(t.[DropShipment-73], CAST(0 AS BIT)) <> ISNULL(s.[DropShipment-73], CAST(0 AS BIT)) OR
        ISNULL(t.[VATCalculationType-77], '') <> ISNULL(s.[VATCalculationType-77], '') OR
        ROUND(ISNULL(t.[AttachedtoLineNo-80], -1), 0) <> ROUND(ISNULL(s.[AttachedtoLineNo-80], -1), 0) OR
        ISNULL(t.[TaxLiable-86], CAST(0 AS BIT)) <> ISNULL(s.[TaxLiable-86], CAST(0 AS BIT)) OR
        ROUND(ISNULL(t.[OutstandingAmountLCY-92], -1), 0) <> ROUND(ISNULL(s.[OutstandingAmountLCY-92], -1), 0) OR
        ROUND(ISNULL(t.[ShippedNotInvoicedLCY-93], -1), 0) <> ROUND(ISNULL(s.[ShippedNotInvoicedLCY-93], -1), 0) OR
        ROUND(ISNULL(t.[ShippedNotInvLCYNoVAT-94], -1), 0) <> ROUND(ISNULL(s.[ShippedNotInvLCYNoVAT-94], -1), 0) OR
        ISNULL(t.[Reserve-96], '') <> ISNULL(s.[Reserve-96], '') OR
        ROUND(ISNULL(t.[BlanketOrderLineNo-98], -1), 0) <> ROUND(ISNULL(s.[BlanketOrderLineNo-98], -1), 0) OR
        ROUND(ISNULL(t.[VATBaseAmount-99], -1), 0) <> ROUND(ISNULL(s.[VATBaseAmount-99], -1), 0) OR
        ROUND(ISNULL(t.[UnitCost-100], -1), 0) <> ROUND(ISNULL(s.[UnitCost-100], -1), 0) OR
        ISNULL(t.[SystemCreatedEntry-101], CAST(0 AS BIT)) <> ISNULL(s.[SystemCreatedEntry-101], CAST(0 AS BIT)) OR
        ROUND(ISNULL(t.[LineAmount-103], -1), 0) <> ROUND(ISNULL(s.[LineAmount-103], -1), 0) OR
        ROUND(ISNULL(t.[VATDifference-104], -1), 0) <> ROUND(ISNULL(s.[VATDifference-104], -1), 0) OR
        ROUND(ISNULL(t.[InvDiscAmounttoInvoice-105], -1), 0) <> ROUND(ISNULL(s.[InvDiscAmounttoInvoice-105], -1), 0) OR
        LTRIM(RTRIM(ISNULL(t.[ICPartnerRefType-107], ''))) <> LTRIM(RTRIM(ISNULL(s.[ICPartnerRefType-107], ''))) OR
        ROUND(ISNULL(t.[Prepayment-109], -1), 0) <> ROUND(ISNULL(s.[Prepayment-109], -1), 0) OR
        ROUND(ISNULL(t.[PrepmtLineAmount-110], -1), 0) <> ROUND(ISNULL(s.[PrepmtLineAmount-110], -1), 0) OR
        ROUND(ISNULL(t.[PrepmtAmtInv-111], -1), 0) <> ROUND(ISNULL(s.[PrepmtAmtInv-111], -1), 0) OR
        ROUND(ISNULL(t.[PrepmtAmtInclVAT-112], -1), 0) <> ROUND(ISNULL(s.[PrepmtAmtInclVAT-112], -1), 0) OR
        ROUND(ISNULL(t.[PrepaymentAmount-113], -1), 0) <> ROUND(ISNULL(s.[PrepaymentAmount-113], -1), 0) OR
        ROUND(ISNULL(t.[PrepmtVATBaseAmt-114], -1), 0) <> ROUND(ISNULL(s.[PrepmtVATBaseAmt-114], -1), 0) OR
        ROUND(ISNULL(t.[PrepaymentVAT-115], -1), 0) <> ROUND(ISNULL(s.[PrepaymentVAT-115], -1), 0) OR
        ISNULL(t.[PrepmtVATCalcType-116], '') <> ISNULL(s.[PrepmtVATCalcType-116], '') OR
        ISNULL(t.[PrepaymentTaxLiable-119], CAST(0 AS BIT)) <> ISNULL(s.[PrepaymentTaxLiable-119], CAST(0 AS BIT)) OR
        ROUND(ISNULL(t.[PrepmtAmttoDeduct-121], -1), 0) <> ROUND(ISNULL(s.[PrepmtAmttoDeduct-121], -1), 0) OR
        ROUND(ISNULL(t.[PrepmtAmtDeducted-122], -1), 0) <> ROUND(ISNULL(s.[PrepmtAmtDeducted-122], -1), 0) OR
        ISNULL(t.[PrepaymentLine-123], CAST(0 AS BIT)) <> ISNULL(s.[PrepaymentLine-123], CAST(0 AS BIT)) OR
        ROUND(ISNULL(t.[PrepmtAmountInvInclVAT-124], -1), 0) <> ROUND(ISNULL(s.[PrepmtAmountInvInclVAT-124], -1), 0) OR
        ROUND(ISNULL(t.[PrepmtAmountInvLCY-129], -1), 0) <> ROUND(ISNULL(s.[PrepmtAmountInvLCY-129], -1), 0) OR
        ROUND(ISNULL(t.[PrepmtVATAmountInvLCY-132], -1), 0) <> ROUND(ISNULL(s.[PrepmtVATAmountInvLCY-132], -1), 0) OR
        ROUND(ISNULL(t.[PrepaymentVATDifference-135], -1), 0) <> ROUND(ISNULL(s.[PrepaymentVATDifference-135], -1), 0) OR
        ROUND(ISNULL(t.[PrepmtVATDifftoDeduct-136], -1), 0) <> ROUND(ISNULL(s.[PrepmtVATDifftoDeduct-136], -1), 0) OR
        ROUND(ISNULL(t.[PrepmtVATDiffDeducted-137], -1), 0) <> ROUND(ISNULL(s.[PrepmtVATDiffDeducted-137], -1), 0) OR
        ROUND(ISNULL(t.[PmtDiscountAmount-145], -1), 0) <> ROUND(ISNULL(s.[PmtDiscountAmount-145], -1), 0) OR
        ROUND(ISNULL(t.[PrepmtPmtDiscountAmount-146], -1), 0) <> ROUND(ISNULL(s.[PrepmtPmtDiscountAmount-146], -1), 0) OR
        ISNULL(t.[LineDiscountCalculation-180], '') <> ISNULL(s.[LineDiscountCalculation-180], '') OR
        ROUND(ISNULL(t.[DimensionSetID-480], -1), 0) <> ROUND(ISNULL(s.[DimensionSetID-480], -1), 0) OR
        ROUND(ISNULL(t.[QtytoAssembletoOrder-900], -1), 0) <> ROUND(ISNULL(s.[QtytoAssembletoOrder-900], -1), 0) OR
        ROUND(ISNULL(t.[QtytoAsmtoOrderBase-901], -1), 0) <> ROUND(ISNULL(s.[QtytoAsmtoOrderBase-901], -1), 0) OR
        ROUND(ISNULL(t.[JobContractEntryNo-1002], -1), 0) <> ROUND(ISNULL(s.[JobContractEntryNo-1002], -1), 0) OR
        ROUND(ISNULL(t.[QtyperUnitofMeasure-5404], -1), 0) <> ROUND(ISNULL(s.[QtyperUnitofMeasure-5404], -1), 0) OR
        ISNULL(t.[Planned-5405], CAST(0 AS BIT)) <> ISNULL(s.[Planned-5405], CAST(0 AS BIT)) OR
        ROUND(ISNULL(t.[QtyRoundingPrecision-5406], -1), 0) <> ROUND(ISNULL(s.[QtyRoundingPrecision-5406], -1), 0) OR
        ROUND(ISNULL(t.[QtyRoundingPrecisionBase-5408], -1), 0) <> ROUND(ISNULL(s.[QtyRoundingPrecisionBase-5408], -1), 0) OR
        ROUND(ISNULL(t.[QuantityBase-5415], -1), 0) <> ROUND(ISNULL(s.[QuantityBase-5415], -1), 0) OR
        ROUND(ISNULL(t.[OutstandingQtyBase-5416], -1), 0) <> ROUND(ISNULL(s.[OutstandingQtyBase-5416], -1), 0) OR
        ROUND(ISNULL(t.[QtytoInvoiceBase-5417], -1), 0) <> ROUND(ISNULL(s.[QtytoInvoiceBase-5417], -1), 0) OR
        ROUND(ISNULL(t.[QtytoShipBase-5418], -1), 0) <> ROUND(ISNULL(s.[QtytoShipBase-5418], -1), 0) OR
        ROUND(ISNULL(t.[QtyShippedNotInvdBase-5458], -1), 0) <> ROUND(ISNULL(s.[QtyShippedNotInvdBase-5458], -1), 0) OR
        ROUND(ISNULL(t.[QtyShippedBase-5460], -1), 0) <> ROUND(ISNULL(s.[QtyShippedBase-5460], -1), 0) OR
        ROUND(ISNULL(t.[QtyInvoicedBase-5461], -1), 0) <> ROUND(ISNULL(s.[QtyInvoicedBase-5461], -1), 0) OR
        ISNULL(t.[DepruntilFAPostingDate-5605], CAST(0 AS BIT)) <> ISNULL(s.[DepruntilFAPostingDate-5605], CAST(0 AS BIT)) OR
        ISNULL(t.[UseDuplicationList-5613], CAST(0 AS BIT)) <> ISNULL(s.[UseDuplicationList-5613], CAST(0 AS BIT)) OR
        ISNULL(t.[OutofStockSubstitution-5701], CAST(0 AS BIT)) <> ISNULL(s.[OutofStockSubstitution-5701], CAST(0 AS BIT)) OR
        ISNULL(t.[Nonstock-5710], CAST(0 AS BIT)) <> ISNULL(s.[Nonstock-5710], CAST(0 AS BIT)) OR
        ISNULL(t.[SpecialOrder-5713], CAST(0 AS BIT)) <> ISNULL(s.[SpecialOrder-5713], CAST(0 AS BIT)) OR
        ROUND(ISNULL(t.[SpecialOrderPurchLineNo-5715], -1), 0) <> ROUND(ISNULL(s.[SpecialOrderPurchLineNo-5715], -1), 0) OR
        LTRIM(RTRIM(ISNULL(t.[ItemReferenceType-5727], ''))) <> LTRIM(RTRIM(ISNULL(s.[ItemReferenceType-5727], ''))) OR
        ISNULL(t.[CompletelyShipped-5752], CAST(0 AS BIT)) <> ISNULL(s.[CompletelyShipped-5752], CAST(0 AS BIT)) OR
        ISNULL(t.[AllowItemChargeAssignment-5800], CAST(0 AS BIT)) <> ISNULL(s.[AllowItemChargeAssignment-5800], CAST(0 AS BIT)) OR
        ROUND(ISNULL(t.[ReturnQtytoReceive-5803], -1), 0) <> ROUND(ISNULL(s.[ReturnQtytoReceive-5803], -1), 0) OR
        ROUND(ISNULL(t.[ReturnQtytoReceiveBase-5804], -1), 0) <> ROUND(ISNULL(s.[ReturnQtytoReceiveBase-5804], -1), 0) OR
        ROUND(ISNULL(t.[ReturnQtyRcdNotInvd-5805], -1), 0) <> ROUND(ISNULL(s.[ReturnQtyRcdNotInvd-5805], -1), 0) OR
        ROUND(ISNULL(t.[RetQtyRcdNotInvdBase-5806], -1), 0) <> ROUND(ISNULL(s.[RetQtyRcdNotInvdBase-5806], -1), 0) OR
        ROUND(ISNULL(t.[ReturnRcdNotInvd-5807], -1), 0) <> ROUND(ISNULL(s.[ReturnRcdNotInvd-5807], -1), 0) OR
        ROUND(ISNULL(t.[ReturnRcdNotInvdLCY-5808], -1), 0) <> ROUND(ISNULL(s.[ReturnRcdNotInvdLCY-5808], -1), 0) OR
        ROUND(ISNULL(t.[ReturnQtyReceived-5809], -1), 0) <> ROUND(ISNULL(s.[ReturnQtyReceived-5809], -1), 0) OR
        ROUND(ISNULL(t.[ReturnQtyReceivedBase-5810], -1), 0) <> ROUND(ISNULL(s.[ReturnQtyReceivedBase-5810], -1), 0) OR
        ROUND(ISNULL(t.[ApplfromItemEntry-5811], -1), 0) <> ROUND(ISNULL(s.[ApplfromItemEntry-5811], -1), 0) OR
        ROUND(ISNULL(t.[CO2eperUnit-6214], -1), 0) <> ROUND(ISNULL(s.[CO2eperUnit-6214], -1), 0) OR
        ROUND(ISNULL(t.[TotalCO2e-6215], -1), 0) <> ROUND(ISNULL(s.[TotalCO2e-6215], -1), 0) OR
        ROUND(ISNULL(t.[PostedTotalCO2e-6216], -1), 0) <> ROUND(ISNULL(s.[PostedTotalCO2e-6216], -1), 0) OR
        ROUND(ISNULL(t.[ReturnReceiptLineNo-6601], -1), 0) <> ROUND(ISNULL(s.[ReturnReceiptLineNo-6601], -1), 0) OR
        ISNULL(t.[CopiedFromPostedDoc-6610], CAST(0 AS BIT)) <> ISNULL(s.[CopiedFromPostedDoc-6610], CAST(0 AS BIT)) OR
        ISNULL(t.[PriceCalculationMethod-7000], '') <> ISNULL(s.[PriceCalculationMethod-7000], '') OR
        ISNULL(t.[AllowLineDisc-7001], CAST(0 AS BIT)) <> ISNULL(s.[AllowLineDisc-7001], CAST(0 AS BIT)) OR
        LTRIM(RTRIM(ISNULL(t.[Subtype-7003], ''))) <> LTRIM(RTRIM(ISNULL(s.[Subtype-7003], ''))) OR
        ISNULL(t.[Discount-8058], CAST(0 AS BIT)) <> ISNULL(s.[Discount-8058], CAST(0 AS BIT)) OR
        ISNULL(t.[ExcludefromDocTotal-8059], CAST(0 AS BIT)) <> ISNULL(s.[ExcludefromDocTotal-8059], CAST(0 AS BIT)) OR
        ROUND(ISNULL(t.[RetentionAttachedtoLineNo-10001], -1), 0) <> ROUND(ISNULL(s.[RetentionAttachedtoLineNo-10001], -1), 0) OR
        ROUND(ISNULL(t.[RetentionVAT-10002], -1), 0) <> ROUND(ISNULL(s.[RetentionVAT-10002], -1), 0) OR
        ROUND(ISNULL(t.[ShpfyOrderLineId-30100], -1), 0) <> ROUND(ISNULL(s.[ShpfyOrderLineId-30100], -1), 0) OR
        ROUND(ISNULL(t.[ShpfyRefundId-30103], -1), 0) <> ROUND(ISNULL(s.[ShpfyRefundId-30103], -1), 0) OR
        ROUND(ISNULL(t.[ShpfyRefundLineId-30104], -1), 0) <> ROUND(ISNULL(s.[ShpfyRefundLineId-30104], -1), 0) OR
        ROUND(ISNULL(t.[ShpfyRefundShippingLineId-30105], -1), 0) <> ROUND(ISNULL(s.[ShpfyRefundShippingLineId-30105], -1), 0) OR
        ISNULL(t.[WCAR06SalesCommissionable-50100], CAST(0 AS BIT)) <> ISNULL(s.[WCAR06SalesCommissionable-50100], CAST(0 AS BIT)) OR
        ROUND(ISNULL(t.[WCAR06ManualComm-50111], -1), 0) <> ROUND(ISNULL(s.[WCAR06ManualComm-50111], -1), 0) OR
        ROUND(ISNULL(t.[WCAR06ManualCommAmount-50112], -1), 0) <> ROUND(ISNULL(s.[WCAR06ManualCommAmount-50112], -1), 0) OR
        ISNULL(t.[WCAR06MaxComm-50113], CAST(0 AS BIT)) <> ISNULL(s.[WCAR06MaxComm-50113], CAST(0 AS BIT)) OR
        ROUND(ISNULL(t.[WCAR06DefaultComm-50114], -1), 0) <> ROUND(ISNULL(s.[WCAR06DefaultComm-50114], -1), 0) OR
        ROUND(ISNULL(t.[WCAR06DefaultCommAmount-50115], -1), 0) <> ROUND(ISNULL(s.[WCAR06DefaultCommAmount-50115], -1), 0) OR
        ISNULL(t.[WCINT01ShortShipped-50220], CAST(0 AS BIT)) <> ISNULL(s.[WCINT01ShortShipped-50220], CAST(0 AS BIT)) OR
        ROUND(ISNULL(t.[WCINT01ShortShipOrigQty-50221], -1), 0) <> ROUND(ISNULL(s.[WCINT01ShortShipOrigQty-50221], -1), 0) OR
        ROUND(ISNULL(t.[WCMBCLastOrderQuantity-50400], -1), 0) <> ROUND(ISNULL(s.[WCMBCLastOrderQuantity-50400], -1), 0) OR
        ROUND(ISNULL(t.[WCMBCLastOrderUnitPrice-50402], -1), 0) <> ROUND(ISNULL(s.[WCMBCLastOrderUnitPrice-50402], -1), 0) OR
        ROUND(ISNULL(t.[WTBALinkedLineNo-87000], -1), 0) <> ROUND(ISNULL(s.[WTBALinkedLineNo-87000], -1), 0) OR
        ROUND(ISNULL(t.[WTBACasePack-87010], -1), 0) <> ROUND(ISNULL(s.[WTBACasePack-87010], -1), 0) OR
        ISNULL(t.[WTBASalesPriceOverride-87030], CAST(0 AS BIT)) <> ISNULL(s.[WTBASalesPriceOverride-87030], CAST(0 AS BIT)) OR
        ROUND(ISNULL(t.[WTBALineDiscountUnitAmount-87040], -1), 0) <> ROUND(ISNULL(s.[WTBALineDiscountUnitAmount-87040], -1), 0) OR
        ROUND(ISNULL(t.[WTBALineDiscAmountCase-87041], -1), 0) <> ROUND(ISNULL(s.[WTBALineDiscAmountCase-87041], -1), 0) OR
        ROUND(ISNULL(t.[WTBALineDiscAmountBottle-87042], -1), 0) <> ROUND(ISNULL(s.[WTBALineDiscAmountBottle-87042], -1), 0) OR
        ROUND(ISNULL(t.[WTBAQuantityCase-87080], -1), 0) <> ROUND(ISNULL(s.[WTBAQuantityCase-87080], -1), 0) OR
        ROUND(ISNULL(t.[WTBAQtytoShipCase-87081], -1), 0) <> ROUND(ISNULL(s.[WTBAQtytoShipCase-87081], -1), 0) OR
        ROUND(ISNULL(t.[WTBAQtyShippedCase-87082], -1), 0) <> ROUND(ISNULL(s.[WTBAQtyShippedCase-87082], -1), 0) OR
        ROUND(ISNULL(t.[WTBAQuantityBottle-87083], -1), 0) <> ROUND(ISNULL(s.[WTBAQuantityBottle-87083], -1), 0) OR
        ROUND(ISNULL(t.[WTBAQtytoShipBottle-87084], -1), 0) <> ROUND(ISNULL(s.[WTBAQtytoShipBottle-87084], -1), 0) OR
        ROUND(ISNULL(t.[WTBAQtyShippedBottle-87085], -1), 0) <> ROUND(ISNULL(s.[WTBAQtyShippedBottle-87085], -1), 0) OR
        ROUND(ISNULL(t.[WTBAQtytoInvoiceCase-87086], -1), 0) <> ROUND(ISNULL(s.[WTBAQtytoInvoiceCase-87086], -1), 0) OR
        ROUND(ISNULL(t.[WTBAQtytoInvoiceBottle-87087], -1), 0) <> ROUND(ISNULL(s.[WTBAQtytoInvoiceBottle-87087], -1), 0) OR
        ROUND(ISNULL(t.[WTBAQtyInvoicedCase-87088], -1), 0) <> ROUND(ISNULL(s.[WTBAQtyInvoicedCase-87088], -1), 0) OR
        ROUND(ISNULL(t.[WTBAQtyInvoicedBottle-87089], -1), 0) <> ROUND(ISNULL(s.[WTBAQtyInvoicedBottle-87089], -1), 0) OR
        ROUND(ISNULL(t.[WTBARetQtytoRecvBottle-87090], -1), 0) <> ROUND(ISNULL(s.[WTBARetQtytoRecvBottle-87090], -1), 0) OR
        ROUND(ISNULL(t.[WTBARetQtytoRecvCase-87091], -1), 0) <> ROUND(ISNULL(s.[WTBARetQtytoRecvCase-87091], -1), 0) OR
        ROUND(ISNULL(t.[WTBARetQtyReceivedBottle-87092], -1), 0) <> ROUND(ISNULL(s.[WTBARetQtyReceivedBottle-87092], -1), 0) OR
        ROUND(ISNULL(t.[WTBARetQtyReceivedCase-87093], -1), 0) <> ROUND(ISNULL(s.[WTBARetQtyReceivedCase-87093], -1), 0) OR
        ROUND(ISNULL(t.[WTBAOutstandingQtyCase-87094], -1), 0) <> ROUND(ISNULL(s.[WTBAOutstandingQtyCase-87094], -1), 0) OR
        ROUND(ISNULL(t.[WTBAOutstandingQtyBottle-87095], -1), 0) <> ROUND(ISNULL(s.[WTBAOutstandingQtyBottle-87095], -1), 0) OR
        ROUND(ISNULL(t.[WTBALiters-87300], -1), 0) <> ROUND(ISNULL(s.[WTBALiters-87300], -1), 0) OR
        ROUND(ISNULL(t.[WTBAGallons-87301], -1), 0) <> ROUND(ISNULL(s.[WTBAGallons-87301], -1), 0) OR
        ROUND(ISNULL(t.[WTBAOriginalQuantity-87340], -1), 0) <> ROUND(ISNULL(s.[WTBAOriginalQuantity-87340], -1), 0) OR
        ROUND(ISNULL(t.[WTBAOriginalQuantityBase-87341], -1), 0) <> ROUND(ISNULL(s.[WTBAOriginalQuantityBase-87341], -1), 0) OR
        ROUND(ISNULL(t.[WTBAOriginalQtyCase-87342], -1), 0) <> ROUND(ISNULL(s.[WTBAOriginalQtyCase-87342], -1), 0) OR
        ROUND(ISNULL(t.[WTBAOriginalQtyBottle-87343], -1), 0) <> ROUND(ISNULL(s.[WTBAOriginalQtyBottle-87343], -1), 0) OR
        ROUND(ISNULL(t.[WTBABillHoldEntryNo-87570], -1), 0) <> ROUND(ISNULL(s.[WTBABillHoldEntryNo-87570], -1), 0) OR
        ROUND(ISNULL(t.[WTBASampleTotalAmount-87701], -1), 0) <> ROUND(ISNULL(s.[WTBASampleTotalAmount-87701], -1), 0) OR
        ISNULL(t.[WTBAStatus-87703], '') <> ISNULL(s.[WTBAStatus-87703], '') OR
        ROUND(ISNULL(t.[WTBAGrossWeight-87823], -1), 0) <> ROUND(ISNULL(s.[WTBAGrossWeight-87823], -1), 0) OR
        ROUND(ISNULL(t.[WTBAVolume-87824], -1), 0) <> ROUND(ISNULL(s.[WTBAVolume-87824], -1), 0) OR
        ISNULL(t.[WTBASOReviewStatus-87851], '') <> ISNULL(s.[WTBASOReviewStatus-87851], '') OR
        ROUND(ISNULL(t.[WTBANetWeight-87870], -1), 0) <> ROUND(ISNULL(s.[WTBANetWeight-87870], -1), 0) OR
        ROUND(ISNULL(t.[WTBAQuantityPallet-87880], -1), 0) <> ROUND(ISNULL(s.[WTBAQuantityPallet-87880], -1), 0) OR
        ISNULL(t.[WTUSBeverageTax-88401], CAST(0 AS BIT)) <> ISNULL(s.[WTUSBeverageTax-88401], CAST(0 AS BIT)) OR
        LTRIM(RTRIM(ISNULL(t.[WTCBDeplAllowUnitAmtType-89000], ''))) <> LTRIM(RTRIM(ISNULL(s.[WTCBDeplAllowUnitAmtType-89000], ''))) OR
        ROUND(ISNULL(t.[WTCBDeplAllowUnitAmt-89010], -1), 0) <> ROUND(ISNULL(s.[WTCBDeplAllowUnitAmt-89010], -1), 0) OR
        ROUND(ISNULL(t.[WTCBDeplAllowLineUnitAmt-89020], -1), 0) <> ROUND(ISNULL(s.[WTCBDeplAllowLineUnitAmt-89020], -1), 0) OR
        ROUND(ISNULL(t.[WTCBDeplAllowLineAmt-89030], -1), 0) <> ROUND(ISNULL(s.[WTCBDeplAllowLineAmt-89030], -1), 0) OR
        ROUND(ISNULL(t.[WTCBBillBack-89050], -1), 0) <> ROUND(ISNULL(s.[WTCBBillBack-89050], -1), 0) OR
        LTRIM(RTRIM(ISNULL(t.[WTPCSalesPriceCalcMethod-89201], ''))) <> LTRIM(RTRIM(ISNULL(s.[WTPCSalesPriceCalcMethod-89201], ''))) OR
        ROUND(ISNULL(t.[WTPCSalesPriceCalcQty-89202], -1), 0) <> ROUND(ISNULL(s.[WTPCSalesPriceCalcQty-89202], -1), 0) OR
        ROUND(ISNULL(t.[WTPCSalesPriceLinkId-89204], -1), 0) <> ROUND(ISNULL(s.[WTPCSalesPriceLinkId-89204], -1), 0) OR
        ISNULL(t.[ERCGenSelectionOption-71276915], '') <> ISNULL(s.[ERCGenSelectionOption-71276915], '') OR
        ROUND(ISNULL(t.[ERCSelectedPQLineNo-71276919], -1), 0) <> ROUND(ISNULL(s.[ERCSelectedPQLineNo-71276919], -1), 0) OR
        ISNULL(t.[ERCRMAAutoDispose-71276920], CAST(0 AS BIT)) <> ISNULL(s.[ERCRMAAutoDispose-71276920], CAST(0 AS BIT)) OR
        ISNULL(t.[ERCAPMDisplayUnitPrice-71276921], CAST(0 AS BIT)) <> ISNULL(s.[ERCAPMDisplayUnitPrice-71276921], CAST(0 AS BIT)) OR
        ISNULL(t.[ERCAPMDisplayAmount-71276922], CAST(0 AS BIT)) <> ISNULL(s.[ERCAPMDisplayAmount-71276922], CAST(0 AS BIT)) OR
        ROUND(ISNULL(t.[timestamp-0], -1), 0) <> ROUND(ISNULL(s.[timestamp-0], -1), 0) OR
        ISNULL(t.[SystemCreatedAt-2000000001], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(0), NULLIF(s.[SystemCreatedAt-2000000001], '')), '1900-01-01') OR
        ISNULL(t.[SystemCreatedBy-2000000002], '') <> ISNULL(s.[SystemCreatedBy-2000000002], '') OR
        ISNULL(t.[SystemModifiedAt-2000000003], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(0), NULLIF(s.[SystemModifiedAt-2000000003], '')), '1900-01-01') OR
        ISNULL(t.[$Company], '') <> ISNULL(s.[$Company], '') OR
        ISNULL(t.[$DeliveredDateTime], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(0), NULLIF(s.[$DeliveredDateTime], '')), '1900-01-01');

    -- Step 3: Delete missing records
    DELETE FROM [DataWH].[dbo].[SalesLine37_Custom]
    WHERE [systemId-2000000000] NOT IN (
        SELECT [systemId-2000000000]
        FROM [Rahat_LH].[dbo].[SalesLine37]
        WHERE [systemId-2000000000] IS NOT NULL
    );
END;