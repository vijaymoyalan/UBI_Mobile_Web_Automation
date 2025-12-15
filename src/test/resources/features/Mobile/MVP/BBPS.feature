Feature: Mobile UI for BBPS Journey
    

@TestCaseKey=UDB-T28090	@Automatable @Smoke @RedmiNote9Pro @Set1 @Test
	Scenario: Verify that user is able to Click and pay Electricity bills under Utilities - Electricity Bill
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
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
    When user is on page BharatPayElectricity and types 2121 on TpinText
    When user is on page BharatPayElectricity clicks on TPINContinue
    Then user verifies on page BharatPayElectricity for Completed text in placeholder PaymentConfirmation
    Given user swipe down the page
    
    
 #@TestCaseKey=UDB-T28089	@Automatable @Smoke @RedmiNote9Pro @Set1 @Test
  #Scenario: Verify that user is able to Click and pay Gas bills under Utilities - Gas Bill (Currently not working)
  #	Given user logins to app
    #Given user logins to app entering Login PIN
    ##Given user is on page DashboardPage clicks on FingerPrint
    #When user scrolls down to "Recharge & Bill Pay"
    #When user scrolls down to "Loans"
    #Given user is on page DashboardPage clicks on Recharge&BillPay
    #Given user is on page BharatPayGas clicks on Gas
    #Given user is on page BharatPayGas clicks on Search
    #Given user is on page BharatPayGas and types Mahanagar on Search
    #Given user is on page BharatPayGas clicks on SelectBiller
    #Given user is on page BharatPayGas and types 210000875132 on CANumber
    #Given user is on page BharatPayGas clicks on PendingBillsCheckBox
    #Given user is on page BharatPayGas clicks on Continue
    #Given user is on page BharatPayGas and enters 210 as AmountText
    #Given user is on page BharatPayGas clicks on ContinuePayment
    #Given user is on page BharatPayGas clicks on TPIN
    #When user is on page BharatPayGas and types 2121 on TpinText
    #When user is on page BharatPayGas clicks on TPINContinue
    #Given user verifies on page BharatPayGas for Completed text in placeholder PaymentConfirmation
    #Given user swipe down the page
    
@TestCaseKey=UDB-T28091	@Automatable @Smoke @RedmiNote9Pro @Set1
	Scenario: Verify that user is able to Click and pay Water bills under Utilities - Water Bill
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
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
    Given user is on page BharatPayWater and enters 210 as AmountTextBox
    Given user is on page BharatPayWater clicks on ContinuePayment
    Given user is on page BharatPayWater clicks on TPIN
    When user is on page BharatPayWater and types 2121 on TpinText
    When user is on page BharatPayWater clicks on TPINContinue
    Then user verifies on page BharatPayWater for Completed text in placeholder PaymentConfirmation
    Given user swipe down the page
    
@TestCaseKey=UDB-T28092	@Automatable @Smoke @RedmiNote9Pro @Set1 
	Scenario: Verify that user is able to Click and pay Cable TV bills under Utilities - cable TV
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
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
    When user is on page BharatPayCableTV and types 2121 on TpinText
    When user is on page BharatPayCableTV clicks on TPINContinue
    Then user verifies on page BharatPayCableTV for Completed text in placeholder PaymentConfirmation
    Given user swipe down the page
    
    
@TestCaseKey=UDB-T28093	@Automatable @Smoke @RedmiNote9Pro @Set1 
	Scenario: Verify that user is able to Click and pay Broadband bills under Utilities - Broadband
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
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
    Given user is on page BharatPayBroadband and types 250 on NewAmount  
    Given user is on page BharatPayBroadband clicks on ContinuePayment
    Given user is on page BharatPayBroadband clicks on TPIN
    When user is on page BharatPayBroadband and types 2121 on TpinText
    When user is on page BharatPayBroadband clicks on TPINContinue
    Then user verifies on page BharatPayBroadband for Completed text in placeholder PaymentConfirmation
    Given user swipe down the page
    
    
@TestCaseKey=UDB-T28094	@Automatable @Smoke @RedmiNote9Pro @Set1 
	Scenario: Verify that user is able to Click and pay Landline Postpaid bills under Utilities - Landline Postpaid
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user is on page BharatPayLandline clicks on LandlinePostpaid
    Given user is on page BharatPayLandline clicks on Search
    Given user is on page BharatPayLandline and types MTNL Mumbai on Search
    Given user is on page BharatPayLandline clicks on SelectBiller
    Given user is on page BharatPayLandline and types 27450249 on TelephoneNumber
    Given user is on page BharatPayLandline and types 2031737434 on AccountNumber
    #Given user is on page BharatPayLandline clicks on PendingBillsCheckBox
    Given user is on page BharatPayLandline clicks on Continue
    Given user is on page BharatPayLandline clicks on ContinuePayment
    Given user is on page BharatPayLandline clicks on TPIN
    When user is on page BharatPayLandline and types 2121 on TpinText
    When user is on page BharatPayLandline clicks on TPINContinue
    Then user verifies on page BharatPayLandline for Completed text in placeholder PaymentConfirmation
    Given user swipe down the page
    
    
@TestCaseKey=UDB-T28096	@Automatable @Smoke @RedmiNote9Pro @Set1 
	Scenario: Verify that user is able to Click and do Recharge Mobile under Recharge - DTH
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
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
    Given user is on page BharatPayDTH and types 250 on NewAmount
    Given user is on page BharatPayDTH clicks on ContinuePayment
    Given user is on page BharatPayDTH clicks on TPIN
    When user is on page BharatPayDTH and types 2121 on TpinText
    When user is on page BharatPayDTH clicks on TPINContinue
    Then user verifies on page BharatPayDTH for Completed text in placeholder PaymentConfirmation
    Given user swipe down the page
    

@TestCaseKey=UDB-T28097	@Automatable @Smoke @RedmiNote9Pro @Set1 
	Scenario: Verify that user is able to access Recharge Module
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recharge"
    Then user verifies on page BharatPayRecharge for Recharge text in placeholder RechargeSection
    
    
@TestCaseKey=UDB-T28099 @TestCaseKey=UDB-T28249	@Automatable @Smoke @RedmiNote9Pro @Set1 
	Scenario: Verify that user is able to Click and do  Recharge Fastag under Recharge - Fastag
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
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
    Given user is on page BharatPayFastag and types 650 on Amount
    Given user is on page BharatPayFastag clicks on ContinuePayment
    Given user is on page BharatPayFastag clicks on TPIN
    When user is on page BharatPayFastag and types 2121 on TpinText
    When user is on page BharatPayFastag clicks on TPINContinue
    Then user verifies on page BharatPayFastag for Completed text in placeholder PaymentConfirmation
    Given user swipe down the page
    
@TestCaseKey=UDB-T28100 @TestCaseKey=UDB-T28260 @TestCaseKey=UDB-T28264  
@TestCaseKey=UDB-T28268 @TestCaseKey=UDB-T28269 @TestCaseKey=UDB-T28270  
@TestCaseKey=UDB-T28271 @Automatable @Smoke @RedmiNote9Pro @Set1 
	Scenario: Verify that user is able to Click and do Recharge Subscription under Recharge - Subscription
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recharge"
    When user scrolls down to "Financial Services"
    Given user is on page BharatPaySubscription clicks on Subscription
    Given user is on page BharatPaySubscription clicks on Search
    Given user is on page BharatPaySubscription and types Shemaroo IBADAT on Search
    Given user is on page BharatPaySubscription clicks on SelectBiller
    Given user is on page BharatPaySubscription and types vmoyalanubi@gmail.com on EmailID
    Given user is on page BharatPaySubscription clicks on Continue
    Given user is on page BharatPaySubscription clicks on ContinuePayment
    Given user is on page BharatPaySubscription clicks on TPIN
    When user is on page BharatPaySubscription and types 2121 on TpinText
    When user is on page BharatPaySubscription clicks on TPINContinue
    Then user verifies on page BharatPaySubscription for Completed text in placeholder PaymentConfirmation
    Then user verifies on page BharatPaySubscription for Completed text in placeholder PaymentConfirmation
    Given user swipe down the page
    Then user verifies on page BharatPaySubscription for Share text in placeholder ShareIcon
    Then user verifies on page BharatPaySubscription for Other Bills text in placeholder OtherBillsIcon
    Then user verifies on page BharatPaySubscription for Download text in placeholder DownloadIcon
    Then user is on page BharatPaySubscription to check HomeButton is Enabled
    
@TestCaseKey=UDB-T28101	@Automatable @Smoke @RedmiNote9Pro @Set1 
	Scenario: Verify that user is able to access Financial services Module
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recharge"
    Then user verifies on page BharatPayFinancial for Financial Services text in placeholder FinancialSection
    

@TestCaseKey=UDB-T28102	@Automatable @Smoke @RedmiNote9Pro @Set2 
	Scenario: Verify that user is able to Click and access CreditCard under Financial services - CreditCard
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
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
    When user is on page BharatPayFinancialCreditCard and types 2121 on TpinText
    When user is on page BharatPayFinancialCreditCard clicks on TPINContinue
    Then user verifies on page BharatPayFinancialCreditCard for Completed text in placeholder PaymentConfirmation
    Given user swipe down the page
    

@TestCaseKey=UDB-T28103	@Automatable @Smoke @RedmiNote9Pro @Set2 
	Scenario: Verify that user is able to Click and access Recurring Deposit under Financial services-Recurring Deposit
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
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
    When user is on page BharatPayFinancialRecurringDeposit and types 2121 on TpinText
    When user is on page BharatPayFinancialRecurringDeposit clicks on TPINContinue
    Then user verifies on page BharatPayFinancialRecurringDeposit for Completed text in placeholder PaymentConfirmation
    Given user swipe down the page
    
    
@TestCaseKey=UDB-T28107	@Automatable @Smoke @RedmiNote9Pro @Set2 
	Scenario: Verify that user is able to Click and access Municipal Services under Financial services - Municipal Services
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
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
    When user is on page BharatPayFinancialMunicipalTaxes and types 2121 on TpinText
    When user is on page BharatPayFinancialMunicipalTaxes clicks on TPINContinue
    Then user verifies on page BharatPayFinancialMunicipalTaxes for Completed text in placeholder PaymentConfirmation
    Given user swipe down the page  
    
    
@TestCaseKey=UDB-T28108	@Automatable @Smoke @RedmiNote9Pro @Set2 
	Scenario: Verify that user is able to access Others Module
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Others
    Then user verifies on page BharatPayOthers for Others text in placeholder OthersServices 
    

#@TestCaseKey=UDB-T28109	@Automatable @Smoke @RedmiNote9Pro @Set2 
#	Scenario: Verify that user is able to Click and access Housing Society under Other - Housing Society (Service provider not present)
#		Given user logins to app
    #Given user logins to app entering Login PIN
    ##Given user is on page DashboardPage clicks on FingerPrint
    #When user scrolls down to "Recharge & Bill Pay"
    #When user scrolls down to "Loans"
    #Given user is on page DashboardPage clicks on Recharge&BillPay
    #When user scrolls down to "Financial Services"
    #When user scrolls down to "Complaints"
    #Given user is on page BharatPayOthersHousingSociety clicks on HousingSociety
    #Given user is on page BharatPayOthersHousingSociety clicks on Search
    #Given user is on page BharatPayOthersHousingSociety and types SAFAL PARISAR 1 on Search
    #Given user is on page BharatPayOthersHousingSociety clicks on SelectBiller
    #Given user is on page BharatPayOthersHousingSociety and types A1101 on FlatNo
    #Given user is on page BharatPayOthersHousingSociety and types Block A on Block
    #Given user is on page BharatPayOthersHousingSociety clicks on PendingBillsCheckBox
    #Given user is on page BharatPayOthersHousingSociety clicks on Continue
    #Given user is on page BharatPayOthersHousingSociety clicks on ContinuePayment
    #Given user is on page BharatPayOthersHousingSociety clicks on TPIN
    #When user is on page BharatPayOthersHousingSociety and types 2121 on TpinText
    #When user is on page BharatPayOthersHousingSociety clicks on TPINContinue
    #Then user verifies on page BharatPayOthersHousingSociety for Completed text in placeholder PaymentConfirmation
    #When user scrolls down to "Share" 
    
@TestCaseKey=UDB-T28171 @TestCaseKey=UDB-T28113	@Automatable @Smoke @RedmiNote9Pro @Set2 
	Scenario: Verify that Register Complaint Tab is visible on the complaints page
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recharge"
    When user scrolls down to "Others"
    When user scrolls down to "Complaints"
    Given user is on page BharatPayPage clicks on Complaints
    Then user verifies on page BharatPayPage for Register Complaint text in placeholder ComplaintsPage
    
@TestCaseKey=UDB-T28178 @TestCaseKey=UDB-T28174 @TestCaseKey=UDB-T28175 @TestCaseKey=UDB-T28184	@Automatable @Smoke @RedmiNote9Pro @Set2 
	Scenario: Verify that the complaint is raised successfully
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
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
    Then user verifies on page BharatPayPageComplaints for Successfully text in placeholder ConfirmationPage
    Given user is on page BharatPayPageComplaints clicks on BillPayments
    
    
@TestCaseKey=UDB-T28187	@Automatable @Smoke @RedmiNote9Pro @Set2 
	Scenario: Verify that Raise Complaint button is visible
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recharge"
    When user scrolls down to "Others"
    When user scrolls down to "Complaints"
    Given user is on page BharatPayPage clicks on Complaints
    
@TestCaseKey=UDB-T28199	@Automatable @Smoke @RedmiNote9Pro @Set2 
	Scenario: Verify that Track Complaint Tab is visible on the complaints page
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recharge"
    When user scrolls down to "Others"
    When user scrolls down to "Complaints"
    Given user is on page BharatPayPage clicks on Complaints
    Given user is on page BharatPayPage clicks on TrackComplaintsTab
    
    
@TestCaseKey=UDB-T28130	@Automatable @Smoke @RedmiNote9Pro @Set2 @Test
  Scenario: Verify Payment Details page for Account Dropdown
  #	Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
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
    
@TestCaseKey=UDB-T28123	@Automatable @Smoke @RedmiNote9Pro @Set3 @Test
  Scenario: Verify that user is able to click downlad bill after Gas bill payment under Utilities - Gas Bill
  #	Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
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
    When user is on page BharatPayGas and types 2121 on TpinText
    When user is on page BharatPayGas clicks on TPINContinue
    Then user verifies on page BharatPayGas for Completed text in placeholder PaymentConfirmation
    Given user swipe down the page
    When user is on page BharatPayGas clicks on DownloadClick
    When user is on page BharatPayGas clicks on AllowAccess
    
@TestCaseKey=UDB-T28200 @TestCaseKey=UDB-T28201 @TestCaseKey=UDB-T28202 @Automatable @Smoke @RedmiNote9Pro @Set3 
	Scenario: Verify that user is able to track complaints
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
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
    
@TestCaseKey=UDB-T28205	@TestCaseKey=UDB-T28208 @TestCaseKey=UDB-T28209 @TestCaseKey=UDB-T28210 @Automatable @Smoke @RedmiNote9Pro @Set3 
	Scenario: Verify that "Submit" action button is visible
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
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
    
#@TestCaseKey=UDB-T28098 @TestCaseKey=UDB-T28250 @TestCaseKey=UDB-T28251 @TestCaseKey=UDB-T28253 
#@TestCaseKey=UDB-T28254 @TestCaseKey=UDB-T28255 @TestCaseKey=UDB-T28256 @TestCaseKey=UDB-T28257 @TestCaseKey=UDB-T28258	@Automatable @Smoke @RedmiNote9Pro @Set3 
#	Scenario: Verify that user is able to Click and do  Recharge Mobile under Utilities>>Recharge>>Mobile (Not present on App)
#		Given user logins to app
    #Given user logins to app entering Login PIN
    ##Given user is on page DashboardPage clicks on FingerPrint
    #When user scrolls down to "Recharge & Bill Pay"
    #When user scrolls down to "Loans"
    #Given user is on page DashboardPage clicks on Recharge&BillPay
    #When user scrolls down to "Subscription"
    #Given user is on page BharatPayPrepaid clicks on MobilePrepaid
    #Given user is on page BharatPayPrepaid clicks on AllowPermission
    #Given user is on page BharatPayPrepaid clicks on Search
    #Given user is on page BharatPayPrepaid and types 8369434012 on Search
    #Given user is on page BharatPayPrepaid clicks on EnteredNumber
    #Given user verifies on page BharatPayPrepaid for Operator text in placeholder OperatorDropDown
    #Given user verifies on page BharatPayPrepaid for Circle text in placeholder CircleDropDown
    #Given user verifies on page BharatPayPrepaid for Search for a Plan or Enter Amount text in placeholder PlanSearchBox
    #Given user verifies on page BharatPayPrepaid for Select Account text in placeholder DropDownAccount
    #Given user is on page BharatPayPrepaid clicks on SelectPlan
    #Given user is on page BharatPayPrepaid clicks on Continue
    #Given user is on page BharatPayPrepaid clicks on Submit
    #Given user is on page BharatPayPrepaid clicks on TPIN
    #When user is on page BharatPayPrepaid and types 2121 on TpinText
    #When user is on page BharatPayPrepaid clicks on TPINContinue
    #Given user verifies on page BharatPayPrepaid for Completed text in placeholder PaymentConfirmation
    #Given user swipe down the page
    
@TestCaseKey=UDB-T28215 @TestCaseKey=UDB-T28217 @TestCaseKey=UDB-T28221 @TestCaseKey=UDB-T28222	@Automatable @Smoke @RedmiNote9Pro @Set3 
	Scenario: Verify that "Select your Fastag Provider","Vehicle Number","Continue","Select Debit Account" section is visible under Recharge - Fastag
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Fastag"
    Given user is on page BharatPayFastag clicks on Fastag
    Then user verifies on page BharatPayFastag for Select your Fastag Provider text in placeholder ProviderList
    Given user is on page BharatPayFastag clicks on Search
    Given user is on page BharatPayFastag and types Indian Highways Management on Search
    Given user is on page BharatPayFastag clicks on SelectBiller
    Then user verifies on page BharatPayFastag for Vehicle Registration Number text in placeholder TextBoxField  
    Given user is on page BharatPayFastag and types MH01AB1234 on VehicleNumber
    Given user is on page BharatPayFastag clicks on Continue
    #Then user verifies on page BharatPayFastag for Select Account text in placeholder DropDownAccount
    Given user is on page BharatPayFastag clicks on DropDownAccount
    Given user is on page BharatPayFastag clicks on SavingAccount
    
#@TestCaseKey=UDB-T28071 @TestCaseKey=UDB-T28244 @TestCaseKey=UBD-T28139 @Automatable @Smoke @RedmiNote9Pro @Set3 -- biller not mapped
#	Scenario: Verify that user is able to click on 1st biller out of the top 3 biller icons under payments>>BBPS section
#		Given user logins to app
    #Given user logins to app entering Login PIN
    ##Given user is on page DashboardPage clicks on FingerPrint
    #When user scrolls down to "Recharge & Bill Pay"
    #When user scrolls down to "Loans"
    #Given user is on page DashboardPage clicks on Recharge&BillPay
    #Given user is on page BharatPayPage clicks on PendingBillsViewAll
    #Given user is on page BharatPayPendingBills clicks on FirstBiller
    #Given user is on page BharatPayPendingBills clicks on PayNow
    #Given user is on page BharatPayPendingBills clicks on Continue
    #Given user is on page BharatPayPendingBills clicks on TPIN
    #When user is on page BharatPayPendingBills and types 2121 on TpinText
    #When user is on page BharatPayPendingBills clicks on TPINContinue
    #Given user verifies on page BharatPayPendingBills for Completed text in placeholder PaymentConfirmation
    #Given user swipe down the page
    

#@TestCaseKey=UDB-T28072 @TestCaseKey=UDB-T28245 @TestCaseKey=UBD-T28139 @Automatable @Smoke @RedmiNote9Pro @Set3 --- biller not mapped ---
#	Scenario: Verify that user is able to click on 2nd biller out of the top 3 biller icons under payments>>BBPS section
#		Given user logins to app
    #Given user logins to app entering Login PIN
    ##Given user is on page DashboardPage clicks on FingerPrint
    #When user scrolls down to "Recharge & Bill Pay"
    #When user scrolls down to "Loans"
    #Given user is on page DashboardPage clicks on Recharge&BillPay
    #Given user is on page BharatPayPage clicks on PendingBillsViewAll
    #Given user is on page BharatPayPendingBills clicks on SecondBiller
    #Given user is on page BharatPayPendingBills clicks on PayNow
    #Given user is on page BharatPayPendingBills clicks on Continue
    #Given user is on page BharatPayPendingBills clicks on TPIN
    #When user is on page BharatPayPendingBills and types 2121 on TpinText
    #When user is on page BharatPayPendingBills clicks on TPINContinue
    #Given user verifies on page BharatPayPendingBills for Completed text in placeholder PaymentConfirmation
    #Given user swipe down the page
    #
    
@TestCaseKey=UDB-T28084 @Automatable @Smoke @RedmiNote9Pro @Set3 
	Scenario: Verify technical error if BBPS API down
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Then user verifies on page BharatPayPage for Pending Bills text in placeholder PendingBillsHeader
    
@TestCaseKey=UDB-T28085 @Automatable @Smoke @RedmiNote9Pro @Set3 
	Scenario: Verify technical error if BBPS not able to fetch due bills
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user is on page BharatPayPage clicks on PendingBillsViewAll
    Then user verifies on page BharatPayPage for Something Went Wrong text in placeholder TechnicalError
    
#@TestCaseKey=UDB-T28074 @Automatable @Smoke @RedmiNote9Pro @Set3     --- biller not mapped ---
#	Scenario: Verify that user is able to view the link bills payment due date
#		Given user logins to app
    #Given user logins to app entering Login PIN
    ##Given user is on page DashboardPage clicks on FingerPrint
    #When user scrolls down to "Recharge & Bill Pay"
    #When user scrolls down to "Loans"
    #Given user is on page DashboardPage clicks on Recharge&BillPay
    #Given user is on page BharatPayPage clicks on PendingBillsViewAll
    #Given user verifies on page BharatPayPendingBills for Due in text in placeholder FirstBillerDueIn
    #Given user verifies on page BharatPayPendingBills for Due in text in placeholder SecondBillerDueIn
    
@TestCaseKey=UDB-T28140	@Automatable @Smoke @RedmiNote9Pro @Set4 
	Scenario: Verify that user is allow to pay the bill by selecting biller from the Linked Bills section
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Recharge"
    When user scrolls down to "Financial Services"
    Given user is on page BharatPaySubscription clicks on Subscription
    Given user is on page BharatPaySubscription to check LinkedBills is Enabled
        
    
@TestCaseKey=UDB-T28216	@Automatable @Smoke @RedmiNote9Pro @Set4 
	Scenario: Verify that "Recent Recharges" section is visible
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Fastag"
    Given user is on page BharatPayFastag clicks on Fastag
    Then user verifies on page BharatPayFastag for Indian Highways Management Company Ltd text in placeholder RecentRechargeBiller
    
 
@TestCaseKey=UDB-T28070	@Automatable @Smoke @RedmiNote9Pro @Set4 
	Scenario: Verify that BBPS section should have BBPS branding and sould display top 3 biller module icons
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Then user verifies on page BharatPayPage for Bill Payments text in placeholder BBPSPageHeader
    Then user verifies on page BharatPayPage for Pending Bills text in placeholder PendingBillHeader
    
@TestCaseKey=UDB-T28081	@Automatable @Smoke @RedmiNote9Pro @Set4 
	Scenario: Verify that user is able to view categories/sections on BBPS Dashboard
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Then user verifies on page BharatPayPage for Utilities text in placeholder UtilitiesSection
    When user scrolls down to "Recharge"
    Then user verifies on page BharatPayPage for Recharge text in placeholder RechargeSection
    When user scrolls down to "Financial Services"
    Then user verifies on page BharatPayPage for Financial Services text in placeholder FinancialServicesSection
    When user scrolls down to "Others"
    Then user verifies on page BharatPayPage for Others text in placeholder OthersSection
    Given user swipe down the page
    Then user verifies on page BharatPayPage for Complaints text in placeholder ComplaintsSection
    Then user verifies on page BharatPayPage for Past Payments text in placeholder PastPaymentsSection
    
@TestCaseKey=UDB-T28114	@Automatable @Smoke @RedmiNote9Pro @Set4 
	Scenario: Verify that user is able to Click and access Past Payments
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPastPayments clicks on PastPaymentsSection
    Then user verifies on page BharatPayPastPayments for Past Payments text in placeholder PastPaymentsHeader
    Then user verifies on page BharatPayPastPayments for Track your payment history text in placeholder TrackPaymentsText
    Then user verifies on page BharatPayPastPayments for Completed text in placeholder CompletedTab
    Then user verifies on page BharatPayPastPayments for Failed text in placeholder FailedTab
    Then user verifies on page BharatPayPastPayments for Pending text in placeholder PendingTab
    
    
 @TestCaseKey=UDB-T28131	@Automatable @Smoke @RedmiNote9Pro @Set4 @Test
	Scenario: Verify Payment Details page for Insufficient Funds
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
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
    Given user is on page BharatPayElectricity clicks on Continue
    Given user is on page BharatPaySubscription clicks on TPIN
    When user is on page BharatPaySubscription and types 2121 on TpinText
    Given user is on page BharatPayElectricity clicks on ContinuePayment
    Then user verifies on page BharatPayElectricity for Insufficient Balance text in placeholder BalanceAlert
    Given user is on page BharatPayElectricity clicks on AlertOk
    
@TestCaseKey=UDB-T28157	@Automatable @Smoke @RedmiNote9Pro @Set4 
	Scenario: Verify that user is able to used filter option Biller Category >>Utilities to search past transactions
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPastPayments clicks on PastPaymentsSection
    Given user is on page BharatPayPastPayments clicks on PaymentsFilter
    Given user is on page BharatPayPastPayments clicks on BillerCategory
    Given user is on page BharatPayPastPayments clicks on ElectricityOption
    Given user is on page BharatPayPastPayments clicks on FilterApply
    Then user verifies on page BharatPayPastPayments for Adani Electricity Mumbai Limited text in placeholder PastPaymentUtilities
    
@TestCaseKey=UDB-T28158	@Automatable @Smoke @RedmiNote9Pro @Set4 
	Scenario: Verify that user is able to used filter option Biller Category >>Recharge to search past transactions (Fastag)
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPastPayments clicks on PastPaymentsSection
    Given user is on page BharatPayPastPayments clicks on PaymentsFilter
    Given user is on page BharatPayPastPayments clicks on BillerCategory
    Given user is on page BharatPayPastPayments clicks on FasTagOption
    Given user is on page BharatPayPastPayments clicks on FilterApply
    Then user verifies on page BharatPayPastPayments for "Indian Highways Management Company" text in placeholder PastPaymentRecharge
    
@TestCaseKey=UDB-T28161	@Automatable @Smoke @RedmiNote9Pro @Set4 
	Scenario: Verify that user is able to used filter option "Amount>>0 to 1000" to search past transactions
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPastPayments clicks on PastPaymentsSection
    Given user is on page BharatPayPastPayments clicks on PaymentsFilter
    Given user is on page BharatPayPastPayments clicks on AmountCategory
    Given user is on page BharatPayPastPayments clicks on AmountOption
    Given user is on page BharatPayPastPayments clicks on FilterApply
    Given user is on page BharatPayPastPayments clicks on SearchText
    Given user is on page BharatPayPastPayments and types Indian on SearchText
    Given user is on page BharatPayPastPayments clicks on SearchPayments
    Then user verifies on page BharatPayPastPayments for Indian Highways Management text in placeholder PastPaymentSearchResult
    
    
@TestCaseKey=UDB-T28165	@Automatable @Smoke @RedmiNote9Pro @Set4 
	Scenario: Verify that user is able to used filter option Date-This Week to search past transactions
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPastPayments clicks on PastPaymentsSection
    Given user is on page BharatPayPastPayments clicks on PaymentsFilter
    Given user is on page BharatPayPastPayments clicks on DateCategory
    Given user is on page BharatPayPastPayments clicks on WeekOption
    Given user is on page BharatPayPastPayments clicks on FilterApply
    Given user is on page BharatPayPastPayments clicks on SearchText
    Given user is on page BharatPayPastPayments and types Indian on SearchText
    Given user is on page BharatPayPastPayments clicks on SearchPayments
    Given user is on page BharatPayPastPayments to check PastPaymentResult is Displayed
    
@TestCaseKey=UDB-T28166	@Automatable @Smoke @RedmiNote9Pro @Set5 
	Scenario: Verify that user is able to used filter option Date-This Month to search past transactions
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPastPayments clicks on PastPaymentsSection
    Given user is on page BharatPayPastPayments clicks on PaymentsFilter
    Given user is on page BharatPayPastPayments clicks on DateCategory
    Given user is on page BharatPayPastPayments clicks on MonthOption
    Given user is on page BharatPayPastPayments clicks on FilterApply
    Given user is on page BharatPayPastPayments clicks on SearchText
    Given user is on page BharatPayPastPayments and types Mahanagar on SearchText
    #Given user is on page BharatPayPastPayments clicks on SearchPayments
    #Then user verifies on page BharatPayPastPayments for Mahanagar Gas text in placeholder PastPaymentGas
    
@TestCaseKey=UDB-T28167	@Automatable @Smoke @RedmiNote9Pro @Set5 
	Scenario: Verify that user is able to used filter option Date-Last 3 Month to search past transactions
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPastPayments clicks on PastPaymentsSection
    Given user is on page BharatPayPastPayments clicks on PaymentsFilter
    Given user is on page BharatPayPastPayments clicks on DateCategory
    Given user is on page BharatPayPastPayments clicks on Last3MonthOption
    Given user is on page BharatPayPastPayments clicks on FilterApply
    Given user is on page BharatPayPastPayments clicks on SearchText
    Given user is on page BharatPayPastPayments and types Mahanagar on SearchText
    #Given user is on page BharatPayPastPayments clicks on SearchPayments
    #Then user verifies on page BharatPayPastPayments for Mahanagar Gas text in placeholder PastPaymentGas
    
@TestCaseKey=UDB-T28168	@Automatable @Smoke @RedmiNote9Pro @Set5 
	Scenario: Verify that user is able to used filter option Date-Custom Date to search past transactions
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPastPayments clicks on PastPaymentsSection
    Given user is on page BharatPayPastPayments clicks on PaymentsFilter
    Given user is on page BharatPayPastPayments clicks on DateCategory
    Given user is on page BharatPayPastPayments clicks on CustomDateOption
    Given user is on page BharatPayPastPayments clicks on StartDateSelection
    Given user selects today date from calendar option
    Given user is on page BharatPayPastPayments clicks on EndDateSelection
    Given user selects today date from calendar option
    Given user is on page BharatPayPastPayments clicks on FilterApply
    Given user is on page BharatPayPastPayments clicks on SearchText
    Given user is on page BharatPayPastPayments and types Mahanagar on SearchText
    #Given user is on page BharatPayPastPayments clicks on SearchPayments
    
@TestCaseKey=UDB-T28169	@Automatable @Smoke @RedmiNote9Pro @Set5 
	Scenario: Verify that user is able to unselect filter by click on Clear all option
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPastPayments clicks on PastPaymentsSection
    Given user is on page BharatPayPastPayments clicks on PaymentsFilter
    Given user is on page BharatPayPastPayments clicks on DateCategory
    Given user is on page BharatPayPastPayments clicks on CustomDateOption
    Given user is on page BharatPayPastPayments clicks on StartDateSelection
    Given user selects today date from calendar option
    Given user is on page BharatPayPastPayments clicks on EndDateSelection
    Given user selects today date from calendar option
    Given user is on page BharatPayPastPayments to check CustomDateOption is Checked
    Given user is on page BharatPayPastPayments clicks on ClearAll
    Given user is on page BharatPayPastPayments to check CustomDateOption is UnChecked
    
    
@TestCaseKey=UDB-T28195	@Automatable @Smoke @RedmiNote9Pro @Set5 
	Scenario: Verify negative testing for "Remarks" field
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPage clicks on Complaints
    Given user is on page BharatPayPageComplaints clicks on ComplaintReason
    Given user is on page BharatPayPageComplaints clicks on ComplaintReasonSelection
    When user is on page BharatPayPageComplaints and types UN015080BAFAAAAAAEHN on EnterBBPSPaymentID
    When user is on page BharatPayPageComplaints and types With more than 50 characters, an alert message for textbox is displayed on EnterRemarks
    Then user verifies on page BharatPayPageComplaints for Remark character length should not exceed 50 text in placeholder RemarksErrorMsg
    
 @TestCaseKey=UDB-T28207	@Automatable @Smoke @RedmiNote9Pro @Set5 
	Scenario: Verify that "Duration" radio button is visible
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPage clicks on Complaints
    Given user is on page BharatPayPage clicks on TrackComplaintsTab
    Given user is on page BharatPayTrackComplaints to check DurationRadioBtn is NotSelected
    Given user is on page BharatPayTrackComplaints clicks on Duration
    Given user is on page BharatPayTrackComplaints to check DurationRadioBtn is Selected
    
@TestCaseKey=UDB-T28212	@Automatable @Smoke @RedmiNote9Pro @Set5 
	Scenario: Verify that "Submit" action button is visible.
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPage clicks on Complaints
    Given user is on page BharatPayPage clicks on TrackComplaintsTab
    Given user is on page BharatPayTrackComplaints to check SubmitTrackComplaint is Enabled
    
    
#@TestCaseKey=UDB-T28122 @TestCaseKey=UDB-T28124 @TestCaseKey=UBD-T28125 @Automatable @Smoke @RedmiNote9Pro @Set5 -- comentted as Pending Bill mapping is getting removed on every MDM file recevied by bill desk
#	Scenario: Verify Transaction details page for Share receipt, for Other Bills, for Home Button
#		Given user logins to app
    #Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    #When user scrolls down to "Recharge & Bill Pay"
    #When user scrolls down to "Loans"
    #Given user is on page DashboardPage clicks on Recharge&BillPay
    #Given user is on page BharatPayPage clicks on PendingBillsViewAll
    #Given user is on page BharatPayPendingBills clicks on FirstBiller
    #Given user is on page BharatPayPendingBills clicks on PayNow
    #Given user is on page BharatPayPendingBills clicks on Continue
    #Given user is on page BharatPayPendingBills clicks on TPIN
    #When user is on page BharatPayPendingBills and types 2121 on TpinText
    #When user is on page BharatPayPendingBills clicks on TPINContinue
    #Then user verifies on page BharatPayPendingBills for Completed text in placeholder PaymentConfirmation
    #Given user swipe down the page
    #Then user verifies on page BharatPayPendingBills for Share text in placeholder ShareIcon
    #Then user verifies on page BharatPayPendingBills for Other Bills text in placeholder OtherBillsIcon
    #Then user is on page BharatPayPendingBills to check HomeButton is Enabled
    
    
@TestCaseKey=UDB-T28129 @TestCaseKey=UDB-T28127 @TestCaseKey=UDB-T28128	@Automatable @Smoke @RedmiNote9Pro @Set5 @Test
	Scenario: Verify Payment Details page for Amount field and TPIN screen for view and hide TPIN icon
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user is on page BharatPayElectricity clicks on Electricity
    Given user is on page BharatPayElectricity clicks on Search
    Given user is on page BharatPayElectricity and types Adani on Search
    Given user is on page BharatPayElectricity clicks on SelectBiller
    Given user is on page BharatPayElectricity and types 212345678 on ConsumerNumber
    Given user is on page BharatPayElectricity clicks on Continue   
    Given user is on page BharatPayElectricity verifies amount in PaymentAmountTextBox
    Given user is on page BharatPayElectricity clicks on ContinuePayment
    Given user is on page BharatPayElectricity clicks on TPIN
    When user is on page BharatPayElectricity and types 2121 on TpinText
    Then user verifies on page BharatPayElectricity for **** text in placeholder TPinText
    Given user is on page BharatPayElectricity clicks on ShowTPINIcon
    Then user verifies on page BharatPayElectricity for 2121 text in placeholder TPinText
    Given user is on page BharatPayElectricity clicks on TPINClose
    
    
    
@TestCaseKey=UDB-T28219 @TestCaseKey=UDB-T28223 @TestCaseKey=UDB-T28224 @TestCaseKey=UDB-T28225 @TestCaseKey=UDB-T28226 
@TestCaseKey=UDB-T28229 @TestCaseKey=UDB-T28230 @TestCaseKey=UDB-T28233 @TestCaseKey=UDB-T28234 @TestCaseKey=UDB-T28238 
@TestCaseKey=UDB-T28241 @TestCaseKey=UDB-T28220 @Automatable @Smoke @RedmiNote9Pro @Set5 
	Scenario: Verify that the fastag provider name, Balance, CustomerName, Amount, Biller details is visible at the label
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Fastag"
    Given user is on page BharatPayFastag clicks on Fastag
    Given user is on page BharatPayFastag clicks on Search
    Given user is on page BharatPayFastag and types Indian Highways Management on Search
    Given user is on page BharatPayFastag clicks on SelectBiller
    Then user verifies on page BharatPayFastag for Indian Highways Management text in placeholder FastagHeader
    Given user is on page BharatPayFastag to check ProviderLogo is Displayed
    Given user is on page BharatPayFastag and types MH01AB1234 on VehicleNumber
    Given user is on page BharatPayFastag clicks on Continue
    Given user is on page BharatPayFastag and types 650 on Amount
    Then user verifies on page BharatPayFastag for Indian Highways Management Company Ltd FASTag text in placeholder FastagProvider
    Given user is on page BharatPayFastag verifies amount in FasTagBalance
    Given user is on page BharatPayFastag verifies amount in RechargeAmount
    Given user is on page BharatPayFastag clicks on ContinuePayment
    Given user is on page BharatPayFastag clicks on TPIN
    When user is on page BharatPayFastag and types 2121 on TpinText
    When user is on page BharatPayFastag clicks on TPINContinue
    Given user verifies on page BharatPayFastag for Completed text in placeholder PaymentConfirmation
    Then user verifies on page BharatPayFastag for Indian Highways Management Company Ltd FASTag text in placeholder BillerName
    Given user swipe down the page
    Then user verifies on page BharatPayFastag for Share text in placeholder ShareIcon
    Then user is on page BharatPayFastag to check HomeButton is Enabled
  
 
@TestCaseKey=UDB-T28283 @Automatable @Smoke @RedmiNote9Pro @Set6 
	Scenario: Verify that ETB user should navigate to Dashboard section. Homepage >>Payments>>BBPS>> View all link
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    Given user is on page DashboardPage clicks on Payments
    When user scrolls down to "Favourite Transaction"
    
@TestCaseKey=UDB-T28151  @TestCaseKey=UDB-T28152  @TestCaseKey=UDB-T28153	@Automatable @Smoke @RedmiNote9Pro @Set6 
	Scenario: Verify that user is able to see the Existing completed transactions
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPastPayments clicks on PastPaymentsSection
    Given user is on page BharatPayPastPayments clicks on CompletedTab
    
@TestCaseKey=UDB-T28154	@Automatable @Smoke @RedmiNote9Pro @Set6 
	Scenario: Verify that user is able to see the Existing Failed transactions
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPastPayments clicks on PastPaymentsSection
    Given user is on page BharatPayPastPayments clicks on FailedTab
 
@TestCaseKey=UDB-T28155	@Automatable @Smoke @RedmiNote9Pro @Set6 
	Scenario: Verify that user is able to see the Existing Pending transactions
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPastPayments clicks on PastPaymentsSection
    Given user is on page BharatPayPastPayments clicks on PendingTab
    
#@TestCaseKey=UDB-T28080	@Automatable @Smoke @RedmiNote9Pro @Set6 
#	Scenario: Verify that ETB user should navigate to BBPS Dashboard (Homepage>>Payments>>BBPS icon>>View all link)
#		Given user logins to app
    #Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    #Given user is on page DashboardPage clicks on Payments
    #When user scrolls down to "Favourite Transaction"
 #		Given user is on page BharatPayPage click on BBPSViewAll
 		
 		
#@TestCaseKey=UDB-T28170	@Automatable @Smoke @RedmiNote9Pro @Set6 
#	Scenario: Verify that ETB user should navigate to Complaints section (Homepage >>Payments>>BBPS icon >> View all link >> Complaints)
#		Given user logins to app
    #Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    #Given user is on page DashboardPage clicks on Payments
    #When user scrolls down to "Favourite Transaction"
 #		Given user is on page BharatPayPage click on BBPSViewAll
 #		Given user swipe down the page
 #		Given user is on page BharatPayPage clicks on Complaints

@TestCaseKey=UDB-T28176 @TestCaseKey=UDB-T28177 @TestCaseKey=UDB-T28186	@Automatable @Smoke @RedmiNote9Pro @Set6  		
Scenario: Verify that Remarks field is visible and negative testing for "Remarks" field
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user swipe down the page
    Given user is on page BharatPayPage clicks on Complaints
    Given user is on page BharatPayPageComplaints clicks on ComplaintReason
    Given user is on page BharatPayPageComplaints clicks on ComplaintReasonSelection
    When user is on page BharatPayPageComplaints and types UN015080BAFAAAAAAEHN on EnterBBPSPaymentID
    When user is on page BharatPayPageComplaints and types Test Script Entered for negative validation of remark section on EnterRemarks
    Then user is on page BharatPayPageComplaints to check RaiseComplaint is Enabled
    Given user is on page BharatPayPageComplaints clicks on RaiseComplaint
    Then user verifies on page BharatPayPageComplaints for Remark character length should not exceed 50 text in placeholder RemarkAlertVerbiage
    
@TestCaseKey=UDB-T28227 @TestCaseKey=UDB-T28228	@Automatable @Smoke @RedmiNote9Pro @Set6 
	Scenario: Verify negative testing for "Amount" field and "Amount suggestion boxes" are visible
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Fastag"
    Given user is on page BharatPayWater clicks on Water
    Given user is on page BharatPayWater clicks on Search
    Given user is on page BharatPayWater and types Pimpri on Search
    Given user is on page BharatPayWater clicks on SelectBiller
    Given user is on page BharatPayWater and types 26789365 on ConsumerID
    Given user is on page BharatPayWater clicks on Continue
    Given user is on page BharatPayWater and types 0.00 on AmountTextBox
    Given user is on page BharatPayWater clicks on ContinuePayment
    Then user verifies on page BharatPayWater for "Enter valid bill amount." text in placeholder AmountAlertVerbiage
    
    
@TestCaseKey=UDB-T28232 @TestCaseKey=UDB-T28235 @TestCaseKey=UDB-T28239 @TestCaseKey=UDB-T28240 @Automatable @Smoke @RedmiNote9Pro @Set6 
	Scenario: Verify that "Hide/Show" button is visible in Transaction Text box, transaction details page, download & others option
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    When user scrolls down to "Fastag"
    Given user is on page BharatPayFastag clicks on Fastag
    Given user is on page BharatPayFastag clicks on Search
    Given user is on page BharatPayFastag and types Indian Highways Management on Search
    Given user is on page BharatPayFastag clicks on SelectBiller
    Then user verifies on page BharatPayFastag for Indian Highways Management text in placeholder FastagHeader
    Given user is on page BharatPayFastag and types MH01AB1234 on VehicleNumber
    Given user is on page BharatPayFastag clicks on Continue
    Given user is on page BharatPayFastag and types 650 on Amount
    Given user is on page BharatPayFastag clicks on ContinuePayment
    Given user is on page BharatPayFastag clicks on TPIN
    When user is on page BharatPayFastag and types 2121 on TpinText
		Then user verifies on page BharatPayFastag for **** text in placeholder TPinText
		Given user is on page BharatPayFastag clicks on ShowTPINIcon
		Then user verifies on page BharatPayFastag for 2121 text in placeholder TPinText
		Given user is on page BharatPayFastag to check TPINContinue is Enabled
    When user is on page BharatPayFastag clicks on TPINContinue
    Then user verifies on page BharatPayFastag for Completed text in placeholder PaymentConfirmation
    Then user verifies on page BharatPayFastag for Indian Highways Management Company Ltd FASTag text in placeholder BillerName
    Given user swipe down the page
    Then user verifies on page BharatPayFastag for Share text in placeholder ShareIcon
    Then user is on page BharatPayFastag to check HomeButton is Enabled
    Then user is on page BharatPayFastag to check DownloadButton is Enabled
    Then user is on page BharatPayFastag to check OtherBillsButton is Enabled
 
 
@TestCaseKey=UDB-T28083 @TestCaseKey=UDB-T28236 @Automatable @Smoke @RedmiNote9Pro @Set6 
	Scenario: Verify that user is able to view Marketing Banner,BBPS logo on BBPS Dashboard
#		Given user logins to app
    Given user logins to app entering Login PIN
    #Given user is on page DashboardPage clicks on FingerPrint
    When user scrolls down to "Recharge & Bill Pay"
    When user scrolls down to "Loans"
    Given user is on page DashboardPage clicks on Recharge&BillPay
    Given user is on page BharatPayPage to check MarketingBanner is Displayed
    Given user is on page BharatPayPage to check BBPSLogo is Displayed
    
#@TestCaseKey=UDB-T28248	@Automatable @Smoke @RedmiNote9Pro @Set6   ---- option of mobile prepaid is out of scope
#	Scenario: Verify that "Recent Recharges" section is visible
#		Given user logins to app
    #Given user logins to app entering Login PIN
    ##Given user is on page DashboardPage clicks on FingerPrint
    #When user scrolls down to "Recharge & Bill Pay"
    #When user scrolls down to "Loans"
    #Given user is on page DashboardPage clicks on Recharge&BillPay
    #When user scrolls down to "Subscription"
    #Given user is on page BharatPayPrepaid clicks on MobilePrepaid
    #Then user verifies on page BharatPayPrepaid for Recent Recharges text in placeholder RecentRechargeSection
    #Then user verifies on page BharatPayPrepaid for BSNL Prepaid text in placeholder RechargeBillerName
    
    