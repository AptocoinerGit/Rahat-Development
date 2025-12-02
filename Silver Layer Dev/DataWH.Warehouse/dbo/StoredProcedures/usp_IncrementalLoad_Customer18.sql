---  Exec usp_IncrementalLoad_Customer18
---  select * from [DataWH].[dbo].[Customer18]
---  Truncate table [DataWH].[dbo].[Customer18]
-----------------------------------------------------------------------------------------------------------------------

CREATE   PROCEDURE usp_IncrementalLoad_Customer18
AS
BEGIN
    -- Step 1: Insert new records
    INSERT INTO [DataWH].[dbo].[Customer18] (
    [WTBASalespersonBinCode-87721] 		  ,
    [WTBASalespersonLocCode-87720] 		  ,
    [Name2-4]							  ,
    [BilltoCustomerNo-45]				  ,
    [TaxExemptionNo-10015]				  ,
    [HomePage-103]						  ,
    [CustomerDiscGroup-34]				  ,
    [WCSAL04SampleDiscGroupCode-50120]	  ,
    [WTBABillHoldBinCode-87570]			  ,
    [ChainName-18]						  ,
    [Address2-6]						  ,
    [FaxNo-84]							  ,
    [ShiptoCode-12]						  ,
    [MobilePhoneNo-5061]				  ,
    [PaymentMethodCode-47]				  ,
    [PreferredBankAccountCode-288]		  ,
    [NoSeries-107]						  ,
    [PrimaryContactNo-5049]				  ,
    [CFDICustomerName-27007]			  ,
    [WTIAAllocationCode-90101]			  ,
    [CountryRegionCode-35]				  ,
    [WTBAHistPmtTermsCode-87120]		  ,
    [WTBAHistCreditClassCode-87110]		  ,
    [DocumentSendingProfile-11]			  ,
    [ReminderTermsCode-104]				  ,
    [EMail-102]							  ,
    [WTUSBeverageTaxAreaCode-88400]		  ,
    [VATRegistrationNo-86]				  ,
    [Contact-8]							  ,
    [PhoneNo-9]							  ,
    [WTBACorporateName-87000]			  ,
    [GlobalDimension1Code-16]			  ,
    [ShippingAgentCode-31]				  ,
    [WTBACreditClassCode-87109]			  ,
    [WTBARegionCode-87150]				  ,
    [Address-5]							  ,
    [ShipmentMethodCode-30]				  ,
    [PostCode-91]						  ,
    [SalespersonCode-29]				  ,
    [BaseCalendarCode-7600]				  ,
    [City-7]							  ,
    [CustomerPriceGroup-23]				  ,
    [WTBASalesRegionCode-87152]			  ,
    [WTBACategoryCode-87020]			  ,
    [WTBAOrderTypeCode-87007]			  ,
    [$Company]							  ,
    [$DeliveredDateTime]				  ,
    [AllowLineDisc-7001]				  ,
    [AllowMultiplePostingGroups-175]	  ,
    [Amount-37]							  ,
    [ApplicationMethod-80]				  ,
    [BankCommunication-10017]			  ,
    [BlockPaymentTolerance-116]			  ,
    [Blocked-39]						  ,
    [BudgetedAmount-19]					  ,
    [CFDIGeneralPublic-27005]			  ,
    [CFDIPeriod-27006]					  ,
    [CheckDateFormat-10018]				  ,
    [CheckDateSeparator-10019]			  ,
    [CombineShipments-87]				  ,
    [ContactID-9005]					  ,
    [ContactType-5050]					  ,
    [CopySelltoAddrtoQteFrom-7601]		  ,
    [County-92]							  ,
    --[CoupledtoCRM-720]					  ,
    [CreditLimitLCY-20]  				  ,
    [CurrencyId-8001]  					  ,
    [CustomerPostingGroup-21]			  ,
    [DisableSearchbyName-160]			  ,
    [ERCAPMDefaultPPExempt-71276909]	  ,
    [ERCAPMPPLevel-71276910]			  ,
    [ERCAveragePayDays-71276875]		  ,
    [ERCBlindShippingOption-71276899]	  ,
    [ERCChargeSRFreight-71276888]			,
    [ERCDISRequirePicture-71276918]			,
    [ERCDISRequireSignature-71276919]		,
    [ERCDoNotSendReminders-71276882]		,
    [ERCEmailCMonPosting-71276884]			,
    [ERCEmailInvoiceonPosting-71276883]		,
    [ERCEmailPRonPosting-71276885]			,
    [ERCEmailShipmentonPosting-71276920]	,
    [ERCInvoiceConsolidateOption-71276880],
    [ERCInvoiceDeliveryDOW-71276881]		,
    [ERCSRFreeFreightThreshold-71276889]	,
    [ERCSRPaymentType-71276891]				,
    [ERCStatementDeliveryOption-71276876],
    [ExcludefromPmtPractices-134]			,
    [GenBusPostingGroup-88]					,
    [IntrastatPartnerType-133]				,
    [InvoiceCopies-40]						,
    [InvoiceDiscCode-33]					,
    [LastDateModified-54]					,
    [LastModifiedDateTime-53]				,
    [LastStatementNo-41]					,
    [LocationCode-83]						,
    [Name-2]								,
    [No-1]									,
    [PartnerType-132]						,
    [PaymentMethodId-8004]					,
    [PaymentTermsCode-27]					,
    [PaymentTermsId-8002]					,
    [Prepayment-124]						,
    [PriceCalculationMethod-7000]			,
    [PricesIncludingVAT-82]					,
    [PrintStatements-42]					,
    [Priority-46]							,
    [PrivacyBlocked-150]					,
    [Reserve-115]							,
    [SearchName-3]							,
    [ShipmentMethodId-8003]					,
    [ShippingAdvice-5750]					,
    [StatisticsGroup-26]					,
    [SystemCreatedAt-2000000001]			,
    [SystemCreatedBy-2000000002]			,
    [SystemModifiedAt-2000000003]			,
    [TaxAreaID-9003]						,
    [TaxIdentificationType-14020]			,
    [TaxLiable-109]							,
    [TerritoryCode-15]						,
    [UseGLNinElectronicDocument-95]			,
    [ValidateEUVatRegNo-7602]				,
    [WCAR06SalesCommission-50100]			,
    [WCINT01ExcludefromExport-50220]		,
    [WCSAL17PersonalGuarantee-50050]		,
    [WCTEWPrestige-50000]					,
    [WTBAOnPremise-87030]					,
    [WTIAAllocate-90100]					,
    [WTUSExportCustomer-88650]				,
    [systemId-2000000000]					,
    [timestamp-0]							,
    [InserDate]										
    										
 )
    SELECT

    s.[WTBASalespersonBinCode-87721] 		  ,
    s.[WTBASalespersonLocCode-87720] 		  ,
    s.[Name2-4]							  ,
    s.[BilltoCustomerNo-45]				  ,
    s.[TaxExemptionNo-10015]				  ,
    s.[HomePage-103]						  ,
    s.[CustomerDiscGroup-34]				  ,
    s.[WCSAL04SampleDiscGroupCode-50120]	  ,
    s.[WTBABillHoldBinCode-87570]			  ,
    s.[ChainName-18]						  ,
    s.[Address2-6]						  ,
    s.[FaxNo-84]							  ,
    s.[ShiptoCode-12]						  ,
    s.[MobilePhoneNo-5061]				  ,
    s.[PaymentMethodCode-47]				  ,
    s.[PreferredBankAccountCode-288]		  ,
    s.[NoSeries-107]						  ,
    s.[PrimaryContactNo-5049]				  ,
    s.[CFDICustomerName-27007]			  ,
    s.[WTIAAllocationCode-90101]			  ,
    s.[CountryRegionCode-35]				  ,
    s.[WTBAHistPmtTermsCode-87120]		  ,
    s.[WTBAHistCreditClassCode-87110]		  ,
    s.[DocumentSendingProfile-11]			  ,
    s.[ReminderTermsCode-104]				  ,
    s.[EMail-102]							  ,
    s.[WTUSBeverageTaxAreaCode-88400]		  ,
    s.[VATRegistrationNo-86]				  ,
    s.[Contact-8]							  ,
    s.[PhoneNo-9]							  ,
    s.[WTBACorporateName-87000]			  ,
    s.[GlobalDimension1Code-16]			  ,
    s.[ShippingAgentCode-31]				  ,
    s.[WTBACreditClassCode-87109]			  ,
    s.[WTBARegionCode-87150]				  ,
    s.[Address-5]							  ,
    s.[ShipmentMethodCode-30]				  ,
    s.[PostCode-91]						  ,
    s.[SalespersonCode-29]				  ,
    s.[BaseCalendarCode-7600]				  ,
    s.[City-7]							  ,
    s.[CustomerPriceGroup-23]				  ,
    s.[WTBASalesRegionCode-87152]			  ,
    s.[WTBACategoryCode-87020]			  ,
    s.[WTBAOrderTypeCode-87007]			  ,
    s.[$Company]							  ,
    s.[$DeliveredDateTime]				  ,
    s.[AllowLineDisc-7001]				  ,
    s.[AllowMultiplePostingGroups-175]	  ,
    s.[Amount-37]							  ,
    s.[ApplicationMethod-80]				  ,
    s.[BankCommunication-10017]			  ,
    s.[BlockPaymentTolerance-116]			  ,
    s.[Blocked-39]						  ,
    s.[BudgetedAmount-19]					  ,
    s.[CFDIGeneralPublic-27005]			  ,
    s.[CFDIPeriod-27006]					  ,
    s.[CheckDateFormat-10018]				  ,
    s.[CheckDateSeparator-10019]			  ,
    s.[CombineShipments-87]				  ,
    s.[ContactID-9005]					  ,
    s.[ContactType-5050]					  ,
    s.[CopySelltoAddrtoQteFrom-7601]		  ,
    s.[County-92]							  ,
   -- s.[CoupledtoCRM-720]					  ,
    s.[CreditLimitLCY-20]  				  ,
    s.[CurrencyId-8001]  					  ,
    s.[CustomerPostingGroup-21]			  ,
    s.[DisableSearchbyName-160]			  ,
    s.[ERCAPMDefaultPPExempt-71276909]	  ,
    s.[ERCAPMPPLevel-71276910]			  ,
    s.[ERCAveragePayDays-71276875]		  ,
    s.[ERCBlindShippingOption-71276899]	  ,
    s.[ERCChargeSRFreight-71276888]			,
    s.[ERCDISRequirePicture-71276918]			,
    s.[ERCDISRequireSignature-71276919]		,
    s.[ERCDoNotSendReminders-71276882]		,
    s.[ERCEmailCMonPosting-71276884]			,
    s.[ERCEmailInvoiceonPosting-71276883]		,
    s.[ERCEmailPRonPosting-71276885]			,
    s.[ERCEmailShipmentonPosting-71276920]	,
    s.[ERCInvoiceConsolidateOption-71276880],
    s.[ERCInvoiceDeliveryDOW-71276881]		,
    s.[ERCSRFreeFreightThreshold-71276889]	,
    s.[ERCSRPaymentType-71276891]				,
    s.[ERCStatementDeliveryOption-71276876],
    s.[ExcludefromPmtPractices-134]			,
    s.[GenBusPostingGroup-88]					,
    s.[IntrastatPartnerType-133]				,
    s.[InvoiceCopies-40]						,
    s.[InvoiceDiscCode-33]					,
    s.[LastDateModified-54]					,
    s.[LastModifiedDateTime-53]				,
    s.[LastStatementNo-41]					,
    s.[LocationCode-83]						,
    s.[Name-2]								,
    s.[No-1]									,
    s.[PartnerType-132]						,
    s.[PaymentMethodId-8004]					,
    s.[PaymentTermsCode-27]					,
    s.[PaymentTermsId-8002]					,
    s.[Prepayment-124]						,
    s.[PriceCalculationMethod-7000]			,
    s.[PricesIncludingVAT-82]					,
    s.[PrintStatements-42]					,
    s.[Priority-46]							,
    s.[PrivacyBlocked-150]					,
    s.[Reserve-115]							,
    s.[SearchName-3]							,
    s.[ShipmentMethodId-8003]					,
    s.[ShippingAdvice-5750]					,
    s.[StatisticsGroup-26]					,
    s.[SystemCreatedAt-2000000001]			,
    s.[SystemCreatedBy-2000000002]			,
    s.[SystemModifiedAt-2000000003]			,
    s.[TaxAreaID-9003]						,
    s.[TaxIdentificationType-14020]			,
    s.[TaxLiable-109]							,
    s.[TerritoryCode-15]						,
    s.[UseGLNinElectronicDocument-95]			,
    s.[ValidateEUVatRegNo-7602]				,
    s.[WCAR06SalesCommission-50100]			,
    s.[WCINT01ExcludefromExport-50220]		,
    s.[WCSAL17PersonalGuarantee-50050]		,
    s.[WCTEWPrestige-50000]					,
    s.[WTBAOnPremise-87030]					,
    s.[WTIAAllocate-90100]					,
    s.[WTUSExportCustomer-88650]				,
    s.[systemId-2000000000]					,
    s.[timestamp-0]							,
          GETDATE()
    FROM [Rahat_LH].[dbo].[Customer18] s
    LEFT JOIN [DataWH].[dbo].[Customer18] t
        ON s.[systemId-2000000000] = t.[systemId-2000000000]
    WHERE t.[systemId-2000000000] IS NULL
      AND s.[systemId-2000000000] IS NOT NULL;

   -- Step 2: Update changed records
    UPDATE t
    SET
 t.[WTBASalespersonBinCode-87721] 				 =   s.[WTBASalespersonBinCode-87721] 		  ,
 t.[WTBASalespersonLocCode-87720] 				 =   s.[WTBASalespersonLocCode-87720] 		  ,
 t.[Name2-4]							 		 =   s.[Name2-4]							  ,
 t.[BilltoCustomerNo-45]				 		 =   s.[BilltoCustomerNo-45]				  ,
 t.[TaxExemptionNo-10015]				 		 =   s.[TaxExemptionNo-10015]				  ,
 t.[HomePage-103]						 		 =   s.[HomePage-103]						  ,
 t.[CustomerDiscGroup-34]				 		 =   s.[CustomerDiscGroup-34]				  ,
 t.[WCSAL04SampleDiscGroupCode-50120]	 		 =   s.[WCSAL04SampleDiscGroupCode-50120]	  ,
 t.[WTBABillHoldBinCode-87570]					 =   s.[WTBABillHoldBinCode-87570]			  ,
 t.[ChainName-18]						 		 =   s.[ChainName-18]						  ,
 t.[Address2-6]						 			 =   s.[Address2-6]								 ,
 t.[FaxNo-84]							 		 =   s.[FaxNo-84]							  ,
 t.[ShiptoCode-12]								 =   s.[ShiptoCode-12]						  ,
 t.[MobilePhoneNo-5061]				 			 =   s.[MobilePhoneNo-5061]						 ,
 t.[PaymentMethodCode-47]				 		 =   s.[PaymentMethodCode-47]				  ,
 t.[PreferredBankAccountCode-288]		 		 =   s.[PreferredBankAccountCode-288]		  ,
 t.[NoSeries-107]						 		 =   s.[NoSeries-107]						  ,
 t.[PrimaryContactNo-5049]						 =   s.[PrimaryContactNo-5049]				  ,
 t.[CFDICustomerName-27007]						 =   s.[CFDICustomerName-27007]					  ,
 t.[WTIAAllocationCode-90101]					 =   s.[WTIAAllocationCode-90101]			  ,
 t.[CountryRegionCode-35]						 =   s.[CountryRegionCode-35]				  ,
 t.[WTBAHistPmtTermsCode-87120]					 =   s.[WTBAHistPmtTermsCode-87120]				 ,
 t.[WTBAHistCreditClassCode-87110]				 =   s.[WTBAHistCreditClassCode-87110]		  ,
 t.[DocumentSendingProfile-11]					 =   s.[DocumentSendingProfile-11]			  ,
 t.[ReminderTermsCode-104]						 =   s.[ReminderTermsCode-104]				  ,
 t.[EMail-102]									 =   s.[EMail-102]							  ,
 t.[WTUSBeverageTaxAreaCode-88400]				 =   s.[WTUSBeverageTaxAreaCode-88400]		  ,
 t.[VATRegistrationNo-86]						 =   s.[VATRegistrationNo-86]				  ,
 t.[Contact-8]									 =   s.[Contact-8]							  ,
 t.[PhoneNo-9]									 =   s.[PhoneNo-9]							  ,
 t.[WTBACorporateName-87000]					 =   s.[WTBACorporateName-87000]			  ,
 t.[GlobalDimension1Code-16]					 =   s.[GlobalDimension1Code-16]			  ,
 t.[ShippingAgentCode-31]						 =   s.[ShippingAgentCode-31]				  ,
 t.[WTBACreditClassCode-87109]					 =   s.[WTBACreditClassCode-87109]			  ,
 t.[WTBARegionCode-87150]						 =   s.[WTBARegionCode-87150]				  ,
 t.[Address-5]									 =   s.[Address-5]							  ,
 t.[ShipmentMethodCode-30]						 =   s.[ShipmentMethodCode-30]				  ,
 t.[PostCode-91]								 =   s.[PostCode-91]						  ,
 t.[SalespersonCode-29]							 =   s.[SalespersonCode-29]						 ,
 t.[BaseCalendarCode-7600]						 =   s.[BaseCalendarCode-7600]				  ,
 t.[City-7]										 =   s.[City-7]									  ,
 t.[CustomerPriceGroup-23]						 =   s.[CustomerPriceGroup-23]				  ,
 t.[WTBASalesRegionCode-87152]					 =   s.[WTBASalesRegionCode-87152]			  ,
 t.[WTBACategoryCode-87020]						 =   s.[WTBACategoryCode-87020]					 ,
 t.[WTBAOrderTypeCode-87007]					 =   s.[WTBAOrderTypeCode-87007]			  ,
 t.[$Company]									 =   s.[$Company]							  ,
 t.[$DeliveredDateTime]							 =   s.[$DeliveredDateTime]						 ,
 t.[AllowLineDisc-7001]							 =   s.[AllowLineDisc-7001]						 ,
 t.[AllowMultiplePostingGroups-175]				 =   s.[AllowMultiplePostingGroups-175]			 ,
 t.[Amount-37]									 =   s.[Amount-37]							  ,
 t.[ApplicationMethod-80]						 =   s.[ApplicationMethod-80]				  ,
 t.[BankCommunication-10017]					 =   s.[BankCommunication-10017]			  ,
 t.[BlockPaymentTolerance-116]					 =   s.[BlockPaymentTolerance-116]			  ,
 t.[Blocked-39]									 =   s.[Blocked-39]								,
 t.[BudgetedAmount-19]							 =   s.[BudgetedAmount-19]					  ,
 t.[CFDIGeneralPublic-27005]					 =   s.[CFDIGeneralPublic-27005]			  ,
 t.[CFDIPeriod-27006]							 =   s.[CFDIPeriod-27006]					  ,
 t.[CheckDateFormat-10018]						 =   s.[CheckDateFormat-10018]				  ,
 t.[CheckDateSeparator-10019]					 =   s.[CheckDateSeparator-10019]			  ,
 t.[CombineShipments-87]						 =   s.[CombineShipments-87]				  ,
 t.[ContactID-9005]								 =   s.[ContactID-9005]							,
 t.[ContactType-5050]							 =   s.[ContactType-5050]					  ,
 t.[CopySelltoAddrtoQteFrom-7601]				 =   s.[CopySelltoAddrtoQteFrom-7601]		  ,
 t.[County-92]									 =   s.[County-92]							  ,
 --t.[CoupledtoCRM-720]							 =   s.[CoupledtoCRM-720]					  ,
 t.[CreditLimitLCY-20]  						 =   s.[CreditLimitLCY-20]  				  ,
 t.[CurrencyId-8001]  							 =   s.[CurrencyId-8001]  					  ,
 t.[CustomerPostingGroup-21]					 =   s.[CustomerPostingGroup-21]			  ,
 t.[DisableSearchbyName-160]					 =   s.[DisableSearchbyName-160]			  ,
 t.[ERCAPMDefaultPPExempt-71276909]				 =   s.[ERCAPMDefaultPPExempt-71276909]			,
 t.[ERCAPMPPLevel-71276910]			 			 =   s.[ERCAPMPPLevel-71276910]					 ,
 t.[ERCAveragePayDays-71276875]		 			 =   s.[ERCAveragePayDays-71276875]				,
 t.[ERCBlindShippingOption-71276899]	 		 =   s.[ERCBlindShippingOption-71276899]		  ,
 t.[ERCChargeSRFreight-71276888]				 =   s.[ERCChargeSRFreight-71276888]			,
 t.[ERCDISRequirePicture-71276918]				 =   s.[ERCDISRequirePicture-71276918]			,
 t.[ERCDISRequireSignature-71276919]			 =   s.[ERCDISRequireSignature-71276919]		,
 t.[ERCDoNotSendReminders-71276882]				 =   s.[ERCDoNotSendReminders-71276882]			,
 t.[ERCEmailCMonPosting-71276884]				 =   s.[ERCEmailCMonPosting-71276884]			,
 t.[ERCEmailInvoiceonPosting-71276883]			 =   s.[ERCEmailInvoiceonPosting-71276883]		,
 t.[ERCEmailPRonPosting-71276885]				 =   s.[ERCEmailPRonPosting-71276885]			,
 t.[ERCEmailShipmentonPosting-71276920]			 =   s.[ERCEmailShipmentonPosting-71276920]		,
 t.[ERCInvoiceConsolidateOption-71276880]		 =   s.[ERCInvoiceConsolidateOption-71276880]	,
 t.[ERCInvoiceDeliveryDOW-71276881]				 =   s.[ERCInvoiceDeliveryDOW-71276881]			,
 t.[ERCSRFreeFreightThreshold-71276889]			 =   s.[ERCSRFreeFreightThreshold-71276889]		,
 t.[ERCSRPaymentType-71276891]					 =   s.[ERCSRPaymentType-71276891]				,
 t.[ERCStatementDeliveryOption-71276876]		 =   s.[ERCStatementDeliveryOption-71276876],
 t.[ExcludefromPmtPractices-134]				 =   s.[ExcludefromPmtPractices-134]			,
 t.[GenBusPostingGroup-88]						 =   s.[GenBusPostingGroup-88]					,
 t.[IntrastatPartnerType-133]					 =   s.[IntrastatPartnerType-133]				,
 t.[InvoiceCopies-40]							 =   s.[InvoiceCopies-40]						,
 t.[InvoiceDiscCode-33]							 =   s.[InvoiceDiscCode-33]						,
 t.[LastDateModified-54]						 =   s.[LastDateModified-54]					,
 t.[LastModifiedDateTime-53]					 =   s.[LastModifiedDateTime-53]				,
 t.[LastStatementNo-41]							 =   s.[LastStatementNo-41]						,
 t.[LocationCode-83]							 =   s.[LocationCode-83]						,
 t.[Name-2]										 =   s.[Name-2]									,
 t.[No-1]										 =   s.[No-1]									,
 t.[PartnerType-132]							 =   s.[PartnerType-132]						,
 t.[PaymentMethodId-8004]						 =   s.[PaymentMethodId-8004]					,
 t.[PaymentTermsCode-27]						 =   s.[PaymentTermsCode-27]					,
 t.[PaymentTermsId-8002]						 =   s.[PaymentTermsId-8002]					,
 t.[Prepayment-124]								 =   s.[Prepayment-124]							,
 t.[PriceCalculationMethod-7000]				 =   s.[PriceCalculationMethod-7000]			,
 t.[PricesIncludingVAT-82]						 =   s.[PricesIncludingVAT-82]					,
 t.[PrintStatements-42]							 =   s.[PrintStatements-42]						,
 t.[Priority-46]								 =   s.[Priority-46]							,
 t.[PrivacyBlocked-150]							 =   s.[PrivacyBlocked-150]						,
 t.[Reserve-115]								 =   s.[Reserve-115]							,
 t.[SearchName-3]								 =   s.[SearchName-3]							,
 t.[ShipmentMethodId-8003]						 =   s.[ShipmentMethodId-8003]					,
 t.[ShippingAdvice-5750]						 =   s.[ShippingAdvice-5750]					,
 t.[StatisticsGroup-26]							 =   s.[StatisticsGroup-26]						,
 t.[SystemCreatedAt-2000000001]					 =   s.[SystemCreatedAt-2000000001]				,
 t.[SystemCreatedBy-2000000002]					 =   s.[SystemCreatedBy-2000000002]				,
 t.[SystemModifiedAt-2000000003]				 =   s.[SystemModifiedAt-2000000003]			,
 t.[TaxAreaID-9003]								 =   s.[TaxAreaID-9003]							,
 t.[TaxIdentificationType-14020]				 =   s.[TaxIdentificationType-14020]			,
 t.[TaxLiable-109]								 =   s.[TaxLiable-109]							,
 t.[TerritoryCode-15]							 =   s.[TerritoryCode-15]						,
 t.[UseGLNinElectronicDocument-95]				 =   s.[UseGLNinElectronicDocument-95]			,
 t.[ValidateEUVatRegNo-7602]					 =   s.[ValidateEUVatRegNo-7602]				,
 t.[WCAR06SalesCommission-50100]				 =   s.[WCAR06SalesCommission-50100]			,
 t.[WCINT01ExcludefromExport-50220]				 =   s.[WCINT01ExcludefromExport-50220]			,
 t.[WCSAL17PersonalGuarantee-50050]				 =   s.[WCSAL17PersonalGuarantee-50050]			,
 t.[WCTEWPrestige-50000]						 =   s.[WCTEWPrestige-50000]					,
 t.[WTBAOnPremise-87030]						 =   s.[WTBAOnPremise-87030]					,
 t.[WTIAAllocate-90100]							 =   s.[WTIAAllocate-90100]						,
 t.[WTUSExportCustomer-88650]					 =   s.[WTUSExportCustomer-88650]				,
 
 t.[timestamp-0]								 =   s.[timestamp-0]	,
       t.[UpdateDate] = GETDATE()
    FROM [DataWH].[dbo].[Customer18] t
    JOIN [Rahat_LH].[dbo].[Customer18] s
        ON t.[systemId-2000000000] = s.[systemId-2000000000]

		where 
 ISNULL(t.[WTBASalespersonBinCode-87721] 			  , '')  <>  ISNULL(  s.[WTBASalespersonBinCode-87721] 		           ,'')  			  OR
 ISNULL(t.[WTBASalespersonLocCode-87720] 			  , '')  <>  ISNULL(  s.[WTBASalespersonLocCode-87720] 		           ,'')	 			  OR
 ISNULL(t.[Name2-4]							 		  , '')  <>  ISNULL(  s.[Name2-4]							           ,'')	 			  OR
 ISNULL(t.[BilltoCustomerNo-45]				 		  , '')  <>  ISNULL(  s.[BilltoCustomerNo-45]				           ,'')	 			  OR
 ISNULL(t.[TaxExemptionNo-10015]				 	  , '')  <>  ISNULL(  s.[TaxExemptionNo-10015]				           ,'')	 			  OR
 ISNULL(t.[HomePage-103]						 	  , '')  <>  ISNULL(  s.[HomePage-103]						           ,'')	 			  OR
 ISNULL(t.[CustomerDiscGroup-34]				 	  , '')  <>  ISNULL(  s.[CustomerDiscGroup-34]				           ,'')	 			  OR
 ISNULL(t.[WCSAL04SampleDiscGroupCode-50120]	 	  , '')  <>  ISNULL(  s.[WCSAL04SampleDiscGroupCode-50120]	           ,'')	 			  OR
 ISNULL(t.[WTBABillHoldBinCode-87570]				  , '')  <>  ISNULL(  s.[WTBABillHoldBinCode-87570]			           ,'')	 			  OR
 ISNULL(t.[ChainName-18]						 	  , '')  <>  ISNULL(  s.[ChainName-18]						           ,'')	 			  OR
 ISNULL(t.[Address2-6]						 		  , '')  <>  ISNULL(  s.[Address2-6]						           ,'')	 			  OR
 ISNULL(t.[FaxNo-84]							 	  , '')  <>  ISNULL(  s.[FaxNo-84]							           ,'')	 			  OR
 ISNULL(t.[ShiptoCode-12]							  , '')  <>  ISNULL(  s.[ShiptoCode-12]						           ,'')	 			  OR
 ISNULL(t.[MobilePhoneNo-5061]				 		  , '')  <>  ISNULL(  s.[MobilePhoneNo-5061]				           ,'')	 			  OR
 ISNULL(t.[PaymentMethodCode-47]				 	  , '')  <>  ISNULL(  s.[PaymentMethodCode-47]				           ,'')	 			  OR
 ISNULL(t.[PreferredBankAccountCode-288]		 	  , '')  <>  ISNULL(  s.[PreferredBankAccountCode-288]		           ,'')	 			  OR
 ISNULL(t.[NoSeries-107]						 	  , '')  <>  ISNULL(  s.[NoSeries-107]						           ,'')	 			  OR
 ISNULL(t.[PrimaryContactNo-5049]					  , '')  <>  ISNULL(  s.[PrimaryContactNo-5049]				           ,'')	 			  OR
 ISNULL(t.[CFDICustomerName-27007]					  , '')  <>  ISNULL(  s.[CFDICustomerName-27007]			           ,'')	 			  OR
 ISNULL(t.[WTIAAllocationCode-90101]				  , '')  <>  ISNULL(  s.[WTIAAllocationCode-90101]			           ,'')	 			  OR
 ISNULL(t.[CountryRegionCode-35]					  , '')  <>  ISNULL(  s.[CountryRegionCode-35]				           ,'')	 			  OR
 ISNULL(t.[WTBAHistPmtTermsCode-87120]				  , '')  <>  ISNULL(  s.[WTBAHistPmtTermsCode-87120]		           ,'')	 			  OR
 ISNULL(t.[WTBAHistCreditClassCode-87110]			  , '')  <>  ISNULL(  s.[WTBAHistCreditClassCode-87110]		           ,'')	 			  OR
 ISNULL(t.[DocumentSendingProfile-11]				  , '')  <>  ISNULL(  s.[DocumentSendingProfile-11]			           ,'')	 			  OR
 ISNULL(t.[ReminderTermsCode-104]					  , '')  <>  ISNULL(  s.[ReminderTermsCode-104]				           ,'')	 			  OR
 ISNULL(t.[EMail-102]								  , '')  <>  ISNULL(  s.[EMail-102]							           ,'')	 			  OR
 ISNULL(t.[WTUSBeverageTaxAreaCode-88400]			  , '')  <>  ISNULL(  s.[WTUSBeverageTaxAreaCode-88400]		           ,'')	 			  OR
 ISNULL(t.[VATRegistrationNo-86]					  , '')  <>  ISNULL(  s.[VATRegistrationNo-86]				           ,'')	 			  OR
 ISNULL(t.[Contact-8]								  , '')  <>  ISNULL(  s.[Contact-8]							           ,'')	 			  OR
 ISNULL(t.[PhoneNo-9]								  , '')  <>  ISNULL(  s.[PhoneNo-9]							           ,'')	 			  OR
 ISNULL(t.[WTBACorporateName-87000]					  , '')  <>  ISNULL(  s.[WTBACorporateName-87000]			           ,'')	 			  OR
 ISNULL(t.[GlobalDimension1Code-16]					  , '')  <>  ISNULL(  s.[GlobalDimension1Code-16]			           ,'')	 			  OR
 ISNULL(t.[ShippingAgentCode-31]					  , '')  <>  ISNULL(  s.[ShippingAgentCode-31]				           ,'')	 			  OR
 ISNULL(t.[WTBACreditClassCode-87109]				  , '')  <>  ISNULL(  s.[WTBACreditClassCode-87109]			           ,'')	 			  OR
 ISNULL(t.[WTBARegionCode-87150]					  , '')  <>  ISNULL(  s.[WTBARegionCode-87150]				           ,'')	 			  OR
 ISNULL(t.[Address-5]								  , '')  <>  ISNULL(  s.[Address-5]							           ,'')	 			  OR
 ISNULL(t.[ShipmentMethodCode-30]					  , '')  <>  ISNULL(  s.[ShipmentMethodCode-30]				           ,'')	 			  OR
 ISNULL(t.[PostCode-91]								  , '')  <>  ISNULL(  s.[PostCode-91]						           ,'')	 			  OR
 ISNULL(t.[SalespersonCode-29]						  , '')  <>  ISNULL(  s.[SalespersonCode-29]				           ,'')	 			  OR
 ISNULL(t.[BaseCalendarCode-7600]					  , '')  <>  ISNULL(  s.[BaseCalendarCode-7600]				           ,'')	 			  OR
 ISNULL(t.[City-7]									  , '')  <>  ISNULL(  s.[City-7]							           ,'')	 			  OR
 ISNULL(t.[CustomerPriceGroup-23]					  , '')  <>  ISNULL(  s.[CustomerPriceGroup-23]				           ,'')	 			  OR
 ISNULL(t.[WTBASalesRegionCode-87152]				  , '')  <>  ISNULL(  s.[WTBASalesRegionCode-87152]			           ,'')	 			  OR
 ISNULL(t.[WTBACategoryCode-87020]					  , '')  <>  ISNULL(  s.[WTBACategoryCode-87020]			           ,'')	 			  OR
 ISNULL(t.[WTBAOrderTypeCode-87007]					  , '')  <>  ISNULL(  s.[WTBAOrderTypeCode-87007]			           ,'')	 			  OR
 ISNULL(t.[$Company]								  , '')  <>  ISNULL(  s.[$Company]							           ,'')	 			  OR
 ISNULL(t.[$DeliveredDateTime]						  , '')  <>  ISNULL(  s.[$DeliveredDateTime]					           ,'')	 		  OR
 ISNULL(t.[AllowLineDisc-7001]						  , '')  <>  ISNULL(  s.[AllowLineDisc-7001]					           ,'')	 		  OR
 ISNULL(t.[AllowMultiplePostingGroups-175]			  , '')  <>  ISNULL(  s.[AllowMultiplePostingGroups-175]		           ,'')	 		  OR
 ISNULL(t.[Amount-37]								  , '')  <>  ISNULL(  s.[Amount-37]							           ,'')	 			  OR
 ISNULL(t.[ApplicationMethod-80]					  , '')  <>  ISNULL(  s.[ApplicationMethod-80]				           ,'')	 			  OR
 ISNULL(t.[BankCommunication-10017]					  , '')  <>  ISNULL(  s.[BankCommunication-10017]			           ,'')	 			  OR
 ISNULL(t.[BlockPaymentTolerance-116]				  , '')  <>  ISNULL(  s.[BlockPaymentTolerance-116]			           ,'')	 			  OR
 ISNULL(t.[Blocked-39]								  , '')  <>  ISNULL(  s.[Blocked-39]						           ,'')	 			  OR
 ISNULL(t.[BudgetedAmount-19]						  , '')  <>  ISNULL(  s.[BudgetedAmount-19]					           ,'')	 			  OR
 ISNULL(t.[CFDIGeneralPublic-27005]					  , '')  <>  ISNULL(  s.[CFDIGeneralPublic-27005]			           ,'')	 			  OR
 ISNULL(t.[CFDIPeriod-27006]						  , '')  <>  ISNULL(  s.[CFDIPeriod-27006]					           ,'')	 			  OR
 ISNULL(t.[CheckDateFormat-10018]					  , '')  <>  ISNULL(  s.[CheckDateFormat-10018]				           ,'')	 			  OR
 ISNULL(t.[CheckDateSeparator-10019]				  , '')  <>  ISNULL(  s.[CheckDateSeparator-10019]			           ,'')	 			  OR
 ISNULL(t.[CombineShipments-87]						  , '')  <>  ISNULL(  s.[CombineShipments-87]				           ,'')	 			  OR
 ISNULL(t.[ContactID-9005]							  , '')  <>  ISNULL(  s.[ContactID-9005]					           ,'')	 			  OR
 ISNULL(t.[ContactType-5050]						  , '')  <>  ISNULL(  s.[ContactType-5050]					           ,'')	 			  OR
 ISNULL(t.[CopySelltoAddrtoQteFrom-7601]			  , '')  <>  ISNULL(  s.[CopySelltoAddrtoQteFrom-7601]		           ,'')	 			  OR
 ISNULL(t.[County-92]								  , '')  <>  ISNULL(  s.[County-92]							           ,'')	 			  OR
 --ISNULL(t.[CoupledtoCRM-720]						  , '')  <>  ISNULL(  s.[CoupledtoCRM-720]					           ,'')	 			  OR
 ISNULL(t.[CreditLimitLCY-20]  						  , '')  <>  ISNULL(  s.[CreditLimitLCY-20]  				           ,'')	 			  OR
 ISNULL(t.[CurrencyId-8001]  						  , '')  <>  ISNULL(  s.[CurrencyId-8001]  					           ,'')	 			  OR
 ISNULL(t.[CustomerPostingGroup-21]					  , '')  <>  ISNULL(  s.[CustomerPostingGroup-21]			           ,'')	 			  OR
 ISNULL(t.[DisableSearchbyName-160]					  , '')  <>  ISNULL(  s.[DisableSearchbyName-160]			           ,'')	 			  OR
 ISNULL(t.[ERCAPMDefaultPPExempt-71276909]			  , '')  <>  ISNULL(  s.[ERCAPMDefaultPPExempt-71276909]	           ,'')	 			  OR
 ISNULL(t.[ERCAPMPPLevel-71276910]			 		  , '')  <>  ISNULL(  s.[ERCAPMPPLevel-71276910]				           ,'')			  OR
 ISNULL(t.[ERCAveragePayDays-71276875]		 		  , '')  <>  ISNULL(  s.[ERCAveragePayDays-71276875]			           ,'')			  OR
 ISNULL(t.[ERCBlindShippingOption-71276899]	 		  , '')  <>  ISNULL(  s.[ERCBlindShippingOption-71276899]		           ,'')			  OR
 ISNULL(t.[ERCChargeSRFreight-71276888]				  , '')  <>  ISNULL(  s.[ERCChargeSRFreight-71276888]			           ,'')			  OR
 ISNULL(t.[ERCDISRequirePicture-71276918]			  , '')  <>  ISNULL(  s.[ERCDISRequirePicture-71276918]			           ,'')			  OR
 ISNULL(t.[ERCDISRequireSignature-71276919]			  , '')  <>  ISNULL(  s.[ERCDISRequireSignature-71276919]		           ,'')			  OR
 ISNULL(t.[ERCDoNotSendReminders-71276882]			  , '')  <>  ISNULL(  s.[ERCDoNotSendReminders-71276882]		           ,'')			  OR
 ISNULL(t.[ERCEmailCMonPosting-71276884]			  , '')  <>  ISNULL(  s.[ERCEmailCMonPosting-71276884]			           ,'')			  OR
 ISNULL(t.[ERCEmailInvoiceonPosting-71276883]		  , '')  <>  ISNULL(  s.[ERCEmailInvoiceonPosting-71276883]		           ,'')			  OR
 ISNULL(t.[ERCEmailPRonPosting-71276885]			  , '')  <>  ISNULL(  s.[ERCEmailPRonPosting-71276885]			           ,'')			  OR
 ISNULL(t.[ERCEmailShipmentonPosting-71276920]		  , '')  <>  ISNULL(  s.[ERCEmailShipmentonPosting-71276920]	           ,'')			  OR
 ISNULL(t.[ERCInvoiceConsolidateOption-71276880]	  , '')  <>  ISNULL(  s.[ERCInvoiceConsolidateOption-71276880]	           ,'')			  OR
 ISNULL(t.[ERCInvoiceDeliveryDOW-71276881]			  , '')  <>  ISNULL(  s.[ERCInvoiceDeliveryDOW-71276881]		           ,'')			  OR
 ISNULL(t.[ERCSRFreeFreightThreshold-71276889]		  , '')  <>  ISNULL(  s.[ERCSRFreeFreightThreshold-71276889]	           ,'')			  OR
 ISNULL(t.[ERCSRPaymentType-71276891]				  , '')  <>  ISNULL(  s.[ERCSRPaymentType-71276891]				           ,'')			  OR
 ISNULL(t.[ERCStatementDeliveryOption-71276876]		  , '')  <>  ISNULL(  s.[ERCStatementDeliveryOption-71276876]              ,'')			  OR
 ISNULL(t.[ExcludefromPmtPractices-134]				  , '')  <>  ISNULL(  s.[ExcludefromPmtPractices-134]			           ,'')			  OR
 ISNULL(t.[GenBusPostingGroup-88]					  , '')  <>  ISNULL(  s.[GenBusPostingGroup-88]					           ,'')			  OR
 ISNULL(t.[IntrastatPartnerType-133]				  , '')  <>  ISNULL(  s.[IntrastatPartnerType-133]				           ,'')			  OR
 ISNULL(t.[InvoiceCopies-40]						  , '')  <>  ISNULL(  s.[InvoiceCopies-40]						           ,'')			  OR
 ISNULL(t.[InvoiceDiscCode-33]						  , '')  <>  ISNULL(  s.[InvoiceDiscCode-33]					           ,'')			  OR
 ISNULL(t.[LastDateModified-54]						  , '')  <>  ISNULL(  s.[LastDateModified-54]					           ,'')			  OR
 ISNULL(t.[LastModifiedDateTime-53]					  , '')  <>  ISNULL(  s.[LastModifiedDateTime-53]				           ,'')			  OR
 ISNULL(t.[LastStatementNo-41]						  , '')  <>  ISNULL(  s.[LastStatementNo-41]					           ,'')	  		  OR
 ISNULL(t.[LocationCode-83]							  , '')  <>  ISNULL(  s.[LocationCode-83]						           ,'')	  		  OR
 ISNULL(t.[Name-2]									  , '')  <>  ISNULL(  s.[Name-2]								           ,'')	  		  OR
 ISNULL(t.[No-1]									  , '')  <>  ISNULL(  s.[No-1]									           ,'')	  		  OR
 ISNULL(t.[PartnerType-132]							  , '')  <>  ISNULL(  s.[PartnerType-132]						           ,'')	  		  OR
 ISNULL(t.[PaymentMethodId-8004]					  , '')  <>  ISNULL(  s.[PaymentMethodId-8004]					           ,'')	  		  OR
 ISNULL(t.[PaymentTermsCode-27]						  , '')  <>  ISNULL(  s.[PaymentTermsCode-27]					           ,'')	  		  OR
 ISNULL(t.[PaymentTermsId-8002]						  , '')  <>  ISNULL(  s.[PaymentTermsId-8002]					           ,'')	  		  OR
 ISNULL(t.[Prepayment-124]							  , '')  <>  ISNULL(  s.[Prepayment-124]						           ,'')	  		  OR
 ISNULL(t.[PriceCalculationMethod-7000]				  , '')  <>  ISNULL(  s.[PriceCalculationMethod-7000]			           ,'')	  		  OR
 ISNULL(t.[PricesIncludingVAT-82]					  , '')  <>  ISNULL(  s.[PricesIncludingVAT-82]					           ,'')	  		  OR
 ISNULL(t.[PrintStatements-42]						  , '')  <>  ISNULL(  s.[PrintStatements-42]					           ,'')	  		  OR
 ISNULL(t.[Priority-46]								  , '')  <>  ISNULL(  s.[Priority-46]							           ,'')	  		  OR
 ISNULL(t.[PrivacyBlocked-150]						  , '')  <>  ISNULL(  s.[PrivacyBlocked-150]					           ,'')	  		  OR
 ISNULL(t.[Reserve-115]								  , '')  <>  ISNULL(  s.[Reserve-115]							           ,'')	  		  OR
 ISNULL(t.[SearchName-3]							  , '')  <>  ISNULL(  s.[SearchName-3]							           ,'')	  		  OR
 ISNULL(t.[ShipmentMethodId-8003]					  , '')  <>  ISNULL(  s.[ShipmentMethodId-8003]					           ,'')	  		  OR
 ISNULL(t.[ShippingAdvice-5750]						  , '')  <>  ISNULL(  s.[ShippingAdvice-5750]					           ,'')	  		  OR
 ISNULL(t.[StatisticsGroup-26]						  , '')  <>  ISNULL(  s.[StatisticsGroup-26]					           ,'')	  		  OR
 ISNULL(t.[SystemCreatedAt-2000000001]				  , '')  <>  ISNULL(  s.[SystemCreatedAt-2000000001]			           ,'')	  		  OR
 ISNULL(t.[SystemCreatedBy-2000000002]				  , '')  <>  ISNULL(  s.[SystemCreatedBy-2000000002]			           ,'')	  		  OR
 ISNULL(t.[SystemModifiedAt-2000000003]				  , '')  <>  ISNULL(  s.[SystemModifiedAt-2000000003]			           ,'')	  		  OR
 ISNULL(t.[TaxAreaID-9003]							  , '')  <>  ISNULL(  s.[TaxAreaID-9003]						           ,'')	  		  OR
 ISNULL(t.[TaxIdentificationType-14020]				  , '')  <>  ISNULL(  s.[TaxIdentificationType-14020]			           ,'')	  		  OR
 ISNULL(t.[TaxLiable-109]							  , '')  <>  ISNULL(  s.[TaxLiable-109]							           ,'')	  		  OR
 ISNULL(t.[TerritoryCode-15]						  , '')  <>  ISNULL(  s.[TerritoryCode-15]						           ,'')	  		  OR
 ISNULL(t.[UseGLNinElectronicDocument-95]			  , '')  <>  ISNULL(  s.[UseGLNinElectronicDocument-95]			           ,'')	  		  OR
 ISNULL(t.[ValidateEUVatRegNo-7602]					  , '')  <>  ISNULL(  s.[ValidateEUVatRegNo-7602]				           ,'')	  		  OR
 ISNULL(t.[WCAR06SalesCommission-50100]				  , '')  <>  ISNULL(  s.[WCAR06SalesCommission-50100]			           ,'')	  		  OR
 ISNULL(t.[WCINT01ExcludefromExport-50220]			  , '')  <>  ISNULL(  s.[WCINT01ExcludefromExport-50220]		           ,'')	  		  OR
 ISNULL(t.[WCSAL17PersonalGuarantee-50050]			  , '')  <>  ISNULL(  s.[WCSAL17PersonalGuarantee-50050]		           ,'')	  		  OR
 ISNULL(t.[WCTEWPrestige-50000]						  , '')  <>  ISNULL(  s.[WCTEWPrestige-50000]					           ,'')	  		  OR
 ISNULL(t.[WTBAOnPremise-87030]						  , '')  <>  ISNULL(  s.[WTBAOnPremise-87030]					           ,'')	  		  OR
 ISNULL(t.[WTIAAllocate-90100]						  , '')  <>  ISNULL(  s.[WTIAAllocate-90100]					           ,'')	  		  OR
 ISNULL(t.[WTUSExportCustomer-88650]				  , '')  <>  ISNULL(  s.[WTUSExportCustomer-88650]				           ,'')	  		  OR
 
 ISNULL(t.[timestamp-0]								  , '')  <>  ISNULL(  s.[timestamp-0]	           ,'');								

     -- Step 3: Delete missing records
    DELETE FROM [DataWH].[dbo].[Customer18]
    WHERE [systemId-2000000000] NOT IN (
        SELECT [systemId-2000000000] FROM [Rahat_LH].[dbo].[Customer18]
    );
END;