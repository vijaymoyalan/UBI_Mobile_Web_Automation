Feature: Mobile UI for BBPS Journey

@TestCaseKey=UDB-T28089	@Automatable @Smoke @RedmiNote9Pro @Test
  Scenario: Verify that user is able to Click and pay Gas bills under Utilities - Gas Bill
  	Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user is on page BharatPayGas clicks on Gas
    Given user is on page BharatPayGas clicks on Search
    Given user is on page BharatPayGas and types Mahanagar on Search
    Given user is on page BharatPayGas clicks on SelectBiller
    Given user is on page BharatPayGas and types 210000875132 on CANumber
    #Given user is on page BharatPayGas clicks on PendingBillsCheckBox
    Given user is on page BharatPayGas clicks on Continue
    Given user is on page BharatPayGas and enters 210 as AmountText
    Given user is on page BharatPayGas clicks on ContinuePayment
    Given user is on page BharatPayGas clicks on TPIN
    When user is on page BharatPayGas and types 0852 on TpinText
    When user is on page BharatPayGas clicks on TPINContinue
    When user is on page BharatPayGas and verifies for Completed PaymentConfirmation
    When user scrolls down to "Having an issue?"
    

@TestCaseKey=UDB-T28090	@Automatable @Smoke @RedmiNote9Pro @Test
	Scenario: Verify that user is able to Click and pay Electricity bills under Utilities - Electricity Bill
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user is on page BharatPayElectricity clicks on Electricity
    Given user is on page BharatPayElectricity clicks on Search
    Given user is on page BharatPayElectricity and types Adani on Search
    Given user is on page BharatPayElectricity clicks on SelectBiller
    Given user is on page BharatPayElectricity and types 212345678 on ConsumerNumber
    #Given user is on page BharatPayElectricity clicks on PendingBillsCheckBox
    Given user is on page BharatPayElectricity clicks on Continue
    Given user is on page BharatPayElectricity clicks on ContinuePayment
    Given user is on page BharatPayElectricity clicks on TPIN
    When user is on page BharatPayElectricity and types 0852 on TpinText
    When user is on page BharatPayElectricity clicks on TPINContinue
    #Then user verifies message on page BharatPayElectricity is Technical Error on TechnicalAlert
    When user is on page BharatPayElectricity and verifies for Completed PaymentConfirmation
    When user scrolls down to "Having an issue?"
    
    
@TestCaseKey=UDB-T28091	@Automatable @Smoke @RedmiNote9Pro
	Scenario: Verify that user is able to Click and pay Water bills under Utilities - Water Bill
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    #When user scrolls down to "Water" -- step to skipp
    Given user is on page BharatPayWater clicks on Water
    Given user is on page BharatPayWater clicks on Search
    Given user is on page BharatPayWater and types Pimpri on Search
    Given user is on page BharatPayWater clicks on SelectBiller
    Given user is on page BharatPayWater and types 26789365 on ConsumerID
    #Given user is on page BharatPayWater clicks on PendingBillsCheckBox
    Given user is on page BharatPayWater clicks on Continue
    Given user is on page BharatPayGas and enters 210 as AmountText
    Given user is on page BharatPayWater clicks on ContinuePayment
    Given user is on page BharatPayWater clicks on TPIN
    When user is on page BharatPayWater and types 0852 on TpinText
    When user is on page BharatPayWater clicks on TPINContinue
    When user is on page BharatPayWater and verifies for Completed PaymentConfirmation
    When user scrolls down to "Having an issue?"
    
@TestCaseKey=UDB-T28092	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that user is able to Click and pay Cable TV bills under Utilities - cable TV
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user is on page BharatPayCableTV clicks on CableTV
    Given user is on page BharatPayCableTV clicks on Search
    Given user is on page BharatPayCableTV and types Hathway on Search
    Given user is on page BharatPayCableTV clicks on SelectBiller
    Given user is on page BharatPayCableTV and types 8876545632 on ConsumerID
    #Given user is on page BharatPayCableTV clicks on PendingBillsCheckBox
    Given user is on page BharatPayCableTV clicks on Continue
    Given user is on page BharatPayCableTV clicks on ContinuePayment
    Given user is on page BharatPayCableTV clicks on TPIN
    When user is on page BharatPayCableTV and types 0852 on TpinText
    When user is on page BharatPayCableTV clicks on TPINContinue
    When user is on page BharatPayCableTV and verifies for Completed PaymentConfirmation
    When user scrolls down to "Having an issue?"
    
    
@TestCaseKey=UDB-T28093	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that user is able to Click and pay Broadband bills under Utilities - Broadband
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user is on page BharatPayBroadband clicks on Broadband
    Given user is on page BharatPayBroadband clicks on Search
    Given user is on page BharatPayBroadband and types Connect on Search
    Given user is on page BharatPayBroadband clicks on SelectBiller
    Given user is on page BharatPayBroadband and types 1725077540 on DirectoryNumber
    #Given user is on page BharatPayBroadband clicks on PendingBillsCheckBox
    Given user is on page BharatPayBroadband clicks on Continue
    Given user is on page BharatPayBroadband clicks on ContinuePayment
    Given user is on page BharatPayBroadband clicks on TPIN
    When user is on page BharatPayBroadband and types 0852 on TpinText
    When user is on page BharatPayBroadband clicks on TPINContinue
    When user is on page BharatPayBroadband and verifies for Completed PaymentConfirmation
    When user scrolls down to "Having an issue?"
    
    
@TestCaseKey=UDB-T28094	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that user is able to Click and pay Landline Postpaid bills under Utilities - Landline Postpaid
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user is on page BharatPayLandline clicks on LandlinePostpaid
    Given user is on page BharatPayLandline clicks on Search
    Given user is on page BharatPayLandline and types Nigam Limited - Mumbai on Search
    Given user is on page BharatPayLandline clicks on SelectBiller
    Given user is on page BharatPayLandline and types 27450249 on TelephoneNumber
    Given user is on page BharatPayLandline and types 2031737434 on AccountNumber
    #Given user is on page BharatPayLandline clicks on PendingBillsCheckBox
    Given user is on page BharatPayLandline clicks on Continue
    Given user is on page BharatPayLandline clicks on ContinuePayment
    Given user is on page BharatPayLandline clicks on TPIN
    When user is on page BharatPayLandline and types 0852 on TpinText
    When user is on page BharatPayLandline clicks on TPINContinue
    When user is on page BharatPayLandline and verifies for Completed PaymentConfirmation
    When user scrolls down to "Having an issue?"
    
    
@TestCaseKey=UDB-T28096	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that user is able to Click and do Recharge Mobile under Recharge - DTH
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "DTH"
    Given user is on page BharatPayDTH clicks on DTH
    Given user is on page BharatPayDTH clicks on Search
    Given user is on page BharatPayDTH and types Tata Sky on Search
    Given user is on page BharatPayDTH clicks on SelectBiller
    Given user is on page BharatPayDTH and types 9028255474 on SubscriberNumber
    Given user is on page BharatPayDTH clicks on Continue
    Given user is on page BharatPayDTH clicks on ContinuePayment
    Given user is on page BharatPayDTH clicks on TPIN
    When user is on page BharatPayDTH and types 0852 on TpinText
    When user is on page BharatPayDTH clicks on TPINContinue
    When user is on page BharatPayDTH and verifies for Completed PaymentConfirmation
    When user scrolls down to "Having an issue?"
    

@TestCaseKey=UDB-T28097	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that user is able to access Recharge Module
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recharge"
    Then user verifies message on page BharatPayRecharge is Recharge on RechargeSection
    
@TestCaseKey=UDB-T28099	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that user is able to Click and do  Recharge Fastag under Recharge - Fastag
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Fastag"
    Given user is on page BharatPayFastag clicks on Fastag
    Given user is on page BharatPayFastag clicks on Search
    Given user is on page BharatPayFastag and types Indian Highways Management on Search
    Given user is on page BharatPayFastag clicks on SelectBiller
    Given user is on page BharatPayFastag and types MH01AB1234 on VehicleNumber
    Given user is on page BharatPayFastag clicks on Continue
    Given user is on page BharatPayFastag clicks on ContinuePayment
    Given user is on page BharatPayFastag clicks on TPIN
    When user is on page BharatPayFastag and types 0852 on TpinText
    When user is on page BharatPayFastag clicks on TPINContinue
    When user is on page BharatPayFastag and verifies for Completed PaymentConfirmation
    When user scrolls down to "Having an issue?"
    
@TestCaseKey=UDB-T28100	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that user is able to Click and do Recharge Subscription under Recharge - Subscription
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recharge"
    When user scrolls down to "Financial Services"
    Given user is on page BharatPaySubscription clicks on Subscription
    Given user is on page BharatPaySubscription clicks on Search
    Given user is on page BharatPaySubscription and types Shemaroo Enter on Search
    Given user is on page BharatPaySubscription clicks on SelectBiller
    Given user is on page BharatPaySubscription and types vmoyalanubi@gmail.com on EmailID
    Given user is on page BharatPaySubscription clicks on Continue
    Given user is on page BharatPaySubscription clicks on ContinuePayment
    Given user is on page BharatPaySubscription clicks on TPIN
    When user is on page BharatPaySubscription and types 0852 on TpinText
    When user is on page BharatPaySubscription clicks on TPINContinue
    When user is on page BharatPaySubscription and verifies for Completed PaymentConfirmation
    When user scrolls down to "Having an issue?"
    
@TestCaseKey=UDB-T28101	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that user is able to access Financial services Module
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recurring Deposit"
    Then user verifies message on page BharatPayFinancial is Financial Services on FinancialSection
    

@TestCaseKey=UDB-T28102	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that user is able to Click and access CreditCard under Financial services - CreditCard
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Financial Services"
    When user scrolls down to "Credit Card"
    Given user is on page BharatPayFinancialCreditCard clicks on CreditCard
    Given user is on page BharatPayFinancialCreditCard clicks on Search
    Given user is on page BharatPayFinancialCreditCard and types BoB Credit on Search
    Given user is on page BharatPayFinancialCreditCard clicks on SelectBiller
    Given user is on page BharatPayFinancialCreditCard and types 8605405600 on RegisterMobileNo
    Given user is on page BharatPayFinancialCreditCard and types 2021 on CCNumber
    #Given user is on page BharatPayFinancialCreditCard clicks on PendingBillsCheckBox
    Given user is on page BharatPayFinancialCreditCard clicks on Continue
    Given user is on page BharatPayFinancialCreditCard clicks on ContinuePayment
    Given user is on page BharatPayFinancialCreditCard clicks on TPIN
    When user is on page BharatPayFinancialCreditCard and types 0852 on TpinText
    When user is on page BharatPayFinancialCreditCard clicks on TPINContinue
    When user is on page BharatPayFinancialCreditCard and verifies for Completed PaymentConfirmation
    When user scrolls down to "Having an issue?"
    

@TestCaseKey=UDB-T28103	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that user is able to Click and access Recurring Deposit under Financial services-Recurring Deposit
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Financial Services"
    When user scrolls down to "Recurring Deposit"
    Given user is on page BharatPayFinancialRecurringDeposit clicks on RecurringDeposit
    Given user is on page BharatPayFinancialRecurringDeposit clicks on Search
    Given user is on page BharatPayFinancialRecurringDeposit and types Sakthi on Search
    Given user is on page BharatPayFinancialRecurringDeposit clicks on SelectBiller
    Given user is on page BharatPayFinancialRecurringDeposit and types CJ1201 on SubscriptionID
    #Given user is on page BharatPayFinancialRecurringDeposit clicks on PendingBillsCheckBox
    Given user is on page BharatPayFinancialRecurringDeposit clicks on Continue
    Given user is on page BharatPayFinancialRecurringDeposit clicks on ContinuePayment
    Given user is on page BharatPayFinancialRecurringDeposit clicks on TPIN
    When user is on page BharatPayFinancialRecurringDeposit and types 0852 on TpinText
    When user is on page BharatPayFinancialRecurringDeposit clicks on TPINContinue
    When user is on page BharatPayFinancialRecurringDeposit and verifies for Completed PaymentConfirmation
    When user scrolls down to "Having an issue?"
    
    
@TestCaseKey=UDB-T28107	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that user is able to Click and access Municipal Services under Financial services - Municipal Services
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Financial Services"
    When user scrolls down to "Municipal Taxes"
    Given user is on page BharatPayFinancialMunicipalTaxes clicks on MunicipalTaxes
    Given user is on page BharatPayFinancialMunicipalTaxes clicks on Search
    Given user is on page BharatPayFinancialMunicipalTaxes and types Gulbarga on Search
    Given user is on page BharatPayFinancialMunicipalTaxes clicks on SelectBiller
    Given user is on page BharatPayFinancialMunicipalTaxes and types 5674 on PropertyID
    #Given user is on page BharatPayFinancialMunicipalTaxes clicks on PendingBillsCheckBox
    Given user is on page BharatPayFinancialMunicipalTaxes clicks on Continue
    Given user is on page BharatPayFinancialMunicipalTaxes clicks on ContinuePayment
    Given user is on page BharatPayFinancialMunicipalTaxes clicks on TPIN
    When user is on page BharatPayFinancialMunicipalTaxes and types 0852 on TpinText
    When user is on page BharatPayFinancialMunicipalTaxes clicks on TPINContinue
    When user is on page BharatPayFinancialMunicipalTaxes and verifies for Completed PaymentConfirmation
    When user scrolls down to "Having an issue?"  
    
    
@TestCaseKey=UDB-T28108	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that user is able to access Others Module
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Complaints"
    When user scrolls down to "Housing Society"
    Then user verifies message on page BharatPayOthers is Others on OthersServices 
    

@TestCaseKey=UDB-T28109	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that user is able to Click and access Housing Society under Other - Housing Society
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Financial Services"
    When user scrolls down to "Complaints"
    Given user is on page BharatPayOthersHousingSociety clicks on HousingSociety
    Given user is on page BharatPayOthersHousingSociety clicks on Search
    Given user is on page BharatPayOthersHousingSociety and types SAFAL PARISAR 1 on Search
    Given user is on page BharatPayOthersHousingSociety clicks on SelectBiller
    Given user is on page BharatPayOthersHousingSociety and types A1101 on FlatNo
    Given user is on page BharatPayOthersHousingSociety and types Block A on Block
    #Given user is on page BharatPayOthersHousingSociety clicks on PendingBillsCheckBox
    Given user is on page BharatPayOthersHousingSociety clicks on Continue
    Given user is on page BharatPayOthersHousingSociety clicks on ContinuePayment
    Given user is on page BharatPayOthersHousingSociety clicks on TPIN
    When user is on page BharatPayOthersHousingSociety and types 0852 on TpinText
    When user is on page BharatPayOthersHousingSociety clicks on TPINContinue
    When user is on page BharatPayOthersHousingSociety and verifies for Completed PaymentConfirmation
    When user scrolls down to "Having an issue?" 
    
@TestCaseKey=UDB-T28171	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that Register Complaint Tab is visible on the complaints page
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recharge"
    When user scrolls down to "Others"
    When user scrolls down to "Complaints"
    Given user is on page BharatPayPage clicks on Complaints
    When user verifies message on page BharatPayPage is Register Complaint on ComplaintsPage
    
@TestCaseKey=UDB-T28178	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that the complaint is raised successfully
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recharge"
    When user scrolls down to "Others"
    When user scrolls down to "Complaints"
    Given user is on page BharatPayPage clicks on Complaints
    Given user is on page BharatPayPageComplaints clicks on ComplaintReason
    Given user is on page BharatPayPageComplaints clicks on ComplaintReasonSelection
    When user is on page BharatPayPageComplaints and types UN015080BAFAAAAAAEHN on EnterBBPSPaymentID
    When user is on page BharatPayPageComplaints and types Test Script Entered on EnterRemarks
    Given user is on page BharatPayPageComplaints clicks on RaiseComplaint
    Given user verifies message on page BharatPayPageComplaints is Successfully on ConfirmationPage
    Given user is on page BharatPayPageComplaints clicks on BillPayments
    
    
@TestCaseKey=UDB-T28187	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that Raise Complaint button is visible
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recharge"
    When user scrolls down to "Others"
    When user scrolls down to "Complaints"
    Given user is on page BharatPayPage clicks on Complaints
    
@TestCaseKey=UDB-T28199	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that Track Complaint Tab is visible on the complaints page
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recharge"
    When user scrolls down to "Others"
    When user scrolls down to "Complaints"
    Given user is on page BharatPayPage clicks on Complaints
    Given user is on page BharatPayPage clicks on TrackComplaintsTab
    
    
@TestCaseKey=UDB-T28130	@Automatable @Smoke @RedmiNote9Pro @Test
  Scenario: Verify that user is able to Click and pay Gas bills under Utilities - Gas Bill
  	Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user is on page BharatPayGas clicks on Gas
    Given user is on page BharatPayGas clicks on Search
    Given user is on page BharatPayGas and types Mahanagar on Search
    Given user is on page BharatPayGas clicks on SelectBiller
    Given user is on page BharatPayGas and types 210000875132 on CANumber
    #Given user is on page BharatPayGas clicks on PendingBillsCheckBox
    Given user is on page BharatPayGas clicks on Continue
    Given user is on page BharatPayGas and enters 210 as AmountText
    Given user is on page BharatPayGas clicks on SelectAccount
    Given user is on page BharatPayGas clicks on SavingAccount    
    Given user is on page BharatPayGas clicks on ContinuePayment
    
@TestCaseKey=UDB-T28123	@Automatable @Smoke @RedmiNote9Pro @Test
  Scenario: Verify that user is able to click downlad bill after Gas bill payment under Utilities - Gas Bill
  	Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user is on page BharatPayGas clicks on Gas
    Given user is on page BharatPayGas clicks on Search
    Given user is on page BharatPayGas and types Mahanagar on Search
    Given user is on page BharatPayGas clicks on SelectBiller
    Given user is on page BharatPayGas and types 210000875132 on CANumber
    #Given user is on page BharatPayGas clicks on PendingBillsCheckBox
    Given user is on page BharatPayGas clicks on Continue
    Given user is on page BharatPayGas and enters 210 as AmountText
    Given user is on page BharatPayGas clicks on ContinuePayment
    Given user is on page BharatPayGas clicks on TPIN
    When user is on page BharatPayGas and types 0852 on TpinText
    When user is on page BharatPayGas clicks on TPINContinue
    When user is on page BharatPayGas and verifies for Completed PaymentConfirmation
    When user scrolls down to "Having an issue?"
    When user is on page BharatPayGas clicks on DownloadClick
    When user is on page BharatPayGas clicks on AllowAccess
    
@TestCaseKey=UDB-T28199	@TestCaseKey=UDB-T28200 @TestCaseKey=UDB-T28201 @TestCaseKey=UDB-T28202 @Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that Track Complaint Tab is visible on the complaints page
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recharge"
    When user scrolls down to "Others"
    When user scrolls down to "Complaints"
    Given user is on page BharatPayPage clicks on Complaints
    Given user is on page BharatPayPage clicks on TrackComplaintsTab
    When user is on page BharatPayTrackComplaints and types BD0122235132115 on ComplaintsID
    Given user is on page BharatPayTrackComplaints clicks on SubmitTrackComplaint
    
@TestCaseKey=UDB-T28205	@TestCaseKey=UDB-T28208 @TestCaseKey=UDB-T28209 @TestCaseKey=UDB-T28210 @Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that Track Complaint Tab is visible on the complaints page
		Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recharge"
    When user scrolls down to "Others"
    When user scrolls down to "Complaints"
    Given user is on page BharatPayPage clicks on Complaints
    Given user is on page BharatPayPage clicks on TrackComplaintsTab
    Given user is on page BharatPayTrackComplaints clicks on Duration
    Given user is on page BharatPayTrackComplaints clicks on StartDate
    Given user is on page BharatPayTrackComplaints clicks on DateSelection
    Given user is on page BharatPayTrackComplaints clicks on EndDate
    Given user is on page BharatPayTrackComplaints clicks on DateSelection
    Given user is on page BharatPayTrackComplaints clicks on SubmitTrackComplaint
    
@TestCaseKey=UDB-T28098	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that user is able to Click and do  Recharge Mobile under Utilities>>Recharge>>Mobile
#		Given user logins to app
    #Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    #When user scrolls down to "Recharge & Bill Pay"
    #When user scrolls down to "Loans"
    #Given user is on page DashboardPage clicks on Recharge&BillPay
    #When user scrolls down to "Subscription"
    #Given user is on page BharatPayPrepaid clicks on MobilePrepaid
    #Given user is on page BharatPayPrepaid clicks on AllowPermission
    #Given user is on page BharatPayPrepaid clicks on Search
    #Given user is on page BharatPayPrepaid and types 8369434012 on Search
    #Given user is on page BharatPayPrepaid clicks on EnteredNumber 
    #Given user is on page BharatPayPrepaid clicks on SelectPlan
    #Given user is on page BharatPayPrepaid clicks on Continue
    Given user is on page BharatPayPrepaid clicks on Submit
    Given user is on page BharatPayPrepaid clicks on TPIN
    When user is on page BharatPayPrepaid and types 0852 on TpinText
    When user is on page BharatPayPrepaid clicks on TPINContinue
    When user is on page BharatPayPrepaid and verifies for Completed PaymentConfirmation
    When user scrolls down to "Having an issue?"
    
@TestCaseKey=UDB-T28215 @TestCaseKey=UDB-T28217 @TestCaseKey=UDB-T28221 @TestCaseKey=UDB-T28222	@Automatable @Smoke @RedmiNote9Pro 
	Scenario: Verify that "Select your Fastag Provider","Vehicle Number","Continue","Select Debit Account" section is visible under Recharge - Fastag
		#Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Fastag"
    Given user is on page BharatPayFastag clicks on Fastag
    Given user verifies on page BharatPayFastag for Select your Fastag Provider text in placeholder ProviderList
    Given user is on page BharatPayFastag clicks on Search
    Given user is on page BharatPayFastag and types Indian Highways Management on Search
    Given user is on page BharatPayFastag clicks on SelectBiller
    Given user verifies on page BharatPayFastag for Vehicle Registration Number text in placeholder TextBoxField  
    Given user is on page BharatPayFastag and types MH01AB1234 on VehicleNumber
    Given user is on page BharatPayFastag clicks on Continue
    Given user verifies on page BharatPayFastag for Select Account text in placeholder DropDownAccount
    Given user is on page BharatPayFastag clicks on DropDownAccount
    Given user is on page BharatPayFastag clicks on SavingAccount 