---  Exec usp_IncrementalLoad_SalesInvoiceLine113
---  select * from [dwh].[[DataWH].[dbo]].[SalesInvoiceLine113]
---  TRUNCATE TABLE [dwh].[[DataWH].[dbo]].[SalesInvoiceLine113]



CREATE     PROCEDURE usp_IncrementalLoad_SalesInvoiceLine113
AS
BEGIN
    -- Step 1: Insert new records
    INSERT INTO [DataWH].[dbo].SalesInvoiceLine113 (
        [ReturnReasonCode-6608],
        [WTBAOrderChargeCode-87600],
        [CustomerDiscGroup-7002],
        [WTPCSalesPriceGroupCode-89200],
        [WTBASampleReasonCode-87700],
        [ShortcutDimension1Code-40],
        [WTUSBeverageTaxAreaCode-88400],
        [WTBABrandNo-87150],
        [WTBAAlcoholTypeCode-87050],
        [WTBABottleSize-87020],
        [PostingGroup-8],
        [UnitofMeasure-13],
        [UnitofMeasureCode-5407],
        [GenProdPostingGroup-75],
        [WCTEWSalespersonCode-50000],
        [CustomerPriceGroup-42],
        [BilltoCustomerNo-68],
        [GenBusPostingGroup-74],
        [LocationCode-7],
        [No-6],
        [SelltoCustomerNo-2],
        [ShipmentDate-10],
        [WTBAOrderDate-87110],
        [WTBADocumentDate-87100],
        [OrderNo-65],
        [Description-11],
        [$Company],
        [$DeliveredDateTime],
        [AllowInvoiceDisc-32],
        [AllowLineDisc-7001],
        [Amount-29],
        [AmountIncludingVAT-30],
        [DocumentNo-3],
        [LineDiscount-27],
        [LineDiscountAmount-28],
        [LineNo-4],
        [QtyperUnitofMeasure-5404],
        [Quantity-15],
        [QuantityBase-5415],
        [SystemCreatedAt-2000000001],
        [SystemCreatedBy-2000000002],
        [SystemModifiedAt-2000000003],
        [Type-5],
        [UnitCost-100],
        [UnitCostLCY-23],
        [UnitPrice-22],
        [VAT-25],
        [WCAR06SalesCommissionable-50100],
        [WTBACasePack-87010],
        [WTBAGallons-87301],
        [WTBALiters-87300],
        [WTBAQuantityBottle-87083],
        [WTBAQuantityCase-87080],
        [systemId-2000000000],
        [timestamp-0],
        InsertDate
        
    )
    SELECT
        s.[ReturnReasonCode-6608],
        s.[WTBAOrderChargeCode-87600],
        s.[CustomerDiscGroup-7002],
        s.[WTPCSalesPriceGroupCode-89200],
        s.[WTBASampleReasonCode-87700],
        s.[ShortcutDimension1Code-40],
        s.[WTUSBeverageTaxAreaCode-88400],
        s.[WTBABrandNo-87150],
        s.[WTBAAlcoholTypeCode-87050],
        s.[WTBABottleSize-87020],
        s.[PostingGroup-8],
        s.[UnitofMeasure-13],
        s.[UnitofMeasureCode-5407],
        s.[GenProdPostingGroup-75],
        s.[WCTEWSalespersonCode-50000],
        s.[CustomerPriceGroup-42],
        s.[BilltoCustomerNo-68],
        s.[GenBusPostingGroup-74],
        s.[LocationCode-7],
        s.[No-6],
        s.[SelltoCustomerNo-2],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[ShipmentDate-10], '')),
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[WTBAOrderDate-87110], '')),
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[WTBADocumentDate-87100], '')),
        s.[OrderNo-65],
        s.[Description-11],
        s.[$Company],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')),
        s.[AllowInvoiceDisc-32],
        s.[AllowLineDisc-7001],
        s.[Amount-29],
        s.[AmountIncludingVAT-30],
        s.[DocumentNo-3],
        s.[LineDiscount-27],
        s.[LineDiscountAmount-28],
        s.[LineNo-4],
        s.[QtyperUnitofMeasure-5404],
        s.[Quantity-15],
        s.[QuantityBase-5415],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        s.[SystemCreatedBy-2000000002],
        TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        s.[Type-5],
        s.[UnitCost-100],
        s.[UnitCostLCY-23],
        s.[UnitPrice-22],
        s.[VAT-25],
        s.[WCAR06SalesCommissionable-50100],
        s.[WTBACasePack-87010],
        s.[WTBAGallons-87301],
        s.[WTBALiters-87300],
        s.[WTBAQuantityBottle-87083],
        s.[WTBAQuantityCase-87080],
        s.[systemId-2000000000],
        s.[timestamp-0],
        GETDATE()
        
    FROM [Rahat_Lh].[dbo].[SalesInvoiceLine113] s
    LEFT JOIN [DataWH].[dbo].SalesInvoiceLine113 t
        ON s.[systemId-2000000000] = t.[systemId-2000000000]
    WHERE t.[systemId-2000000000] IS NULL
      AND s.[systemId-2000000000] IS NOT NULL;

    -- Step 2: Update changed records
    UPDATE t
    SET
        t.[ReturnReasonCode-6608] = s.[ReturnReasonCode-6608],
        t.[WTBAOrderChargeCode-87600] = s.[WTBAOrderChargeCode-87600],
        t.[CustomerDiscGroup-7002] = s.[CustomerDiscGroup-7002],
        t.[WTPCSalesPriceGroupCode-89200] = s.[WTPCSalesPriceGroupCode-89200],
        t.[WTBASampleReasonCode-87700] = s.[WTBASampleReasonCode-87700],
        t.[ShortcutDimension1Code-40] = s.[ShortcutDimension1Code-40],
        t.[WTUSBeverageTaxAreaCode-88400] = s.[WTUSBeverageTaxAreaCode-88400],
        t.[WTBABrandNo-87150] = s.[WTBABrandNo-87150],
        t.[WTBAAlcoholTypeCode-87050] = s.[WTBAAlcoholTypeCode-87050],
        t.[WTBABottleSize-87020] = s.[WTBABottleSize-87020],
        t.[PostingGroup-8] = s.[PostingGroup-8],
        t.[UnitofMeasure-13] = s.[UnitofMeasure-13],
        t.[UnitofMeasureCode-5407] = s.[UnitofMeasureCode-5407],
        t.[GenProdPostingGroup-75] = s.[GenProdPostingGroup-75],
        t.[WCTEWSalespersonCode-50000] = s.[WCTEWSalespersonCode-50000],
        t.[CustomerPriceGroup-42] = s.[CustomerPriceGroup-42],
        t.[BilltoCustomerNo-68] = s.[BilltoCustomerNo-68],
        t.[GenBusPostingGroup-74] = s.[GenBusPostingGroup-74],
        t.[LocationCode-7] = s.[LocationCode-7],
        t.[No-6] = s.[No-6],
        t.[SelltoCustomerNo-2] = s.[SelltoCustomerNo-2],
        t.[ShipmentDate-10] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[ShipmentDate-10], '')),
        t.[WTBAOrderDate-87110] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[WTBAOrderDate-87110], '')),
        t.[WTBADocumentDate-87100] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[WTBADocumentDate-87100], '')),
        t.[OrderNo-65] = s.[OrderNo-65],
        t.[Description-11] = s.[Description-11],
        t.[$Company] = s.[$Company],
        t.[$DeliveredDateTime] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')),
        t.[AllowInvoiceDisc-32] = s.[AllowInvoiceDisc-32],
        t.[AllowLineDisc-7001] = s.[AllowLineDisc-7001],
        t.[Amount-29] = s.[Amount-29],
        t.[AmountIncludingVAT-30] = s.[AmountIncludingVAT-30],
        t.[DocumentNo-3] = s.[DocumentNo-3],
        t.[LineDiscount-27] = s.[LineDiscount-27],
        t.[LineDiscountAmount-28] = s.[LineDiscountAmount-28],
        t.[LineNo-4] = s.[LineNo-4],
        t.[QtyperUnitofMeasure-5404] = s.[QtyperUnitofMeasure-5404],
        t.[Quantity-15] = s.[Quantity-15],
        t.[QuantityBase-5415] = s.[QuantityBase-5415],
        t.[SystemCreatedAt-2000000001] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')),
        t.[SystemCreatedBy-2000000002] = s.[SystemCreatedBy-2000000002],
        t.[SystemModifiedAt-2000000003] = TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')),
        t.[Type-5] = s.[Type-5],
        t.[UnitCost-100] = s.[UnitCost-100],
        t.[UnitCostLCY-23] = s.[UnitCostLCY-23],
        t.[UnitPrice-22] = s.[UnitPrice-22],
        t.[VAT-25] = s.[VAT-25],
        t.[WCAR06SalesCommissionable-50100] = s.[WCAR06SalesCommissionable-50100],
        t.[WTBACasePack-87010] = s.[WTBACasePack-87010],
        t.[WTBAGallons-87301] = s.[WTBAGallons-87301],
        t.[WTBALiters-87300] = s.[WTBALiters-87300],
        t.[WTBAQuantityBottle-87083] = s.[WTBAQuantityBottle-87083],
        t.[WTBAQuantityCase-87080] = s.[WTBAQuantityCase-87080],
        t.[systemId-2000000000] = s.[systemId-2000000000],
        t.[timestamp-0] = s.[timestamp-0],
        t.UpdateDate = GETDATE()
    FROM [DataWH].[dbo].SalesInvoiceLine113 t
    JOIN [Rahat_Lh].[dbo].[SalesInvoiceLine113] s
         ON t.[systemId-2000000000] = s.[systemId-2000000000]
    WHERE
        ISNULL(t.[ReturnReasonCode-6608], 0) <> ISNULL(s.[ReturnReasonCode-6608], 0) OR
        ISNULL(t.[WTBAOrderChargeCode-87600], 0) <> ISNULL(s.[WTBAOrderChargeCode-87600], 0) OR
        ISNULL(t.[CustomerDiscGroup-7002], 0) <> ISNULL(s.[CustomerDiscGroup-7002], 0) OR
        ISNULL(t.[WTPCSalesPriceGroupCode-89200], 0) <> ISNULL(s.[WTPCSalesPriceGroupCode-89200], 0) OR
        ISNULL(t.[WTBASampleReasonCode-87700], 0) <> ISNULL(s.[WTBASampleReasonCode-87700], 0) OR
        ISNULL(t.[ShortcutDimension1Code-40], 0) <> ISNULL(s.[ShortcutDimension1Code-40], 0) OR
        ISNULL(t.[WTUSBeverageTaxAreaCode-88400], 0) <> ISNULL(s.[WTUSBeverageTaxAreaCode-88400], 0) OR
        ISNULL(t.[WTBABrandNo-87150], 0) <> ISNULL(s.[WTBABrandNo-87150], 0) OR
        ISNULL(t.[WTBAAlcoholTypeCode-87050], 0) <> ISNULL(s.[WTBAAlcoholTypeCode-87050], 0) OR
        ISNULL(t.[WTBABottleSize-87020], 0) <> ISNULL(s.[WTBABottleSize-87020], 0) OR
        ISNULL(t.[PostingGroup-8], 0) <> ISNULL(s.[PostingGroup-8], 0) OR
        ISNULL(t.[UnitofMeasure-13], 0) <> ISNULL(s.[UnitofMeasure-13], 0) OR
        ISNULL(t.[UnitofMeasureCode-5407], 0) <> ISNULL(s.[UnitofMeasureCode-5407], 0) OR
        ISNULL(t.[GenProdPostingGroup-75], 0) <> ISNULL(s.[GenProdPostingGroup-75], 0) OR
        ISNULL(t.[WCTEWSalespersonCode-50000], 0) <> ISNULL(s.[WCTEWSalespersonCode-50000], 0) OR
        ISNULL(t.[CustomerPriceGroup-42], 0) <> ISNULL(s.[CustomerPriceGroup-42], 0) OR
        ISNULL(t.[BilltoCustomerNo-68], 0) <> ISNULL(s.[BilltoCustomerNo-68], 0) OR
        ISNULL(t.[GenBusPostingGroup-74], 0) <> ISNULL(s.[GenBusPostingGroup-74], 0) OR
        ISNULL(t.[LocationCode-7], 0) <> ISNULL(s.[LocationCode-7], 0) OR
        ISNULL(t.[No-6], 0) <> ISNULL(s.[No-6], 0) OR
        ISNULL(t.[SelltoCustomerNo-2], 0) <> ISNULL(s.[SelltoCustomerNo-2], 0) OR
        ISNULL(t.[ShipmentDate-10], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[ShipmentDate-10], '')), '1900-01-01') OR
        ISNULL(t.[WTBAOrderDate-87110], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[WTBAOrderDate-87110], '')), '1900-01-01') OR
        ISNULL(t.[WTBADocumentDate-87100], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[WTBADocumentDate-87100], '')), '1900-01-01') OR
        ISNULL(t.[OrderNo-65], 0) <> ISNULL(s.[OrderNo-65], 0) OR
        ISNULL(t.[Description-11], 0) <> ISNULL(s.[Description-11], 0) OR
        ISNULL(t.[$Company], 0) <> ISNULL(s.[$Company], 0) OR
        ISNULL(t.[$DeliveredDateTime], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[$DeliveredDateTime], '')), '1900-01-01') OR
        ISNULL(t.[AllowInvoiceDisc-32], 0) <> ISNULL(s.[AllowInvoiceDisc-32], 0) OR
        ISNULL(t.[AllowLineDisc-7001], 0) <> ISNULL(s.[AllowLineDisc-7001], 0) OR
        ISNULL(t.[Amount-29], 0) <> ISNULL(s.[Amount-29], 0) OR
        ISNULL(t.[AmountIncludingVAT-30], 0) <> ISNULL(s.[AmountIncludingVAT-30], 0) OR
        ISNULL(t.[DocumentNo-3], 0) <> ISNULL(s.[DocumentNo-3], 0) OR
        ISNULL(t.[LineDiscount-27], 0) <> ISNULL(s.[LineDiscount-27], 0) OR
        ISNULL(t.[LineDiscountAmount-28], 0) <> ISNULL(s.[LineDiscountAmount-28], 0) OR
        ISNULL(t.[LineNo-4], 0) <> ISNULL(s.[LineNo-4], 0) OR
        ISNULL(t.[QtyperUnitofMeasure-5404], 0) <> ISNULL(s.[QtyperUnitofMeasure-5404], 0) OR
        ISNULL(t.[Quantity-15], 0) <> ISNULL(s.[Quantity-15], 0) OR
        ISNULL(t.[QuantityBase-5415], 0) <> ISNULL(s.[QuantityBase-5415], 0) OR
        ISNULL(t.[SystemCreatedAt-2000000001], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemCreatedAt-2000000001], '')), '1900-01-01') OR
        ISNULL(t.[SystemCreatedBy-2000000002], 0) <> ISNULL(s.[SystemCreatedBy-2000000002], 0) OR
        ISNULL(t.[SystemModifiedAt-2000000003], '1900-01-01') <> ISNULL(TRY_CONVERT(DATETIME2(3), NULLIF(s.[SystemModifiedAt-2000000003], '')), '1900-01-01') OR
        ISNULL(t.[Type-5], 0) <> ISNULL(s.[Type-5], 0) OR
        ISNULL(t.[UnitCost-100], 0) <> ISNULL(s.[UnitCost-100], 0) OR
        ISNULL(t.[UnitCostLCY-23], 0) <> ISNULL(s.[UnitCostLCY-23], 0) OR
        ISNULL(t.[UnitPrice-22], 0) <> ISNULL(s.[UnitPrice-22], 0) OR
        ISNULL(t.[VAT-25], 0) <> ISNULL(s.[VAT-25], 0) OR
        ISNULL(t.[WCAR06SalesCommissionable-50100], 0) <> ISNULL(s.[WCAR06SalesCommissionable-50100], 0) OR
        ISNULL(t.[WTBACasePack-87010], 0) <> ISNULL(s.[WTBACasePack-87010], 0) OR
        ISNULL(t.[WTBAGallons-87301], 0) <> ISNULL(s.[WTBAGallons-87301], 0) OR
        ISNULL(t.[WTBALiters-87300], 0) <> ISNULL(s.[WTBALiters-87300], 0) OR
        ISNULL(t.[WTBAQuantityBottle-87083], 0) <> ISNULL(s.[WTBAQuantityBottle-87083], 0) OR
        ISNULL(t.[WTBAQuantityCase-87080], 0) <> ISNULL(s.[WTBAQuantityCase-87080], 0) OR
        ISNULL(t.[systemId-2000000000], 0) <> ISNULL(s.[systemId-2000000000], 0) OR
        ISNULL(t.[timestamp-0], 0) <> ISNULL(s.[timestamp-0], 0);

    -- Step 3: Delete missing records
    DELETE FROM [DataWH].[dbo].SalesInvoiceLine113
    WHERE [systemId-2000000000] NOT IN (
         SELECT [systemId-2000000000] FROM [Rahat_Lh].[dbo].[SalesInvoiceLine113]
    );
END;