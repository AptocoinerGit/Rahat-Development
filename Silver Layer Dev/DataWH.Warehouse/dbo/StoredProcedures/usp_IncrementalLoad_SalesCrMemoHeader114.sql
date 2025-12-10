---  exec usp_IncrementalLoad_SalesCrMemoHeader114
---  SELECT * FROM [DataWH].[dbo].[SalesCrMemoHeader114]
---  truncate table [DataWH].[dbo].[SalesCrMemoHeader114]

CREATE     PROCEDURE usp_IncrementalLoad_SalesCrMemoHeader114
AS
BEGIN
    -- Step 1: Insert new records
    INSERT INTO [DataWH].[dbo].[SalesCrMemoHeader114] (
        [TaxExemptionNo-10015], [YourReference-11], [WCSAL34SampleReasonCode-50050], [ShiptoAddress2-16],
        [BilltoName2-6], [SelltoCustomerName2-80], [WTBALastEmailSentDateTime-87350], [ShiptoContact-18],
        [WTBACoopCode-87650], [CustomerDiscGroup-40], [BilltoAddress2-8], [SelltoAddress2-82],
        [ShortcutDimension1Code-29], [ShiptoCode-12], [PaymentMethodCode-104], [ReturnOrderNo-6601],
        [ReturnOrderNoSeries-6602], [WCINT04PAOrderNo-50650], [WCINT04PASalesRep-50651], [ShipmentDate-21],
        [RcvdfromCountRegionCode-181], [ExternalDocumentNo-100], [AppliestoDocNo-53], [ShippingAgentCode-105],
        [SelltoCountryRegionCode-90], [VATCountryRegionCode-78], [BilltoCountryRegionCode-87], [PreAssignedNo-111],
        [PreAssignedNoSeries-107], [WTUSBeverageTaxAreaCode-88400], [SelltoEMail-172], [VATRegistrationNo-70],
        [BilltoContactNo-5053], [SelltoContactNo-5052], [BilltoContact-10], [SelltoContact-84],
        [ShiptoCountryRegionCode-93], [SelltoPhoneNo-171], [ShiptoAddress-15], [ShiptoCity-17],
        [ShiptoCounty-92], [ShiptoPostCode-91], [WTBACreditClassCode-87109], [BilltoAddress-7],
        [SelltoAddress-81], [ShipmentMethodCode-27], [BilltoPostCode-85], [SelltoPostCode-88],
        [SalespersonCode-43], [LocationCode-28], [PaymentTermsCode-23], [ShiptoName-13],
        [BilltoCity-9], [SelltoCity-83], [$Company], [$DeliveredDateTime], [AllowLineDisc-7001],
        [AltGenBusPostingGroup-167], [AltVATBusPostingGroup-168], [AltVATRegistrationNo-166], [AppliestoDocType-52],
        [BalAccountType-94], [BilltoCounty-86], [BilltoCustomerNo-4], [BilltoName-5],
        --  [ContractDetailOverview-8052],
         [Correction-98], [CurrencyFactor-33], [CustLedgerEntryNo-1304],
        [CustomerPostingGroup-31], [CustomerPriceGroup-34], [DimensionSetID-480], [DocumentDate-99],
        [DocumentExchangeStatus-711], [DraftCrMemoSystemId-8001], [DueDate-24], [EU3PartyTrade-75],
        [ElectronicDocumentSent-10019], [ElectronicDocumentStatus-10030], [ExchangeRateUSD-10060], [ForeignTrade-10050],
        [GenBusPostingGroup-74], [GetReturnReceiptUsed-7200], [InvoiceDiscCode-37], [MarkedasCanceled-27008],
        [No-3], [NoPrinted-47], [NoSeries-108], [NoofEDocumentsSent-10021], [PaymentDiscount-25],
        [PostingDate-20], [PostingDescription-22], [PrepaymentCreditMemo-136], [PriceCalculationMethod-7000],
        [PricesIncludingVAT-35], [RecurringBilling-8051], [SATAddressID-27009], [SelltoCounty-89],
        [SelltoCustomerName-79], [SelltoCustomerNo-2], [SourceCode-113], [SystemCreatedAt-2000000001],
        [SystemCreatedBy-2000000002], [SystemModifiedAt-2000000003], [TaxLiable-115], [UserID-112],
        [VATBaseDiscount-119], [VATReportingDate-179], [WCAR06SalesCommClosed-50101], [WCAR06SalesCommissionable-50100],
        [WTBABillHoldType-87570], [WTBAOrderTypeCode-87007], [WTBASOReviewStatus-87851], [WTBASalesRegionCode-87003],
        [WTBASampleOrder-87008], [WTBASiteOrderID-87401], [systemId-2000000000], [timestamp-0], InsertDate
    )
    SELECT 
        s.[TaxExemptionNo-10015], s.[YourReference-11], s.[WCSAL34SampleReasonCode-50050], s.[ShiptoAddress2-16],
        s.[BilltoName2-6], s.[SelltoCustomerName2-80], s.[WTBALastEmailSentDateTime-87350], s.[ShiptoContact-18],
        s.[WTBACoopCode-87650], s.[CustomerDiscGroup-40], s.[BilltoAddress2-8], s.[SelltoAddress2-82],
        s.[ShortcutDimension1Code-29], s.[ShiptoCode-12], s.[PaymentMethodCode-104], s.[ReturnOrderNo-6601],
        s.[ReturnOrderNoSeries-6602], s.[WCINT04PAOrderNo-50650], s.[WCINT04PASalesRep-50651], s.[ShipmentDate-21],
        s.[RcvdfromCountRegionCode-181], s.[ExternalDocumentNo-100], s.[AppliestoDocNo-53], s.[ShippingAgentCode-105],
        s.[SelltoCountryRegionCode-90], s.[VATCountryRegionCode-78], s.[BilltoCountryRegionCode-87], s.[PreAssignedNo-111],
        s.[PreAssignedNoSeries-107], s.[WTUSBeverageTaxAreaCode-88400], s.[SelltoEMail-172], s.[VATRegistrationNo-70],
        s.[BilltoContactNo-5053], s.[SelltoContactNo-5052], s.[BilltoContact-10], s.[SelltoContact-84],
        s.[ShiptoCountryRegionCode-93], s.[SelltoPhoneNo-171], s.[ShiptoAddress-15], s.[ShiptoCity-17],
        s.[ShiptoCounty-92], s.[ShiptoPostCode-91], s.[WTBACreditClassCode-87109], s.[BilltoAddress-7],
        s.[SelltoAddress-81], s.[ShipmentMethodCode-27], s.[BilltoPostCode-85], s.[SelltoPostCode-88],
        s.[SalespersonCode-43], s.[LocationCode-28], s.[PaymentTermsCode-23], s.[ShiptoName-13],
        s.[BilltoCity-9], s.[SelltoCity-83], s.[$Company], s.[$DeliveredDateTime], s.[AllowLineDisc-7001],
        s.[AltGenBusPostingGroup-167], s.[AltVATBusPostingGroup-168], s.[AltVATRegistrationNo-166], s.[AppliestoDocType-52],
        s.[BalAccountType-94], s.[BilltoCounty-86], s.[BilltoCustomerNo-4], s.[BilltoName-5],
        -- s.[ContractDetailOverview-8052],
         s.[Correction-98], s.[CurrencyFactor-33], s.[CustLedgerEntryNo-1304],
        s.[CustomerPostingGroup-31], s.[CustomerPriceGroup-34], s.[DimensionSetID-480], s.[DocumentDate-99],
        s.[DocumentExchangeStatus-711], s.[DraftCrMemoSystemId-8001], s.[DueDate-24], s.[EU3PartyTrade-75],
        s.[ElectronicDocumentSent-10019], s.[ElectronicDocumentStatus-10030], s.[ExchangeRateUSD-10060], s.[ForeignTrade-10050],
        s.[GenBusPostingGroup-74], s.[GetReturnReceiptUsed-7200], s.[InvoiceDiscCode-37], s.[MarkedasCanceled-27008],
        s.[No-3], s.[NoPrinted-47], s.[NoSeries-108], s.[NoofEDocumentsSent-10021], s.[PaymentDiscount-25],
        s.[PostingDate-20], s.[PostingDescription-22], s.[PrepaymentCreditMemo-136], s.[PriceCalculationMethod-7000],
        s.[PricesIncludingVAT-35], s.[RecurringBilling-8051], s.[SATAddressID-27009], s.[SelltoCounty-89],
        s.[SelltoCustomerName-79], s.[SelltoCustomerNo-2], s.[SourceCode-113], s.[SystemCreatedAt-2000000001],
        s.[SystemCreatedBy-2000000002], s.[SystemModifiedAt-2000000003], s.[TaxLiable-115], s.[UserID-112],
        s.[VATBaseDiscount-119], s.[VATReportingDate-179], s.[WCAR06SalesCommClosed-50101], s.[WCAR06SalesCommissionable-50100],
        s.[WTBABillHoldType-87570], s.[WTBAOrderTypeCode-87007], s.[WTBASOReviewStatus-87851], s.[WTBASalesRegionCode-87003],
        s.[WTBASampleOrder-87008], s.[WTBASiteOrderID-87401], s.[systemId-2000000000], s.[timestamp-0], CURRENT_TIMESTAMP
    FROM [Rahat_LH].[dbo].[SalesCrMemoHeader114] s
    LEFT JOIN [DataWH].[dbo].[SalesCrMemoHeader114] t
        ON s.[systemId-2000000000] = t.[systemId-2000000000]
    WHERE t.[systemId-2000000000] IS NULL;




    -- Step 2: Update changed records
    -- Step 2: Update changed records
UPDATE t
SET
    t.[TaxExemptionNo-10015] = s.[TaxExemptionNo-10015],
    t.[YourReference-11] = s.[YourReference-11],
    t.[WCSAL34SampleReasonCode-50050] = s.[WCSAL34SampleReasonCode-50050],
    t.[ShiptoAddress2-16] = s.[ShiptoAddress2-16],
    t.[BilltoName2-6] = s.[BilltoName2-6],
    t.[SelltoCustomerName2-80] = s.[SelltoCustomerName2-80],
    t.[WTBALastEmailSentDateTime-87350] = s.[WTBALastEmailSentDateTime-87350],
    t.[ShiptoContact-18] = s.[ShiptoContact-18],
    t.[WTBACoopCode-87650] = s.[WTBACoopCode-87650],
    t.[CustomerDiscGroup-40] = s.[CustomerDiscGroup-40],
    t.[BilltoAddress2-8] = s.[BilltoAddress2-8],
    t.[SelltoAddress2-82] = s.[SelltoAddress2-82],
    t.[ShortcutDimension1Code-29] = s.[ShortcutDimension1Code-29],
    t.[ShiptoCode-12] = s.[ShiptoCode-12],
    t.[PaymentMethodCode-104] = s.[PaymentMethodCode-104],
    t.[ReturnOrderNo-6601] = s.[ReturnOrderNo-6601],
    t.[ReturnOrderNoSeries-6602] = s.[ReturnOrderNoSeries-6602],
    t.[WCINT04PAOrderNo-50650] = s.[WCINT04PAOrderNo-50650],
    t.[WCINT04PASalesRep-50651] = s.[WCINT04PASalesRep-50651],
    t.[ShipmentDate-21] = s.[ShipmentDate-21],
    t.[RcvdfromCountRegionCode-181] = s.[RcvdfromCountRegionCode-181],
    t.[ExternalDocumentNo-100] = s.[ExternalDocumentNo-100],
    t.[AppliestoDocNo-53] = s.[AppliestoDocNo-53],
    t.[ShippingAgentCode-105] = s.[ShippingAgentCode-105],
    t.[SelltoCountryRegionCode-90] = s.[SelltoCountryRegionCode-90],
    t.[VATCountryRegionCode-78] = s.[VATCountryRegionCode-78],
    t.[BilltoCountryRegionCode-87] = s.[BilltoCountryRegionCode-87],
    t.[PreAssignedNo-111] = s.[PreAssignedNo-111],
    t.[PreAssignedNoSeries-107] = s.[PreAssignedNoSeries-107],
    t.[WTUSBeverageTaxAreaCode-88400] = s.[WTUSBeverageTaxAreaCode-88400],
    t.[SelltoEMail-172] = s.[SelltoEMail-172],
    t.[VATRegistrationNo-70] = s.[VATRegistrationNo-70],
    t.[BilltoContactNo-5053] = s.[BilltoContactNo-5053],
    t.[SelltoContactNo-5052] = s.[SelltoContactNo-5052],
    t.[BilltoContact-10] = s.[BilltoContact-10],
    t.[SelltoContact-84] = s.[SelltoContact-84],
    t.[ShiptoCountryRegionCode-93] = s.[ShiptoCountryRegionCode-93],
    t.[SelltoPhoneNo-171] = s.[SelltoPhoneNo-171],
    t.[ShiptoAddress-15] = s.[ShiptoAddress-15],
    t.[ShiptoCity-17] = s.[ShiptoCity-17],
    t.[ShiptoCounty-92] = s.[ShiptoCounty-92],
    t.[ShiptoPostCode-91] = s.[ShiptoPostCode-91],
    t.[WTBACreditClassCode-87109] = s.[WTBACreditClassCode-87109],
    t.[BilltoAddress-7] = s.[BilltoAddress-7],
    t.[SelltoAddress-81] = s.[SelltoAddress-81],
    t.[ShipmentMethodCode-27] = s.[ShipmentMethodCode-27],
    t.[BilltoPostCode-85] = s.[BilltoPostCode-85],
    t.[SelltoPostCode-88] = s.[SelltoPostCode-88],
    t.[SalespersonCode-43] = s.[SalespersonCode-43],
    t.[LocationCode-28] = s.[LocationCode-28],
    t.[PaymentTermsCode-23] = s.[PaymentTermsCode-23],
    t.[ShiptoName-13] = s.[ShiptoName-13],
    t.[BilltoCity-9] = s.[BilltoCity-9],
    t.[SelltoCity-83] = s.[SelltoCity-83],
    t.[$Company] = s.[$Company],
    t.[$DeliveredDateTime] = s.[$DeliveredDateTime],
    t.[AllowLineDisc-7001] = s.[AllowLineDisc-7001],
    t.[AltGenBusPostingGroup-167] = s.[AltGenBusPostingGroup-167],
    t.[AltVATBusPostingGroup-168] = s.[AltVATBusPostingGroup-168],
    t.[AltVATRegistrationNo-166] = s.[AltVATRegistrationNo-166],
    t.[AppliestoDocType-52] = s.[AppliestoDocType-52],
    t.[BalAccountType-94] = s.[BalAccountType-94],
    t.[BilltoCounty-86] = s.[BilltoCounty-86],
    t.[BilltoCustomerNo-4] = s.[BilltoCustomerNo-4],
    t.[BilltoName-5] = s.[BilltoName-5],
    --  t.[ContractDetailOverview-8052] = s.[ContractDetailOverview-8052],
    t.[Correction-98] = s.[Correction-98],
    t.[CurrencyFactor-33] = s.[CurrencyFactor-33],
    t.[CustLedgerEntryNo-1304] = s.[CustLedgerEntryNo-1304],
    t.[CustomerPostingGroup-31] = s.[CustomerPostingGroup-31],
    t.[CustomerPriceGroup-34] = s.[CustomerPriceGroup-34],
    t.[DimensionSetID-480] = s.[DimensionSetID-480],
    t.[DocumentDate-99] = s.[DocumentDate-99],
    t.[DocumentExchangeStatus-711] = s.[DocumentExchangeStatus-711],
    t.[DraftCrMemoSystemId-8001] = s.[DraftCrMemoSystemId-8001],
    t.[DueDate-24] = s.[DueDate-24],
    t.[EU3PartyTrade-75] = s.[EU3PartyTrade-75],
    t.[ElectronicDocumentSent-10019] = s.[ElectronicDocumentSent-10019],
    t.[ElectronicDocumentStatus-10030] = s.[ElectronicDocumentStatus-10030],
    t.[ExchangeRateUSD-10060] = s.[ExchangeRateUSD-10060],
    t.[ForeignTrade-10050] = s.[ForeignTrade-10050],
    t.[GenBusPostingGroup-74] = s.[GenBusPostingGroup-74],
    t.[GetReturnReceiptUsed-7200] = s.[GetReturnReceiptUsed-7200],
    t.[InvoiceDiscCode-37] = s.[InvoiceDiscCode-37],
    t.[MarkedasCanceled-27008] = s.[MarkedasCanceled-27008],
    t.[No-3] = s.[No-3],
    t.[NoPrinted-47] = s.[NoPrinted-47],
    t.[NoSeries-108] = s.[NoSeries-108],
    t.[NoofEDocumentsSent-10021] = s.[NoofEDocumentsSent-10021],
    t.[PaymentDiscount-25] = s.[PaymentDiscount-25],
    t.[PostingDate-20] = s.[PostingDate-20],
    t.[PostingDescription-22] = s.[PostingDescription-22],
    t.[PrepaymentCreditMemo-136] = s.[PrepaymentCreditMemo-136],
    t.[PriceCalculationMethod-7000] = s.[PriceCalculationMethod-7000],
    t.[PricesIncludingVAT-35] = s.[PricesIncludingVAT-35],
    t.[RecurringBilling-8051] = s.[RecurringBilling-8051],
    t.[SATAddressID-27009] = s.[SATAddressID-27009],
    t.[SelltoCounty-89] = s.[SelltoCounty-89],
    t.[SelltoCustomerName-79] = s.[SelltoCustomerName-79],
    t.[SelltoCustomerNo-2] = s.[SelltoCustomerNo-2],
    t.[SourceCode-113] = s.[SourceCode-113],
    t.[SystemCreatedAt-2000000001] = s.[SystemCreatedAt-2000000001],
    t.[SystemCreatedBy-2000000002] = s.[SystemCreatedBy-2000000002],
  
    t.[TaxLiable-115] = s.[TaxLiable-115],
    t.[UserID-112] = s.[UserID-112],
    t.[VATBaseDiscount-119] = s.[VATBaseDiscount-119],
    t.[VATReportingDate-179] = s.[VATReportingDate-179],
    t.[WCAR06SalesCommClosed-50101] = s.[WCAR06SalesCommClosed-50101],
    t.[WCAR06SalesCommissionable-50100] = s.[WCAR06SalesCommissionable-50100],
    t.[WTBABillHoldType-87570] = s.[WTBABillHoldType-87570],
    t.[WTBAOrderTypeCode-87007] = s.[WTBAOrderTypeCode-87007],
    t.[WTBASOReviewStatus-87851] = s.[WTBASOReviewStatus-87851],
    t.[WTBASalesRegionCode-87003] = s.[WTBASalesRegionCode-87003],
    t.[WTBASampleOrder-87008] = s.[WTBASampleOrder-87008],
    t.[WTBASiteOrderID-87401] = s.[WTBASiteOrderID-87401],
    t.[timestamp-0] = s.[timestamp-0],
    t.[UpdateDate] = CURRENT_TIMESTAMP
FROM [DataWH].[dbo].[SalesCrMemoHeader114] t
JOIN [Rahat_LH].[dbo].[SalesCrMemoHeader114] s
  ON t.[systemId-2000000000] = s.[systemId-2000000000]
WHERE
         (
       
    ISNULL(t.[TaxExemptionNo-10015], '') <> ISNULL(s.[TaxExemptionNo-10015], '') OR
    ISNULL(t.[YourReference-11], '') <> ISNULL(s.[YourReference-11], '') OR
    ISNULL(t.[WCSAL34SampleReasonCode-50050], '') <> ISNULL(s.[WCSAL34SampleReasonCode-50050], '') OR
    ISNULL(t.[ShiptoAddress2-16], '') <> ISNULL(s.[ShiptoAddress2-16], '') OR
    ISNULL(t.[BilltoName2-6], '') <> ISNULL(s.[BilltoName2-6], '') OR
    ISNULL(t.[SelltoCustomerName2-80], '') <> ISNULL(s.[SelltoCustomerName2-80], '') OR
    ISNULL(t.[WTBALastEmailSentDateTime-87350], '') <> ISNULL(s.[WTBALastEmailSentDateTime-87350], '') OR
    ISNULL(t.[ShiptoContact-18], '') <> ISNULL(s.[ShiptoContact-18], '') OR
    ISNULL(t.[WTBACoopCode-87650], '') <> ISNULL(s.[WTBACoopCode-87650], '') OR
    ISNULL(t.[CustomerDiscGroup-40], '') <> ISNULL(s.[CustomerDiscGroup-40], '') OR
    ISNULL(t.[BilltoAddress2-8], '') <> ISNULL(s.[BilltoAddress2-8], '') OR
    ISNULL(t.[SelltoAddress2-82], '') <> ISNULL(s.[SelltoAddress2-82], '') OR
    ISNULL(t.[ShortcutDimension1Code-29], '') <> ISNULL(s.[ShortcutDimension1Code-29], '') OR
    ISNULL(t.[ShiptoCode-12], '') <> ISNULL(s.[ShiptoCode-12], '') OR
    ISNULL(t.[PaymentMethodCode-104], '') <> ISNULL(s.[PaymentMethodCode-104], '') OR
    ISNULL(t.[ReturnOrderNo-6601], '') <> ISNULL(s.[ReturnOrderNo-6601], '') OR
    ISNULL(t.[ReturnOrderNoSeries-6602], '') <> ISNULL(s.[ReturnOrderNoSeries-6602], '') OR
    ISNULL(t.[WCINT04PAOrderNo-50650], '') <> ISNULL(s.[WCINT04PAOrderNo-50650], '') OR
    ISNULL(t.[WCINT04PASalesRep-50651], '') <> ISNULL(s.[WCINT04PASalesRep-50651], '') OR
    ISNULL(t.[ShipmentDate-21], '') <> ISNULL(s.[ShipmentDate-21], '') OR
    ISNULL(t.[RcvdfromCountRegionCode-181], '') <> ISNULL(s.[RcvdfromCountRegionCode-181], '') OR
    ISNULL(t.[ExternalDocumentNo-100], '') <> ISNULL(s.[ExternalDocumentNo-100], '') OR
    ISNULL(t.[AppliestoDocNo-53], '') <> ISNULL(s.[AppliestoDocNo-53], '') OR
    ISNULL(t.[ShippingAgentCode-105], '') <> ISNULL(s.[ShippingAgentCode-105], '') OR
    ISNULL(t.[SelltoCountryRegionCode-90], '') <> ISNULL(s.[SelltoCountryRegionCode-90], '') OR
    ISNULL(t.[VATCountryRegionCode-78], '') <> ISNULL(s.[VATCountryRegionCode-78], '') OR
    ISNULL(t.[BilltoCountryRegionCode-87], '') <> ISNULL(s.[BilltoCountryRegionCode-87], '') OR
    ISNULL(t.[PreAssignedNo-111], '') <> ISNULL(s.[PreAssignedNo-111], '') OR
    ISNULL(t.[PreAssignedNoSeries-107], '') <> ISNULL(s.[PreAssignedNoSeries-107], '') OR
    ISNULL(t.[WTUSBeverageTaxAreaCode-88400], '') <> ISNULL(s.[WTUSBeverageTaxAreaCode-88400], '') OR
    ISNULL(t.[SelltoEMail-172], '') <> ISNULL(s.[SelltoEMail-172], '') OR
    ISNULL(t.[VATRegistrationNo-70], '') <> ISNULL(s.[VATRegistrationNo-70], '') OR
    ISNULL(t.[BilltoContactNo-5053], '') <> ISNULL(s.[BilltoContactNo-5053], '') OR
    ISNULL(t.[SelltoContactNo-5052], '') <> ISNULL(s.[SelltoContactNo-5052], '') OR
    ISNULL(t.[BilltoContact-10], '') <> ISNULL(s.[BilltoContact-10], '') OR
    ISNULL(t.[SelltoContact-84], '') <> ISNULL(s.[SelltoContact-84], '') OR
    ISNULL(t.[ShiptoCountryRegionCode-93], '') <> ISNULL(s.[ShiptoCountryRegionCode-93], '') OR
    ISNULL(t.[SelltoPhoneNo-171], '') <> ISNULL(s.[SelltoPhoneNo-171], '') OR
    ISNULL(t.[ShiptoAddress-15], '') <> ISNULL(s.[ShiptoAddress-15], '') OR
    ISNULL(t.[ShiptoCity-17], '') <> ISNULL(s.[ShiptoCity-17], '') OR
    ISNULL(t.[ShiptoCounty-92], '') <> ISNULL(s.[ShiptoCounty-92], '') OR
    ISNULL(t.[ShiptoPostCode-91], '') <> ISNULL(s.[ShiptoPostCode-91], '') OR
    ISNULL(t.[WTBACreditClassCode-87109], '') <> ISNULL(s.[WTBACreditClassCode-87109], '') OR
    ISNULL(t.[BilltoAddress-7], '') <> ISNULL(s.[BilltoAddress-7], '') OR
    ISNULL(t.[SelltoAddress-81], '') <> ISNULL(s.[SelltoAddress-81], '') OR
    ISNULL(t.[ShipmentMethodCode-27], '') <> ISNULL(s.[ShipmentMethodCode-27], '') OR
    ISNULL(t.[BilltoPostCode-85], '') <> ISNULL(s.[BilltoPostCode-85], '') OR
    ISNULL(t.[SelltoPostCode-88], '') <> ISNULL(s.[SelltoPostCode-88], '') OR
    ISNULL(t.[SalespersonCode-43], '') <> ISNULL(s.[SalespersonCode-43], '') OR
    ISNULL(t.[LocationCode-28], '') <> ISNULL(s.[LocationCode-28], '') OR
    ISNULL(t.[PaymentTermsCode-23], '') <> ISNULL(s.[PaymentTermsCode-23], '') OR
    ISNULL(t.[ShiptoName-13], '') <> ISNULL(s.[ShiptoName-13], '') OR
    ISNULL(t.[BilltoCity-9], '') <> ISNULL(s.[BilltoCity-9], '') OR
    ISNULL(t.[SelltoCity-83], '') <> ISNULL(s.[SelltoCity-83], '') OR
    ISNULL(t.[$Company], '') <> ISNULL(s.[$Company], '') OR
    ISNULL(t.[$DeliveredDateTime], '') <> ISNULL(s.[$DeliveredDateTime], '') OR
    ISNULL(t.[AllowLineDisc-7001], '') <> ISNULL(s.[AllowLineDisc-7001], '') OR
    ISNULL(t.[AltGenBusPostingGroup-167], '') <> ISNULL(s.[AltGenBusPostingGroup-167], '') OR
    ISNULL(t.[AltVATBusPostingGroup-168], '') <> ISNULL(s.[AltVATBusPostingGroup-168], '') OR
    ISNULL(t.[AltVATRegistrationNo-166], '') <> ISNULL(s.[AltVATRegistrationNo-166], '') OR
    ISNULL(t.[AppliestoDocType-52], '') <> ISNULL(s.[AppliestoDocType-52], '') OR
    ISNULL(t.[BalAccountType-94], '') <> ISNULL(s.[BalAccountType-94], '') OR
    ISNULL(t.[BilltoCounty-86], '') <> ISNULL(s.[BilltoCounty-86], '') OR
    ISNULL(t.[BilltoCustomerNo-4], '') <> ISNULL(s.[BilltoCustomerNo-4], '') OR
    ISNULL(t.[BilltoName-5], '') <> ISNULL(s.[BilltoName-5], '') OR
    --  ISNULL(t.[ContractDetailOverview-8052], '') <> ISNULL(s.[ContractDetailOverview-8052], '') OR
    ISNULL(t.[Correction-98], '') <> ISNULL(s.[Correction-98], '') OR
    ISNULL(t.[CurrencyFactor-33], '') <> ISNULL(s.[CurrencyFactor-33], '') OR
    ISNULL(t.[CustLedgerEntryNo-1304], '') <> ISNULL(s.[CustLedgerEntryNo-1304], '') OR
    ISNULL(t.[CustomerPostingGroup-31], '') <> ISNULL(s.[CustomerPostingGroup-31], '') OR
    ISNULL(t.[CustomerPriceGroup-34], '') <> ISNULL(s.[CustomerPriceGroup-34], '') OR
    ISNULL(t.[DimensionSetID-480], '') <> ISNULL(s.[DimensionSetID-480], '') OR
    ISNULL(t.[DocumentDate-99], '') <> ISNULL(s.[DocumentDate-99], '') OR
    ISNULL(t.[DocumentExchangeStatus-711], '') <> ISNULL(s.[DocumentExchangeStatus-711], '') OR
    ISNULL(t.[DraftCrMemoSystemId-8001], '') <> ISNULL(s.[DraftCrMemoSystemId-8001], '') OR
    ISNULL(t.[DueDate-24], '') <> ISNULL(s.[DueDate-24], '') OR
    ISNULL(t.[EU3PartyTrade-75], '') <> ISNULL(s.[EU3PartyTrade-75], '') OR
    ISNULL(t.[ElectronicDocumentSent-10019], '') <> ISNULL(s.[ElectronicDocumentSent-10019], '') OR
    ISNULL(t.[ElectronicDocumentStatus-10030], '') <> ISNULL(s.[ElectronicDocumentStatus-10030], '') OR
    ISNULL(t.[ExchangeRateUSD-10060], '') <> ISNULL(s.[ExchangeRateUSD-10060], '') OR
    ISNULL(t.[ForeignTrade-10050], '') <> ISNULL(s.[ForeignTrade-10050], '') OR
    ISNULL(t.[GenBusPostingGroup-74], '') <> ISNULL(s.[GenBusPostingGroup-74], '') OR
    ISNULL(t.[GetReturnReceiptUsed-7200], '') <> ISNULL(s.[GetReturnReceiptUsed-7200], '') OR
    ISNULL(t.[InvoiceDiscCode-37], '') <> ISNULL(s.[InvoiceDiscCode-37], '') OR
    ISNULL(t.[MarkedasCanceled-27008], '') <> ISNULL(s.[MarkedasCanceled-27008], '') OR
    ISNULL(t.[No-3], '') <> ISNULL(s.[No-3], '') OR
    ISNULL(t.[NoPrinted-47], '') <> ISNULL(s.[NoPrinted-47], '') OR
    ISNULL(t.[NoSeries-108], '') <> ISNULL(s.[NoSeries-108], '') OR
    ISNULL(t.[NoofEDocumentsSent-10021], '') <> ISNULL(s.[NoofEDocumentsSent-10021], '') OR
    ISNULL(t.[PaymentDiscount-25], '') <> ISNULL(s.[PaymentDiscount-25], '') OR
    ISNULL(t.[PostingDate-20], '') <> ISNULL(s.[PostingDate-20], '') OR
    ISNULL(t.[PostingDescription-22], '') <> ISNULL(s.[PostingDescription-22], '') OR
    ISNULL(t.[PrepaymentCreditMemo-136], '') <> ISNULL(s.[PrepaymentCreditMemo-136], '') OR
    ISNULL(t.[PriceCalculationMethod-7000], '') <> ISNULL(s.[PriceCalculationMethod-7000], '') OR
    ISNULL(t.[PricesIncludingVAT-35], '') <> ISNULL(s.[PricesIncludingVAT-35], '') OR
    ISNULL(t.[RecurringBilling-8051], '') <> ISNULL(s.[RecurringBilling-8051], '') OR
    ISNULL(t.[SATAddressID-27009], '') <> ISNULL(s.[SATAddressID-27009], '') OR
    ISNULL(t.[SelltoCounty-89], '') <> ISNULL(s.[SelltoCounty-89], '') OR
    ISNULL(t.[SelltoCustomerName-79], '') <> ISNULL(s.[SelltoCustomerName-79], '') OR
    ISNULL(t.[SelltoCustomerNo-2], '') <> ISNULL(s.[SelltoCustomerNo-2], '') OR
    ISNULL(t.[SourceCode-113], '') <> ISNULL(s.[SourceCode-113], '') OR
    ISNULL(t.[SystemCreatedAt-2000000001], '') <> ISNULL(s.[SystemCreatedAt-2000000001], '') OR
    ISNULL(t.[SystemCreatedBy-2000000002], '') <> ISNULL(s.[SystemCreatedBy-2000000002], '') OR
    ISNULL(t.[TaxLiable-115], '') <> ISNULL(s.[TaxLiable-115], '') OR
    ISNULL(t.[UserID-112], '') <> ISNULL(s.[UserID-112], '') OR
    ISNULL(t.[VATBaseDiscount-119], '') <> ISNULL(s.[VATBaseDiscount-119], '') OR
    ISNULL(t.[VATReportingDate-179], '') <> ISNULL(s.[VATReportingDate-179], '') OR
    ISNULL(t.[WCAR06SalesCommClosed-50101], '') <> ISNULL(s.[WCAR06SalesCommClosed-50101], '') OR
    ISNULL(t.[WCAR06SalesCommissionable-50100], '') <> ISNULL(s.[WCAR06SalesCommissionable-50100], '') OR
    ISNULL(t.[WTBABillHoldType-87570], '') <> ISNULL(s.[WTBABillHoldType-87570], '') OR
    ISNULL(t.[WTBAOrderTypeCode-87007], '') <> ISNULL(s.[WTBAOrderTypeCode-87007], '') OR
    ISNULL(t.[WTBASOReviewStatus-87851], '') <> ISNULL(s.[WTBASOReviewStatus-87851], '') OR
    ISNULL(t.[WTBASalesRegionCode-87003], '') <> ISNULL(s.[WTBASalesRegionCode-87003], '') OR
    ISNULL(t.[WTBASampleOrder-87008], '') <> ISNULL(s.[WTBASampleOrder-87008], '') OR
    ISNULL(t.[WTBASiteOrderID-87401], '') <> ISNULL(s.[WTBASiteOrderID-87401], '') OR
    ISNULL(t.[timestamp-0], '') <> ISNULL(s.[timestamp-0], '')

            );
----------------------------------------------------
 DELETE FROM [DataWH].[dbo].[SalesCrMemoHeader114]
    WHERE [systemId-2000000000] NOT IN (
        SELECT [systemId-2000000000] FROM [Rahat_LH].[dbo].[SalesCrMemoHeader114]
    );

END;