---  Exec usp_IncrementalLoad_SalesInvoiceHeader112
---  select * from [DataWH].[dbo].SalesInvoiceHeader112 
---  TRUNCATE TABLE [DataWH].[dbo].SalesInvoiceHeader112 



CREATE     PROCEDURE usp_IncrementalLoad_SalesInvoiceHeader112
AS
BEGIN
    -- Step 1: Insert new records
    INSERT INTO [DataWH].[dbo].SalesInvoiceHeader112 (
        [ShiptoName2-14],
        [CustomerDiscGroup-40],
        [BilltoName2-6],
        [SelltoCustomerName2-80],
        [WTBACoopCode-87650],
        [ShiptoAddress2-16],
        [BilltoAddress2-8],
        [SelltoAddress2-82],
        [ExternalDocumentNo-100],
        [ShortcutDimension1Code-29],
        [ShiptoCode-12],
        [PaymentMethodCode-104],
        [BilltoCountryRegionCode-87],
        [WTPCPriceCalculatedDate-89201],
        [ShiptoContact-18],
        [WTUSBeverageTaxAreaCode-88400],
        [BilltoContact-10],
        [SelltoContact-84],
        [BilltoContactNo-5053],
        [SelltoContactNo-5052],
        [BilltoAddress-7],
        [SelltoAddress-81],
        [OrderNo-44],
        [ShippingAgentCode-105],
        [ShipmentMethodCode-27],
        [ShiptoAddress-15],
        [BilltoPostCode-85],
        [SelltoPostCode-88],
        [ShiptoPostCode-91],
        [PaymentTermsCode-23],
        [BilltoCity-9],
        [SelltoCity-83],
        [SalespersonCode-43],
        [ShipmentDate-21],
        [BilltoCounty-86],
        [SelltoCounty-89],
        [CustomerPriceGroup-34],
        [ShiptoName-13],
        [$Company],
        [$DeliveredDateTime],
        [BilltoCustomerNo-4],
        [BilltoName-5],
        [CustomerPostingGroup-31],
        [DocumentDate-99],
        [DueDate-24],
        [GenBusPostingGroup-74],
        [LocationCode-28],
        [No-3],
        [OrderDate-19],
        [PostingDate-20],
        [PostingDescription-22],
        [SelltoCustomerName-79],
        [SelltoCustomerNo-2],
        [ShiptoCity-17],
        [ShiptoCounty-92],
        [SystemCreatedAt-2000000001],
        [SystemCreatedBy-2000000002],
        [SystemModifiedAt-2000000003],
        [WTBABillHoldType-87570],
        [WTPCPriceCalculated-89200],
        [systemId-2000000000],
        [timestamp-0],
        [InsertDate]
        
    )
    SELECT
        s.[ShiptoName2-14],
        s.[CustomerDiscGroup-40],
        s.[BilltoName2-6],
        s.[SelltoCustomerName2-80],
        s.[WTBACoopCode-87650],
        s.[ShiptoAddress2-16],
        s.[BilltoAddress2-8],
        s.[SelltoAddress2-82],
        s.[ExternalDocumentNo-100],
        s.[ShortcutDimension1Code-29],
        s.[ShiptoCode-12],
        s.[PaymentMethodCode-104],
        s.[BilltoCountryRegionCode-87],
        s.[WTPCPriceCalculatedDate-89201],
        s.[ShiptoContact-18],
        s.[WTUSBeverageTaxAreaCode-88400],
        s.[BilltoContact-10],
        s.[SelltoContact-84],
        s.[BilltoContactNo-5053],
        s.[SelltoContactNo-5052],
        s.[BilltoAddress-7],
        s.[SelltoAddress-81],
        s.[OrderNo-44],
        s.[ShippingAgentCode-105],
        s.[ShipmentMethodCode-27],
        s.[ShiptoAddress-15],
        s.[BilltoPostCode-85],
        s.[SelltoPostCode-88],
        s.[ShiptoPostCode-91],
        s.[PaymentTermsCode-23],
        s.[BilltoCity-9],
        s.[SelltoCity-83],
        s.[SalespersonCode-43],
        s.[ShipmentDate-21],
        s.[BilltoCounty-86],
        s.[SelltoCounty-89],
        s.[CustomerPriceGroup-34],
        s.[ShiptoName-13],
        s.[$Company],
        s.[$DeliveredDateTime],
        s.[BilltoCustomerNo-4],
        s.[BilltoName-5],
        s.[CustomerPostingGroup-31],
        s.[DocumentDate-99],
        s.[DueDate-24],
        s.[GenBusPostingGroup-74],
        s.[LocationCode-28],
        s.[No-3],
        s.[OrderDate-19],
        s.[PostingDate-20],
        s.[PostingDescription-22],
        s.[SelltoCustomerName-79],
        s.[SelltoCustomerNo-2],
        s.[ShiptoCity-17],
        s.[ShiptoCounty-92],
        s.[SystemCreatedAt-2000000001],
        s.[SystemCreatedBy-2000000002],
        s.[SystemModifiedAt-2000000003],
        s.[WTBABillHoldType-87570],
        s.[WTPCPriceCalculated-89200],
        s.[systemId-2000000000],
        s.[timestamp-0],
        GETDATE()
      
    FROM [Rahat_LH].[dbo].[SalesInvoiceHeader112] s
    LEFT JOIN [DataWH].[dbo].SalesInvoiceHeader112 t
        ON s.[systemId-2000000000] = t.[systemId-2000000000]
    WHERE t.[systemId-2000000000] IS NULL
      AND s.[systemId-2000000000] IS NOT NULL;

    -- Step 2: Update changed records
    UPDATE t
    SET
         t.[ShiptoName2-14] = s.[ShiptoName2-14],
         t.[CustomerDiscGroup-40] = s.[CustomerDiscGroup-40],
         t.[BilltoName2-6] = s.[BilltoName2-6],
         t.[SelltoCustomerName2-80] = s.[SelltoCustomerName2-80],
         t.[WTBACoopCode-87650] = s.[WTBACoopCode-87650],
         t.[ShiptoAddress2-16] = s.[ShiptoAddress2-16],
         t.[BilltoAddress2-8] = s.[BilltoAddress2-8],
         t.[SelltoAddress2-82] = s.[SelltoAddress2-82],
         t.[ExternalDocumentNo-100] = s.[ExternalDocumentNo-100],
         t.[ShortcutDimension1Code-29] = s.[ShortcutDimension1Code-29],
         t.[ShiptoCode-12] = s.[ShiptoCode-12],
         t.[PaymentMethodCode-104] = s.[PaymentMethodCode-104],
         t.[BilltoCountryRegionCode-87] = s.[BilltoCountryRegionCode-87],
         t.[WTPCPriceCalculatedDate-89201] = s.[WTPCPriceCalculatedDate-89201],
         t.[ShiptoContact-18] = s.[ShiptoContact-18],
         t.[WTUSBeverageTaxAreaCode-88400] = s.[WTUSBeverageTaxAreaCode-88400],
         t.[BilltoContact-10] = s.[BilltoContact-10],
         t.[SelltoContact-84] = s.[SelltoContact-84],
         t.[BilltoContactNo-5053] = s.[BilltoContactNo-5053],
         t.[SelltoContactNo-5052] = s.[SelltoContactNo-5052],
         t.[BilltoAddress-7] = s.[BilltoAddress-7],
         t.[SelltoAddress-81] = s.[SelltoAddress-81],
         t.[OrderNo-44] = s.[OrderNo-44],
         t.[ShippingAgentCode-105] = s.[ShippingAgentCode-105],
         t.[ShipmentMethodCode-27] = s.[ShipmentMethodCode-27],
         t.[ShiptoAddress-15] = s.[ShiptoAddress-15],
         t.[BilltoPostCode-85] = s.[BilltoPostCode-85],
         t.[SelltoPostCode-88] = s.[SelltoPostCode-88],
         t.[ShiptoPostCode-91] = s.[ShiptoPostCode-91],
         t.[PaymentTermsCode-23] = s.[PaymentTermsCode-23],
         t.[BilltoCity-9] = s.[BilltoCity-9],
         t.[SelltoCity-83] = s.[SelltoCity-83],
         t.[SalespersonCode-43] = s.[SalespersonCode-43],
         t.[ShipmentDate-21] = s.[ShipmentDate-21],
         t.[BilltoCounty-86] = s.[BilltoCounty-86],
         t.[SelltoCounty-89] = s.[SelltoCounty-89],
         t.[CustomerPriceGroup-34] = s.[CustomerPriceGroup-34],
         t.[ShiptoName-13] = s.[ShiptoName-13],
         t.[$Company] = s.[$Company],
         t.[$DeliveredDateTime] = s.[$DeliveredDateTime],
         t.[BilltoCustomerNo-4] = s.[BilltoCustomerNo-4],
         t.[BilltoName-5] = s.[BilltoName-5],
         t.[CustomerPostingGroup-31] = s.[CustomerPostingGroup-31],
         t.[DocumentDate-99] = s.[DocumentDate-99],
         t.[DueDate-24] = s.[DueDate-24],
         t.[GenBusPostingGroup-74] = s.[GenBusPostingGroup-74],
         t.[LocationCode-28] = s.[LocationCode-28],
         t.[No-3] = s.[No-3],
         t.[OrderDate-19] = s.[OrderDate-19],
         t.[PostingDate-20] = s.[PostingDate-20],
         t.[PostingDescription-22] = s.[PostingDescription-22],
         t.[SelltoCustomerName-79] = s.[SelltoCustomerName-79],
         t.[SelltoCustomerNo-2] = s.[SelltoCustomerNo-2],
         t.[ShiptoCity-17] = s.[ShiptoCity-17],
         t.[ShiptoCounty-92] = s.[ShiptoCounty-92],
         t.[SystemCreatedAt-2000000001] = s.[SystemCreatedAt-2000000001],
         t.[SystemCreatedBy-2000000002] = s.[SystemCreatedBy-2000000002],
         t.[SystemModifiedAt-2000000003] = s.[SystemModifiedAt-2000000003],
         t.[WTBABillHoldType-87570] = s.[WTBABillHoldType-87570],
         t.[WTPCPriceCalculated-89200] = s.[WTPCPriceCalculated-89200],
         t.[systemId-2000000000] = s.[systemId-2000000000],
         t.[timestamp-0] = s.[timestamp-0],
         t.[UpdateDate] = GETDATE()
    FROM [DataWH].[dbo].SalesInvoiceHeader112 t
    JOIN [Rahat_LH].[dbo].[SalesInvoiceHeader112] s
         ON t.[systemId-2000000000] = s.[systemId-2000000000]
    WHERE
         ISNULL(t.[ShiptoName2-14], '') <> ISNULL(s.[ShiptoName2-14], '') OR
         ISNULL(t.[CustomerDiscGroup-40], '') <> ISNULL(s.[CustomerDiscGroup-40], '') OR
         ISNULL(t.[BilltoName2-6], '') <> ISNULL(s.[BilltoName2-6], '') OR
         ISNULL(t.[SelltoCustomerName2-80], '') <> ISNULL(s.[SelltoCustomerName2-80], '') OR
         ISNULL(t.[WTBACoopCode-87650], '') <> ISNULL(s.[WTBACoopCode-87650], '') OR
         ISNULL(t.[ShiptoAddress2-16], '') <> ISNULL(s.[ShiptoAddress2-16], '') OR
         ISNULL(t.[BilltoAddress2-8], '') <> ISNULL(s.[BilltoAddress2-8], '') OR
         ISNULL(t.[SelltoAddress2-82], '') <> ISNULL(s.[SelltoAddress2-82], '') OR
         ISNULL(t.[ExternalDocumentNo-100], '') <> ISNULL(s.[ExternalDocumentNo-100], '') OR
         ISNULL(t.[ShortcutDimension1Code-29], '') <> ISNULL(s.[ShortcutDimension1Code-29], '') OR
         ISNULL(t.[ShiptoCode-12], '') <> ISNULL(s.[ShiptoCode-12], '') OR
         ISNULL(t.[PaymentMethodCode-104], '') <> ISNULL(s.[PaymentMethodCode-104], '') OR
         ISNULL(t.[BilltoCountryRegionCode-87], '') <> ISNULL(s.[BilltoCountryRegionCode-87], '') OR
         ISNULL(t.[WTPCPriceCalculatedDate-89201], '') <> ISNULL(s.[WTPCPriceCalculatedDate-89201], '') OR
         ISNULL(t.[ShiptoContact-18], '') <> ISNULL(s.[ShiptoContact-18], '') OR
         ISNULL(t.[WTUSBeverageTaxAreaCode-88400], '') <> ISNULL(s.[WTUSBeverageTaxAreaCode-88400], '') OR
         ISNULL(t.[BilltoContact-10], '') <> ISNULL(s.[BilltoContact-10], '') OR
         ISNULL(t.[SelltoContact-84], '') <> ISNULL(s.[SelltoContact-84], '') OR
         ISNULL(t.[BilltoContactNo-5053], '') <> ISNULL(s.[BilltoContactNo-5053], '') OR
         ISNULL(t.[SelltoContactNo-5052], '') <> ISNULL(s.[SelltoContactNo-5052], '') OR
         ISNULL(t.[BilltoAddress-7], '') <> ISNULL(s.[BilltoAddress-7], '') OR
         ISNULL(t.[SelltoAddress-81], '') <> ISNULL(s.[SelltoAddress-81], '') OR
         ISNULL(t.[OrderNo-44], '') <> ISNULL(s.[OrderNo-44], '') OR
         ISNULL(t.[ShippingAgentCode-105], '') <> ISNULL(s.[ShippingAgentCode-105], '') OR
         ISNULL(t.[ShipmentMethodCode-27], '') <> ISNULL(s.[ShipmentMethodCode-27], '') OR
         ISNULL(t.[ShiptoAddress-15], '') <> ISNULL(s.[ShiptoAddress-15], '') OR
         ISNULL(t.[BilltoPostCode-85], '') <> ISNULL(s.[BilltoPostCode-85], '') OR
         ISNULL(t.[SelltoPostCode-88], '') <> ISNULL(s.[SelltoPostCode-88], '') OR
         ISNULL(t.[ShiptoPostCode-91], '') <> ISNULL(s.[ShiptoPostCode-91], '') OR
         ISNULL(t.[PaymentTermsCode-23], '') <> ISNULL(s.[PaymentTermsCode-23], '') OR
         ISNULL(t.[BilltoCity-9], '') <> ISNULL(s.[BilltoCity-9], '') OR
         ISNULL(t.[SelltoCity-83], '') <> ISNULL(s.[SelltoCity-83], '') OR
         ISNULL(t.[SalespersonCode-43], '') <> ISNULL(s.[SalespersonCode-43], '') OR
         ISNULL(t.[ShipmentDate-21], '') <> ISNULL(s.[ShipmentDate-21], '') OR
         ISNULL(t.[BilltoCounty-86], '') <> ISNULL(s.[BilltoCounty-86], '') OR
         ISNULL(t.[SelltoCounty-89], '') <> ISNULL(s.[SelltoCounty-89], '') OR
         ISNULL(t.[CustomerPriceGroup-34], '') <> ISNULL(s.[CustomerPriceGroup-34], '') OR
         ISNULL(t.[ShiptoName-13], '') <> ISNULL(s.[ShiptoName-13], '') OR
         ISNULL(t.[$Company], '') <> ISNULL(s.[$Company], '') OR
         ISNULL(t.[$DeliveredDateTime], '') <> ISNULL(s.[$DeliveredDateTime], '') OR
         ISNULL(t.[BilltoCustomerNo-4], '') <> ISNULL(s.[BilltoCustomerNo-4], '') OR
         ISNULL(t.[BilltoName-5], '') <> ISNULL(s.[BilltoName-5], '') OR
         ISNULL(t.[CustomerPostingGroup-31], '') <> ISNULL(s.[CustomerPostingGroup-31], '') OR
         ISNULL(t.[DocumentDate-99], '') <> ISNULL(s.[DocumentDate-99], '') OR
         ISNULL(t.[DueDate-24], '') <> ISNULL(s.[DueDate-24], '') OR
         ISNULL(t.[GenBusPostingGroup-74], '') <> ISNULL(s.[GenBusPostingGroup-74], '') OR
         ISNULL(t.[LocationCode-28], '') <> ISNULL(s.[LocationCode-28], '') OR
         ISNULL(t.[No-3], '') <> ISNULL(s.[No-3], '') OR
         ISNULL(t.[OrderDate-19], '') <> ISNULL(s.[OrderDate-19], '') OR
         ISNULL(t.[PostingDate-20], '') <> ISNULL(s.[PostingDate-20], '') OR
         ISNULL(t.[PostingDescription-22], '') <> ISNULL(s.[PostingDescription-22], '') OR
         ISNULL(t.[SelltoCustomerName-79], '') <> ISNULL(s.[SelltoCustomerName-79], '') OR
         ISNULL(t.[SelltoCustomerNo-2], '') <> ISNULL(s.[SelltoCustomerNo-2], '') OR
         ISNULL(t.[ShiptoCity-17], '') <> ISNULL(s.[ShiptoCity-17], '') OR
         ISNULL(t.[ShiptoCounty-92], '') <> ISNULL(s.[ShiptoCounty-92], '') OR
         ISNULL(t.[SystemCreatedAt-2000000001], '') <> ISNULL(s.[SystemCreatedAt-2000000001], '') OR
         ISNULL(t.[SystemCreatedBy-2000000002], '') <> ISNULL(s.[SystemCreatedBy-2000000002], '') OR
         ISNULL(t.[SystemModifiedAt-2000000003], '') <> ISNULL(s.[SystemModifiedAt-2000000003], '') OR
         ISNULL(t.[WTBABillHoldType-87570], '') <> ISNULL(s.[WTBABillHoldType-87570], '') OR
         ISNULL(t.[WTPCPriceCalculated-89200], '') <> ISNULL(s.[WTPCPriceCalculated-89200], '') OR
         ISNULL(t.[systemId-2000000000], '') <> ISNULL(s.[systemId-2000000000], '');

    -- Step 3: Delete missing records
    DELETE FROM [DataWH].[dbo].SalesInvoiceHeader112
    WHERE [systemId-2000000000] NOT IN (
         SELECT [systemId-2000000000] FROM [Rahat_LH].[dbo].[SalesInvoiceHeader112]
    );
END;