Feature: Mobile UI automation for MSME Login Page
#Tester: Vijay Moyalan

#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps


@TestCaseKey=UDB-T45653 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Error Message for Incorrect OTP During Login PIN Reset

	# Given user logins to MSME app
	Given user is on page MSMEPreLoginPage clicks on ForgotPinOption
	Given user is on page MSMEPreLoginPage clicks on AadhaarCardOption
	When user is on page MSMEPreLoginPage and types 990050765320 on EnterAadhaarNumber
	Given user is on page MSMEPreLoginPage clicks on SendOTPButton
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	When user is on page MSMEPreLoginPage and types 1212 on EnterMPIN
#	When user is on page MSMEPreLoginPage and types 2121 on ConfirmMPIN
#	Given user is on page MSMEPreLoginPage clicks on SubmitButton
#	Then user verifies on page MSMEPreLoginPage for "The entered and re-entered Login PIN do not match" text in placeholder IncorrectMPINAlert
	
	
@TestCaseKey=UDB-T45671 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Mobile Number Validation with Aadhaar

	# Given user logins to MSME app
	Given user is on page MSMEPreLoginPage clicks on ForgotPinOption
	Given user is on page MSMEPreLoginPage clicks on AadhaarCardOption
	When user is on page MSMEPreLoginPage and types 990050765320 on EnterAadhaarNumber
	Given user is on page MSMEPreLoginPage clicks on SendOTPButton
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	Then user verifies on page MSMEPreLoginPage for "Please set your Login PIN" text in placeholder SetLoginTitle
	
	
@TestCaseKey=UDB-T45669 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Aadhaar Validation with UIDAI

	# Given user logins to MSME app
	Given user is on page MSMEPreLoginPage clicks on ForgotPinOption
	Given user is on page MSMEPreLoginPage clicks on AadhaarCardOption
	When user is on page MSMEPreLoginPage and types 990050765320 on EnterAadhaarNumber
	Given user is on page MSMEPreLoginPage clicks on SendOTPButton
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
	
@TestCaseKey=UDB-T45657 @TestCaseKey=UDB-T45772 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Error Message for Incorrect OTP during TPIN Reset and TPIN field is masked during TPIN reset

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ProfileButton
	When user scrolls down to "MPIN"
	Given user is on page MyProfilePage clicks on TPINOption
	Given user is on page MyProfilePage clicks on ResetPIN
	Given user is on page MSMEPreLoginPage clicks on AadhaarCardOption
	When user is on page MSMEPreLoginPage and types 990050765320 on EnterAadhaarNumber
	Given user is on page MSMEPreLoginPage clicks on SendOTPButton
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	When user is on page MSMELoginPage and types 1357 on EnterTPIN
#	When user is on page MSMELoginPage and types 2468 on ReEnterTPIN
#	Then user verifies on page MSMELoginPage for "* * * *" text in placeholder MaskedEnterTPIN
#	Then user verifies on page MSMELoginPage for "* * * *" text in placeholder MaskedReEnterTPIN
#	Given user is on page MSMELoginPage clicks on ConfirmButton
#	Then user verifies on page MSMELoginPage for "Transaction PIN entered does not match" text in placeholder TPINIncorrectMsg
	
@TestCaseKey=UDB-T45609 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Login PIN Setup (PIN Already Used) using Forget Pin Journey

	# Given user logins to MSME app
	Given user is on page MSMEPreLoginPage clicks on ForgotPinOption
	Given user is on page MSMEPreLoginPage clicks on AadhaarCardOption
	When user is on page MSMEPreLoginPage and types 990050765320 on EnterAadhaarNumber
#	Given user is on page MSMEPreLoginPage clicks on SendOTPButton
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton

@TestCaseKey=UDB-T45445 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify multiple Entiy CIF records for one RCIF

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Then user verifies on page MSMELoginPage for PATORK AUTOMATION text in placeholder SolePropAccountName
	Then user verifies on page MSMELoginPage for VIJAYKUMAR HARGOVINDBHAI PATEL text in placeholder IndividualAccountName
	
@TestCaseKey=UDB-T45446 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify individual customer can log into the business banking app

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	Given user logins to MSME app entering Login PIN
	
@TestCaseKey=UDB-T45449 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify login failure for invalid individual MPIN

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount	
	Given user logins to MSME app entering Incorrect Login PIN
	Then user verifies on page MSMELoginPage for "Please enter correct Login PIN," text in placeholder InvalidMPINText
	
@TestCaseKey=UDB-T45447 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify sole proprietor can log into the business banking app

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	Given user logins to MSME app entering Login PIN
	
	
#@TestCaseKey=UDB-T45450 @Automatable @RedmiNote9Pro  @Set1 -- secind incorrect login PIN which can lead to blocking of APP access.
#Scenario: Verify login failure for invalid sole proprietor credentials
#
#	Given user logins to MSME app
#	Given user is on page MSMELoginPage clicks on AccountDropDown
#	Given user is on page MSMELoginPage clicks on SolePropAccount	
#	Given user logins to MSME app entering Incorrect Login PIN
#	Then user verifies on page MSMELoginPage for "Please enter correct Login PIN," text in placeholder InvalidMPINText
	
@TestCaseKey=UDB-T45457 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Login with Current Account (Individual)

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on Accounts
	Given user is on page MSMEDashboardPage clicks on DepositTab
	Then user is on page MSMEAccountsPage to check VijaykumarCurrentAccount is Displayed
	
@TestCaseKey=UDB-T45458 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Login with Cash Credit Account (Individual)

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on Accounts
	Given user is on page MSMEAccountsPage clicks on BorrowingsTab
	Then user is on page MSMEAccountsPage to check VijaykumarCashCreditAccount is Displayed
	
@TestCaseKey=UDB-T45459 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Login with Overdraft Account (Individual)

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on Accounts
	Given user is on page MSMEAccountsPage clicks on BorrowingsTab
	Then user is on page MSMEAccountsPage to check VijaykumarOverDraftAccount is Displayed
	
	
@TestCaseKey=UDB-T45463 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Login with Current Account ( Sole Prop)

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on Accounts
	Given user is on page MSMEDashboardPage clicks on DepositTab
	Then user is on page MSMEAccountsPage to check PartorkAutomationCurrentAccount is Displayed
	
@TestCaseKey=UDB-T45464 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Login with Cash Credit Account ( Sole Prop)

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on Accounts
	Given user is on page MSMEAccountsPage clicks on BorrowingsTab
	Then user is on page MSMEAccountsPage to check PartorkAutomationCashCreditAccount is Displayed
	
@TestCaseKey=UDB-T45465 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Login with Overdraft Account ( Sole Prop)

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on Accounts
	Given user is on page MSMEAccountsPage clicks on BorrowingsTab
	Then user is on page MSMEAccountsPage to check PartorkAutomationOverDraftAccount is Displayed
	
@TestCaseKey=UDB-T45507 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify successful login for business banking app

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	Given user logins to MSME app entering Login PIN
	Then user verifies on page MSMELoginPage for "Patork Automation" text in placeholder SolePropAccountDisplayed
	
@TestCaseKey=UDB-T45494 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify mobile number linked to CIF fetch from CBS/Finacle

#	Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Then user verifies on page MSMELoginPage for PATORK AUTOMATION text in placeholder SolePropAccountName
	Then user verifies on page MSMELoginPage for VIJAYKUMAR HARGOVINDBHAI PATEL text in placeholder IndividualAccountName
	
	
@TestCaseKey=UDB-T45495 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify single retail CIF for an individual

#	Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ProfileButton
	Then user is on page MyProfilePage to check RetailCIFText is Displayed
#	Then user is on page MyProfilePage to check EntityCIFText is Not Displayed
	
	
@TestCaseKey=UDB-T45584 @Automatable @RedmiNote9Pro  @Set1
Scenario: Entity CIF & Retail CIF Relationship Fetch

#	Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ProfileButton
	Then user is on page MyProfilePage to check RetailCIFText is Displayed
	Then user is on page MyProfilePage to check EntityCIFText is Displayed
	
@TestCaseKey=UDB-T45604 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Entity Dropdown Display

#	Given user logins to MSME app
	Then user is on page MSMELoginPage to check AccountDropDown is Displayed
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Then user verifies on page MSMELoginPage for PATORK AUTOMATION text in placeholder SolePropAccountName
	Then user verifies on page MSMELoginPage for VIJAYKUMAR HARGOVINDBHAI PATEL text in placeholder IndividualAccountName
	
	
@TestCaseKey=UDB-T45746 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify logout behavior after successful login

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ProfileButton
	When user swipe down the page
	Given user is on page MyProfilePage clicks on LogoutButton
	Given user is on page MyProfilePage clicks on LogoutButton
	
	
@TestCaseKey=UDB-T45756 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate Sole Prop can Set password from Profile

#	Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ProfileButton
	When user scrolls down to "Password"
	Given user is on page MyProfilePage clicks on PasswordOption
	Given user is on page MyProfilePage clicks on SetPasswordOption
	Then user is on page MyProfilePage to check CorporateIDTextBox is Displayed
	Then user is on page MyProfilePage to check UserIDTextBox is Displayed
	
	
@TestCaseKey=UDB-T45758 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate Entity Dropdown Display after Login

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Then user verifies on page MSMELoginPage for PATORK AUTOMATION text in placeholder SolePropAccountName
	Then user verifies on page MSMELoginPage for VIJAYKUMAR HARGOVINDBHAI PATEL text in placeholder IndividualAccountName
	
	
@TestCaseKey=UDB-T45793 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify dropdown menu displays linked entity.

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Then user verifies on page MSMELoginPage for PATORK AUTOMATION text in placeholder SolePropAccountName
	Then user verifies on page MSMELoginPage for VIJAYKUMAR HARGOVINDBHAI PATEL text in placeholder IndividualAccountName
	
	
@TestCaseKey=UDB-T45794 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Add Another Account button

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	When user swipe down the page
	Then user is on page MSMELoginPage to check AddAnotherAccount is Clickable
	
	
@TestCaseKey=UDB-T45800 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify selection of individual entity

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	Given user logins to MSME app entering Login PIN
	Then user verifies on page MSMEDashboardPage for "Vijaykumar Hargovindbhai Patel" text in placeholder DashboardEntityName
	
	
@TestCaseKey=UDB-T45801 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify selection of sole proprietorship entity

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	Given user logins to MSME app entering Login PIN
	Then user verifies on page MSMEDashboardPage for "PATORK AUTOMATION" text in placeholder DashboardEntityName
	
	
@TestCaseKey=UDB-T45814 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify entity switching after Login PIN entry

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Then user verifies on page MSMEDashboardPage for "PATORK AUTOMATION" text in placeholder DashboardEntityName
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Then user verifies on page MSMEDashboardPage for "Vijaykumar Hargovindbhai Patel" text in placeholder DashboardEntityName
	
	
@TestCaseKey=UDB-T45879 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Balance Enquiry Redirection on Login Screen

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	When user swipe down the page
	Given user is on page MSMELoginPage clicks on BalanceEnquiryOption
	Given user is on page MSMELoginPage clicks on ComingSoonPopup
#	Given user logins to MSME app entering Login PIN
	
	
@TestCaseKey=UDB-T45880 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Send Money Redirection on Login Screen

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	When user swipe down the page
	Given user is on page MSMELoginPage clicks on SendMoneyOption
	Given user logins to MSME app entering Login PIN
	Then user verifies on page MSMELoginPage for "Send Money" text in placeholder SendMoneyTitlePage
	
	
@TestCaseKey=UDB-T45881 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify QR Code Redirection for Unregistered Users

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	When user swipe down the page
	Given user is on page MSMELoginPage clicks on QRCodeOption
	Given user logins to MSME app entering Login PIN
	Then user verifies on page MSMELoginPage for "QR Code" text in placeholder QRCodeTitlePage
	
	
@TestCaseKey=UDB-T45882 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify QR Code Redirection for Registered Users

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	When user swipe down the page
	Given user is on page MSMELoginPage clicks on QRCodeOption
	Given user logins to MSME app entering Login PIN
	
	
@TestCaseKey=UDB-T45883 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Payment Link Redirection for Unregistered Users

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	When user swipe down the page
	Given user is on page MSMELoginPage clicks on PaymentLinkOption
	Given user logins to MSME app entering Login PIN
	Then user verifies on page MSMELoginPage for "Payment Link" text in placeholder PaymentLinkTitlePage
	
	
@TestCaseKey=UDB-T45884 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Payment Link Redirection for Registered Users

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	When user swipe down the page
	Given user is on page MSMELoginPage clicks on PaymentLinkOption
	Given user logins to MSME app entering Login PIN
	Then user verifies on page MSMELoginPage for "Payment Link" text in placeholder PaymentLinkTitlePage
	
	
@TestCaseKey=UDB-T45885 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Footer Elements on Login Screen

	# Given user logins to MSME app
	Then user verifies on page MSMEPreLoginPage for "Login" text in placeholder LoginFooterText
	Then user verifies on page MSMEPreLoginPage for "Language" text in placeholder LanguageFooterText
	Then user verifies on page MSMEPreLoginPage for "Locate Us" text in placeholder LocateUsFooterText
	Then user verifies on page MSMEPreLoginPage for "Help" text in placeholder HelpFooterText
	
	
@TestCaseKey=UDB-T46104 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate Pre-Login Journey where user see the option "Send Money" on Pre-Login screen

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	When user swipe down the page
	Then user is on page MSMELoginPage to check SendMoneyOption is Displayed
	Given user is on page MSMELoginPage clicks on SendMoneyOption
	Given user logins to MSME app entering Login PIN
	Then user verifies on page MSMELoginPage for "Send Money" text in placeholder SendMoneyTitlePage

@TestCaseKey=UDB-T46105 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate Send Money Journey E2E where user wants to send money successfully using "Send Money" option on Pre-Login screen

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	When user swipe down the page
	Then user is on page MSMELoginPage to check SendMoneyOption is Displayed
	Given user is on page MSMELoginPage clicks on SendMoneyOption
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEFundTransferPage clicks on FromAccount
	Given user is on page MSMEFundTransferPage clicks on SolePropCurrentAccount
	Given user is on page MSMEFundTransferPage clicks on SelectPayee
	Given user is on page MSMEFundTransferPage clicks on SelectPayeeAccount
	When user is on page MSMEFundTransferPage and types 5000 on AmountField
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on InvestmentRemarks
	Given user is on page MSMEFundTransferPage clicks on PayButton
	Given user is on page MSMEFundTransferPage clicks on SubmitButton
	Given user is on page MSMEFundTransferPage clicks on TPIN
	When user is on page MSMEFundTransferPage and types 1212 on TpinText
	Given user is on page MSMEFundTransferPage clicks on TPINContinue
	When user is on page MSMEFundTransferPage to check ReferenceNo is Displayed
	
@TestCaseKey=UDB-T46106 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate Send Money Journey where user wants to send money using "Send Money" option on Pre-Login screen but used invalid PIN

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	When user swipe down the page
	Then user is on page MSMELoginPage to check SendMoneyOption is Displayed
	Given user is on page MSMELoginPage clicks on SendMoneyOption
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEFundTransferPage clicks on FromAccount
	Given user is on page MSMEFundTransferPage clicks on SolePropCurrentAccount
	Given user is on page MSMEFundTransferPage clicks on SelectPayee
	Given user is on page MSMEFundTransferPage clicks on SelectPayeeAccount
	When user is on page MSMEFundTransferPage and types 500 on AmountField
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on InvestmentRemarks
	Given user is on page MSMEFundTransferPage clicks on PayButton
	Given user is on page MSMEFundTransferPage clicks on SubmitButton
	Given user is on page MSMEFundTransferPage clicks on TPIN
	When user is on page MSMEFundTransferPage and types 1111 on TpinText
	Given user is on page MSMEFundTransferPage clicks on TPINContinue
	Then user verifies on page MSMEFundTransferPage for "Please enter correct TPIN" text in placeholder InvalidTPINError
	
	
@TestCaseKey=UDB-T46107 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate Pre-Login Journey where user see the option "Scan QR" on Pre-Login screen

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	When user swipe down the page
	When user is on page MSMELoginPage to check QRCodeOption is Displayed
	Given user is on page MSMELoginPage clicks on QRCodeOption
	Given user logins to MSME app entering Login PIN
	
	
@TestCaseKey=UDB-T46108 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate Scan QR Journey where new Verify user clicks on "Scan QR" option on Pre-Login screen

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount
	When user swipe down the page
	Given user is on page MSMELoginPage clicks on QRCodeOption
	Given user logins to MSME app entering Login PIN
	Then user verifies on page MSMEBQRPage for QR Code text in placeholder QRCodeField
	
	
@TestCaseKey=UDB-T46109 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate Scan QR Journey where returning Verify user clicks on "Scan QR" option on Pre-Login screen

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	When user swipe down the page
	Given user is on page MSMELoginPage clicks on QRCodeOption
	Given user logins to MSME app entering Login PIN
	When user is on page MSMEBQRPage to check QRCodeImage is Displayed
	
	
@TestCaseKey=UDB-T46115 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate Pre-Login Journey where user see the option "Language" on Pre-Login screen

  # Given user logins to MSME app
	When user is on page MSMELoginPage to check LanguageOption is Displayed
	
	
@TestCaseKey=UDB-T46116 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate Language Journey where new Verify user clicks on "Language" option on Pre-Login screen

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on LanguageOption
	Then user verifies on page MSMELoginPage for English text in placeholder LanguageList
	
@TestCaseKey=UDB-T46117 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate Language Journey E2E where  Verify user clicks on "Language" option on Pre-Login screen

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on LanguageOption
	Given user is on page MSMELoginPage clicks on LanguageEnglish
	
	
@TestCaseKey=UDB-T46122 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate Pre-Login Journey where user see the option "Contact Us" on Pre-Login screen

	# Given user logins to MSME app
	When user is on page MSMELoginPage to check LocateUsOption is Displayed
	
	
@TestCaseKey=UDB-T46123 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate Contact Us Journey E2E where  Verify user clicks on "Contact Us" option on Pre-Login screen

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on LocateUsOption
	
	
@TestCaseKey=UDB-T46120 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate Pre-Login Journey where user see the option "Help+s" on Pre-Login screen

	# Given user logins to MSME app
	When user is on page MSMELoginPage to check HelpOption is Displayed
	
	
@TestCaseKey=UDB-T46121 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate More Service Journey E2E where  Verify user clicks on "Help" option on Pre-Login screen

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on HelpOption
	Then user verifies on page MSMEPreLoginPage for "Contact Us" text in placeholder ContactUs
	Then user verifies on page MSMEPreLoginPage for "All India Toll Free Numbers" text in placeholder TollFreeNoText
	Then user verifies on page MSMEPreLoginPage for "1800222244" text in placeholder TollFreeNo
	Then user verifies on page MSMEPreLoginPage for "Non-Toll Free Number" text in placeholder NonTollFreeNoText
	Then user verifies on page MSMEPreLoginPage for "080-61817110" text in placeholder NonTollFreeNo
	
	
@TestCaseKey=UDB-T45560 @Automatable @RedmiNote9Pro  @Set1
Scenario: Display language selection bottom sheet after Security Check pass

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on LanguageOption
	Then user verifies on page MSMELoginPage for English text in placeholder LanguageList
	
	
@TestCaseKey=UDB-T45638 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify User Redirection to Set Login PIN (Individual/Sole Prop)

	# Given user logins to MSME app
	Given user is on page MSMEPreLoginPage clicks on ForgotPinOption
	Then user verifies on page MSMEPreLoginPage for "Forgot Pin?" text in placeholder ForgotPinTitle
	
	
	
@TestCaseKey=UDB-T45652 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Error Message on Incorrect Aadhaar for Resetting Login PIN

	# Given user logins to MSME app
	Given user is on page MSMEPreLoginPage clicks on ForgotPinOption
	Given user is on page MSMEPreLoginPage clicks on AadhaarCardOption
	When user is on page MSMEPreLoginPage and types 123456789012 on EnterAadhaarNumber
	Given user is on page MSMEPreLoginPage clicks on SendOTPButton
	Then user verifies on page MSMEPreLoginPage for "Please enter valid Aadhaar Card Number." text in placeholder InvalidAadhaarAlert

	

@TestCaseKey=UDB-T45707 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify individual have all rights to access.

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount	
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on BorrowingsTab
	Given user is on page MSMEDashboardPage clicks on CashCreditAccount
	Given user is on page MSMEDashboardPage clicks on BackIcon
	When user swipes left to "Overdraft"
	Given user is on page MSMEDashboardPage clicks on OverdraftAccount
	Given user is on page MSMEDashboardPage clicks on BackIcon
	Given user is on page MSMEDashboardPage clicks on DepositTab
	Given user is on page MSMEDashboardPage clicks on CurrentAccount
	Given user is on page MSMEDashboardPage clicks on BackIcon
	

@TestCaseKey=UDB-T45708 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Account Types Validation

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount	
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on BorrowingsTab
	Then user verifies on page MSMEDashboardPage for "Cash Credit" text in placeholder CashCreditAccount
	When user swipes left to "Overdraft"
	Then user verifies on page MSMEDashboardPage for "Overdraft" text in placeholder OverdraftAccount
	Given user is on page MSMEDashboardPage clicks on DepositTab
	Then user verifies on page MSMEDashboardPage for "Current Account" text in placeholder CurrentAccount
	
	
@TestCaseKey=UDB-T45711 @TestCaseKey=UDB-T45710 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify User Dashboard Access to account

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount	
	Given user logins to MSME app entering Login PIN
	Then user is on page MSMEDashboardPage to check Home is Displayed
	Then user is on page MSMEDashboardPage to check Accounts is Displayed
	Then user is on page MSMEDashboardPage to check PaymentsOption is Displayed
	Then user is on page MSMEDashboardPage to check SupportOption is Displayed
	Then user is on page MSMEDashboardPage to check InsightsOption is Displayed
	Then user is on page MSMEDashboardPage to check DepositTab is Enabled
	Then user is on page MSMEDashboardPage to check BorrowingsTab is Enabled
	Then user is on page MSMEDashboardPage to check CardsTab is Enabled
	Then user is on page MSMEDashboardPage to check Invest&InsureTab is Enabled
	
	
@TestCaseKey=UDB-T45712 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Transaction History Access for individual

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on SolePropAccount	
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on DepositTab
	Given user is on page MSMEDashboardPage clicks on CurrentAccount
	When user swipe down the page
	Given user is on page CurrentAccountPage clicks on StatementOption
	Then user verifies on page CurrentAccountPage for "Total 10 Transactions" text in placeholder TransactionDetails
	
	
@TestCaseKey=UDB-T45713 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Statement Generation for individual

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount	
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on DepositTab
	Given user is on page MSMEDashboardPage clicks on CurrentAccount
	When user scrolls down to "Total 10 Transactions"
	Given user is on page CurrentAccountPage clicks on StatementOption
	Given user is on page CurrentAccountPage clicks on Last6months
	When user swipe down the page
	Then user is on page CurrentAccountPage to check EmailButton is Enabled
	Then user is on page CurrentAccountPage to check DownloadButton is Enabled
	
	
@TestCaseKey=UDB-T45716 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Customer Support for individual.

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount	
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Then user verifies on page MSMESupportPage for Service Request text in placeholder ServiceRequestSection
	Then user verifies on page MSMESupportPage for Resource Center text in placeholder ResourceCenterSection
	Then user verifies on page MSMESupportPage for Grievance Redressal text in placeholder GrievanceRedressalSection
	When user scrolls down to "Demo Videos"
	Then user verifies on page MSMESupportPage for FAQ text in placeholder FAQSection
	Then user verifies on page MSMESupportPage for Demo Videos text in placeholder DemoVideosSection
	When user scrolls down to "Locate Us"
	Then user verifies on page MSMESupportPage for Locate Us text in placeholder LocateUsSection
	
	
@TestCaseKey=UDB-T45674 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Login PIN Behavior for Sole Proprietor and Individual Accounts

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on KDEnterpriseAccount
	
	
@TestCaseKey=UDB-T457931 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify dropdown menu displays linked entities

#	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Then user verifies on page MSMELoginPage for PATORK AUTOMATION text in placeholder SolePropAccountName
	Then user verifies on page MSMELoginPage for VIJAYKUMAR HARGOVINDBHAI PATEL text in placeholder IndividualAccountName
	
	
@TestCaseKey=UDB-T45811 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify "Add Another Account" for RCIF linked to multiple entities & added user

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	When user swipe down the page
	Given user is on page MSMELoginPage clicks on AddAnotherAccount
	Then user verifies on page MSMELoginPage for "Hello! Let's get started" text in placeholder GetStartedPage
	Given user is on page MSMEPreLoginPage clicks on AadhaarCardOption
	When user is on page MSMEPreLoginPage and types 990050765320 on EnterAadhaarNumber

	
@TestCaseKey=UDB-T45650  @TestCaseKey=UDB-T45659 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Individual User Can Change Existing Login PIN 

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ProfileButton
	When user scrolls down to "MPIN"
	Given user is on page MyProfilePage clicks on MPINOption
	Given user is on page MyProfilePage clicks on ChangePIN
	When user is on page MyProfilePage and types 3690 on EnterExistingPIN
	When user is on page MyProfilePage and types 0987 on EnterNewPIN
	When user is on page MyProfilePage and types 0987 on ReEnterNewPIN
	Given user is on page MyProfilePage clicks on SubmitButton
	Given user is on page MyProfilePage clicks on SecurityQuestionList
	Given user is on page MyProfilePage clicks on SecurityQuestionSelected
	When user is on page MyProfilePage and types ABCD on SecurityQuestionAnswered
	Then user is on page MyProfilePage to check SubmitButton is Enabled
	
	
@TestCaseKey=UDB-T45651  @TestCaseKey=UDB-T45660 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Individual User Can Reset Login PIN via Aadhaar

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ProfileButton
	When user scrolls down to "MPIN"
	Given user is on page MyProfilePage clicks on MPINOption
	Given user is on page MyProfilePage clicks on ResetPIN
	Given user is on page MSMEPreLoginPage clicks on AadhaarCardOption
	When user is on page MSMEPreLoginPage and types 990050765320 on EnterAadhaarNumber
	Given user is on page MSMEPreLoginPage clicks on SendOTPButton
	Then user is on page MyProfilePage to check SubmitButton is Enabled
	
	
@TestCaseKey=UDB-T45656 @TestCaseKey=UDB-T45658 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Individual User Can Reset TPIN Using OTP

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ProfileButton
	When user scrolls down to "MPIN"
	Given user is on page MyProfilePage clicks on TPINOption
	Given user is on page MyProfilePage clicks on ResetPIN
	Given user is on page MSMEPreLoginPage clicks on AadhaarCardOption
	When user is on page MSMEPreLoginPage and types 990050765320 on EnterAadhaarNumber
	Given user is on page MSMEPreLoginPage clicks on SendOTPButton
	Then user is on page MyProfilePage to check SubmitButton is Enabled
	
	
@TestCaseKey=UDB-T45761 @Automatable @RedmiNote9Pro  @Set1
Scenario: Validate Reuse of Old PIN should show Error 

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ProfileButton
	When user scrolls down to "MPIN"
	Given user is on page MyProfilePage clicks on MPINOption
	Given user is on page MyProfilePage clicks on ChangePIN
	When user is on page MyProfilePage and types 3690 on EnterExistingPIN
	When user is on page MyProfilePage and types 3690 on EnterNewPIN
	When user is on page MyProfilePage and types 3690 on ReEnterNewPIN
	Given user is on page MyProfilePage clicks on SubmitButton
#	Given user is on page MyProfilePage clicks on SecurityQuestionList
#	Given user is on page MyProfilePage clicks on SecurityQuestionSelected
#	When user is on page MyProfilePage and types CUTTACK on SecurityQuestionAnswered
#	Given user is on page MyProfilePage clicks on SubmitButton
	Then user verifies on page MyProfilePage for "Invalid Login PIN!" text in placeholder InvalidPINAlert
	
	
@TestCaseKey=UDB-T45774 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify error message when the new Login PIN does not meet security criteria

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ProfileButton
	When user scrolls down to "MPIN"
	Given user is on page MyProfilePage clicks on MPINOption
	Given user is on page MyProfilePage clicks on ChangePIN
	When user is on page MyProfilePage and types 3690 on EnterExistingPIN
	When user is on page MyProfilePage and types 2222 on EnterNewPIN
	When user is on page MyProfilePage and types 2222 on ReEnterNewPIN
	Given user is on page MyProfilePage clicks on SubmitButton
	Then user verifies on page MyProfilePage for "PIN does not accept repeated digits" text in placeholder PINErrorMessage
	
	
@TestCaseKey=UDB-T45776 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify error message for incorrect answers during security questions reset

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ProfileButton
	When user scrolls down to "MPIN"
	Given user is on page MyProfilePage clicks on MPINOption
	Given user is on page MyProfilePage clicks on ChangePIN
	When user is on page MyProfilePage and types 3690 on EnterExistingPIN
	When user is on page MyProfilePage and types 3690 on EnterNewPIN
	When user is on page MyProfilePage and types 3690 on ReEnterNewPIN
	Given user is on page MyProfilePage clicks on SubmitButton
	Given user is on page MyProfilePage clicks on SecurityQuestionList
	Given user is on page MyProfilePage clicks on SecurityQuestionSelected
	When user is on page MyProfilePage and types ABCD on SecurityQuestionAnswered
	Given user is on page MyProfilePage clicks on SubmitButton
	Then user verifies on page MyProfilePage for "The answer is not valid" text in placeholder InvalidAnswerAlert
	
	
@TestCaseKey=UDB-T45817 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify entity switching without Login PIN re-entry (Sole Prop & Individual only)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	
	
@TestCaseKey=UDB-T45834 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Individual user login screen does not show any ID

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	Then user is on page MSMELoginPage to check CorpIDSwitch is UnChecked
	
	
@TestCaseKey=UDB-T45878 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Forgot PIN CTA on Login Screen

	# Given user logins to MSME app
	Given user is on page MSMEPreLoginPage clicks on ForgotPinOption
	Then user verifies on page MSMEPreLoginPage for "Forgot Pin?" text in placeholder ForgotPinTitle
	
	
	
@TestCaseKey=UDB-T45835 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Sole Prop/Non-Individual/Added User login shows masked Corp ID

	# Given user logins to MSME app
	Given user is on page MSMELoginPage clicks on AccountDropDown
	Given user is on page MSMELoginPage clicks on IndividualAccount
	When user is on page MSMELoginPage and types 3 on LoginTPIN1
	When user is on page MSMELoginPage and types 6 on LoginTPIN2
	When user is on page MSMELoginPage and types 9 on LoginTPIN3
	When user is on page MSMELoginPage and types 0 on LoginTPIN4
	Then user verifies on page MSMELoginPage for "*" text in placeholder LoginTPIN1
	Then user verifies on page MSMELoginPage for "*" text in placeholder LoginTPIN2
	Then user verifies on page MSMELoginPage for "*" text in placeholder LoginTPIN3
	Then user verifies on page MSMELoginPage for "*" text in placeholder LoginTPIN4
	
	