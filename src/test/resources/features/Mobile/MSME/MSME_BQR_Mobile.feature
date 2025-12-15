Feature: Mobile UI automation for MSME BQR mobile
#Tester: Vijay Moyalan

#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps

#Notes: before executing this feature: Sole Prop QR to be deleted if any (share eCIF no# to manual tester), QR code should be created for any individual account.
#Test data Pre-requisite: Sole Prop & Individual with CC,OD,CA accounts

@TestCaseKey=UDB-T59294 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify Main Entry Point Entry point for BQR (Sole Prop)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on Accounts
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEAccountsPage clicks on PartorkAutomationCurrentAccount
	When user scrolls down to "Last Month"
	Given user is on page MSMEAccountsPage clicks on DetailsTab
	Then user verifies on page MSMEBQRPage for QR Code text in placeholder QRCodeField
	Given user is on page MSMEBQRPage clicks on BackIcon
	Given user is on page MSMEDashboardPage clicks on Home
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on Accounts
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEAccountsPage clicks on VijaykumarCurrentAccount
	When user scrolls down to "Last Month"
	Given user is on page MSMEAccountsPage clicks on DetailsTab
	Then user verifies on page MSMEBQRPage for QR Code text in placeholder QRCodeField
	
	
@TestCaseKey=UDB-T59295  @TestCaseKey=UDB-T59298 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify Alternate Entry Point for BQR

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Then user verifies on page MSMEBQRPage for QR\nCode text in placeholder HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Then user is on page MSMEBQRPage to check BharatQRCodeButton is Enabled
	Then user is on page MSMEBQRPage to check UPIQRCodeButton is Enabled
	Given user is on page MSMEBQRPage clicks on BackIcon
	Given user is on page MSMEDashboardPage clicks on Home
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Then user verifies on page MSMEBQRPage for QR\nCode text in placeholder HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Then user verifies on page MSMEBQRPage for "+Generate New QR Code" text in placeholder GenerateNewQRCode
	When user swipe down the page
	Then user is on page MSMEBQRPage to check UPIQRCodeButton is Enabled
	
	
@TestCaseKey=UDB-T59296 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify BQR option on Payments Landing Page (Sole Prop)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Then user verifies on page MSMEBQRPage for Bharat QR\nCode text in placeholder PaymentQRCodeField
	Given user is on page MSMEDashboardPage clicks on Home
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Then user verifies on page MSMEBQRPage for Bharat QR\nCode text in placeholder PaymentQRCodeField
	
	
@TestCaseKey=UDB-T59297 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify  user navigates to BQR from Accounts section page

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEBQRPage clicks on PaymentQRCodeField
	Then user verifies on page MSMEBQRPage for "Register to get your QR" text in placeholder QRCodePage
	Then user is on page MSMEBQRPage to check BharatQRCodeButton is Enabled
	Then user is on page MSMEBQRPage to check UPIQRCodeButton is Enabled
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Then user verifies on page MSMEBQRPage for "Bharat QR Registration" text in placeholder BharatQRRegistration
	
	
@TestCaseKey=UDB-T59299 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify  user navigates to BQR from Payments section(Global Level)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
		Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEBQRPage clicks on PaymentQRCodeField
	Then user verifies on page MSMEBQRPage for "+Generate New QR Code" text in placeholder GenerateNewQRCode
	When user swipe down the page
	Then user is on page MSMEBQRPage to check UPIQRCodeButton is Enabled
	
	
@TestCaseKey=UDB-T59300 @TestCaseKey=UDB-T59332 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify  user navigates to BQR from Accounts section page and verifies settlement account dropdown (Sole Prop)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEBQRPage clicks on PaymentQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Then user verifies on page MSMEBQRPage for "PATORK's Current Account" text in placeholder PartorkCurrectAccount
	Then user verifies on page MSMEBQRPage for "PATORK's Cash Credit Account" text in placeholder PartorkCashCreditAccount
	Then user verifies on page MSMEBQRPage for "PATORK's Overdraft Account" text in placeholder PartorkOverDraftAccount
	Then user is on page BQRRegistrationPage verifies amount in CCAccount
	Then user is on page BQRRegistrationPage verifies amount in CAAccount
	Then user is on page BQRRegistrationPage verifies amount in ODAccount
	
	
@TestCaseKey=UDB-T59301 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify QR option  is shown under Deposit section on home page for users having either a current account, overdraft account or cash credit type of account(CA,OD CC)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Then user verifies on page MSMEBQRPage for "PATORK's Current Account" text in placeholder PartorkCurrectAccount
	Then user verifies on page MSMEBQRPage for "PATORK's Cash Credit Account" text in placeholder PartorkCashCreditAccount
	Then user verifies on page MSMEBQRPage for "PATORK's Overdraft Account" text in placeholder PartorkOverDraftAccount
	

@TestCaseKey=UDB-T59306 @TestCaseKey=UDB-T59327 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify QR option is shown under Deposit section on home page for users having only current account

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
#	Given user is on page MSMEBQRPage clicks on Okay
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Then user verifies on page MSMEBQRPage for "PATORK's Current Account" text in placeholder PartorkCurrectAccount
	
	
@TestCaseKey=UDB-T59310 @TestCaseKey=UDB-T59314 @TestCaseKey=UDB-T59315 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify QR option  is shown under details section of Account details page for OD account

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	When user swipes left to "Overdraft"
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Then user is on page MSMEBQRPage to check BharatQRCodeButton is Enabled
	
@TestCaseKey=UDB-T59311 @TestCaseKey=UDB-T59312 @TestCaseKey=UDB-T59313 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify QR option  is shown under details section of Account details page for CC account

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	When user swipes left to "Current Account"
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Then user is on page MSMEBQRPage to check BharatQRCodeButton is Enabled
	
@TestCaseKey=UDB-T59321 @TestCaseKey=UDB-T59322 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify Non registered Bharat QR user click on QR code option

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Then user verifies on page MSMEBQRPage for "QR Code" text in placeholder QRCodeTitlePage
	Then user verifies on page MSMEBQRPage for "Register to get your QR" text in placeholder QRCodePage
	Then user is on page MSMEBQRPage to check BharatQRCodeButton is Enabled
	Then user is on page MSMEBQRPage to check UPIQRCodeButton is Enabled
	Given user is on page MSMEBQRPage clicks on BackIcon
	Then user verifies on page MSMEBQRPage for QR\nCode text in placeholder HomeQRCodeField
	
@TestCaseKey=UDB-T59323 @TestCaseKey=UDB-T59324 @TestCaseKey=UDB-T59325 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify Business Details section on  Bharat QR Registration page

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Then user verifies on page MSMEBQRPage for "Bharat QR Registration" text in placeholder BharatQRRegistration
	Then user verifies on page BQRRegistrationPage for "Business Details" text in placeholder BusinessDetailsTitle
	Then user verifies on page BQRRegistrationPage for "Review & Submit" text in placeholder Review&SubmitTitle
	Then user verifies on page BQRRegistrationPage for "Kindly add your Business Details" text in placeholder BusinessDetailsText
	Then user verifies on page BQRRegistrationPage for "1. Merchant Details" text in placeholder MerchantDetailsText
	Then user verifies on page BQRRegistrationPage for "Patork Automation" text in placeholder BusinessNameField
	Then user verifies on page BQRRegistrationPage for "ARJPM0010C" text in placeholder PANField
	Then user verifies on page BQRRegistrationPage for "27 Madhav Estate Nr Yogeshwar" text in placeholder BusinessAddressField
	When user swipe down the page
	Then user verifies on page BQRRegistrationPage for "2. QR Details" text in placeholder QRDetailsText
	Then user is on page BQRRegistrationPage to check ContinueButton is Enabled
	
	
@TestCaseKey=UDB-T59331 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify details under Merchant details section on Bharat QR Registration page

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Then user verifies on page BQRRegistrationPage for "Settlement Account" text in placeholder SettlementAccountDropdown
	Then user verifies on page BQRRegistrationPage for "Expected Annual Turnover (INR) " text in placeholder AnnualTurnoverDropdown
#	Then user verifies on page BQRRegistrationPage for "GSTIN" text in placeholder GSTINTextBox
	Then user verifies on page BQRRegistrationPage for "Nature of Business" text in placeholder BusinessDropdown
  When user scrolls down to "2. QR Details"
  Then user verifies on page BQRRegistrationPage for "Mobile  Number" text in placeholder MobileTextbox
  Then user verifies on page BQRRegistrationPage for "Email Address" text in placeholder EmailTextbox
  
	
@TestCaseKey=UDB-T59333 @TestCaseKey=UDB-T59334 @TestCaseKey=UDB-T59340 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify for Settlement account last 5 digits are shown and remining characters are masked and is also clickable.

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Then user verifies on page BQRRegistrationPage for "Union Bank of India Accounts" text in placeholder BankNameHeader
	Then user verifies on page BQRRegistrationPage for "xxxxx 00102" text in placeholder PartorkCashCreditAccountMasked
	Then user verifies on page BQRRegistrationPage for "xxxxx 27213" text in placeholder PartorkOverDraftAccountMasked
	Then user verifies on page BQRRegistrationPage for "xxxxx 51647" text in placeholder PartorkCurrectAccountMasked


@TestCaseKey=UDB-T59335 @TestCaseKey=UDB-T59336 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify Default value shown  in Settlement account dropdown under Merchant details section on Bharat QR Registration page(3 accounts CCA,ODA,CAA mapped)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Then user verifies on page BQRRegistrationPage for "PATORK xxxxx 00102 (Cash Credit Account)" text in placeholder CCADefaultSelection
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Given user is on page BQRRegistrationPage clicks on PartorkOverDraftAccountMasked
	
	
@TestCaseKey=UDB-T59338 @TestCaseKey=UDB-T59363 @TestCaseKey=UDB-T59364 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify QR option  is shown under Deposit section on home page for users having either a current account, overdraft account or cash credit type of account(CA,OD CC))

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Then user verifies on page BQRRegistrationPage for "PATORK's Overdraft Account" text in placeholder ODADefaultSelection
	
	
@TestCaseKey=UDB-T59349 @TestCaseKey=UDB-T59350 @TestCaseKey=UDB-T59351 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify values shown in Expected Annual Turnover (INR) Drop down  on Bharat QR Registration

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Then user verifies on page BQRRegistrationPage for "Expected Annual Turnover (INR) " text in placeholder AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Then user verifies on page BQRRegistrationPage for "Expected Annual Turnover (INR)" text in placeholder TurnoverDropdownTitle
	Then user is on page BQRRegistrationPage to check TurnoverDropdownClose is Displayed
	Then user verifies on page BQRRegistrationPage for "Less than ₹10L" text in placeholder TurnoverDropdownTitle
	Then user verifies on page BQRRegistrationPage for "₹10L to ₹20L" text in placeholder TurnoverDropdownTitle
	Then user verifies on page BQRRegistrationPage for "₹20L to ₹50L" text in placeholder TurnoverDropdownTitle
	Given user is on page BQRRegistrationPage clicks on TurnoverDropdownClose
	
	
@TestCaseKey=UDB-T59352 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify error message shown below Annual turnover field if user leaves field blank

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	When user swipe down the page
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	When user scrolls up to "1. Merchant Details"
	Then user verifies on page BQRRegistrationPage for "Please select Expected Annual Turnover (INR)" text in placeholder TurnoverErrorMessage
	
	
@TestCaseKey=UDB-T59367 @TestCaseKey=UDB-T59368 @TestCaseKey=UDB-T59369 @TestCaseKey=UDB-T59370 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify Nature of Business Drop down, values in dropdown and text fields on Bharat QR Registration

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Then user verifies on page BQRRegistrationPage for "Nature of Business" text in placeholder BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Then user verifies on page BQRRegistrationPage for "Nature of Business" text in placeholder BusinessDropdownTitle
	Then user is on page BQRRegistrationPage to check BusinessDropdownClose is Displayed
	Then user is on page BQRRegistrationPage to check NatureOfBusinessOption is Displayed
	Given user is on page BQRRegistrationPage clicks on BusinessDropdownClose
	
@TestCaseKey=UDB-T59371 @Automatable @RedmiNote9Pro  @Set4 @GenerateQRCode
Scenario: Verify user can change Nature of business even if Nature of Business is fetched from CBS

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Given user is on page MSMEBQRPage clicks on OverdraftAccount
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
	
	
@TestCaseKey=UDB-T59373 @Automatable @RedmiNote9Pro  @Set4 @GenerateQRCode
Scenario: Verify Mobile number field on Bharat QR Registration

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Given user is on page MSMEBQRPage clicks on OverdraftAccount
	When user scrolls down to "2. QR Details"
	Then user is on page BQRRegistrationPage to check MobileField is NotClickable
	
	
@TestCaseKey=UDB-T59374 @Automatable @RedmiNote9Pro  @Set4 @GenerateQRCode
Scenario: Verify Mobile number field is editable on Bharat QR Registration

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	When user swipe down the page
	Then user verifies on page BQRRegistrationPage for "Mobile  Number" text in placeholder MobileTextbox
	Then user is on page BQRRegistrationPage to check MobileField is NotClickable
	
	
@TestCaseKey=UDB-T59375 @TestCaseKey=UDB-T59376 @TestCaseKey=UDB-T59377 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify Email address is editable and few validation for new email entry on Bharat QR Registration

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	When user swipe down the page
	Then user verifies on page BQRRegistrationPage for "Email Address" text in placeholder EmailTextbox
	Then user verifies on page BQRRegistrationPage for "vmoyalanubi@gmail.com" text in placeholder EmailPopulated
	Then user is on page BQRRegistrationPage to check EmailTextbox is NotClickable
	Then user is on page BQRRegistrationPage to check EmailEditIcon is Displayed
	Given user is on page BQRRegistrationPage clicks on EmailEditIcon
	
	
@TestCaseKey=UDB-T59378 @TestCaseKey=UDB-T59379 @TestCaseKey=UDB-T59380 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify Email address is editable and few validation for new email entry on Bharat QR Registration.

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	When user swipe down the page
	Given user is on page BQRRegistrationPage clicks on EmailEditIcon
	When user is on page BQRRegistrationPage and types test.com on EnterEmail
	Given user is on page BQRRegistrationPage clicks on VerifyEmail
	Then user verifies on page BQRRegistrationPage for "Please enter valid email address" text in placeholder EmailFieldError
	When user is on page BQRRegistrationPage and types test.gmail.com on EnterEmail
	Given user is on page BQRRegistrationPage clicks on VerifyEmail
	Then user verifies on page BQRRegistrationPage for "Please enter valid email address" text in placeholder EmailFieldError
	
	
@TestCaseKey=UDB-T59381 @TestCaseKey=UDB-T59382 @TestCaseKey=UDB-T59383 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify button Verify for Email address field

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	When user swipe down the page
	Given user is on page BQRRegistrationPage clicks on EmailEditIcon
	When user is on page BQRRegistrationPage and types vmoyalan@gmail.com on EnterEmail
	Given user is on page BQRRegistrationPage clicks on VerifyEmail
	Then user verifies on page BQRRegistrationPage for "Enter OTP" text in placeholder EnterOTPWindow
	Then user is on page BQRRegistrationPage to check SubmitButton is Enabled
	Given user is on page BQRRegistrationPage clicks on SubmitButton
	
@TestCaseKey=UDB-T59385 @Automatable @RedmiNote9Pro  @Set4
Scenario:Verify user enters invalid email address

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Given user is on page MSMEBQRPage clicks on OverdraftAccount	
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	When user swipe down the page
	Given user is on page BQRRegistrationPage clicks on EmailEditIcon
	When user is on page BQRRegistrationPage and types test.com on EnterEmail
	Given user is on page BQRRegistrationPage clicks on VerifyEmail
	Then user verifies on page BQRRegistrationPage for "Please enter valid email address" text in placeholder EmailFieldError
	When user is on page BQRRegistrationPage and types test.gmail.com on EnterEmail
	Given user is on page BQRRegistrationPage clicks on VerifyEmail
	Then user verifies on page BQRRegistrationPage for "Please enter valid email address" text in placeholder EmailFieldError
	

@TestCaseKey=UDB-T59396 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify QR details section on Bharat QR Registration

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	When user swipe down the page
	Then user verifies on page BQRRegistrationPage for "2. QR Details" text in placeholder QRDetailsText
	Then user verifies on page BQRRegistrationPage for "Set Nickname" text in placeholder SetNickNameQRText
	Then user verifies on page BQRRegistrationPage for "Set VPA ID" text in placeholder SetVPAIDText
	
	
@TestCaseKey=UDB-T59397 @TestCaseKey=UDB-T59398 @TestCaseKey=UDB-T59399 @TestCaseKey=UDB-T59400 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify field Set Nickname for QR under QR details section on Bharat QR Registration

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	When user swipe down the page
	Then user verifies on page BQRRegistrationPage for "Set Nickname" text in placeholder SetNickNameQRText
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	Then user verifies on page BQRRegistrationPage for "Please enter nickname" text in placeholder SetNickNameQRError
	When user is on page BQRRegistrationPage and types fourtycharectervalidationcheckforQRCodes on SetQRNickName
	When user is on page BQRRegistrationPage and types QR123 on SetQRNickName
	When user is on page BQRRegistrationPage and types TestQR on SetQRNickName
	When user is on page BQRRegistrationPage and types 98765 on SetQRNickName
	When user is on page BQRRegistrationPage and types <>:; on SetQRNickName
	
	
@TestCaseKey=UDB-T59402 @TestCaseKey=UDB-T59408 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify field Set VPA ID under QR details section on Bharat QR Registration

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	When user swipe down the page
	Then user verifies on page BQRRegistrationPage for "Set VPA ID" text in placeholder SetVPAIDText
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	Then user verifies on page BQRRegistrationPage for "VPA ID is required" text in placeholder SetVPNIDError
	When user is on page BQRRegistrationPage and types VPA123 on SetVPAID
	When user is on page BQRRegistrationPage and types TestVPA on SetVPAID
	When user is on page BQRRegistrationPage and types 98765 on SetVPAID
	When user is on page BQRRegistrationPage and types <>:; on SetVPAID
	
	
@TestCaseKey=UDB-T59403 @TestCaseKey=UDB-T59404 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify  field validation for Set VPA ID field under QR Details section on Bharat QR Registration

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	When user swipe down the page
	When user is on page BQRRegistrationPage and types VPA-123 on SetVPAID
	When user is on page BQRRegistrationPage and types Test--UBI on SetVPAID
	
	
@TestCaseKey=UDB-T59406 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify  user enters VPA ID which is not available under QR Details section on Bharat QR Registration

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	When user swipe down the page
	When user is on page BQRRegistrationPage and types VPA-123 on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Then user verifies on page BQRRegistrationPage for "VPA ID is not available" text in placeholder VPAIDNotValidError
	
@TestCaseKey=UDB-T59405 @TestCaseKey=UDB-T59407 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify VPA ID format and clicks on Check availability for Set VPA ID field under QR Details section on Bharat QR Registration

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	When user swipe down the page
#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Then user verifies on page BQRRegistrationPage for "VPA ID is available" text in placeholder VPAIDAvailableText
	Then user is on page BQRRegistrationPage to check VPNIDGreenTick is Displayed
	
	
@TestCaseKey=UDB-T59409 @TestCaseKey=UDB-T59410 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify Schedule charges below field Set VPA ID

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	When user swipe down the page
	Then user verifies on page BQRRegistrationPage for "Schedule of Charges" text in placeholder ScheduleOfChargesTitle
#	Then user verifies on page BQRRegistrationPage for "1. Debit Card: 0.40 %" text in placeholder ScheduleOfChargesTitleOne
#	Then user verifies on page BQRRegistrationPage for "2. Consumer Credit Card: 1.20 %" text in placeholder ScheduleOfChargesTitleTwo
#	Then user verifies on page BQRRegistrationPage for "3. Premium Credit Card: 1.20 %" text in placeholder ScheduleOfChargesTitleThree
#	Then user verifies on page BQRRegistrationPage for "4. Corporate Card: 2.76 %" text in placeholder ScheduleOfChargesTitleFour
#	Then user verifies on page BQRRegistrationPage for "5. International Card: 2.76 %" text in placeholder ScheduleOfChargesTitleFive
	
@TestCaseKey=UDB-T59411 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify user leaves mandatory field blank and taps on Continue button

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	When user swipe down the page
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	When user scrolls up to "1. Merchant Details"
	Then user verifies on page BQRRegistrationPage for "Expected Annual Turnover (INR) " text in placeholder AnnualTurnoverDropdown
	Then user verifies on page BQRRegistrationPage for "Nature of Business" text in placeholder BusinessDropdown
	When user swipe down the page
	Then user verifies on page BQRRegistrationPage for "Please enter nickname" text in placeholder SetNickNameQRError
	Then user verifies on page BQRRegistrationPage for "VPA ID is required" text in placeholder VPNIDError
	
	
@TestCaseKey=UDB-T59412 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify user fills mandatory fields and clicks on continue button on Bharat QR Registration

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto20L
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
	When user swipe down the page
	When user is on page BQRRegistrationPage and types QR123 on SetQRNickName
	#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	
	
@TestCaseKey=UDB-T59413 @TestCaseKey=UDB-T59414 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify  Review & Submit page on Bharat QR Registration	

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto20L
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
	When user swipe down the page
	When user is on page BQRRegistrationPage and types QR123 on SetQRNickName
	#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	Then user verifies on page BQRReviewSubmitPage for "Merchant Details" text in placeholder MerchantDetailsSection
	When user swipe down the page
	
@TestCaseKey=UDB-T59415 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify data under Merchant Details section on Review page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto20L
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
	When user swipe down the page
	When user is on page BQRRegistrationPage and types QR123 on SetQRNickName
	#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	Then user is on page BQRReviewSubmitPage to check MerchantChangeDetails is Enabled
	Given user is on page BQRReviewSubmitPage clicks on MerchantChangeDetails
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto10L
	
	
@TestCaseKey=UDB-T59416 @TestCaseKey=UDB-T59419 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify change button functionality besides Merchant Details on Review & Submit page

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto20L
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
	When user swipe down the page
	When user is on page BQRRegistrationPage and types QR123 on SetQRNickName
	#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	Then user is on page BQRReviewSubmitPage to check MerchantChangeDetails is Enabled
	Given user is on page BQRReviewSubmitPage clicks on MerchantChangeDetails
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto10L
	When user swipe down the page
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	Then user verifies on page BQRReviewSubmitPage for "Less than ₹10L" text in placeholder TurnoverLimitDisplayed
	
	
	
@TestCaseKey=UDB-T59417 @TestCaseKey=UDB-T59418 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify QR Details section on Review page and data under QR Details section on Review page	
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto20L
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
	When user swipe down the page
	When user is on page BQRRegistrationPage and types QR123 on SetQRNickName
	#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	Then user verifies on page BQRReviewSubmitPage for "Merchant Details" text in placeholder MerchantDetailsSection
	Then user verifies on page BQRReviewSubmitPage for "₹20L to ₹50L" text in placeholder TurnoverLimitDisplayed
	When user swipe down the page
	Then user verifies on page BQRReviewSubmitPage for "QR Details" text in placeholder QRDetailsSection
	Then user verifies on page BQRReviewSubmitPage for "QR123" text in placeholder QRNicknameDisplayed	
#	Then user verifies on page BQRReviewSubmitPage for "cttc-5601" text in placeholder VPNIDDisplayed
	
	
@TestCaseKey=UDB-T59420 @TestCaseKey=UDB-T59421 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify user clicks on change button  besides QR Details, changes details of QR Details and proceeds to Review & Submit page

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto20L
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
	When user swipe down the page
	When user is on page BQRRegistrationPage and types QR123 on SetQRNickName
	#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	When user swipe down the page
	Then user is on page BQRReviewSubmitPage to check QRChangeDetails is Enabled
	Given user is on page BQRReviewSubmitPage clicks on QRChangeDetails
	When user is on page BQRRegistrationPage and types T59420 on SetQRNickName
	#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	When user swipe down the page
	Then user verifies on page BQRReviewSubmitPage for "T59420" text in placeholder QRNicknameDisplayed	
#	Then user verifies on page BQRReviewSubmitPage for "t420-01" text in placeholder VPNIDDisplayed
	

@TestCaseKey=UDB-T59422 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify user can edit data on Review page

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto20L
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
	When user swipe down the page
	When user is on page BQRRegistrationPage and types T59422 on SetQRNickName
	#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	Then user is on page BQRReviewSubmitPage to check MerchantChangeDetails is Enabled
	When user swipe down the page
	Then user is on page BQRReviewSubmitPage to check QRChangeDetails is Enabled
	Then user is on page BQRReviewSubmitPage to check TnC is Enabled
	Then user is on page BQRReviewSubmitPage to check SubmitButton is Enabled
	
	
	
	
@TestCaseKey=UDB-T59423 @TestCaseKey=UDB-T59424 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify checkbox I accept all the terms and conditions related to Union Bank of India of Review & Submit page

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto20L
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
	When user swipe down the page
	When user is on page BQRRegistrationPage and types QR123 on SetQRNickName
	#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on TnC
	When user swipe down the page
	
	
@TestCaseKey=UDB-T59426 @TestCaseKey=UDB-T59427 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify Accept button and Download T&C button on terms and conditions page of Review & Submit page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto20L
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
	When user swipe down the page
	When user is on page BQRRegistrationPage and types QR123 on SetQRNickName
	#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on TnC
	When user swipe down the page
	Then user is on page BQRReviewSubmitPage to check AcceptTnC is Enabled
	Then user is on page BQRReviewSubmitPage to check DownloadTnC is Enabled
	
	
@TestCaseKey=UDB-T59452 @Automatable @RedmiNote9Pro  @Set3 @GenerateQRCode
Scenario: Verify back button functionality on QR Code page (Journey initiated from: Homepage --> Account ---> Select Account ---> Details -)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Then user is on page MSMEBQRPage to check SettlementAccounts is Enabled
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Then user verifies on page MSMEBQRPage for "PATORK's Current Account" text in placeholder PartorkCurrectAccount
	Then user verifies on page MSMEBQRPage for "PATORK's Cash Credit Account" text in placeholder PartorkCashCreditAccount
	Then user verifies on page MSMEBQRPage for "PATORK's Overdraft Account" text in placeholder PartorkOverDraftAccount
	Given user is on page MSMEBQRPage clicks on CloseIcon
	Given user is on page MSMEBQRPage clicks on BackIcon	
	
@TestCaseKey=UDB-T59453 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify user can Navigate to QR registration page  from :Homepage ---> QR Code

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Then user verifies on page MSMEBQRPage for "QR Code" text in placeholder QRCodeTitlePage
	Then user is on page MSMEBQRPage to check BharatQRCodeButton is Enabled
	Then user is on page MSMEBQRPage to check UPIQRCodeButton is Enabled
	
@TestCaseKey=UDB-T59454 @Automatable @RedmiNote9Pro  @Set1 @GenerateQRCode
Scenario: Verify back button functionality on QR Code page (journey initiated from : Homepage ---> QR Code)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Then user is on page MSMEBQRPage to check BharatQRCodeButton is Enabled
	Then user is on page MSMEBQRPage to check UPIQRCodeButton is Enabled
	Given user is on page MSMEBQRPage clicks on BackIcon
	Then user verifies on page MSMEBQRPage for QR\nCode text in placeholder HomeQRCodeField
	
	
@TestCaseKey=UDB-T59455 @TestCaseKey=UDB-T59456 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify user can Navigate to QR registration page  from : >Payments Landing Page->QR Code

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEBQRPage clicks on PaymentQRCodeField
	Then user verifies on page MSMEBQRPage for "QR Code" text in placeholder QRCodeTitlePage
	Then user is on page MSMEBQRPage to check BharatQRCodeButton is Enabled
	Then user is on page MSMEBQRPage to check UPIQRCodeButton is Enabled
	Given user is on page MSMEBQRPage clicks on BackIcon
	
	
@TestCaseKey=UDB-T59430 @TestCaseKey=UDB-T59432 @TestCaseKey=UDB-T59433 @TestCaseKey=UDB-T59434 @TestCaseKey=UDB-T59435 @TestCaseKey=UDB-T59437 @TestCaseKey=UDB-T59440 @TestCaseKey=UDB-T59443 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify Application Reference ID,Branch location,Apply Now,copy UPI fields on registration successful page

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto20L
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
	When user swipe down the page
	When user is on page BQRRegistrationPage and types QR123 on SetQRNickName
	#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on TnC
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on AcceptTnC
	Given user is on page BQRReviewSubmitPage clicks on SubmitButton
	Given user is on page BQRReviewSubmitPage clicks on TPIN
	When user is on page BQRReviewSubmitPage and types 1212 on TpinText
	Given user is on page BQRReviewSubmitPage clicks on TPINContinue
	Then user verifies on page BQRSuccessPage for "Thank you!" text in placeholder QRCodeSuccessScreen
	Then user is on page BQRSuccessPage to check CopyUPI is Enabled
	When user scrolls down to "Explore more services"
	Then user is on page BQRSuccessPage to check SoundBoxApplyNow is Displayed
	Then user is on page BQRSuccessPage to check ReferenceID is Displayed
	Then user is on page BQRSuccessPage to check BranchLocation is Displayed
	When user swipe down the page
	Then user is on page BQRSuccessPage to check PaymentLinkRegistration is Enabled
	Then user is on page BQRSuccessPage to check ApplyForPOS is Enabled
	Then user is on page BQRSuccessPage to check GoToHome is Enabled
	
	
@TestCaseKey=UDB-T59436 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify  back button on sound box page(navigated from Registration success page)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	When user scrolls down to "Explore more services"
	Given user is on page BQRSuccessPage clicks on SoundBoxApplyNow
	Given user is on page SoundBoxPage clicks on BackIcon
	Then user is on page BQRSuccessPage to check SoundBoxApplyNow is Displayed
	
	
@TestCaseKey=UDB-T59463 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify Apply for Sound Box from Registration successful page

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	When user scrolls down to "Explore more services"
	Given user is on page BQRSuccessPage clicks on SoundBoxApplyNow
	Then user is on page SoundBoxPage to check SoundBoxRadioButton is Enabled
	Given user is on page SoundBoxPage clicks on MSwipeSelection
	Then user is on page SoundBoxPage to check SoundBoxRadioButton is Enabled
	Then user verifies on page SoundBoxPage for "Boombox X1 – 3in1 Device" text in placeholder BoomBoxX1
	When user swipe down the page
	Then user is on page SoundBoxPage to check SoundBoxRadioButton is Enabled
	Then user verifies on page SoundBoxPage for "Soundbox - Boombox" text in placeholder BoomBox
	
@TestCaseKey=UDB-T59439 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify  back button on Payment Link Registration page(navigated from BQR Registration success page)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	When user swipe down the page
	Given user is on page BQRSuccessPage clicks on PaymentLinkRegistration
	Then user is on page PaymentLinkPage to check RegisterPaymentLinkButton is Enabled
	
	
@TestCaseKey=UDB-T59442 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify  back button on POS Registration page(navigated from BQR Registration success page)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	When user swipe down the page
	Given user is on page BQRSuccessPage clicks on ApplyForPOS
	Given user is on page POSDevicePage clicks on BackIcon
	
	
	
@TestCaseKey=UDB-T59459 @Automatable @RedmiNote9Pro  @Set4 @GenerateQRCode
Scenario: Verify user is able to perform registration for ODA account(Journey initiated from: Homepage ---> QR Code

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on KDEnterpriseAccount
	Given user is on page MSMEDashboardPage clicks on BorrowingsTab
	Given user swipes left to "Overdraft"
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Given user is on page MSMEBQRPage clicks on SolePropCurrentAccount	
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto20L
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
	When user swipe down the page
	When user is on page BQRRegistrationPage and types QR123 on SetQRNickName
	#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on TnC
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on AcceptTnC
	Given user is on page BQRReviewSubmitPage clicks on SubmitButton
	Given user is on page BQRReviewSubmitPage clicks on TPIN
	When user is on page BQRReviewSubmitPage and types 1212 on TpinText
#	Given user is on page BQRReviewSubmitPage clicks on TPINContinue
#	Then user verifies on page BQRSuccessPage for "Thank you!" text in placeholder QRCodeSuccessScreen
#	Then user is on page BQRSuccessPage to check CopyUPI is Enabled
#	When user scrolls down to "Explore more services"
#	Then user is on page BQRSuccessPage to check SoundBoxApplyNow is Displayed
#	Then user is on page BQRSuccessPage to check ReferenceID is Displayed
#	Then user is on page BQRSuccessPage to check BranchLocation is Displayed
#	When user swipe down the page
#	Then user is on page BQRSuccessPage to check PaymentLinkRegistration is Enabled
#	Then user is on page BQRSuccessPage to check ApplyForPOS is Enabled
#	Then user is on page BQRSuccessPage to check GoToHome is Enabled


@TestCaseKey=UDB-T59461 @Automatable @RedmiNote9Pro  @Set4 @GenerateQRCode
Scenario: Verify user is able to perform registration for ODA account(Journey initiated from: Homepage ---> QR Code)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on KDEnterpriseAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Given user is on page MSMEBQRPage clicks on SolePropCurrentAccount	
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto20L
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
	When user swipe down the page
	When user is on page BQRRegistrationPage and types T59461 on SetQRNickName
	When user is on page BQRRegistrationPage and types ctcod-58 on SetVPAID
	#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on TnC
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on AcceptTnC
	Given user is on page BQRReviewSubmitPage clicks on SubmitButton
	Given user is on page BQRReviewSubmitPage clicks on TPIN
	When user is on page BQRReviewSubmitPage and types 1212 on TpinText
#	Given user is on page BQRReviewSubmitPage clicks on TPINContinue
#	Then user verifies on page BQRSuccessPage for "Thank you!" text in placeholder QRCodeSuccessScreen
#	Then user is on page BQRSuccessPage to check CopyUPI is Enabled
#	When user scrolls down to "Explore more services"
#	Then user is on page BQRSuccessPage to check SoundBoxApplyNow is Displayed
#	Then user is on page BQRSuccessPage to check ReferenceID is Displayed
#	Then user is on page BQRSuccessPage to check BranchLocation is Displayed
#	When user swipe down the page
#	Then user is on page BQRSuccessPage to check PaymentLinkRegistration is Enabled
#	Then user is on page BQRSuccessPage to check ApplyForPOS is Enabled
#	Then user is on page BQRSuccessPage to check GoToHome is Enabled
	
	
@TestCaseKey=UDB-T59509 @Automatable @RedmiNote9Pro  @Set4 @GenerateQRCode
Scenario: Verify Bharat QR is generate for Individaul user of sole prop

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on KDEnterpriseAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Given user is on page MSMEBQRPage clicks on SolePropCurrentAccount	
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto20L
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
	When user swipe down the page
	When user is on page BQRRegistrationPage and types T59461 on SetQRNickName
	#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on TnC
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on AcceptTnC
	Given user is on page BQRReviewSubmitPage clicks on SubmitButton
	Given user is on page BQRReviewSubmitPage clicks on TPIN
	When user is on page BQRReviewSubmitPage and types 1212 on TpinText
#	Given user is on page BQRReviewSubmitPage clicks on TPINContinue
#	Then user verifies on page BQRSuccessPage for "Thank you!" text in placeholder QRCodeSuccessScreen
#	Then user is on page BQRSuccessPage to check CopyUPI is Enabled
#	When user scrolls down to "Explore more services"
#	Then user is on page BQRSuccessPage to check SoundBoxApplyNow is Displayed
#	Then user is on page BQRSuccessPage to check ReferenceID is Displayed
#	Then user is on page BQRSuccessPage to check BranchLocation is Displayed
#	When user swipe down the page
#	Then user is on page BQRSuccessPage to check PaymentLinkRegistration is Enabled
#	Then user is on page BQRSuccessPage to check ApplyForPOS is Enabled
#	Then user is on page BQRSuccessPage to check GoToHome is Enabled
	
	
	
 #################################################################################################################################	
	
@TestCaseKey=UDB-T59464 @TestCaseKey=UDB-T59465 @Automatable @RedmiNote9Pro  @Set2 @SoundBox
Scenario: Verify back button on New SoundBox page and filters functionality in Select Product (Navigated from BQR registration page)
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageSoundBox
	Given user is on page SoundBoxPage clicks on ApplyForNewSoundBox
	Then user is on page SoundBoxPage to check BackIcon is Enabled
	Then user is on page SoundBoxPage to check FilterAll is Enabled
	Then user is on page SoundBoxPage to check MSwipeSelection is Enabled
	Then user verifies on page SoundBoxPage for "Mswipe" text in placeholder MSwipeText
	Given user is on page SoundBoxPage clicks on BackIcon
	
	
@TestCaseKey=UDB-T59466 @TestCaseKey=UDB-T59467 @Automatable @RedmiNote9Pro  @Set2 @SoundBox
Scenario: Verify radio button is available for sound box selection in Filter All and for Filter Mswipe

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
#	Given user is on page MSMEQRPage clicks on ManageSoundBox
#	Given user is on page SoundBoxPage clicks on ApplyForNewSoundBox
  Given user is on page MSMEQRPage clicks on ApplyForSoundBox
	Then user is on page SoundBoxPage to check SoundBoxRadioButton is Enabled
	Given user is on page SoundBoxPage clicks on MSwipeSelection
	Then user is on page SoundBoxPage to check SoundBoxRadioButton is Enabled
	Then user verifies on page SoundBoxPage for "Boombox X1 – 3in1 Device" text in placeholder BoomBoxX1
	When user swipe down the page
	Then user is on page SoundBoxPage to check SoundBoxRadioButton is Enabled
	Then user verifies on page SoundBoxPage for "Soundbox - Boombox" text in placeholder BoomBox
	
@TestCaseKey=UDB-T59569 @Automatable @RedmiNote9Pro  @Set4 
Scenario: Verify user renames QR code successfully ,goes to home page and Comes back to QR section
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on RenameQRText
	When user is on page ManageQRPage and types TestScript on QRNickNameTextBox
	Given user is on page ManageQRPage clicks on Submit
	Then user verifies on page ManageQRPage for "TestScript" text in placeholder QRCodeID
	

@TestCaseKey=UDB-T59471 @Automatable @RedmiNote9Pro @Set3 @SoundBox
Scenario: Verify Details shown for sound box in Filter All
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageSoundBox
	Given user is on page SoundBoxPage clicks on ApplyForNewSoundBox
	Then user verifies on page SoundBoxPage for "Boombox X1 – 3in1 Device" text in placeholder BoomBoxX1
	When user swipe down the page
	Then user verifies on page SoundBoxPage for "Soundbox - Boombox" text in placeholder BoomBox
	
	
@TestCaseKey=UDB-T59473 @Automatable @RedmiNote9Pro  @Set3 @SoundBox
Scenario: Verify Details shown for sound box in Filter Mswipe
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageSoundBox
	Given user is on page SoundBoxPage clicks on ApplyForNewSoundBox
	Given user is on page SoundBoxPage clicks on MSwipeSelection
	Then user verifies on page SoundBoxPage for "Boombox X1 – 3in1 Device" text in placeholder BoomBoxX1
	When user swipe down the page
	Then user verifies on page SoundBoxPage for "Soundbox - Boombox" text in placeholder BoomBox
	
	
@TestCaseKey=UDB-T59481 @Automatable @RedmiNote9Pro  @Set3 @SoundBox
Scenario: Verify search field validation
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageSoundBox
	Given user is on page SoundBoxPage clicks on ApplyForNewSoundBox
	When user is on page SoundBoxPage and types soundbox on SearchTextBox
	Then user is on page SoundBoxPage verifies amount in MonthlyRentalFee
	Then user is on page SoundBoxPage verifies amount in InstallationCharges
	Then user is on page SoundBoxPage verifies count in LockInPeriod
	
@TestCaseKey=UDB-T59482 @Automatable @RedmiNote9Pro  @Set3 @SoundBox
Scenario: Verify search result is not found for searched keyword
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
#	Given user is on page MSMEQRPage clicks on ManageSoundBox
	Given user is on page MSMEQRPage clicks on ApplyForSoundBox
	When user is on page SoundBoxPage and types testbox on SearchTextBox
	Then user verifies on page SoundBoxPage for "No results found. Try adjusting your search!" text in placeholder NoResultFoundText


@TestCaseKey=UDB-T59483 @Automatable @RedmiNote9Pro  @Set3 @SoundBox
Scenario: Verify user selects soundbox
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageSoundBox
	Given user is on page SoundBoxPage clicks on ApplyForNewSoundBox
	Given user is on page SoundBoxPage clicks on SoundBoxRadioButton
	
	
@TestCaseKey=UDB-T59484 @Automatable @RedmiNote9Pro @Set3 @SoundBox
Scenario: Verify last 5 digits of account are shown in below text " I hereby give my consent to debit my account  xxxxx" when user selects Sound box
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageSoundBox
	Given user is on page SoundBoxPage clicks on ApplyForNewSoundBox
	Given user is on page SoundBoxPage clicks on SoundBoxRadioButton
	Then user verifies on page SoundBoxPage for "I hereby give my consent to debit my account xxxxx" text in placeholder ConsentMessage
	
	
@TestCaseKey=UDB-T59485 @Automatable @RedmiNote9Pro @Set3 @SoundBox
Scenario: Verify Terms and conditions check box shown when user selects a soundbox in Select product step
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageSoundBox
#	Given user is on page MSMEQRPage clicks on ApplyForSoundBox
#	Given user is on page SoundBoxPage clicks on ApplyForNewSoundBox
	Given user is on page SoundBoxPage clicks on SoundBoxRadioButton
	Then user is on page SoundBoxPage to check AgreeConsent is Enabled
	
@TestCaseKey=UDB-T59487 @TestCaseKey=UDB-T59488 @Automatable @RedmiNote9Pro @Set3 @SoundBox
Scenario: Verify if user doesn t click on consent  check box in Select Product step
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageSoundBox
	Given user is on page SoundBoxPage clicks on ApplyForNewSoundBox
	Given user is on page SoundBoxPage clicks on SoundBoxRadioButton
	Given user is on page SoundBoxPage clicks on ContinueButton
	Given user is on page SoundBoxPage clicks on ConsentSelectionPopup
	
	
@TestCaseKey=UDB-T59491 @TestCaseKey=UDB-T59492 @Automatable @RedmiNote9Pro @Set3 @SoundBox
Scenario: Verify Review page shown when user clicks on continue button on Select Product page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageSoundBox
	Given user is on page SoundBoxPage clicks on ApplyForNewSoundBox
	Given user is on page SoundBoxPage clicks on SoundBoxRadioButton
	Given user is on page SoundBoxPage clicks on AgreeConsent
	Given user is on page SoundBoxPage clicks on ContinueButton
	Then user is on page SoundBoxPage to check SoundBoxVendor is Displayed
	Then user is on page SoundBoxPage to check MonthlyRentalFee is Displayed
	Then user is on page SoundBoxPage to check InstallationFee is Displayed
	Then user is on page SoundBoxPage to check LockPeriod is Displayed
	Then user is on page SoundBoxPage to check DeliveryAddress is Displayed
	When user swipe down the page
	Given user is on page SoundBoxPage clicks on TnC
	
@TestCaseKey=UDB-T59493 @Automatable @RedmiNote9Pro @Set3 @SoundBox
Scenario: Verify back button at top left on Review and submit page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageSoundBox
	Given user is on page SoundBoxPage clicks on ApplyForNewSoundBox
	Given user is on page SoundBoxPage clicks on SoundBoxRadioButton
	Given user is on page SoundBoxPage clicks on AgreeConsent
	Given user is on page SoundBoxPage clicks on ContinueButton
	Given user is on page SoundBoxPage clicks on BackIcon
	
@TestCaseKey=UDB-T59494 @Automatable @RedmiNote9Pro @Set3 @SoundBox
Scenario: Verify data in fields on Review and submit page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageSoundBox
	Given user is on page SoundBoxPage clicks on ApplyForNewSoundBox
	Given user is on page SoundBoxPage clicks on SoundBoxRadioButton
	Given user is on page SoundBoxPage clicks on AgreeConsent
	Given user is on page SoundBoxPage clicks on ContinueButton
	Then user is on page SoundBoxPage to check SoundBoxVendor is Displayed
	Then user is on page SoundBoxPage to check MonthlyRentalFee is Displayed
	Then user is on page SoundBoxPage to check InstallationFee is Displayed
	Then user is on page SoundBoxPage to check LockPeriod is Displayed
	Then user is on page SoundBoxPage to check DeliveryAddress is Displayed
	When user swipe down the page
	Given user is on page SoundBoxPage clicks on TnC

	
@TestCaseKey=UDB-T59495 @TestCaseKey=UDB-T59496 @TestCaseKey=UDB-T59497 @Automatable @RedmiNote9Pro @Set3 @SoundBox
Scenario: Verify data in fields on Review and submit page.
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageSoundBox
	Given user is on page SoundBoxPage clicks on ApplyForNewSoundBox
	Given user is on page SoundBoxPage clicks on SoundBoxRadioButton
	Given user is on page SoundBoxPage clicks on AgreeConsent
	Given user is on page SoundBoxPage clicks on ContinueButton
	Then user is on page SoundBoxPage to check SoundBoxVendor is Displayed
	Then user is on page SoundBoxPage to check MonthlyRentalFee is Displayed
	Then user is on page SoundBoxPage to check InstallationFee is Displayed
	Then user is on page SoundBoxPage to check LockPeriod is Displayed
	Then user is on page SoundBoxPage to check DeliveryAddress is Displayed
	When user swipe down the page
	Given user is on page SoundBoxPage clicks on TnC
	
@TestCaseKey=UDB-T59499 @TestCaseKey=UDB-T59500 @TestCaseKey=UDB-T59501 @TestCaseKey=UDB-T59502 @Automatable @RedmiNote9Pro @Set3 @SoundBox
Scenario: Verify appropriate data is shown for fields on Successful soundbox application page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageSoundBox
	Given user is on page SoundBoxPage clicks on ApplyForNewSoundBox
	Given user is on page SoundBoxPage clicks on SoundBoxRadioButton
	Given user is on page SoundBoxPage clicks on AgreeConsent
	Given user is on page SoundBoxPage clicks on ContinueButton
	When user swipe down the page
	Given user is on page SoundBoxPage clicks on TnC
	When user swipe down the page
	Given user is on page SoundBoxPage clicks on AgreeTnC
	Given user is on page SoundBoxPage clicks on SubmitButton
	Given user is on page SoundBoxPage clicks on TPIN
	When user is on page SoundBoxPage and types 1212 on TpinText
	Given user is on page SoundBoxPage clicks on TPINContinue
	Then user verifies on page SoundBoxPage for "Thank you!" text in placeholder SoundBoxSuccessScreen
	Then user is on page SoundBoxPage to check ApplicationID is Displayed
	Then user is on page SoundBoxPage to check TotalDevices is Displayed
	Then user is on page SoundBoxPage to check SettlementAccount is Displayed
	Then user is on page SoundBoxPage to check TotalAmount is Displayed
	Then user is on page SoundBoxPage to check EstDelivery is Displayed
	Then user is on page SoundBoxPage to check GoToHomeButton is Enabled
	
	
	
	
	
	



#@TestCaseKey=UDB-T59510 @TestCaseKey=UDB-T59511 @Automatable @RedmiNote9Pro  @Set3 @GenerateQRCode
#Scenario: Verify Bharat QR is generate for Retails Individaul user(not having ECIF mapped)
#
#	Given user logins to MSME app
#	Given user logins to MSME app entering Login PIN
#	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
#	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
#	Given user is on page MSMEAccountsPage clicks on DepositTab
#	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
#	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
#	Given user is on page MSMEBQRPage clicks on Okay
#	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
#	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto20L
#	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
#	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
#	When user swipe down the page
#	When user is on page BQRRegistrationPage and types vmoyalanubi@gmail.com on EnterEmail
#	When user is on page BQRRegistrationPage and types IND123 on SetQRNickName
#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
# When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
#	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
#	Given user is on page BQRRegistrationPage clicks on ContinueButton
#	Then user verifies on page BQRReviewSubmitPage for "Merchant Details" text in placeholder MerchantDetailsSection
#	Then user verifies on page BQRReviewSubmitPage for "₹20L to ₹50L" text in placeholder TurnoverLimitDisplayed
#	When user swipe down the page
#	Then user verifies on page BQRReviewSubmitPage for "QR Details" text in placeholder QRDetailsSection
#	Then user verifies on page BQRReviewSubmitPage for "IND123" text in placeholder QRNicknameDisplayed	
#	Then user verifies on page BQRReviewSubmitPage for "vjm-5602" text in placeholder VPNIDDisplayed
#	Given user is on page BQRReviewSubmitPage clicks on TnC
#	When user swipe down the page
#	Given user is on page BQRReviewSubmitPage clicks on AcceptTnC
#	Given user is on page BQRReviewSubmitPage clicks on SubmitButton
#	Given user is on page BQRReviewSubmitPage clicks on TPIN
#	When user is on page BQRReviewSubmitPage and types 1212 on TpinText
#	Given user is on page BQRReviewSubmitPage clicks on TPINContinue
#	Then user verifies on page BQRSuccessPage for "Thank you!" text in placeholder QRCodeSuccessScreen
#	Then user is on page BQRSuccessPage to check CopyUPI is Enabled
#	When user scrolls down to "Explore more services"
#	Then user is on page BQRSuccessPage to check SoundBoxApplyNow is Displayed
#	Then user is on page BQRSuccessPage to check ReferenceID is Displayed
#	Then user is on page BQRSuccessPage to check BranchLocation is Displayed
#	When user swipe down the page
#	Then user is on page BQRSuccessPage to check PaymentLinkRegistration is Enabled
#	Then user is on page BQRSuccessPage to check ApplyForPOS is Enabled
#	Then user is on page BQRSuccessPage to check GoToHome is Enabled
#	
	
@TestCaseKey=UDB-T59519 @TestCaseKey=UDB-T59524 @TestCaseKey=UDB-T59525 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify BQR registered user goes to QR Code option from Deposit >> click on account CC
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Then user verifies on page MSMEQRPage for "+Generate New QR Code" text in placeholder GenerateNewQRCode
	Given user is on page MSMEQRPage clicks on GenerateNewQRCode
	Given user is on page MSMEQRPage clicks on ContinueButton
	Given user is on page MSMEQRPage clicks on BackIcon
	
@TestCaseKey=UDB-T59522 @TestCaseKey=UDB-T59523 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify BQR registered user goes to QR Code option from Deposit >> click on account OD

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on SettlementAccount
	Given user is on page MSMEQRPage clicks on OverDraftAccountOption
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page MSMEQRPage clicks on BackIcon
	
@TestCaseKey=UDB-T59520 @TestCaseKey=UDB-T59521 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify BQR registered user goes to QR Code option from Deposit >> click on account CAA

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on SettlementAccount
	Given user is on page MSMEQRPage clicks on CurrentAccountOption
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page MSMEQRPage clicks on BackIcon
	
@TestCaseKey=UDB-T59529 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify +Generate New QR code button on BQR page

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Then user is on page MSMEQRPage to check GenerateNewQRCode is Displayed
	Then user verifies on page MSMEQRPage for "+Generate New QR Code" text in placeholder GenerateNewQRCode
	
@TestCaseKey=UDB-T59530 @TestCaseKey=UDB-T59531 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify user selects Bharat QR option on Generate New QR Code
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on GenerateNewQRCode
	Given user is on page MSMEQRPage clicks on ContinueButton
	Then user verifies on page BQRRegistrationPage for "Set Nickname" text in placeholder SetNickNameQRText
	Then user verifies on page BQRRegistrationPage for "Settlement Account" text in placeholder SettlementAccountDropdown
	Then user verifies on page BQRRegistrationPage for "VIJAYKUMAR's xxxxx 00004 (Cash Credit Account)" text in placeholder AssignedSettlementAccount
	Then user is on page BQRRegistrationPage to check AssignedSettlementAccountDropDown is NotClickable
	Then user verifies on page BQRRegistrationPage for "Set VPA ID" text in placeholder SetVPAIDText
	Then user verifies on page BQRRegistrationPage for "Schedule of Charges" text in placeholder ScheduleOfChargesTitle
#	Then user verifies on page BQRRegistrationPage for "1. Debit Card: 0.40 %" text in placeholder ScheduleOfChargesTitleOne
#	Then user verifies on page BQRRegistrationPage for "2. Consumer Credit Card: 1.20 %" text in placeholder ScheduleOfChargesTitleTwo
#	Then user verifies on page BQRRegistrationPage for "3. Premium Credit Card: 1.20 %" text in placeholder ScheduleOfChargesTitleThree
#	Then user verifies on page BQRRegistrationPage for "4. Corporate Card: 2.76 %" text in placeholder ScheduleOfChargesTitleFour
#	Then user verifies on page BQRRegistrationPage for "5. International Card: 2.76 %" text in placeholder ScheduleOfChargesTitleFive
	Then user is on page BQRRegistrationPage to check GenerateQRButton is Enabled
	
	
@TestCaseKey=UDB-T59532 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify settlement Account on Generate New Bharat QR page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on GenerateNewQRCode
	Given user is on page MSMEQRPage clicks on ContinueButton
	Then user verifies on page BQRRegistrationPage for "Settlement Account" text in placeholder SettlementAccountDropdown
	Then user verifies on page BQRRegistrationPage for "VIJAYKUMAR's xxxxx 00004 (Cash Credit Account)" text in placeholder AssignedSettlementAccount
	Then user is on page BQRRegistrationPage to check AssignedSettlementAccountDropDown is NotClickable
	
	
@TestCaseKey=UDB-T59533 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify set VPA ID on Generate New Bharat QR page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on GenerateNewQRCode
	Given user is on page MSMEQRPage clicks on ContinueButton
	When user is on page BQRRegistrationPage and types bqrcctwo on SetNickNameForQRCode
	#	When user is on page BQRRegistrationPage and types vija-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Then user verifies on page BQRRegistrationPage for "VPA ID is available" text in placeholder VPAIDAvailableText
	
	
	
@TestCaseKey=UDB-T59534 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify user fills all the fields and clicks on generate QR code
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on GenerateNewQRCode
	Given user is on page MSMEQRPage clicks on ContinueButton
	When user is on page BQRRegistrationPage and types bqrcctwo on SetNickNameForQRCode
#	When user is on page BQRRegistrationPage and types cc-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Then user verifies on page BQRRegistrationPage for "VPA ID is available" text in placeholder VPAIDAvailableText
	Given user is on page BQRRegistrationPage clicks on GenerateQRButton
	
@TestCaseKey=UDB-T59535 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify Review Details on generate QR code page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on GenerateNewQRCode
	Given user is on page MSMEQRPage clicks on ContinueButton
	When user is on page BQRRegistrationPage and types bqrcctwo on SetNickNameForQRCode
#	When user is on page BQRRegistrationPage and types cc-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Then user verifies on page BQRRegistrationPage for "VPA ID is available" text in placeholder VPAIDAvailableText
	Given user is on page BQRRegistrationPage clicks on GenerateQRButton
	Then user verifies on page BQRReviewSubmitPage for "QR Details" text in placeholder QRDetailsSection
	Then user is on page BQRReviewSubmitPage to check QRNicknameDisplayed is Displayed
	Then user is on page BQRReviewSubmitPage to check VPNIDDisplayed is Displayed
	When user swipe down the page
	Then user is on page BQRReviewSubmitPage to check TnC is Displayed
	Then user is on page BQRReviewSubmitPage to check SubmitButton is Displayed
	
	
	
@TestCaseKey=UDB-T59537 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify user can download Terms & conditions
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on GenerateNewQRCode
	Given user is on page MSMEQRPage clicks on ContinueButton
	When user is on page BQRRegistrationPage and types bqrcctwo on SetNickNameForQRCode
#	When user is on page BQRRegistrationPage and types cc-5600 on SetVPAID
	When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Then user verifies on page BQRRegistrationPage for "VPA ID is available" text in placeholder VPAIDAvailableText
	Given user is on page BQRRegistrationPage clicks on GenerateQRButton
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on TnC
	Given user is on page BQRReviewSubmitPage clicks on DownloadTnC
	Given user is on page BQRReviewSubmitPage clicks on AllowPermission
	
	
	
@TestCaseKey=UDB-T59536 @TestCaseKey=UDB-T59538 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify terms and conditions page of Review & Submit and Accept terms and conditions on Generate New Bharat QR page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on GenerateNewQRCode
	Given user is on page MSMEQRPage clicks on ContinueButton
	When user is on page BQRRegistrationPage and types bqrcctwo on SetNickNameForQRCode
#	When user is on page BQRRegistrationPage and types cc-5600 on SetVPAID
	When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Then user verifies on page BQRRegistrationPage for "VPA ID is available" text in placeholder VPAIDAvailableText
	Given user is on page BQRRegistrationPage clicks on GenerateQRButton
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on T&C
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on AcceptTnC
	
	
	
@TestCaseKey=UDB-T59540 @TestCaseKey=UDB-T59541 @TestCaseKey=UDB-T59542 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify user enters correct TPIN and proceeds
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on GenerateNewQRCode
	Given user is on page MSMEQRPage clicks on ContinueButton
	When user is on page BQRRegistrationPage and types bqrcctwo on SetNickNameForQRCode
#	When user is on page BQRRegistrationPage and types ctc-5600 on SetVPAID
  When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Then user verifies on page BQRRegistrationPage for "VPA ID is available" text in placeholder VPAIDAvailableText
	Given user is on page BQRRegistrationPage clicks on GenerateQRButton
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on T&C
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on AcceptTnC
	Given user is on page BQRReviewSubmitPage clicks on SubmitButton
	Given user is on page BQRReviewSubmitPage clicks on TPIN
	When user is on page BQRReviewSubmitPage and types 1212 on TpinText
	Given user is on page BQRReviewSubmitPage clicks on TPINContinue
	Then user verifies on page BQRSuccessPage for "Bharat QR generated" text in placeholder BharatQRSuccessScreen
	When user swipe down the page
	Then user is on page BQRSuccessPage to check SoundBoxApplyNow is Displayed
	Then user is on page BQRSuccessPage to check PaymentLinkRegistration is Enabled
	Then user is on page BQRSuccessPage to check ApplyForPOS is Enabled
	Then user is on page BQRSuccessPage to check YourQRButton is Enabled
	Then user is on page BQRSuccessPage to check ShareViaButton is Enabled
	
	
@TestCaseKey=UDB-T59516 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify one MID can be linked to multiple TIDs (up to 10 TIDs)
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Then user verifies on page ManageQRPage for "ANDB0000827958978816" text in placeholder MID
	
	
@TestCaseKey=UDB-T59542 @TestCaseKey=UDB-T59543 @TestCaseKey=UDB-T59548 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify user can generate Dynamic QR by clicking on button enter amount to generate QR and proceed
	
	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page DynamicQRCodePage clicks on DynamicQRGeneration
	Then user verifies on page DynamicQRCodePage for "Generate Dynamic QR" text in placeholder DynamicQRPageTitle
	Then user verifies on page DynamicQRCodePage for "Enter Amount to generate QR" text in placeholder QRGenerationText
	Then user verifies on page DynamicQRCodePage for "₹" text in placeholder RupeeSymbol
	Then user verifies on page DynamicQRCodePage for "Please enter an amount" text in placeholder EnterAmountText
	Then user verifies on page DynamicQRCodePage for "This dynamic QR will expire in 3 Minutes" text in placeholder QRExpireText
	Then user is on page DynamicQRCodePage to check ContinueButton is Enabled
	
	
@TestCaseKey=UDB-T59545 @TestCaseKey=UDB-T59549 @TestCaseKey=UDB-T59553 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify user amount is shown in words for amount entered by user on Generate Dynamic QR page and generates QR code.
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page DynamicQRCodePage clicks on DynamicQRGeneration
	Given user is on page DynamicQRCodePage clicks on ContinueButton
	Then user verifies on page DynamicQRCodePage for "Please enter amount." text in placeholder EnterAmountErrorMessage
	When user is on page DynamicQRCodePage and types 1500 on EnterAmount
	Then user is on page DynamicQRCodePage to check AmountInWords is Displayed
	Given user is on page DynamicQRCodePage clicks on ContinueButton
	Then user verifies on page DynamicQRCodePage for "Generated QR as per the amount entered" text in placeholder DynamicQRSuccessText
	When user swipe down the page
	Then user is on page DynamicQRCodePage to check DownloadQR is Displayed
	Then user is on page DynamicQRCodePage to check ShareQR is Displayed	
	
@TestCaseKey=UDB-T59558 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify functionality of 3 dots button at top right corner of BQR on QR code page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Then user verifies on page MSMEQRPage for "Set as Primary" text in placeholder SetPrimaryText
	Then user verifies on page MSMEQRPage for "Rename QR" text in placeholder RenameQRText
	Then user verifies on page MSMEQRPage for "Manage QR" text in placeholder ManageQRText
	Then user verifies on page MSMEQRPage for "Manage Sound Box" text in placeholder ManageSoundBoxText
	Then user verifies on page MSMEQRPage for "View Transactions" text in placeholder ViewTransactionsText
	Then user verifies on page MSMEQRPage for "Delete QR" text in placeholder DeleteQRText
	
@TestCaseKey=UDB-T59559 @TestCaseKey=UDB-T59561 @TestCaseKey=UDB-T59562 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify Set as Primary options under  3 dots button at top right corner of BQR on QR code page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on SetAsPrimary
	Then user verifies on page MSMEQRPage for "Primary" text in placeholder QRPrimaryDisplayed
	
@TestCaseKey=UDB-T59563 @TestCaseKey=UDB-T59566 @TestCaseKey=UDB-T59567 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify rename option under 3 dots button at top right corner of BQR on QR code page.
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ReNameQR
	When user is on page MSMEQRPage and types QRCCRenamed on EnterQRName
	Given user is on page MSMEQRPage clicks on SubmitButton

@TestCaseKey=UDB-T59565 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify VPA ID field  on rename page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageQR
	Given user is on page ManageQRPage clicks on ChangeOption
	Then user is on page ManageQRPage to check VPAIDTextBoxStatus is NotClickable
	
	
@TestCaseKey=UDB-T59570 @TestCaseKey=UDB-T59571 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify user clicks on Manage QR option under 3 dots
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageQR
	Then user verifies on page ManageQRPage for "Manage QR" text in placeholder ManageQRTitlePage
	Then user is on page ManageQRPage to check VPAID is Displayed
	Then user is on page ManageQRPage to check MID is Displayed
	Then user is on page ManageQRPage to check TID is Displayed
	Then user is on page ManageQRPage to check PaymentModesButton is Displayed
	Then user is on page ManageQRPage to check ChangeOption is Clickable
	When user swipe down the page
	Then user is on page ManageQRPage to check DisableVPAIDButton is Displayed
	
	
@TestCaseKey=UDB-T59573 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify Copy button functionality besides VPA ID on Manage QR page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageQR
	Then user is on page ManageQRPage to check CopyID is Displayed
	
	
@TestCaseKey=UDB-T59574 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify Share QR button on Manage QR page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageQR
	Given user is on page ManageQRPage clicks on ShareQRButton
	Given user is on page ManageQRPage clicks on CancelButton
	
	
@TestCaseKey=UDB-T59575 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify payment Mode button on Manage QR page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageQR
	Then user is on page ManageQRPage to check PaymentModesButton is Displayed
	Given user is on page ManageQRPage clicks on PaymentModesButton
	
	
@TestCaseKey=UDB-T59576 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify user can switch ON or OFF Toggle buttons on Payment mode page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageQR
	Given user is on page ManageQRPage clicks on PaymentModesButton	
	Given user is on page ManageQRPage clicks on UPIToggleSwitch
	
	
	
@TestCaseKey=UDB-T59577 @TestCaseKey=UDB-T59578 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify user can switch ON or OFF Toggle buttons on Payment mode page.
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageQR
	Given user is on page ManageQRPage clicks on PaymentModesButton	
	Given user is on page ManageQRPage clicks on UPIToggleSwitch
	Given user is on page ManageQRPage clicks on Submit
	Given user is on page ManageQRPage clicks on Okay
	Given user is on page ManageQRPage clicks on UPIToggleSwitch
	Given user is on page ManageQRPage clicks on Submit
	
@TestCaseKey=UDB-T59579 @TestCaseKey=UDB-T59580 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify Submit button and Submit button functionality on  Payment modes page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageQR
	Given user is on page ManageQRPage clicks on PaymentModesButton	
	Given user is on page ManageQRPage clicks on Submit
	
	
@TestCaseKey=UDB-T59835 @Automatable @RedmiNote9Pro  @Set4 
Scenario: Verify Registered account for BQR are greyed out and remainign accounts are not greyed outs  in  Settlement account dropdown  on QR code page.( CCA,ODA,CAA accounts mapped to CIF)  (individual user of Sole Prop)
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on SettlementAccount
	Then user is on page MSMEQRPage to check VIJAYKUMAROverdraftAccount is Clickable
	Then user is on page MSMEQRPage to check VIJAYKUMARCurrentAccount is Clickable
#	Then user is on page MSMEQRPage to check VIJAYKUMARCashCreditAccount is NotClickable
	
	
@TestCaseKey=UDB-T59582 @TestCaseKey=UDB-T59583 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify QR details section and data shown in fields on Manage QR page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageQR
	Then user is on page ManageQRPage to check QRCodeID is Displayed
	Then user is on page ManageQRPage to check VPAID is Displayed
	

@TestCaseKey=UDB-T59584 @TestCaseKey=UDB-T59585 @TestCaseKey=UDB-T59586 @TestCaseKey=UDB-T59587 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify change button besides QR details section and success screen is shown if user changes QR Nick name successfully
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageQR
	Given user is on page ManageQRPage clicks on ChangeOption
	Then user is on page ManageQRPage to check VPAIDTextBox is Disabled
	Then user is on page ManageQRPage to check QRNickNameTextBox is Enabled
	Given user is on page ManageQRPage clicks on BackIcon
	
	
@TestCaseKey=UDB-T59608 @TestCaseKey=UDB-T59609 @TestCaseKey=UDB-T59610 @TestCaseKey=UDB-T59611 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify Disable VPA ID action button on Mange QR page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageQR
	When user swipe down the page
	Then user verifies on page ManageQRPage for "Disable VPA ID" text in placeholder DisableVPAButtonText
	Given user is on page ManageQRPage clicks on DisableVPAButton
	Then user verifies on page ManageQRPage for "Disable VPA ID" text in placeholder DisableVPAAlertText
	Then user is on page ManageQRPage to check CancelBtn is Enabled
	Then user is on page ManageQRPage to check ContinueBtn is Enabled
	Given user is on page ManageQRPage clicks on CancelBtn
	Given user is on page ManageQRPage clicks on DisableVPAButton
	Given user is on page ManageQRPage clicks on ContinueBtn
	When user swipe down the page
	Then user verifies on page ManageQRPage for "Disabled" text in placeholder DisabledTextAlert
	Then user verifies on page ManageQRPage for "Enable VPA ID" text in placeholder EnableVPAButtonText
	
	
@TestCaseKey=UDB-T59613 @TestCaseKey=UDB-T59614 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify change button besides QR details section and success screen is shown if user changes QR Nick name successfully.
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ManageQR
	Then user is on page ManageQRPage to check QRCode is NotClickable
	Then user verifies on page ManageQRPage for "Disabled" text in placeholder DisabledTextAlert
	When user swipe down the page
	Then user verifies on page ManageQRPage for "Enable VPA ID" text in placeholder EnableVPAButtonText
	
	
@TestCaseKey=UDB-T59615 @TestCaseKey=UDB-T59616 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify VPA is disable and Enable VPA ID button enabled shown below QR code on page QR code
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Then user is on page ManageQRPage to check QRCode is NotClickable
	Then user verifies on page ManageQRPage for "• Disabled" text in placeholder DisabledTextAlert
	Then user is on page ManageQRPage to check EnableVPAButton is Displayed
	
	
@TestCaseKey=UDB-T59617 @TestCaseKey=UDB-T59619 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify View Transaction option under 3 dots on QR Code page
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on ThreeDots
	Given user is on page MSMEQRPage clicks on ViewTransactions
	Then user verifies on page ManageQRPage for "View Transactions" text in placeholder ViewTransactionsTitlePage
	
@TestCaseKey=UDB-T59820 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify Accounts shown in Settlement account drop down QR code page if none accounts are registerd for BQR
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Then user verifies on page MSMEBQRPage for "Cash Credit Account" text in placeholder CashCreditAccount
	Then user verifies on page MSMEBQRPage for "Overdraft Account" text in placeholder OverdraftAccount
	Then user verifies on page MSMEBQRPage for "Current Account" text in placeholder CurrentAccount
	
@TestCaseKey=UDB-T59821 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify user is able to select Accounts shown in Settlement account drop down QR code page if none accounts are registerd for BQR
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Given user is on page MSMEBQRPage clicks on CurrentAccount
	Then user verifies on page MSMEBQRPage for "Current Account" text in placeholder CurrentAccount
	
@TestCaseKey=UDB-T59822 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify Settlement account drop down is shown on QR code page when user successfully registered for atleast 1 account (sole Prop)
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on KDEnterpriseAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Then user is on page MSMEBQRPage to check SettlementAccounts is Displayed
	
@TestCaseKey=UDB-T59823 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify  account sorting order  in Settlement account dropdown drop down on QR code page (sole Prop)
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on KDEnterpriseAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Then user verifies on page MSMEBQRPage for "Cash Credit Account" text in placeholder SolePropCashCreditAccount
#	Then user verifies on page MSMEBQRPage for "Overdraft Account" text in placeholder SolePropOverdraftAccount
	Then user verifies on page MSMEBQRPage for "Current Account" text in placeholder SolePropCurrentAccount
	
@TestCaseKey=UDB-T59828 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify Settlement account drop down is shown on QR code page (individual user of Sole Prop)
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Then user is on page MSMEBQRPage to check SettlementAccounts is Displayed
	
@TestCaseKey=UDB-T59832 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify  account sorting order  in Settlement account dropdown drop down on QR code page  (individual user of Sole Prop)
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Then user verifies on page MSMEBQRPage for "Cash Credit Account" text in placeholder CashCreditAccount
	Then user verifies on page MSMEBQRPage for "Overdraft Account" text in placeholder OverdraftAccount
	Then user verifies on page MSMEBQRPage for "Current Account" text in placeholder CurrentAccount
	
@TestCaseKey=UDB-T59831 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify Settlement account drop down is shown on QR code page when user successfully registered for atleast 1 account  (individual user of Sole Prop)
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Then user is on page MSMEBQRPage to check SettlementAccounts is Displayed
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Then user is on page MSMEBQRPage to check BankAccountHeaderName is Displayed
	
	
@TestCaseKey=UDB-T59842 @Automatable @RedmiNote9Pro  @Set2 @GenerateQRCode
Scenario: Verify  user is able to select account from  Settlement account dropdown  on QR code page and perform BQR registration successfully (sole Prop)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on KDEnterpriseAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEBQRPage clicks on SettlementAccounts
	Given user is on page MSMEBQRPage clicks on OverdraftAccount
	Given user is on page MSMEBQRPage clicks on BharatQRCodeButton
	Given user is on page BQRRegistrationPage clicks on AnnualTurnoverDropdown
	Given user is on page BQRRegistrationPage clicks on TurnoverLimitupto20L
	Given user is on page BQRRegistrationPage clicks on BusinessDropdown
	Given user is on page BQRRegistrationPage clicks on NatureOfBusinessSelection
	When user swipe down the page
	When user is on page BQRRegistrationPage and types QR123 on SetQRNickName
	When user is on page BQRRegistrationPage to enter auto generated text on SetVPAID
	Given user is on page BQRRegistrationPage clicks on VPAIDAvailability
	Given user is on page BQRRegistrationPage clicks on ContinueButton
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on TnC
	When user swipe down the page
	Given user is on page BQRReviewSubmitPage clicks on AcceptTnC
	Given user is on page BQRReviewSubmitPage clicks on SubmitButton
	Given user is on page BQRReviewSubmitPage clicks on TPIN
	When user is on page BQRReviewSubmitPage and types 1212 on TpinText
#	Given user is on page BQRReviewSubmitPage clicks on TPINContinue
#	Then user verifies on page BQRSuccessPage for "Thank you!" text in placeholder QRCodeSuccessScreen
#	Then user is on page BQRSuccessPage to check CopyUPI is Enabled
#	When user scrolls down to "Explore more services"
#	Then user is on page BQRSuccessPage to check SoundBoxApplyNow is Displayed
#	Then user is on page BQRSuccessPage to check ReferenceID is Displayed
#	Then user is on page BQRSuccessPage to check BranchLocation is Displayed
#	When user swipe down the page
#	Then user is on page BQRSuccessPage to check PaymentLinkRegistration is Enabled
#	Then user is on page BQRSuccessPage to check ApplyForPOS is Enabled
#	Then user is on page BQRSuccessPage to check GoToHome is Enabled


@TestCaseKey=UDB-T59836 @Automatable @RedmiNote9Pro  @Set4 
Scenario: Verify Registered account for BQR in settlement Account dropdown  are greyed out and for remaining non greyed out accounts user is able to register(CCA,ODA,CAA accounts mapped to CIF)  (individual user of Sole Prop)
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on SettlementAccount
	Then user is on page MSMEQRPage to check VIJAYKUMAROverdraftAccount is Clickable
	Then user is on page MSMEQRPage to check VIJAYKUMARCurrentAccount is Clickable
#	Then user is on page MSMEQRPage to check VIJAYKUMARCashCreditAccount is NotClickable
	
	
@TestCaseKey=UDB-T59827 @Automatable @RedmiNote9Pro  @Set4 
Scenario: Verify Registered account for BQR in settlement Account dropdown  are greyed out and for remaining non greyed out accounts user is able to register( CCA,ODA,CAA accounts mapped to CIF) (sole Prop)
	
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on KDEnterpriseAccount
	Given user is on page MSMEAccountsPage clicks on DepositTab
	Given user is on page MSMEBQRPage clicks on HomeQRCodeField
	Given user is on page MSMEQRPage clicks on SettlementAccount
	Then user is on page MSMEQRPage to check KsCurrentAccount is Clickable
	Then user is on page MSMEQRPage to check KsCashCreditAccount is NotClickable
	