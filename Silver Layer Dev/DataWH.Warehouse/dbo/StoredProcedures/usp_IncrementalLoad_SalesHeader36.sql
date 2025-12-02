--Exec usp_IncrementalLoad_SalesHeader36
--select * from [DataWH].[dbo].[SalesHeader36]
--Truncate table [DataWH].[dbo].[SalesHeader36]

CREATE   PROCEDURE usp_IncrementalLoad_SalesHeader36
AS
BEGIN

    -- Step 1: Insert new records
    INSERT INTO [DataWH].[dbo].[SalesHeader36] (
        [RcvdfromCountRegionCode-181],
        [ReturnReceiptNoSeries-5802],
        [RequestedDeliveryDate-5790],
        [DirectDebitMandateID-1200],
        [CustomerDiscGroup-40],
        [ShiptoAddress2-16],
        [WCINT00DateTimeExported-50203],
        [WCINT00ExportFileName-50206],
        [BilltoAddress2-8],
        [SelltoAddress2-82],
        [PaymentMethodCode-104],
        [ShiptoCode-12],
        [ExternalDocumentNo-100],
        [WCINT04PAOrderNo-50650],
        [WCINT04PASalesRep-50651],
        [AssignedUserID-9000],
        [WTUSBeverageTaxAreaCode-88400],
        [ShiptoPhoneNo-210],
        [ShiptoCountryRegionCode-93],
        [VATCountryRegionCode-78],
        [BilltoCountryRegionCode-87],
        [SelltoCountryRegionCode-90],
        [ShiptoContact-18],
        [WTPCPriceCalculatedDate-89201],
        [VATRegistrationNo-70],
        [SelltoEMail-172],
        [BilltoContact-10],
        [SelltoContact-84],
        [SelltoPhoneNo-171],
        [SelltoContactNo-5052],
        [BilltoContactNo-5053],
        [BilltoPostCode-85],
        [SelltoPostCode-88],
        [PmtDiscountDate-26],
        [PrepmtPmtDiscountDate-138],
        [ShippingAgentCode-105],
        [ShippingNoSeries-109],
        [No-3],
        [PostingDescription-22],
        [timestamp-0],
        [systemId-2000000000],
        [SystemCreatedAt-2000000001],
        [SystemModifiedAt-2000000003],
        [$DeliveredDateTime],
        [SelltoCustomerNo-2],
        [BilltoCustomerNo-4],
        [BilltoName-5],
        [ShiptoName-13],
        [ShiptoAddress-15],
        [InvoiceDiscCode-37],
        [SelltoCustomerName-79],
        [WTPCSalesPriceLinkId-89204],
        [BilltoAddress-7],
        [SelltoAddress-81],
        [ShiptoPostCode-91],
        [ShiptoCity-17],
        [BilltoCity-9],
        [SelltoCity-83],
        [WCINT04CreatedBy-50652],
        [DueDate-24],
        [SalespersonCode-43],
        [PrepaymentDueDate-133],
        [BilltoCounty-86],
        [SelltoCounty-89],
        [WTBASalesRegionCode-87003],
        [ShiptoCounty-92],
        [OrderDate-19],
        [ShipmentDate-21],
        [PostingDate-20],
        [DocumentDate-99],
        [VATReportingDate-179],
        [SystemCreatedBy-2000000002],
        [WTBAOrderTypeCode-87007],
        [CustomerPriceGroup-34],
        [ShortcutDimension1Code-29],
        [DimensionSetID-480],
        [PaymentTermsCode-23],
        [NoPrinted-47],
        [PrepmtPaymentTermsCode-139],
        [ShipmentMethodCode-27],
        [DocumentType-1],
        [NoSeries-107],
        [WTBACreditClassCode-87109],
        [WTBASOReviewStatus-87851],
        [PaymentDiscount-25],
        [LocationCode-28],
        [BalAccountType-94],
        [PostingNoSeries-108],
        [Status-120],
        [PrepmtPaymentDiscount-140],
        [WCINT00ExportAgain-50201],
        [WCINT00Exported-50202],
        [WTBABillHoldType-87570],
        [WTBAOrderChargesHandled-87600],
        [WTPCPriceCalculated-89200],
        [CustomerPostingGroup-31],
        [CurrencyFactor-33],
        [PricesIncludingVAT-35],
        [AppliestoDocType-52],
        [Ship-57],
        [Invoice-58],
        [PrintPostedDocuments-59],
        [CombineShipments-71],
        [GenBusPostingGroup-74],
        [EU3PartyTrade-75],
        [Correction-98],
        [TaxLiable-115],
        [Reserve-117],
        [VATBaseDiscount-119],
        [InvoiceDiscountCalculation-121],
        [InvoiceDiscountValue-122],
        [SendICDocument-123],
        [ICStatus-124],
        [ICDirection-129],
        [Prepayment-130],
        [CompressPrepayment-132],
        [QuoteAccepted-154],
        [JobQueueStatus-160],
        [JobQueueEntryID-161],
        [IncomingDocumentEntryNo-165],
        [AltVATRegistrationNo-166],
        [AltGenBusPostingGroup-167],
        [AltVATBusPostingGroup-168],
        [IsTest-170],
        [PaymentServiceSetID-600],
        [DocNoOccurrence-5048],
        [ShippingAdvice-5750],
        [PostingfromWhseRef-5753],
        [Receive-5800],
        [PriceCalculationMethod-7000],
        [AllowLineDisc-7001],
        [GetShipmentUsed-7200],
        [RecurringBilling-8051],
        [SubContractDetailOverview-8052],
        [SalesTaxAmountRounding-10000],
        [PrepmtSalesTaxRoundingAmt-10001],
        [TransitHours-10046],
        [TransitDistance-10047],
        [ForeignTrade-10050],
        [ExchangeRateUSD-10060],
        [PrepmtIncludeTax-12600],
        [CFDIPeriod-27005],
        [SATAddressID-27009],
        [ShpfyOrderId-30100],
        [ShpfyRefundId-30103],
        [WCAR06SalesCommissionable-50100],
        [WCINT00ExcludefromExport-50200],
        [WCINT00ExportError-50204],
        [WTBASOReleasePriority-87000],
        [WTBASampleOrder-87008],
        [WTBACalledFromWhseRelease-87150],
        [WTBACalledFromWhseReopen-87151],
        [WTBASiteOrderID-87401],
        [WTBAPostingError-87860],
        [WTPCFamilyPlanQuantity-89202],
        [WMDMPOS-23044500],
        [ERCFOBOptionCode-71276891],
        [ERCExemptfromPrePayApp-71276894],
        [ERCChargeShipRushFreight-71276895],
        [ERCShipRushPaymentType-71276897],
        [ERCPrintOptionCode-71276898],
        [ERCBlindShippingOption-71276899],
        [ERCRecurringPostingOption-71276908],
        [ERCPurchaseCodeOption-71276915],
        [ERCSpecialOrderOption-71276917],
        [ERCPrePayAmounttoApply-71276918],
        [ERCRecurringInvoice-71276919],
        [ERCRecurringOnHold-71276920],
        [ERCRecurringExpired-71276927],
        [$Company],
        [InsertDate]
    )
    SELECT
        s.[RcvdfromCountRegionCode-181],
        s.[ReturnReceiptNoSeries-5802],
        TRY_CONVERT(date, NULLIF(s.[RequestedDeliveryDate-5790], '')),
        s.[DirectDebitMandateID-1200],
        s.[CustomerDiscGroup-40],
        s.[ShiptoAddress2-16],
        TRY_CONVERT(datetime2(3), NULLIF(s.[WCINT00DateTimeExported-50203], '')),
        s.[WCINT00ExportFileName-50206],
        s.[BilltoAddress2-8],
        s.[SelltoAddress2-82],
        s.[PaymentMethodCode-104],
        s.[ShiptoCode-12],
        s.[ExternalDocumentNo-100],
        s.[WCINT04PAOrderNo-50650],
        s.[WCINT04PASalesRep-50651],
        s.[AssignedUserID-9000],
        s.[WTUSBeverageTaxAreaCode-88400],
        s.[ShiptoPhoneNo-210],
        s.[ShiptoCountryRegionCode-93],
        s.[VATCountryRegionCode-78],
        s.[BilltoCountryRegionCode-87],
        s.[SelltoCountryRegionCode-90],
        s.[ShiptoContact-18],
        TRY_CONVERT(datetime2(3), NULLIF(s.[WTPCPriceCalculatedDate-89201], '')),
        s.[VATRegistrationNo-70],
        s.[SelltoEMail-172],
        s.[BilltoContact-10],
        s.[SelltoContact-84],
        s.[SelltoPhoneNo-171],
        s.[SelltoContactNo-5052],
        s.[BilltoContactNo-5053],
        s.[BilltoPostCode-85],
        s.[SelltoPostCode-88],
        TRY_CONVERT(date, NULLIF(s.[PmtDiscountDate-26], '')),
        TRY_CONVERT(date, NULLIF(s.[PrepmtPmtDiscountDate-138], '')),
        s.[ShippingAgentCode-105],
        s.[ShippingNoSeries-109],
        s.[No-3],
        s.[PostingDescription-22],
        s.[timestamp-0],
        s.[systemId-2000000000],
        TRY_CONVERT(datetime2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        TRY_CONVERT(datetime2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        TRY_CONVERT(datetime2(3), NULLIF(s.[$DeliveredDateTime], '')),
        s.[SelltoCustomerNo-2],
        s.[BilltoCustomerNo-4],
        s.[BilltoName-5],
        s.[ShiptoName-13],
        s.[ShiptoAddress-15],
        s.[InvoiceDiscCode-37],
        s.[SelltoCustomerName-79],
        s.[WTPCSalesPriceLinkId-89204],
        s.[BilltoAddress-7],
        s.[SelltoAddress-81],
        s.[ShiptoPostCode-91],
        s.[ShiptoCity-17],
        s.[BilltoCity-9],
        s.[SelltoCity-83],
        s.[WCINT04CreatedBy-50652],
        s.[DueDate-24],
        s.[SalespersonCode-43],
        s.[PrepaymentDueDate-133],
        s.[BilltoCounty-86],
        s.[SelltoCounty-89],
        s.[WTBASalesRegionCode-87003],
        s.[ShiptoCounty-92],
        s.[OrderDate-19],
        s.[ShipmentDate-21],
        s.[PostingDate-20],
        s.[DocumentDate-99],
        s.[VATReportingDate-179],
        s.[SystemCreatedBy-2000000002],
        s.[WTBAOrderTypeCode-87007],
        s.[CustomerPriceGroup-34],
        s.[ShortcutDimension1Code-29],
        s.[DimensionSetID-480],
        s.[PaymentTermsCode-23],
        s.[NoPrinted-47],
        s.[PrepmtPaymentTermsCode-139],
        s.[ShipmentMethodCode-27],
        s.[DocumentType-1],
        s.[NoSeries-107],
        s.[WTBACreditClassCode-87109],
        s.[WTBASOReviewStatus-87851],
        s.[PaymentDiscount-25],
        s.[LocationCode-28],
        s.[BalAccountType-94],
        s.[PostingNoSeries-108],
        s.[Status-120],
        s.[PrepmtPaymentDiscount-140],
        s.[WCINT00ExportAgain-50201],
        s.[WCINT00Exported-50202],
        s.[WTBABillHoldType-87570],
        s.[WTBAOrderChargesHandled-87600],
        s.[WTPCPriceCalculated-89200],
        s.[CustomerPostingGroup-31],
        s.[CurrencyFactor-33],
        s.[PricesIncludingVAT-35],
        s.[AppliestoDocType-52],
        s.[Ship-57],
        s.[Invoice-58],
        s.[PrintPostedDocuments-59],
        s.[CombineShipments-71],
        s.[GenBusPostingGroup-74],
        s.[EU3PartyTrade-75],
        s.[Correction-98],
        s.[TaxLiable-115],
        s.[Reserve-117],
        s.[VATBaseDiscount-119],
        s.[InvoiceDiscountCalculation-121],
        s.[InvoiceDiscountValue-122],
        s.[SendICDocument-123],
        s.[ICStatus-124],
        s.[ICDirection-129],
        s.[Prepayment-130],
        s.[CompressPrepayment-132],
        s.[QuoteAccepted-154],
        s.[JobQueueStatus-160],
        s.[JobQueueEntryID-161],
        s.[IncomingDocumentEntryNo-165],
        s.[AltVATRegistrationNo-166],
        s.[AltGenBusPostingGroup-167],
        s.[AltVATBusPostingGroup-168],
        s.[IsTest-170],
        s.[PaymentServiceSetID-600],
        s.[DocNoOccurrence-5048],
        s.[ShippingAdvice-5750],
        s.[PostingfromWhseRef-5753],
        s.[Receive-5800],
        s.[PriceCalculationMethod-7000],
        s.[AllowLineDisc-7001],
        s.[GetShipmentUsed-7200],
        s.[RecurringBilling-8051],
        s.[SubContractDetailOverview-8052],
        s.[SalesTaxAmountRounding-10000],
        s.[PrepmtSalesTaxRoundingAmt-10001],
        s.[TransitHours-10046],
        s.[TransitDistance-10047],
        s.[ForeignTrade-10050],
        s.[ExchangeRateUSD-10060],
        s.[PrepmtIncludeTax-12600],
        s.[CFDIPeriod-27005],
        s.[SATAddressID-27009],
        s.[ShpfyOrderId-30100],
        s.[ShpfyRefundId-30103],
        s.[WCAR06SalesCommissionable-50100],
        s.[WCINT00ExcludefromExport-50200],
        s.[WCINT00ExportError-50204],
        s.[WTBASOReleasePriority-87000],
        s.[WTBASampleOrder-87008],
        s.[WTBACalledFromWhseRelease-87150],
        s.[WTBACalledFromWhseReopen-87151],
        s.[WTBASiteOrderID-87401],
        s.[WTBAPostingError-87860],
        s.[WTPCFamilyPlanQuantity-89202],
        s.[WMDMPOS-23044500],
        s.[ERCFOBOptionCode-71276891],
        s.[ERCExemptfromPrePayApp-71276894],
        s.[ERCChargeShipRushFreight-71276895],
        s.[ERCShipRushPaymentType-71276897],
        s.[ERCPrintOptionCode-71276898],
        s.[ERCBlindShippingOption-71276899],
        s.[ERCRecurringPostingOption-71276908],
        s.[ERCPurchaseCodeOption-71276915],
        s.[ERCSpecialOrderOption-71276917],
        s.[ERCPrePayAmounttoApply-71276918],
        s.[ERCRecurringInvoice-71276919],
        s.[ERCRecurringOnHold-71276920],
        s.[ERCRecurringExpired-71276927],
        s.[$Company],
        CURRENT_TIMESTAMP
    FROM [Rahat_LH].[dbo].[SalesHeader36] s
    LEFT JOIN [DataWH].[dbo].[SalesHeader36] t
        ON s.[systemId-2000000000] = t.[systemId-2000000000]
    WHERE t.[systemId-2000000000] IS NULL
      AND s.[systemId-2000000000] IS NOT NULL;

    -- Step 2: Update changed records
    UPDATE t
    SET
        t.[RcvdfromCountRegionCode-181] = s.[RcvdfromCountRegionCode-181],
        t.[ReturnReceiptNoSeries-5802] = s.[ReturnReceiptNoSeries-5802],
        t.[RequestedDeliveryDate-5790] = TRY_CONVERT(date, NULLIF(s.[RequestedDeliveryDate-5790], '')),
        t.[DirectDebitMandateID-1200] = s.[DirectDebitMandateID-1200],
        t.[CustomerDiscGroup-40] = s.[CustomerDiscGroup-40],
        t.[ShiptoAddress2-16] = s.[ShiptoAddress2-16],
        t.[WCINT00DateTimeExported-50203] = TRY_CONVERT(datetime2(3), NULLIF(s.[WCINT00DateTimeExported-50203], '')),
        t.[WCINT00ExportFileName-50206] = s.[WCINT00ExportFileName-50206],
        t.[BilltoAddress2-8] = s.[BilltoAddress2-8],
        t.[SelltoAddress2-82] = s.[SelltoAddress2-82],
        t.[PaymentMethodCode-104] = s.[PaymentMethodCode-104],
        t.[ShiptoCode-12] = s.[ShiptoCode-12],
        t.[ExternalDocumentNo-100] = s.[ExternalDocumentNo-100],
        t.[WCINT04PAOrderNo-50650] = s.[WCINT04PAOrderNo-50650],
        t.[WCINT04PASalesRep-50651] = s.[WCINT04PASalesRep-50651],
        t.[AssignedUserID-9000] = s.[AssignedUserID-9000],
        t.[WTUSBeverageTaxAreaCode-88400] = s.[WTUSBeverageTaxAreaCode-88400],
        t.[ShiptoPhoneNo-210] = s.[ShiptoPhoneNo-210],
        t.[ShiptoCountryRegionCode-93] = s.[ShiptoCountryRegionCode-93],
        t.[VATCountryRegionCode-78] = s.[VATCountryRegionCode-78],
        t.[BilltoCountryRegionCode-87] = s.[BilltoCountryRegionCode-87],
        t.[SelltoCountryRegionCode-90] = s.[SelltoCountryRegionCode-90],
        t.[ShiptoContact-18] = s.[ShiptoContact-18],
        t.[WTPCPriceCalculatedDate-89201] = TRY_CONVERT(datetime2(3), NULLIF(s.[WTPCPriceCalculatedDate-89201], '')),
        t.[VATRegistrationNo-70] = s.[VATRegistrationNo-70],
        t.[SelltoEMail-172] = s.[SelltoEMail-172],
        t.[BilltoContact-10] = s.[BilltoContact-10],
        t.[SelltoContact-84] = s.[SelltoContact-84],
        t.[SelltoPhoneNo-171] = s.[SelltoPhoneNo-171],
        t.[SelltoContactNo-5052] = s.[SelltoContactNo-5052],
        t.[BilltoContactNo-5053] = s.[BilltoContactNo-5053],
        t.[BilltoPostCode-85] = s.[BilltoPostCode-85],
        t.[SelltoPostCode-88] = s.[SelltoPostCode-88],
        t.[PmtDiscountDate-26] = TRY_CONVERT(date, NULLIF(s.[PmtDiscountDate-26], '')),
        t.[PrepmtPmtDiscountDate-138] = TRY_CONVERT(date, NULLIF(s.[PrepmtPmtDiscountDate-138], '')),
        t.[ShippingAgentCode-105] = s.[ShippingAgentCode-105],
        t.[ShippingNoSeries-109] = s.[ShippingNoSeries-109],
        t.[No-3] = s.[No-3],
        t.[PostingDescription-22] = s.[PostingDescription-22],
        t.[timestamp-0] = s.[timestamp-0],
        t.[systemId-2000000000] = s.[systemId-2000000000],
        t.[SystemCreatedAt-2000000001] = TRY_CONVERT(datetime2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        t.[SystemModifiedAt-2000000003] = TRY_CONVERT(datetime2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        t.[$DeliveredDateTime] = TRY_CONVERT(datetime2(3), NULLIF(s.[$DeliveredDateTime], '')),
        t.[SelltoCustomerNo-2] = s.[SelltoCustomerNo-2],
        t.[BilltoCustomerNo-4] = s.[BilltoCustomerNo-4],
        t.[BilltoName-5] = s.[BilltoName-5],
        t.[ShiptoName-13] = s.[ShiptoName-13],
        t.[ShiptoAddress-15] = s.[ShiptoAddress-15],
        t.[InvoiceDiscCode-37] = s.[InvoiceDiscCode-37],
        t.[SelltoCustomerName-79] = s.[SelltoCustomerName-79],
        t.[WTPCSalesPriceLinkId-89204] = s.[WTPCSalesPriceLinkId-89204],
        t.[BilltoAddress-7] = s.[BilltoAddress-7],
        t.[SelltoAddress-81] = s.[SelltoAddress-81],
        t.[ShiptoPostCode-91] = s.[ShiptoPostCode-91],
        t.[ShiptoCity-17] = s.[ShiptoCity-17],
        t.[BilltoCity-9] = s.[BilltoCity-9],
        t.[SelltoCity-83] = s.[SelltoCity-83],
        t.[WCINT04CreatedBy-50652] = s.[WCINT04CreatedBy-50652],
        t.[DueDate-24] = TRY_CONVERT(date, NULLIF(s.[DueDate-24], '')),
        t.[SalespersonCode-43] = s.[SalespersonCode-43],
        t.[PrepaymentDueDate-133] = TRY_CONVERT(date, NULLIF(s.[PrepaymentDueDate-133], '')),
        t.[BilltoCounty-86] = s.[BilltoCounty-86],
        t.[SelltoCounty-89] = s.[SelltoCounty-89],
        t.[WTBASalesRegionCode-87003] = s.[WTBASalesRegionCode-87003],
        t.[ShiptoCounty-92] = s.[ShiptoCounty-92],
        t.[OrderDate-19] = TRY_CONVERT(date, NULLIF(s.[OrderDate-19], '')),
        t.[ShipmentDate-21] = TRY_CONVERT(date, NULLIF(s.[ShipmentDate-21], '')),
        t.[PostingDate-20] = TRY_CONVERT(date, NULLIF(s.[PostingDate-20], '')),
        t.[DocumentDate-99] = TRY_CONVERT(date, NULLIF(s.[DocumentDate-99], '')),
        t.[VATReportingDate-179] = TRY_CONVERT(date, NULLIF(s.[VATReportingDate-179], '')),
        t.[SystemCreatedBy-2000000002] = s.[SystemCreatedBy-2000000002],
        t.[WTBAOrderTypeCode-87007] = s.[WTBAOrderTypeCode-87007],
        t.[CustomerPriceGroup-34] = s.[CustomerPriceGroup-34],
        t.[ShortcutDimension1Code-29] = s.[ShortcutDimension1Code-29],
        t.[DimensionSetID-480] = s.[DimensionSetID-480],
        t.[PaymentTermsCode-23] = s.[PaymentTermsCode-23],
        t.[NoPrinted-47] = s.[NoPrinted-47],
        t.[PrepmtPaymentTermsCode-139] = s.[PrepmtPaymentTermsCode-139],
        t.[ShipmentMethodCode-27] = s.[ShipmentMethodCode-27],
        t.[DocumentType-1] = s.[DocumentType-1],
        t.[NoSeries-107] = s.[NoSeries-107],
        t.[WTBACreditClassCode-87109] = s.[WTBACreditClassCode-87109],
        t.[WTBASOReviewStatus-87851] = s.[WTBASOReviewStatus-87851],
        t.[PaymentDiscount-25] = s.[PaymentDiscount-25],
        t.[LocationCode-28] = s.[LocationCode-28],
        t.[BalAccountType-94] = s.[BalAccountType-94],
        t.[PostingNoSeries-108] = s.[PostingNoSeries-108],
        t.[Status-120] = s.[Status-120],
        t.[PrepmtPaymentDiscount-140] = s.[PrepmtPaymentDiscount-140],
        t.[WCINT00ExportAgain-50201] = s.[WCINT00ExportAgain-50201],
        t.[WCINT00Exported-50202] = s.[WCINT00Exported-50202],
        t.[WTBABillHoldType-87570] = s.[WTBABillHoldType-87570],
        t.[WTBAOrderChargesHandled-87600] = s.[WTBAOrderChargesHandled-87600],
        t.[WTPCPriceCalculated-89200] = s.[WTPCPriceCalculated-89200],
        t.[CustomerPostingGroup-31] = s.[CustomerPostingGroup-31],
        t.[CurrencyFactor-33] = s.[CurrencyFactor-33],
        t.[PricesIncludingVAT-35] = s.[PricesIncludingVAT-35],
        t.[AppliestoDocType-52] = s.[AppliestoDocType-52],
        t.[Ship-57] = s.[Ship-57],
        t.[Invoice-58] = s.[Invoice-58],
        t.[PrintPostedDocuments-59] = s.[PrintPostedDocuments-59],
        t.[CombineShipments-71] = s.[CombineShipments-71],
        t.[GenBusPostingGroup-74] = s.[GenBusPostingGroup-74],
        t.[EU3PartyTrade-75] = s.[EU3PartyTrade-75],
        t.[Correction-98] = s.[Correction-98],
        t.[TaxLiable-115] = s.[TaxLiable-115],
        t.[Reserve-117] = s.[Reserve-117],
        t.[VATBaseDiscount-119] = s.[VATBaseDiscount-119],
        t.[InvoiceDiscountCalculation-121] = s.[InvoiceDiscountCalculation-121],
        t.[InvoiceDiscountValue-122] = s.[InvoiceDiscountValue-122],
        t.[SendICDocument-123] = s.[SendICDocument-123],
        t.[ICStatus-124] = s.[ICStatus-124],
        t.[ICDirection-129] = s.[ICDirection-129],
        t.[Prepayment-130] = s.[Prepayment-130],
        t.[CompressPrepayment-132] = s.[CompressPrepayment-132],
        t.[QuoteAccepted-154] = s.[QuoteAccepted-154],
        t.[JobQueueStatus-160] = s.[JobQueueStatus-160],
        t.[JobQueueEntryID-161] = s.[JobQueueEntryID-161],
        t.[IncomingDocumentEntryNo-165] = s.[IncomingDocumentEntryNo-165],
        t.[AltVATRegistrationNo-166] = s.[AltVATRegistrationNo-166],
        t.[AltGenBusPostingGroup-167] = s.[AltGenBusPostingGroup-167],
        t.[AltVATBusPostingGroup-168] = s.[AltVATBusPostingGroup-168],
        t.[IsTest-170] = s.[IsTest-170],
        t.[PaymentServiceSetID-600] = s.[PaymentServiceSetID-600],
        t.[DocNoOccurrence-5048] = s.[DocNoOccurrence-5048],
        t.[ShippingAdvice-5750] = s.[ShippingAdvice-5750],
        t.[PostingfromWhseRef-5753] = s.[PostingfromWhseRef-5753],
        t.[Receive-5800] = s.[Receive-5800],
        t.[PriceCalculationMethod-7000] = s.[PriceCalculationMethod-7000],
        t.[AllowLineDisc-7001] = s.[AllowLineDisc-7001],
        t.[GetShipmentUsed-7200] = s.[GetShipmentUsed-7200],
        t.[RecurringBilling-8051] = s.[RecurringBilling-8051],
        t.[SubContractDetailOverview-8052] = s.[SubContractDetailOverview-8052],
        t.[SalesTaxAmountRounding-10000] = s.[SalesTaxAmountRounding-10000],
        t.[PrepmtSalesTaxRoundingAmt-10001] = s.[PrepmtSalesTaxRoundingAmt-10001],
        t.[TransitHours-10046] = s.[TransitHours-10046],
        t.[TransitDistance-10047] = s.[TransitDistance-10047],
        t.[ForeignTrade-10050] = s.[ForeignTrade-10050],
        t.[ExchangeRateUSD-10060] = s.[ExchangeRateUSD-10060],
        t.[PrepmtIncludeTax-12600] = s.[PrepmtIncludeTax-12600],
        t.[CFDIPeriod-27005] = s.[CFDIPeriod-27005],
        t.[SATAddressID-27009] = s.[SATAddressID-27009],
        t.[ShpfyOrderId-30100] = s.[ShpfyOrderId-30100],
        t.[ShpfyRefundId-30103] = s.[ShpfyRefundId-30103],
        t.[WCAR06SalesCommissionable-50100] = s.[WCAR06SalesCommissionable-50100],
        t.[WCINT00ExcludefromExport-50200] = s.[WCINT00ExcludefromExport-50200],
        t.[WCINT00ExportError-50204] = s.[WCINT00ExportError-50204],
        t.[WTBASOReleasePriority-87000] = s.[WTBASOReleasePriority-87000],
        t.[WTBASampleOrder-87008] = s.[WTBASampleOrder-87008],
        t.[WTBACalledFromWhseRelease-87150] = s.[WTBACalledFromWhseRelease-87150],
        t.[WTBACalledFromWhseReopen-87151] = s.[WTBACalledFromWhseReopen-87151],
        t.[WTBASiteOrderID-87401] = s.[WTBASiteOrderID-87401],
        t.[WTBAPostingError-87860] = s.[WTBAPostingError-87860],
        t.[WTPCFamilyPlanQuantity-89202] = s.[WTPCFamilyPlanQuantity-89202],
        t.[WMDMPOS-23044500] = s.[WMDMPOS-23044500],
        t.[ERCFOBOptionCode-71276891] = s.[ERCFOBOptionCode-71276891],
        t.[ERCExemptfromPrePayApp-71276894] = s.[ERCExemptfromPrePayApp-71276894],
        t.[ERCChargeShipRushFreight-71276895] = s.[ERCChargeShipRushFreight-71276895],
        t.[ERCShipRushPaymentType-71276897] = s.[ERCShipRushPaymentType-71276897],
        t.[ERCPrintOptionCode-71276898] = s.[ERCPrintOptionCode-71276898],
        t.[ERCBlindShippingOption-71276899] = s.[ERCBlindShippingOption-71276899],
        t.[ERCRecurringPostingOption-71276908] = s.[ERCRecurringPostingOption-71276908],
        t.[ERCPurchaseCodeOption-71276915] = s.[ERCPurchaseCodeOption-71276915],
        t.[ERCSpecialOrderOption-71276917] = s.[ERCSpecialOrderOption-71276917],
        t.[ERCPrePayAmounttoApply-71276918] = s.[ERCPrePayAmounttoApply-71276918],
        t.[ERCRecurringInvoice-71276919] = s.[ERCRecurringInvoice-71276919],
        t.[ERCRecurringOnHold-71276920] = s.[ERCRecurringOnHold-71276920],
        t.[ERCRecurringExpired-71276927] = s.[ERCRecurringExpired-71276927],
        t.[$Company] = s.[$Company],
        t.[UpdateDate] = CURRENT_TIMESTAMP
    FROM [DataWH].[dbo].[SalesHeader36] t
    JOIN [Rahat_LH].[dbo].[SalesHeader36] s
        ON t.[systemId-2000000000] = s.[systemId-2000000000]
    WHERE
        ISNULL(t.[RcvdfromCountRegionCode-181], '') <> ISNULL(s.[RcvdfromCountRegionCode-181], '') OR
        ISNULL(t.[ReturnReceiptNoSeries-5802], '') <> ISNULL(s.[ReturnReceiptNoSeries-5802], '') OR
        ISNULL(t.[RequestedDeliveryDate-5790], '1900-01-01') <> ISNULL(TRY_CONVERT(date, NULLIF(s.[RequestedDeliveryDate-5790], '')), '1900-01-01') OR
        ISNULL(t.[DirectDebitMandateID-1200], '') <> ISNULL(s.[DirectDebitMandateID-1200], '') OR
        ISNULL(t.[CustomerDiscGroup-40], '') <> ISNULL(s.[CustomerDiscGroup-40], '') OR
        ISNULL(t.[ShiptoAddress2-16], '') <> ISNULL(s.[ShiptoAddress2-16], '') OR
        ISNULL(t.[WCINT00DateTimeExported-50203], '1900-01-01') <> ISNULL(TRY_CONVERT(datetime2(3), NULLIF(s.[WCINT00DateTimeExported-50203], '')), '1900-01-01') OR
        ISNULL(t.[WCINT00ExportFileName-50206], '') <> ISNULL(s.[WCINT00ExportFileName-50206], '') OR
        ISNULL(t.[BilltoAddress2-8], '') <> ISNULL(s.[BilltoAddress2-8], '') OR
        ISNULL(t.[SelltoAddress2-82], '') <> ISNULL(s.[SelltoAddress2-82], '') OR
        ISNULL(t.[PaymentMethodCode-104], '') <> ISNULL(s.[PaymentMethodCode-104], '') OR
        ISNULL(t.[ShiptoCode-12], '') <> ISNULL(s.[ShiptoCode-12], '') OR
        ISNULL(t.[ExternalDocumentNo-100], '') <> ISNULL(s.[ExternalDocumentNo-100], '') OR
        ISNULL(t.[WCINT04PAOrderNo-50650], '') <> ISNULL(s.[WCINT04PAOrderNo-50650], '') OR
        ISNULL(t.[WCINT04PASalesRep-50651], '') <> ISNULL(s.[WCINT04PASalesRep-50651], '') OR
        ISNULL(t.[AssignedUserID-9000], '') <> ISNULL(s.[AssignedUserID-9000], '') OR
        ISNULL(t.[WTUSBeverageTaxAreaCode-88400], '') <> ISNULL(s.[WTUSBeverageTaxAreaCode-88400], '') OR
        ISNULL(t.[ShiptoPhoneNo-210], '') <> ISNULL(s.[ShiptoPhoneNo-210], '') OR
        ISNULL(t.[ShiptoCountryRegionCode-93], '') <> ISNULL(s.[ShiptoCountryRegionCode-93], '') OR
        ISNULL(t.[VATCountryRegionCode-78], '') <> ISNULL(s.[VATCountryRegionCode-78], '') OR
        ISNULL(t.[BilltoCountryRegionCode-87], '') <> ISNULL(s.[BilltoCountryRegionCode-87], '') OR
        ISNULL(t.[SelltoCountryRegionCode-90], '') <> ISNULL(s.[SelltoCountryRegionCode-90], '') OR
        ISNULL(t.[ShiptoContact-18], '') <> ISNULL(s.[ShiptoContact-18], '') OR
        ISNULL(t.[WTPCPriceCalculatedDate-89201], '1900-01-01') <> ISNULL(TRY_CONVERT(datetime2(3), NULLIF(s.[WTPCPriceCalculatedDate-89201], '')), '1900-01-01') OR
        ISNULL(t.[VATRegistrationNo-70], '') <> ISNULL(s.[VATRegistrationNo-70], '') OR
        ISNULL(t.[SelltoEMail-172], '') <> ISNULL(s.[SelltoEMail-172], '') OR
        ISNULL(t.[BilltoContact-10], '') <> ISNULL(s.[BilltoContact-10], '') OR
        ISNULL(t.[SelltoContact-84], '') <> ISNULL(s.[SelltoContact-84], '') OR
        ISNULL(t.[SelltoPhoneNo-171], '') <> ISNULL(s.[SelltoPhoneNo-171], '') OR
        ISNULL(t.[SelltoContactNo-5052], '') <> ISNULL(s.[SelltoContactNo-5052], '') OR
        ISNULL(t.[BilltoContactNo-5053], '') <> ISNULL(s.[BilltoContactNo-5053], '') OR
        ISNULL(t.[BilltoPostCode-85], '') <> ISNULL(s.[BilltoPostCode-85], '') OR
        ISNULL(t.[SelltoPostCode-88], '') <> ISNULL(s.[SelltoPostCode-88], '') OR
        ISNULL(t.[PmtDiscountDate-26], '1900-01-01') <> ISNULL(TRY_CONVERT(date, NULLIF(s.[PmtDiscountDate-26], '')), '1900-01-01') OR
        ISNULL(t.[PrepmtPmtDiscountDate-138], '1900-01-01') <> ISNULL(TRY_CONVERT(date, NULLIF(s.[PrepmtPmtDiscountDate-138], '')), '1900-01-01') OR
        ISNULL(t.[ShippingAgentCode-105], '') <> ISNULL(s.[ShippingAgentCode-105], '') OR
        ISNULL(t.[ShippingNoSeries-109], '') <> ISNULL(s.[ShippingNoSeries-109], '') OR
        ISNULL(t.[No-3], '') <> ISNULL(s.[No-3], '') OR
        ISNULL(t.[PostingDescription-22], '') <> ISNULL(s.[PostingDescription-22], '') OR
        ISNULL(t.[timestamp-0], -1) <> ISNULL(s.[timestamp-0], -1) OR
        ISNULL(t.[SystemCreatedAt-2000000001], '1900-01-01') <> ISNULL(TRY_CONVERT(datetime2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')), '1900-01-01') OR
        ISNULL(t.[SystemModifiedAt-2000000003], '1900-01-01') <> ISNULL(TRY_CONVERT(datetime2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')), '1900-01-01') OR
        ISNULL(t.[$DeliveredDateTime], '1900-01-01') <> ISNULL(TRY_CONVERT(datetime2(3), NULLIF(s.[$DeliveredDateTime], '')), '1900-01-01') OR
        ISNULL(t.[SelltoCustomerNo-2], '') <> ISNULL(s.[SelltoCustomerNo-2], '') OR
        ISNULL(t.[BilltoCustomerNo-4], '') <> ISNULL(s.[BilltoCustomerNo-4], '') OR
        ISNULL(t.[BilltoName-5], '') <> ISNULL(s.[BilltoName-5], '') OR
        ISNULL(t.[ShiptoName-13], '') <> ISNULL(s.[ShiptoName-13], '') OR
        ISNULL(t.[ShiptoAddress-15], '') <> ISNULL(s.[ShiptoAddress-15], '') OR
        ISNULL(t.[InvoiceDiscCode-37], '') <> ISNULL(s.[InvoiceDiscCode-37], '') OR
        ISNULL(t.[SelltoCustomerName-79], '') <> ISNULL(s.[SelltoCustomerName-79], '') OR
        ISNULL(t.[WTPCSalesPriceLinkId-89204], -999999) <> ISNULL(s.[WTPCSalesPriceLinkId-89204], -999999) OR
        ISNULL(t.[BilltoAddress-7], '') <> ISNULL(s.[BilltoAddress-7], '') OR
        ISNULL(t.[SelltoAddress-81], '') <> ISNULL(s.[SelltoAddress-81], '') OR
        ISNULL(t.[ShiptoPostCode-91], '') <> ISNULL(s.[ShiptoPostCode-91], '') OR
        ISNULL(t.[ShiptoCity-17], '') <> ISNULL(s.[ShiptoCity-17], '') OR
        ISNULL(t.[BilltoCity-9], '') <> ISNULL(s.[BilltoCity-9], '') OR
        ISNULL(t.[SelltoCity-83], '') <> ISNULL(s.[SelltoCity-83], '') OR
        ISNULL(t.[WCINT04CreatedBy-50652], '') <> ISNULL(s.[WCINT04CreatedBy-50652], '') OR
        ISNULL(t.[DueDate-24], '1900-01-01') <> ISNULL(TRY_CONVERT(date, NULLIF(s.[DueDate-24], '')), '1900-01-01') OR
        ISNULL(t.[SalespersonCode-43], '') <> ISNULL(s.[SalespersonCode-43], '') OR
        ISNULL(t.[PrepaymentDueDate-133], '1900-01-01') <> ISNULL(TRY_CONVERT(date, NULLIF(s.[PrepaymentDueDate-133], '')), '1900-01-01') OR
        ISNULL(t.[BilltoCounty-86], '') <> ISNULL(s.[BilltoCounty-86], '') OR
        ISNULL(t.[SelltoCounty-89], '') <> ISNULL(s.[SelltoCounty-89], '') OR
        ISNULL(t.[WTBASalesRegionCode-87003], '') <> ISNULL(s.[WTBASalesRegionCode-87003], '') OR
        ISNULL(t.[ShiptoCounty-92], '') <> ISNULL(s.[ShiptoCounty-92], '') OR
        ISNULL(t.[OrderDate-19], '1900-01-01') <> ISNULL(TRY_CONVERT(date, NULLIF(s.[OrderDate-19], '')), '1900-01-01') OR
        ISNULL(t.[ShipmentDate-21], '1900-01-01') <> ISNULL(TRY_CONVERT(date, NULLIF(s.[ShipmentDate-21], '')), '1900-01-01') OR
        ISNULL(t.[PostingDate-20], '1900-01-01') <> ISNULL(TRY_CONVERT(date, NULLIF(s.[PostingDate-20], '')), '1900-01-01') OR
        ISNULL(t.[DocumentDate-99], '1900-01-01') <> ISNULL(TRY_CONVERT(date, NULLIF(s.[DocumentDate-99], '')), '1900-01-01') OR
        ISNULL(t.[VATReportingDate-179], '1900-01-01') <> ISNULL(TRY_CONVERT(date, NULLIF(s.[VATReportingDate-179], '')), '1900-01-01') OR
        ISNULL(t.[SystemCreatedBy-2000000002], '') <> ISNULL(s.[SystemCreatedBy-2000000002], '') OR
        ISNULL(t.[WTBAOrderTypeCode-87007], '') <> ISNULL(s.[WTBAOrderTypeCode-87007], '') OR
        ISNULL(t.[CustomerPriceGroup-34], '') <> ISNULL(s.[CustomerPriceGroup-34], '') OR
        ISNULL(t.[ShortcutDimension1Code-29], '') <> ISNULL(s.[ShortcutDimension1Code-29], '') OR
        ISNULL(t.[DimensionSetID-480], -999999) <> ISNULL(s.[DimensionSetID-480], -999999) OR
        ISNULL(t.[PaymentTermsCode-23], '') <> ISNULL(s.[PaymentTermsCode-23], '') OR
        ISNULL(t.[NoPrinted-47], -999999) <> ISNULL(s.[NoPrinted-47], -999999) OR
        ISNULL(t.[PrepmtPaymentTermsCode-139], '') <> ISNULL(s.[PrepmtPaymentTermsCode-139], '') OR
        ISNULL(t.[ShipmentMethodCode-27], '') <> ISNULL(s.[ShipmentMethodCode-27], '') OR
        ISNULL(t.[DocumentType-1], '') <> ISNULL(s.[DocumentType-1], '') OR
        ISNULL(t.[NoSeries-107], '') <> ISNULL(s.[NoSeries-107], '') OR
        ISNULL(t.[WTBACreditClassCode-87109], '') <> ISNULL(s.[WTBACreditClassCode-87109], '') OR
        ISNULL(t.[WTBASOReviewStatus-87851], '') <> ISNULL(s.[WTBASOReviewStatus-87851], '') OR
        ISNULL(t.[PaymentDiscount-25], -999999.99) <> ISNULL(s.[PaymentDiscount-25], -999999.99) OR
        ISNULL(t.[LocationCode-28], '') <> ISNULL(s.[LocationCode-28], '') OR
        ISNULL(t.[BalAccountType-94], '') <> ISNULL(s.[BalAccountType-94], '') OR
        ISNULL(t.[PostingNoSeries-108], '') <> ISNULL(s.[PostingNoSeries-108], '') OR
        ISNULL(t.[Status-120], '') <> ISNULL(s.[Status-120], '') OR
        ISNULL(t.[PrepmtPaymentDiscount-140], -999999.99) <> ISNULL(s.[PrepmtPaymentDiscount-140], -999999.99) OR
        ISNULL(t.[WCINT00ExportAgain-50201], CAST(0 AS BIT)) <> ISNULL(s.[WCINT00ExportAgain-50201], CAST(0 AS BIT)) OR
        ISNULL(t.[WCINT00Exported-50202], CAST(0 AS BIT)) <> ISNULL(s.[WCINT00Exported-50202], CAST(0 AS BIT)) OR
        ISNULL(t.[WTBABillHoldType-87570], '') <> ISNULL(s.[WTBABillHoldType-87570], '') OR
        ISNULL(t.[WTBAOrderChargesHandled-87600], CAST(0 AS BIT)) <> ISNULL(s.[WTBAOrderChargesHandled-87600], CAST(0 AS BIT)) OR
        ISNULL(t.[WTPCPriceCalculated-89200], CAST(0 AS BIT)) <> ISNULL(s.[WTPCPriceCalculated-89200], CAST(0 AS BIT)) OR
        ISNULL(t.[CustomerPostingGroup-31], '') <> ISNULL(s.[CustomerPostingGroup-31], '') OR
        ISNULL(t.[CurrencyFactor-33], -999999.99) <> ISNULL(s.[CurrencyFactor-33], -999999.99) OR
        ISNULL(t.[PricesIncludingVAT-35], CAST(0 AS BIT)) <> ISNULL(s.[PricesIncludingVAT-35], CAST(0 AS BIT)) OR
        ISNULL(t.[AppliestoDocType-52], '') <> ISNULL(s.[AppliestoDocType-52], '') OR
        ISNULL(t.[Ship-57], CAST(0 AS BIT)) <> ISNULL(s.[Ship-57], CAST(0 AS BIT)) OR
        ISNULL(t.[Invoice-58], CAST(0 AS BIT)) <> ISNULL(s.[Invoice-58], CAST(0 AS BIT)) OR
        ISNULL(t.[PrintPostedDocuments-59], CAST(0 AS BIT)) <> ISNULL(s.[PrintPostedDocuments-59], CAST(0 AS BIT)) OR
        ISNULL(t.[CombineShipments-71], CAST(0 AS BIT)) <> ISNULL(s.[CombineShipments-71], CAST(0 AS BIT)) OR
        ISNULL(t.[GenBusPostingGroup-74], '') <> ISNULL(s.[GenBusPostingGroup-74], '') OR
        ISNULL(t.[EU3PartyTrade-75], CAST(0 AS BIT)) <> ISNULL(s.[EU3PartyTrade-75], CAST(0 AS BIT)) OR
        ISNULL(t.[Correction-98], CAST(0 AS BIT)) <> ISNULL(s.[Correction-98], CAST(0 AS BIT)) OR
        ISNULL(t.[TaxLiable-115], CAST(0 AS BIT)) <> ISNULL(s.[TaxLiable-115], CAST(0 AS BIT)) OR
        ISNULL(t.[Reserve-117], '') <> ISNULL(s.[Reserve-117], '') OR
        ISNULL(t.[VATBaseDiscount-119], -999999.99) <> ISNULL(s.[VATBaseDiscount-119], -999999.99) OR
        ISNULL(t.[InvoiceDiscountCalculation-121], '') <> ISNULL(s.[InvoiceDiscountCalculation-121], '') OR
        ISNULL(t.[InvoiceDiscountValue-122], -999999.99) <> ISNULL(s.[InvoiceDiscountValue-122], -999999.99) OR
        ISNULL(t.[SendICDocument-123], CAST(0 AS BIT)) <> ISNULL(s.[SendICDocument-123], CAST(0 AS BIT)) OR
        ISNULL(t.[ICStatus-124], '') <> ISNULL(s.[ICStatus-124], '') OR
        ISNULL(t.[ICDirection-129], '') <> ISNULL(s.[ICDirection-129], '') OR
        ISNULL(t.[Prepayment-130], -999999.99) <> ISNULL(s.[Prepayment-130], -999999.99) OR
        ISNULL(t.[CompressPrepayment-132], CAST(0 AS BIT)) <> ISNULL(s.[CompressPrepayment-132], CAST(0 AS BIT)) OR
        ISNULL(t.[QuoteAccepted-154], CAST(0 AS BIT)) <> ISNULL(s.[QuoteAccepted-154], CAST(0 AS BIT)) OR
        ISNULL(t.[JobQueueStatus-160], '') <> ISNULL(s.[JobQueueStatus-160], '') OR
        ISNULL(t.[JobQueueEntryID-161], '') <> ISNULL(s.[JobQueueEntryID-161], '') OR
        ISNULL(t.[IncomingDocumentEntryNo-165], -999999) <> ISNULL(s.[IncomingDocumentEntryNo-165], -999999) OR
        ISNULL(t.[AltVATRegistrationNo-166], CAST(0 AS BIT)) <> ISNULL(s.[AltVATRegistrationNo-166], CAST(0 AS BIT)) OR
        ISNULL(t.[AltGenBusPostingGroup-167], CAST(0 AS BIT)) <> ISNULL(s.[AltGenBusPostingGroup-167], CAST(0 AS BIT)) OR
        ISNULL(t.[AltVATBusPostingGroup-168], CAST(0 AS BIT)) <> ISNULL(s.[AltVATBusPostingGroup-168], CAST(0 AS BIT)) OR
        ISNULL(t.[IsTest-170], CAST(0 AS BIT)) <> ISNULL(s.[IsTest-170], CAST(0 AS BIT)) OR
        ISNULL(t.[PaymentServiceSetID-600], -999999) <> ISNULL(s.[PaymentServiceSetID-600], -999999) OR
        ISNULL(t.[DocNoOccurrence-5048], -999999) <> ISNULL(s.[DocNoOccurrence-5048], -999999) OR
        ISNULL(t.[ShippingAdvice-5750], '') <> ISNULL(s.[ShippingAdvice-5750], '') OR
        ISNULL(t.[PostingfromWhseRef-5753], -999999) <> ISNULL(s.[PostingfromWhseRef-5753], -999999) OR
        ISNULL(t.[Receive-5800], CAST(0 AS BIT)) <> ISNULL(s.[Receive-5800], CAST(0 AS BIT)) OR
        ISNULL(t.[PriceCalculationMethod-7000], '') <> ISNULL(s.[PriceCalculationMethod-7000], '') OR
        ISNULL(t.[AllowLineDisc-7001], CAST(0 AS BIT)) <> ISNULL(s.[AllowLineDisc-7001], CAST(0 AS BIT)) OR
        ISNULL(t.[GetShipmentUsed-7200], CAST(0 AS BIT)) <> ISNULL(s.[GetShipmentUsed-7200], CAST(0 AS BIT)) OR
        ISNULL(t.[RecurringBilling-8051], CAST(0 AS BIT)) <> ISNULL(s.[RecurringBilling-8051], CAST(0 AS BIT)) OR
        ISNULL(t.[SubContractDetailOverview-8052], '') <> ISNULL(s.[SubContractDetailOverview-8052], '') OR
        ISNULL(t.[SalesTaxAmountRounding-10000], -999999.99) <> ISNULL(s.[SalesTaxAmountRounding-10000], -999999.99) OR
        ISNULL(t.[PrepmtSalesTaxRoundingAmt-10001], -999999.99) <> ISNULL(s.[PrepmtSalesTaxRoundingAmt-10001], -999999.99) OR
        ISNULL(t.[TransitHours-10046], -999999) <> ISNULL(s.[TransitHours-10046], -999999) OR
        ISNULL(t.[TransitDistance-10047], -999999.99) <> ISNULL(s.[TransitDistance-10047], -999999.99) OR
        ISNULL(t.[ForeignTrade-10050], CAST(0 AS BIT)) <> ISNULL(s.[ForeignTrade-10050], CAST(0 AS BIT)) OR
        ISNULL(t.[ExchangeRateUSD-10060], -999999.99) <> ISNULL(s.[ExchangeRateUSD-10060], -999999.99) OR
        ISNULL(t.[PrepmtIncludeTax-12600], CAST(0 AS BIT)) <> ISNULL(s.[PrepmtIncludeTax-12600], CAST(0 AS BIT)) OR
        ISNULL(t.[CFDIPeriod-27005], '') <> ISNULL(s.[CFDIPeriod-27005], '') OR
        ISNULL(t.[SATAddressID-27009], -999999) <> ISNULL(s.[SATAddressID-27009], -999999) OR
        ISNULL(t.[ShpfyOrderId-30100], -999999) <> ISNULL(s.[ShpfyOrderId-30100], -999999) OR
        ISNULL(t.[ShpfyRefundId-30103], -999999) <> ISNULL(s.[ShpfyRefundId-30103], -999999) OR
        ISNULL(t.[WCAR06SalesCommissionable-50100], CAST(0 AS BIT)) <> ISNULL(s.[WCAR06SalesCommissionable-50100], CAST(0 AS BIT)) OR
        ISNULL(t.[WCINT00ExcludefromExport-50200], CAST(0 AS BIT)) <> ISNULL(s.[WCINT00ExcludefromExport-50200], CAST(0 AS BIT)) OR
        ISNULL(t.[WCINT00ExportError-50204], CAST(0 AS BIT)) <> ISNULL(s.[WCINT00ExportError-50204], CAST(0 AS BIT)) OR
        ISNULL(t.[WTBASOReleasePriority-87000], '') <> ISNULL(s.[WTBASOReleasePriority-87000], '') OR
        ISNULL(t.[WTBASampleOrder-87008], CAST(0 AS BIT)) <> ISNULL(s.[WTBASampleOrder-87008], CAST(0 AS BIT)) OR
        ISNULL(t.[WTBACalledFromWhseRelease-87150], CAST(0 AS BIT)) <> ISNULL(s.[WTBACalledFromWhseRelease-87150], CAST(0 AS BIT)) OR
        ISNULL(t.[WTBACalledFromWhseReopen-87151], CAST(0 AS BIT)) <> ISNULL(s.[WTBACalledFromWhseReopen-87151], CAST(0 AS BIT)) OR
        ISNULL(t.[WTBASiteOrderID-87401], -999999) <> ISNULL(s.[WTBASiteOrderID-87401], -999999) OR
        ISNULL(t.[WTBAPostingError-87860], CAST(0 AS BIT)) <> ISNULL(s.[WTBAPostingError-87860], CAST(0 AS BIT)) OR
        ISNULL(t.[WTPCFamilyPlanQuantity-89202], -999999.99) <> ISNULL(s.[WTPCFamilyPlanQuantity-89202], -999999.99) OR
        ISNULL(t.[WMDMPOS-23044500], CAST(0 AS BIT)) <> ISNULL(s.[WMDMPOS-23044500], CAST(0 AS BIT)) OR
        ISNULL(t.[ERCFOBOptionCode-71276891], '') <> ISNULL(s.[ERCFOBOptionCode-71276891], '') OR
        ISNULL(t.[ERCExemptfromPrePayApp-71276894], CAST(0 AS BIT)) <> ISNULL(s.[ERCExemptfromPrePayApp-71276894], CAST(0 AS BIT)) OR
        ISNULL(t.[ERCChargeShipRushFreight-71276895], CAST(0 AS BIT)) <> ISNULL(s.[ERCChargeShipRushFreight-71276895], CAST(0 AS BIT)) OR
        ISNULL(t.[ERCShipRushPaymentType-71276897], '') <> ISNULL(s.[ERCShipRushPaymentType-71276897], '') OR
        ISNULL(t.[ERCPrintOptionCode-71276898], '') <> ISNULL(s.[ERCPrintOptionCode-71276898], '') OR
        ISNULL(t.[ERCBlindShippingOption-71276899], '') <> ISNULL(s.[ERCBlindShippingOption-71276899], '') OR
        ISNULL(t.[ERCRecurringPostingOption-71276908], '') <> ISNULL(s.[ERCRecurringPostingOption-71276908], '') OR
        ISNULL(t.[ERCPurchaseCodeOption-71276915], '') <> ISNULL(s.[ERCPurchaseCodeOption-71276915], '') OR
        ISNULL(t.[ERCSpecialOrderOption-71276917], '') <> ISNULL(s.[ERCSpecialOrderOption-71276917], '') OR
        ISNULL(t.[ERCPrePayAmounttoApply-71276918], -999999.99) <> ISNULL(s.[ERCPrePayAmounttoApply-71276918], -999999.99) OR
        ISNULL(t.[ERCRecurringInvoice-71276919], CAST(0 AS BIT)) <> ISNULL(s.[ERCRecurringInvoice-71276919], CAST(0 AS BIT)) OR
        ISNULL(t.[ERCRecurringOnHold-71276920], CAST(0 AS BIT)) <> ISNULL(s.[ERCRecurringOnHold-71276920], CAST(0 AS BIT)) OR
        ISNULL(t.[ERCRecurringExpired-71276927], CAST(0 AS BIT)) <> ISNULL(s.[ERCRecurringExpired-71276927], CAST(0 AS BIT)) OR
        ISNULL(t.[$Company], '') <> ISNULL(s.[$Company], '');

    -- Step 3: Delete records missing from source
    DELETE FROM [DataWH].[dbo].[SalesHeader36]
    WHERE [systemId-2000000000] NOT IN (
        SELECT [systemId-2000000000]
        FROM [Rahat_LH].[dbo].[SalesHeader36]
        WHERE [systemId-2000000000] IS NOT NULL
    );

END;