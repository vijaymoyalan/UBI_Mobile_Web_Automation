Feature: Mobile UI automation for MSME Fund Transfer
#Tester: Vijay Moyalan

#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps


@TestCaseKey=UDB-T47761  @TestCaseKey=UDB-T47747 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify that customer can add payee for Within Bank for Credtor beneficiary

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMEDashboardPage clicks on ManagePayeeOption
	Given user is on page MSMEFundTransferPage clicks on FundTransferOption
	Given user is on page MSMEFundTransferPage clicks on AddNewPayee
	Given user is on page MSMEFundTransferPage clicks on selectPayeeDetails
	Given user is on page MSMEFundTransferPage clicks on selectSavingsAccount
	Given user is on page MSMEFundTransferPage clicks on AccountNoText
	When user is on page MSMEFundTransferPage and types 407102010022239 on AccountNoText
	Given user is on page MSMEFundTransferPage clicks on BeneficiaryType
	Given user is on page MSMEFundTransferPage clicks on creditorBeneficiary
	Given user is on page MSMEFundTransferPage clicks on SaveButton
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
	
	
@TestCaseKey=UDB-T47647 @Automatable @RedmiNote9Pro  @Set1
Scenario: verify that user can edit the nickname of payee for creditor beneficiary
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMEDashboardPage clicks on ManagePayeeOption
	Given user is on page MSMEFundTransferPage clicks on FundTransferOption
	Given user is on page MSMEFundTransferPage clicks on WithinBankPayee
	Given user is on page MSMEFundTransferPage clicks on EditNickName
	When user is on page MSMEFundTransferPage and types Script Vijay on ChangeNickName
	Given user is on page MSMEFundTransferPage clicks on SaveChanges
	
	
@TestCaseKey=UDB-T47655 @TestCaseKey=UDB-T47656 @Automatable @RedmiNote9Pro  @Set1
Scenario: verify that user can edit the limit of payee for creditor beneficiary and approve the same.
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMEDashboardPage clicks on ManagePayeeOption
	Given user is on page MSMEFundTransferPage clicks on FundTransferOption
 	Given user is on page MSMEFundTransferPage clicks on WithinBankPayee
	Given user is on page MSMEFundTransferPage clicks on EditPayeeLimit
	Then user verifies on page MSMEFundTransferPage for Mobile Banking Limit text in placeholder SetLimitSection
	Given user moves slider number 0 to 700
	Given user moves slider number 0 to 500
	Given user moves slider number 0 to 50
	Given user is on page MSMEFundTransferPage clicks on SetLimitBtn
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	Given user is on page MSMEFundTransferPage clicks on TPIN
#	When user is on page MSMEFundTransferPage and types 1212 on TpinText
#	Given user is on page MSMEFundTransferPage clicks on TPINContinue
#	Then user verifies on page MSMEFundTransferPage for Payee Details text in placeholder PayeeDetailsSection
	
	
@TestCaseKey=UDB-T47664 @TestCaseKey=UDB-T47687 @TestCaseKey=UDB-T47854 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify that user is able to do quick transfer transaction within bank
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on WithinBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on AccountNoText
	When user is on page MSMEQuickTransferPage and types 407102010022239 on AccountNoText
	Then user verifies on page MSMEQuickTransferPage for VIJAY JOSEPH MOYALAN text in placeholder QuickPayeeName
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on CurrentAccount
	When user is on page MSMEQuickTransferPage and types 1500 on EnterAmount
	Given user is on page MSMEQuickTransferPage clicks on PayButton
	Then user verifies on page MSMEQuickTransferPage for "Within Bank" text in placeholder PaymentMode
	Then user verifies on page MSMEQuickTransferPage for "₹1,500.00" text in placeholder PaymentAmount
	Given user is on page MSMEQuickTransferPage clicks on Submit
	Given user is on page MSMEQuickTransferPage clicks on TPIN
	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	Then user is on page MSMEQuickTransferPage to check HomeButton is Enabled
	Then user is on page MSMEQuickTransferPage to check ShareButton is Enabled
	Then user is on page MSMEQuickTransferPage to check SavePayee is Enabled
	Given user is on page MSMEQuickTransferPage clicks on SavePayee
	Then user verifies on page MSMEQuickTransferPage for Creditor text in placeholder CreditorBeneficiaryType
	Given user is on page MSMEQuickTransferPage clicks on CreditorBeneficiaryType
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	Given user is on page MSMEQuickTransferPage clicks on TPIN
#	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
#	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	
	
@TestCaseKey=UDB-T47666 @TestCaseKey=UDB-T47688 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify that user is able to do quick transfer transaction within bank for Debtor beneficiary for approver
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on WithinBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on AccountNoText
	When user is on page MSMEQuickTransferPage and types 407102010022239 on AccountNoText
	Then user verifies on page MSMEQuickTransferPage for VIJAY JOSEPH MOYALAN text in placeholder QuickPayeeName
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on CurrentAccount
	When user is on page MSMEQuickTransferPage and types 1500 on EnterAmount
	Given user is on page MSMEQuickTransferPage clicks on PayButton
	Then user verifies on page MSMEQuickTransferPage for "Within Bank" text in placeholder PaymentMode
	Then user verifies on page MSMEQuickTransferPage for "₹1,500.00" text in placeholder PaymentAmount
	Given user is on page MSMEQuickTransferPage clicks on Submit
	Given user is on page MSMEQuickTransferPage clicks on TPIN
	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	Then user is on page MSMEQuickTransferPage to check HomeButton is Enabled
	Then user is on page MSMEQuickTransferPage to check ShareButton is Enabled
	Then user is on page MSMEQuickTransferPage to check SavePayee is Enabled
	Given user is on page MSMEQuickTransferPage clicks on SavePayee
	Then user verifies on page MSMEQuickTransferPage for Debtor text in placeholder DebtorBeneficiaryType
	Given user is on page MSMEQuickTransferPage clicks on DebtorBeneficiaryType
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	Given user is on page MSMEQuickTransferPage clicks on TPIN
#	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
#	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	
	
@TestCaseKey=UDB-T47672 @TestCaseKey=UDB-T47691 @TestCaseKey=UDB-T47853 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify that user is able to do quick transfer transaction other bank(IFSC) for Creditor beneficiary 
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on OtherBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on IFSCPaymentMethod
	When user is on page MSMEQuickTransferPage and types Monica Seth on PayeeName
	Given user is on page MSMEQuickTransferPage clicks on AccountNoTextBox
	Given user is on page MSMEQuickTransferPage clicks on ShowText
	When user is on page MSMEQuickTransferPage and types 123456041 on EnterAccountNo
	When user is on page MSMEQuickTransferPage and types 123456041 on ReEnterAccountNo
	Given user swipe down the page
	When user is on page MSMEQuickTransferPage and types SBIN0001885 on EnterIFSCCode
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountType
	Given user is on page MSMEQuickTransferPage clicks on AccountType
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on CurrentAccount
	When user is on page MSMEQuickTransferPage and types 1500 on EnterAmount
	Given user is on page MSMEQuickTransferPage clicks on PayButton
	Then user verifies on page MSMEQuickTransferPage for Pay By IMPS text in placeholder TransferModeIMPS
	Given user is on page MSMEQuickTransferPage clicks on ConfirmButton
	Then user verifies on page MSMEQuickTransferPage for "₹1,500.00" text in placeholder PaymentAmount
	Given user is on page MSMEQuickTransferPage clicks on Submit
	Given user is on page MSMEQuickTransferPage clicks on TPIN
	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	Then user is on page MSMEQuickTransferPage to check HomeButton is Enabled
	Then user is on page MSMEQuickTransferPage to check ShareButton is Enabled
	Then user is on page MSMEQuickTransferPage to check SavePayee is Enabled
	When user is on page MSMEQuickTransferPage clicks on SavePayee
	Then user verifies on page MSMEQuickTransferPage for Creditor text in placeholder CreditorBeneficiaryType
	Given user is on page MSMEQuickTransferPage clicks on CreditorBeneficiaryType
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	Given user is on page MSMEQuickTransferPage clicks on TPIN
#	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
#	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
#	
	
@TestCaseKey=UDB-T47674 @TestCaseKey=UDB-T47692 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify that user is able to do quick transfer transaction other bank(IFSC) for Debtor beneficiary 
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on OtherBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on IFSCPaymentMethod
	When user is on page MSMEQuickTransferPage and types Monica Seth on PayeeName
	Given user is on page MSMEQuickTransferPage clicks on AccountNoTextBox
	Given user is on page MSMEQuickTransferPage clicks on ShowText
	When user is on page MSMEQuickTransferPage and types 123456041 on EnterAccountNo
	When user is on page MSMEQuickTransferPage and types 123456041 on ReEnterAccountNo
	Given user swipe down the page
	When user is on page MSMEQuickTransferPage and types SBIN0001885 on EnterIFSCCode
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountType
	Given user is on page MSMEQuickTransferPage clicks on AccountType
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on CurrentAccount
	When user is on page MSMEQuickTransferPage and types 1500 on EnterAmount
	Given user is on page MSMEQuickTransferPage clicks on PayButton
	Then user verifies on page MSMEQuickTransferPage for Pay By IMPS text in placeholder TransferModeIMPS
	Given user is on page MSMEQuickTransferPage clicks on ConfirmButton
	Then user verifies on page MSMEQuickTransferPage for "₹1,500.00" text in placeholder PaymentAmount
	Given user is on page MSMEQuickTransferPage clicks on Submit
	Given user is on page MSMEQuickTransferPage clicks on TPIN
	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	Then user is on page MSMEQuickTransferPage to check HomeButton is Enabled
	Then user is on page MSMEQuickTransferPage to check ShareButton is Enabled
	Then user is on page MSMEQuickTransferPage to check SavePayee is Enabled
	Given user is on page MSMEQuickTransferPage clicks on SavePayee
	Then user verifies on page MSMEQuickTransferPage for Debtor text in placeholder DebtorBeneficiaryType
	Given user is on page MSMEQuickTransferPage clicks on DebtorBeneficiaryType
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	Given user is on page MSMEQuickTransferPage clicks on TPIN
#	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
#	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	
	
@TestCaseKey=UDB-T47676 @TestCaseKey=UDB-T47693 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify that user is able to do quick transfer transaction other bank(IFSC) for Employee beneficiary 
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on OtherBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on IFSCPaymentMethod
	When user is on page MSMEQuickTransferPage and types Monica Seth on PayeeName
	Given user is on page MSMEQuickTransferPage clicks on AccountNoTextBox
	Given user is on page MSMEQuickTransferPage clicks on ShowText
	When user is on page MSMEQuickTransferPage and types 123456041 on EnterAccountNo
	When user is on page MSMEQuickTransferPage and types 123456041 on ReEnterAccountNo
	Given user swipe down the page
	When user is on page MSMEQuickTransferPage and types SBIN0001885 on EnterIFSCCode
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountType
	Given user is on page MSMEQuickTransferPage clicks on AccountType
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on CurrentAccount
	When user is on page MSMEQuickTransferPage and types 1500 on EnterAmount
	Given user is on page MSMEQuickTransferPage clicks on PayButton
	Then user verifies on page MSMEQuickTransferPage for Pay By IMPS text in placeholder TransferModeIMPS
	Given user is on page MSMEQuickTransferPage clicks on ConfirmButton
	Then user verifies on page MSMEQuickTransferPage for "₹1,500.00" text in placeholder PaymentAmount
	Given user is on page MSMEQuickTransferPage clicks on Submit
	Given user is on page MSMEQuickTransferPage clicks on TPIN
	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	Then user is on page MSMEQuickTransferPage to check HomeButton is Enabled
	Then user is on page MSMEQuickTransferPage to check ShareButton is Enabled
	Then user is on page MSMEQuickTransferPage to check SavePayee is Enabled
	When user is on page MSMEQuickTransferPage clicks on SavePayee
	Then user verifies on page MSMEQuickTransferPage for Employee text in placeholder EmployeeBeneficiaryType
	Given user is on page MSMEQuickTransferPage clicks on EmployeeBeneficiaryType
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	Given user is on page MSMEQuickTransferPage clicks on TPIN
#	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
#	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	
	
@TestCaseKey=UDB-T47678 @TestCaseKey=UDB-T47694 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify that user is able to do quick transfer transaction other bank(IFSC) for Other beneficiary
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on OtherBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on IFSCPaymentMethod
	When user is on page MSMEQuickTransferPage and types Monica Seth on PayeeName
	Given user is on page MSMEQuickTransferPage clicks on AccountNoTextBox
	Given user is on page MSMEQuickTransferPage clicks on ShowText
	When user is on page MSMEQuickTransferPage and types 123456041 on EnterAccountNo
	When user is on page MSMEQuickTransferPage and types 123456041 on ReEnterAccountNo
	Given user swipe down the page
	When user is on page MSMEQuickTransferPage and types SBIN0001885 on EnterIFSCCode
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountType
	Given user is on page MSMEQuickTransferPage clicks on AccountType
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on CurrentAccount
	When user is on page MSMEQuickTransferPage and types 1500 on EnterAmount
	Given user is on page MSMEQuickTransferPage clicks on PayButton
	Then user verifies on page MSMEQuickTransferPage for Pay By IMPS text in placeholder TransferModeIMPS
	Given user is on page MSMEQuickTransferPage clicks on ConfirmButton
	Then user verifies on page MSMEQuickTransferPage for "₹1,500.00" text in placeholder PaymentAmount
	Given user is on page MSMEQuickTransferPage clicks on Submit
	Given user is on page MSMEQuickTransferPage clicks on TPIN
	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	Then user is on page MSMEQuickTransferPage to check HomeButton is Enabled
	Then user is on page MSMEQuickTransferPage to check ShareButton is Enabled
	Then user is on page MSMEQuickTransferPage to check SavePayee is Enabled
	When user is on page MSMEQuickTransferPage clicks on SavePayee
	Then user verifies on page MSMEQuickTransferPage for Others text in placeholder OthersBeneficiaryType
	Given user is on page MSMEQuickTransferPage clicks on OthersBeneficiaryType
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	Given user is on page MSMEQuickTransferPage clicks on TPIN
#	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
#	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
		
	
@TestCaseKey=UDB-T47680 @TestCaseKey=UDB-T47695 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify that user is able to do quick transfer transaction other bank(MMID) for Creditor beneficiary
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on OtherBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on MMIDPaymentMethod
	When user is on page MSMEQuickTransferPage and types Monica Seth on PayeeName
	When user is on page MSMEQuickTransferPage and types 8605405600 on RegisteredMobileNumber
	When user is on page MSMEQuickTransferPage and types 6226000 on EnterMMID
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on CurrentAccount
	When user is on page MSMEQuickTransferPage and types 1500 on EnterAmount
	Given user is on page MSMEQuickTransferPage clicks on PayButton
	Then user verifies on page MSMEQuickTransferPage for Pay By IMPS text in placeholder TransferModeIMPS
	Given user is on page MSMEQuickTransferPage clicks on ConfirmButton
	Then user verifies on page MSMEQuickTransferPage for "₹1,500.00" text in placeholder PaymentAmount
	Given user is on page MSMEQuickTransferPage clicks on Submit
	Given user is on page MSMEQuickTransferPage clicks on TPIN
	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	Then user is on page MSMEQuickTransferPage to check HomeButton is Enabled
	Then user is on page MSMEQuickTransferPage to check ShareButton is Enabled
	Then user is on page MSMEQuickTransferPage to check SavePayee is Enabled
	When user is on page MSMEQuickTransferPage clicks on SavePayee
	Then user verifies on page MSMEQuickTransferPage for Creditor text in placeholder BeneficiaryType
	When user is on page MSMEQuickTransferPage clicks on BeneficiaryType
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	Given user is on page MSMEQuickTransferPage clicks on TPIN
#	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
#	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	
	
@TestCaseKey=UDB-T47682 @TestCaseKey=UDB-T47696 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify that user is able to do quick transfer transaction other bank(MMID) for Debtor beneficiary
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on OtherBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on MMIDPaymentMethod
	When user is on page MSMEQuickTransferPage and types Monica Seth on PayeeName
	When user is on page MSMEQuickTransferPage and types 8605405600 on RegisteredMobileNumber
	When user is on page MSMEQuickTransferPage and types 6226000 on EnterMMID
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on CurrentAccount
	When user is on page MSMEQuickTransferPage and types 1500 on EnterAmount
	Given user is on page MSMEQuickTransferPage clicks on PayButton
	Then user verifies on page MSMEQuickTransferPage for Pay By IMPS text in placeholder TransferModeIMPS
	Given user is on page MSMEQuickTransferPage clicks on ConfirmButton
	Then user verifies on page MSMEQuickTransferPage for "₹1,500.00" text in placeholder PaymentAmount
	Given user is on page MSMEQuickTransferPage clicks on Submit
	Given user is on page MSMEQuickTransferPage clicks on TPIN
	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	Then user is on page MSMEQuickTransferPage to check HomeButton is Enabled
	Then user is on page MSMEQuickTransferPage to check ShareButton is Enabled
	Then user is on page MSMEQuickTransferPage to check SavePayee is Enabled
	When user is on page MSMEQuickTransferPage clicks on SavePayee
	Then user verifies on page MSMEQuickTransferPage for Debtor text in placeholder DebtorBeneficiaryType
	When user is on page MSMEQuickTransferPage clicks on DebtorBeneficiaryType
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	Given user is on page MSMEQuickTransferPage clicks on TPIN
#	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
#	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	
	
@TestCaseKey=UDB-T47684 @TestCaseKey=UDB-T47697 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify that user is able to do quick transfer transaction other bank(MMID) for Employee beneficiary
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on OtherBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on MMIDPaymentMethod
	When user is on page MSMEQuickTransferPage and types Monica Seth on PayeeName
	When user is on page MSMEQuickTransferPage and types 8605405600 on RegisteredMobileNumber
	When user is on page MSMEQuickTransferPage and types 6226000 on EnterMMID
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on CurrentAccount
	When user is on page MSMEQuickTransferPage and types 500 on EnterAmount
	Given user is on page MSMEQuickTransferPage clicks on PayButton
	Then user verifies on page MSMEQuickTransferPage for Pay By IMPS text in placeholder TransferModeIMPS
	Given user is on page MSMEQuickTransferPage clicks on ConfirmButton
	Then user verifies on page MSMEQuickTransferPage for "₹1,500.00" text in placeholder PaymentAmount
	Given user is on page MSMEQuickTransferPage clicks on Submit
	Given user is on page MSMEQuickTransferPage clicks on TPIN
	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	Then user is on page MSMEQuickTransferPage to check HomeButton is Enabled
	Then user is on page MSMEQuickTransferPage to check ShareButton is Enabled
	Then user is on page MSMEQuickTransferPage to check SavePayee is Enabled
	When user is on page MSMEQuickTransferPage clicks on SavePayee
	Then user verifies on page MSMEQuickTransferPage for Employee text in placeholder EmployeeBeneficiaryType
	When user is on page MSMEQuickTransferPage clicks on EmployeeBeneficiaryType
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	Given user is on page MSMEQuickTransferPage clicks on TPIN
#	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
#	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	
	
@TestCaseKey=UDB-T47686 @TestCaseKey=UDB-T47698 @TestCaseKey=UDB-T47858 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify that user is able to do quick transfer transaction other bank(MMID) for Other beneficiary
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on OtherBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on MMIDPaymentMethod
	When user is on page MSMEQuickTransferPage and types Monica Seth on PayeeName
	When user is on page MSMEQuickTransferPage and types 8605405600 on RegisteredMobileNumber
	When user is on page MSMEQuickTransferPage and types 6226000 on EnterMMID
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on CurrentAccount
	When user is on page MSMEQuickTransferPage and types 1500 on EnterAmount
	Given user is on page MSMEQuickTransferPage clicks on PayButton
	Then user verifies on page MSMEQuickTransferPage for Pay By IMPS text in placeholder TransferModeIMPS
	Given user is on page MSMEQuickTransferPage clicks on ConfirmButton
	Then user verifies on page MSMEQuickTransferPage for "₹1,500.00" text in placeholder PaymentAmount
	Given user is on page MSMEQuickTransferPage clicks on Submit
	Given user is on page MSMEQuickTransferPage clicks on TPIN
	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	Then user is on page MSMEQuickTransferPage to check HomeButton is Enabled
	Then user is on page MSMEQuickTransferPage to check ShareButton is Enabled
	Then user is on page MSMEQuickTransferPage to check SavePayee is Enabled
	When user is on page MSMEQuickTransferPage clicks on SavePayee
	Then user verifies on page MSMEQuickTransferPage for Others text in placeholder OthersBeneficiaryType
	When user is on page MSMEQuickTransferPage clicks on OthersBeneficiaryType
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	Given user is on page MSMEQuickTransferPage clicks on TPIN
#	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
#	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	
	
@TestCaseKey=UDB-T47699 @TestCaseKey=UDB-T47700  @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify the fields of Standing Instruction screen and user is able to navigates to Add Standing Instruction Screen after click button

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Then user verifies on page MSMESIPage for Standing Instruction text in placeholder SITitlePage
	Then user verifies on page MSMESIPage for Select Account text in placeholder AccountDropdownList
	Then user verifies on page MSMESIPage for One time Payment text in placeholder OneTimePaymentText
	Then user verifies on page MSMESIPage for Recurring Payment text in placeholder RecurringPaymentText
	Then user is on page MSMESIPage to check AddSIButton is Enabled
	
	
@TestCaseKey=UDB-T47701  @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify the fields of "Add Standing Instruction" screen.

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Then user verifies on page MSMESIPage for Account Name text in placeholder AccountNameDropdown
	Then user verifies on page MSMESIPage for Account Name text in placeholder AccountNameDropdownList
	Then user verifies on page MSMESIPage for Amount text in placeholder AmountTextBox
	Then user verifies on page MSMESIPage for Payment Mode text in placeholder PaymentModeTextBox
	Then user verifies on page MSMESIPage for One time Payment text in placeholder OneTimePaymentText
	Then user verifies on page MSMESIPage for Recurring Payment text in placeholder RecurringPaymentText
	Given user swipe down the page
	Then user verifies on page MSMESIPage for Payment Date text in placeholder PaymentDateTextBox 
	Then user verifies on page MSMESIPage for Remarks text in placeholder RemarksField
	Then user is on page MSMESIPage to check ContinueButton is Enabled
	
	
@TestCaseKey=UDB-T47702  @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify the functionality of Search Payee fields on the Standing Instruction screen by searching valid payee names

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user is on page MSMESIPage clicks on SearchPayeesTextBox
	When user is on page MSMESIPage and types Ram on SearchPayeesTextBox
	Given user is on page MSMESIPage clicks on SearchButton
	

@TestCaseKey=UDB-T47704 @TestCaseKey=UDB-T47705  @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify user clicks on the dropdown list for 'From Account Name,' the CCA/ODA accounts associated with the user are displayed in the dropdown list for Standing Instruction

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdown
	Then user verifies on page MSMESIPage for "Patork's Current Account" text in placeholder CurrentAccountText
	Given user is on page MSMESIPage clicks on CurrentAccount
	
	
@TestCaseKey=UDB-T47706 @TestCaseKey=UDB-T47707  @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify whether the 'To Account Name' field is initially displayed blank and clicking displays the 'Select Payee' page.

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Then user verifies on page MSMESIPage for Account Name text in placeholder AccountNameDropdownList
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Then user verifies on page MSMESIPage for Select Payee text in placeholder SelectPayeeTitlePage
	
	
@TestCaseKey=UDB-T47708  @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify the fields of Select Payee screen for Standing Instruction

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Then user verifies on page MSMESIPage for Self Accounts text in placeholder SelfAccountsHeader
	Then user verifies on page MSMESIPage for Union Bank of India Accounts text in placeholder UnionBankHeader
	Then user verifies on page MSMESIPage for Add a new Payee text in placeholder UnionBankAddPayee
	Given user swipe down the page
	Then user verifies on page MSMESIPage for Other Bank Accounts text in placeholder OtherBankHeader
	Given user swipe down the page
	Then user verifies on page MSMESIPage for Add a new Payee text in placeholder OtherBankAddPayee
	
	
@TestCaseKey=UDB-T47712  @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify whether user is able to selects a added payee or not

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on WithBankHarsidhiFurniture
	Then user verifies on page MSMESIPage for "SHREE HARSIDDHI F" text in placeholder WithBankPayeeName
	
	
@TestCaseKey=UDB-T47714 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify after enters "1" rupees amount, the mode of payment relevant for transfer of the amount should be filtered or not

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on WithBankHarsidhiFurniture
	When user is on page MSMESIPage and types 1 on AmountField
	Then user verifies on page MSMESIPage for Within Bank text in placeholder PaymentModeMethod
	
	
@TestCaseKey=UDB-T47715 @TestCaseKey=UDB-T47716 @TestCaseKey=UDB-T47717  @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify after enters "2 lakh","5 lakh","10 lakh" rupees amount, the mode of payment relevant for transfer of the amount should be filtered or not

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on FromAccountName
	Given user is on page MSMESIPage clicks on CurrentAccount
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user is on page MSMESIPage clicks on WithBankHarsidhiFurniture
	When user is on page MSMESIPage and types 200000 on AmountField
	Then user verifies on page MSMESIPage for "Maximum amount" text in placeholder MaxAmountVerbiage
	When user is on page MSMESIPage and types 500000 on AmountField
	Then user verifies on page MSMESIPage for "Maximum amount" text in placeholder MaxAmountVerbiage
	When user is on page MSMESIPage and types 1000000 on AmountField
	Then user verifies on page MSMESIPage for "Maximum amount" text in placeholder MaxAmountVerbiage
	
	
@TestCaseKey=UDB-T47718 @TestCaseKey=UDB-T47719 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify the Payment Mode option when user selects a Union Bank of India Payee and Other Bank Payee

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on WithBankHarsidhiFurniture
	Then user verifies on page MSMESIPage for Within Bank text in placeholder PaymentModeMethod
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on OtherBankPayeeAccount
	Then user verifies on page MSMESIPage for NEFT text in placeholder PaymentModeMethod
	
	
@TestCaseKey=UDB-T47720 @TestCaseKey=UDB-T47721 @TestCaseKey=UDB-T47722 @TestCaseKey=UDB-T47723 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify whether user is able to click on dropdown list of "Select Frequency" option, Number of Transfer Option, and Start date

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user is on page MSMESIPage clicks on WithBankHarsidhiFurniture
	Given user is on page MSMESIPage clicks on RecurringPaymentOption
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on SelectFrequency
	Given user is on page MSMESIPage clicks on QuaterlyFrequency
	When user is on page MSMESIPage and types 5 on NumberOfTransfer
	Given user is on page MSMESIPage clicks on CalenderButton
	Given user is on page MSMESIPage clicks on SelectDate
	
	
@TestCaseKey=UDB-T47726 @TestCaseKey=UDB-T47727 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify if the remark option is clickable or not for Standing Instruction and remark option can be changed

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on WithBankHarsidhiFurniture
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on RentRemarks
	Given user is on page MSMESIPage clicks on InvestmentRemarks
	
	
@TestCaseKey=UDB-T47728 @TestCaseKey=UDB-T47729 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify if the user can proceed or click on pay button without selecting remark option for Standing Instruction


	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on WithBankHarsidhiFurniture
	When user is on page MSMESIPage and types 2000 on AmountField
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on CalenderButton
	Given user selects day 30 month Nov year 2025 and current year is 2025
	Then user is on page MSMESIPage to check ContinueButton is Enabled
	Given user is on page MSMESIPage clicks on ContinueButton
	Then user verifies on page MSMESIPage for Review Details text in placeholder SIReviewPage
	
	
@TestCaseKey=UDB-T47730 @TestCaseKey=UDB-T47731 @TestCaseKey=UDB-T47733 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify the fields of 'Review Details' Screen

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on WithBankHarsidhiFurniture
	When user is on page MSMESIPage and types 2000 on AmountField
	Given user is on page MSMESIPage clicks on RecurringPaymentOption
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on SelectFrequency
	Given user is on page MSMESIPage clicks on QuaterlyFrequency
	When user is on page MSMESIPage and types 5 on NumberOfTransfer
	Given user is on page MSMESIPage clicks on CalenderButton
	Given user selects day 30 month Nov year 2025 and current year is 2025
	Given user is on page MSMESIPage clicks on ContinueButton
	Then user verifies on page MSMESIPage for Review Details text in placeholder SIReviewPage
	When user is on page MSMESIPage to check FromAccount is Displayed
	When user is on page MSMESIPage to check ToAccountWithinBank is Displayed
	When user is on page MSMESIPage to check PayMethodWithinBank is Displayed
	When user is on page MSMESIPage to check Amount is Displayed
	Then user is on page MSMESIPage to check ContinueButton is Enabled
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on TPIN
	When user is on page MSMESIPage and types 1212 on TpinText
	Given user is on page MSMESIPage clicks on TPINContinue
	Then user verifies on page MSMESIPage for Your standing instruction text in placeholder SISuccess
	
	
@TestCaseKey=UDB-T47734 @TestCaseKey=UDB-T47735 @TestCaseKey=UDB-T47736 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify whether the added SI is visible under the SI lists or not, after the successful setup of the Standing Instruction.

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on RecurringPaymentOption
	When user is on page MSMESIPage to check RecurringStandingInstruction is Displayed
	Given user is on page MSMESIPage clicks on RecurringStandingInstruction
	When user is on page MSMESIReviewPage to check FromAccount is Displayed
	When user is on page MSMESIReviewPage to check ToAccount is Displayed
	When user is on page MSMESIReviewPage to check PaymentMethod is Displayed
#	When user is on page MSMESIReviewPage to check Amount is Displayed
	
	
@TestCaseKey=UDB-T47737 @TestCaseKey=UDB-T47738 @TestCaseKey=UDB-T47739 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify whether the user will get the cancel and delete confirmation pop-up after click on the Delete SI button

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on RecurringPaymentOption
	Given user is on page MSMESIPage clicks on RecurringStandingInstruction
	Then user is on page MSMESIReviewPage to check DeleteSI is Enabled
	Given user is on page MSMESIReviewPage clicks on DeleteSI
	Given user is on page MSMESIReviewPage clicks on Cancel
	Given user is on page MSMESIReviewPage clicks on DeleteSI
	Given user is on page MSMESIReviewPage clicks on Delete
	Given user is on page MSMESIReviewPage clicks on TPIN
	When user is on page MSMESIReviewPage and types 1212 on TpinText
	Given user is on page MSMESIReviewPage clicks on TPINContinue
	
	
@TestCaseKey=UDB-T47753 @TestCaseKey=UDB-T47748 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify that the customer can schedule a recurring monthly payment for other bank payee standing instruction

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on OtherBankPayeeAccount
	When user is on page MSMESIPage and types 2000 on AmountField
	Then user verifies on page MSMESIPage for NEFT text in placeholder PaymentModeMethod
	Given user is on page MSMESIPage clicks on RecurringPaymentOption
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on SelectFrequency
	Given user is on page MSMESIPage clicks on MonthlyFrequency
	When user is on page MSMESIPage and types 5 on NumberOfTransfer
	Given user is on page MSMESIPage clicks on CalenderButton
	Given user selects day 30 month Nov year 2025 and current year is 2025
	Given user is on page MSMESIPage clicks on ContinueButton
	Then user verifies on page MSMESIPage for Review Details text in placeholder SIReviewPage
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on TPIN
	When user is on page MSMESIPage and types 1212 on TpinText
	Given user is on page MSMESIPage clicks on TPINContinue
	Then user verifies on page MSMESIPage for Your standing instruction text in placeholder SISuccess
	
	
@TestCaseKey=UDB-T47754 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify that customer can Schedule Recurring Quaterly Payment for other bank payee Standing Instruction

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on OtherBankPayeeAccount
	When user is on page MSMESIPage and types 2000 on AmountField
	Then user verifies on page MSMESIPage for NEFT text in placeholder PaymentModeMethod
	Given user is on page MSMESIPage clicks on RecurringPaymentOption
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on SelectFrequency
	Given user is on page MSMESIPage clicks on QuaterlyFrequency
	When user is on page MSMESIPage and types 5 on NumberOfTransfer
	Given user is on page MSMESIPage clicks on CalenderButton
	Given user selects day 30 month Nov year 2025 and current year is 2025
	Given user is on page MSMESIPage clicks on ContinueButton
	Then user verifies on page MSMESIPage for Review Details text in placeholder SIReviewPage
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on TPIN
	When user is on page MSMESIPage and types 1212 on TpinText
	Given user is on page MSMESIPage clicks on TPINContinue
	Then user verifies on page MSMESIPage for Your standing instruction text in placeholder SISuccess
	
	
@TestCaseKey=UDB-T47755 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify that customer can Schedule Recurring Half Yearly Payment for other bank payee Standing Instruction

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on OtherBankPayeeAccount
	When user is on page MSMESIPage and types 2000 on AmountField
	Then user verifies on page MSMESIPage for NEFT text in placeholder PaymentModeMethod
	Given user is on page MSMESIPage clicks on RecurringPaymentOption
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on SelectFrequency
	Given user is on page MSMESIPage clicks on HalfYearlyFrequency
	When user is on page MSMESIPage and types 5 on NumberOfTransfer
	Given user is on page MSMESIPage clicks on CalenderButton
	Given user selects day 30 month Nov year 2025 and current year is 2025
	Given user is on page MSMESIPage clicks on ContinueButton
	Then user verifies on page MSMESIPage for Review Details text in placeholder SIReviewPage
	
	
@TestCaseKey=UDB-T47756 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify that customer can Schedule Recurring Yearly Payment for other bank payee Standing Instruction

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on OtherBankPayeeAccount
	When user is on page MSMESIPage and types 2000 on AmountField
	Then user verifies on page MSMESIPage for NEFT text in placeholder PaymentModeMethod
	Given user is on page MSMESIPage clicks on RecurringPaymentOption
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on SelectFrequency
	Given user is on page MSMESIPage clicks on HalfYearlyFrequency
	When user is on page MSMESIPage and types 5 on NumberOfTransfer
	Given user is on page MSMESIPage clicks on CalenderButton
	Given user selects day 30 month Nov year 2025 and current year is 2025
	Given user is on page MSMESIPage clicks on ContinueButton
	Then user verifies on page MSMESIPage for Review Details text in placeholder SIReviewPage
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on TPIN
	When user is on page MSMESIPage and types 1212 on TpinText
	Given user is on page MSMESIPage clicks on TPINContinue
	Then user verifies on page MSMESIPage for Your standing instruction text in placeholder SISuccess
	
	
@TestCaseKey=UDB-T47757 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify that customer can Schedule Recurring Monthly Payment for within bank payee Standing Instruction

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on WithBankHarsidhiFurniture
	When user is on page MSMESIPage and types 2000 on AmountField
	Given user is on page MSMESIPage clicks on RecurringPaymentOption
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on SelectFrequency
	Given user is on page MSMESIPage clicks on MonthlyFrequency
	When user is on page MSMESIPage and types 5 on NumberOfTransfer
	Given user is on page MSMESIPage clicks on CalenderButton
	Given user selects day 30 month Nov year 2025 and current year is 2025
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on TPIN
	When user is on page MSMESIPage and types 1212 on TpinText
	Given user is on page MSMESIPage clicks on TPINContinue
	Then user verifies on page MSMESIPage for Your standing instruction text in placeholder SISuccess
	
	
@TestCaseKey=UDB-T47758 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify that customer can Schedule Recurring Quaterly Payment for within bank payee Standing Instruction

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on WithBankHarsidhiFurniture
	When user is on page MSMESIPage and types 2000 on AmountField
	Given user is on page MSMESIPage clicks on RecurringPaymentOption
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on SelectFrequency
	Given user is on page MSMESIPage clicks on QuaterlyFrequency
	When user is on page MSMESIPage and types 5 on NumberOfTransfer
	Given user is on page MSMESIPage clicks on CalenderButton
	Given user selects day 30 month Nov year 2025 and current year is 2025
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on TPIN
	When user is on page MSMESIPage and types 1212 on TpinText
	Given user is on page MSMESIPage clicks on TPINContinue
	Then user verifies on page MSMESIPage for Your standing instruction text in placeholder SISuccess
	
	
@TestCaseKey=UDB-T47759 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify that customer can Schedule Recurring Half Yearly Payment for within bank payee Standing Instruction

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on WithBankHarsidhiFurniture
	When user is on page MSMESIPage and types 2000 on AmountField
	Given user is on page MSMESIPage clicks on RecurringPaymentOption
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on SelectFrequency
	Given user is on page MSMESIPage clicks on HalfYearlyFrequency
	When user is on page MSMESIPage and types 5 on NumberOfTransfer
	Given user is on page MSMESIPage clicks on CalenderButton
	Given user selects day 30 month Nov year 2025 and current year is 2025
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on TPIN
	When user is on page MSMESIPage and types 1212 on TpinText
	Given user is on page MSMESIPage clicks on TPINContinue
	Then user verifies on page MSMESIPage for Your standing instruction text in placeholder SISuccess
	
	
@TestCaseKey=UDB-T47760 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify that customer can Schedule Recurring Yearly Payment for within bank payee Standing Instruction

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on WithBankHarsidhiFurniture
	When user is on page MSMESIPage and types 2000 on AmountField
	Given user is on page MSMESIPage clicks on RecurringPaymentOption
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on SelectFrequency
	Given user is on page MSMESIPage clicks on YearlyFrequency
	When user is on page MSMESIPage and types 5 on NumberOfTransfer
	Given user is on page MSMESIPage clicks on CalenderButton
	Given user selects day 30 month Nov year 2025 and current year is 2025
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on TPIN
	When user is on page MSMESIPage and types 1212 on TpinText
	Given user is on page MSMESIPage clicks on TPINContinue
	Then user verifies on page MSMESIPage for Your standing instruction text in placeholder SISuccess
	
	
	
@TestCaseKey=UDB-T47795 @TestCaseKey=UDB-T47799 @TestCaseKey=UDB-T47807 @TestCaseKey=UDB-T47808 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify that user executes the transaction through sole prop account and mark as favourite and share the transaction details.

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEFundTransferPage clicks on FundTransfer
	Given user is on page MSMEFundTransferPage clicks on FromAccount
	Given user is on page MSMEFundTransferPage clicks on FromCurrentAccount
	Given user is on page MSMEFundTransferPage clicks on SelectPayee
	Given user is on page MSMEFundTransferPage clicks on SelectPayeeAccount
	When user is on page MSMEFundTransferPage and types 500 on AmountField
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on InvestmentRemarks
	Given user is on page MSMEFundTransferPage clicks on PayButton
	Given user is on page MSMEFundTransferPage clicks on SubmitButton
	Given user is on page MSMEFundTransferPage clicks on TPIN
	When user is on page MSMEFundTransferPage and types 1212 on TpinText
	Given user is on page MSMEFundTransferPage clicks on TPINContinue
	When user is on page MSMEFundTransferPage to check ReferenceNo is Displayed
	Then user is on page MSMEFundTransferPage to check HomeButton is Enabled
	Then user is on page MSMEFundTransferPage to check FavouriteButton is Enabled
	When user is on page MSMEFundTransferPage clicks on FavouriteButton
	Then user is on page MSMEFundTransferPage to check ShareButton is Enabled
	When user is on page MSMEFundTransferPage clicks on ShareButton
	
	
	
@TestCaseKey=UDB-T47803 @TestCaseKey=UDB-T47804 @TestCaseKey=UDB-T47749 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify that user can mark the request raised as favourite in send money for NEFT and share the transaction details.

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEFundTransferPage clicks on FundTransfer
	Given user is on page MSMEFundTransferPage clicks on FromAccount
	Given user is on page MSMEFundTransferPage clicks on CurrentAccount
	Given user is on page MSMEFundTransferPage clicks on SelectPayee
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on OtherBankPayeeAccount
	When user is on page MSMEFundTransferPage and types 500 on AmountField
	Given user is on page MSMEFundTransferPage clicks on ModeOfPayment
	Given user is on page MSMEFundTransferPage clicks on NEFTPaymentMode
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on InvestmentRemarks
	Given user is on page MSMEFundTransferPage clicks on PayButton
	Given user is on page MSMEFundTransferPage clicks on SubmitButton
	Given user is on page MSMEFundTransferPage clicks on TPIN
	When user is on page MSMEFundTransferPage and types 1212 on TpinText
	Given user is on page MSMEFundTransferPage clicks on TPINContinue
	When user is on page MSMEFundTransferPage to check ReferenceNo is Displayed
	Then user is on page MSMEFundTransferPage to check FavouriteButton is Enabled
	When user is on page MSMEFundTransferPage clicks on FavouriteButton
	Then user is on page MSMEFundTransferPage to check ShareButton is Enabled
	When user is on page MSMEFundTransferPage clicks on ShareButton
	
	
@TestCaseKey=UDB-T47815 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify that customer can enter zero amount for NEFT & IMPS

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEFundTransferPage clicks on FundTransfer
	Given user is on page MSMEFundTransferPage clicks on FromAccount
	Given user is on page MSMEFundTransferPage clicks on CurrentAccount
	Given user is on page MSMEFundTransferPage clicks on SelectPayee
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on OtherBankPayeeAccount
	When user is on page MSMEFundTransferPage and types 0 on AmountField
	Then user verifies on page MSMEFundTransferPage for Please enter valid amount text in placeholder InvalidAmountError
	
	
	
	
@TestCaseKey=UDB-T47809 @TestCaseKey=UDB-T47811 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify that system allow max 25 lac amount for RTGS and NEFT

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEFundTransferPage clicks on FundTransfer
	Given user is on page MSMEFundTransferPage clicks on FromAccount
	Given user is on page MSMEFundTransferPage clicks on FromCurrentAccount
	Given user is on page MSMEFundTransferPage clicks on SelectPayee
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on OtherBankPayeeMonicaK
	When user is on page MSMEFundTransferPage and types 2550000 on AmountField
	Given user is on page MSMEFundTransferPage clicks on ModeOfPayment
	Given user is on page MSMEFundTransferPage clicks on NEFTPaymentMode
	Then user verifies on page MSMEFundTransferPage for Maximum Daily limit text in placeholder TransactionDailyLimit
	Given user is on page MSMEFundTransferPage clicks on ModeOfPayment
	Given user is on page MSMEFundTransferPage clicks on RTGSPaymentMode
	Then user verifies on page MSMEFundTransferPage for Maximum Daily limit text in placeholder TransactionDailyLimit
	
	
	@TestCaseKey=UDB-T47813 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify that customer can not allow more  than 5 lac amount for IMPS.

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEFundTransferPage clicks on FundTransfer
	Given user is on page MSMEFundTransferPage clicks on FromAccount
	Given user is on page MSMEFundTransferPage clicks on FromCurrentAccount
	Given user is on page MSMEFundTransferPage clicks on SelectPayee
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on OtherBankPayeeMonicaK
	When user is on page MSMEFundTransferPage and types 550000 on AmountField
	Then user verifies on page MSMEFundTransferPage for Maximum Daily limit text in placeholder TransactionDailyLimit
	
	
	
@TestCaseKey=UDB-T47816 @Automatable @RedmiNote9Pro  @Set3
Scenario: Validation of customer can set Statnding instrunction upto 1 lac for within bank for one time payment


	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
  Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on WithBankHarsidhiFurniture
	When user is on page MSMESIPage and types 1000 on AmountField
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on CalenderButton
	Given user selects day 30 month Nov year 2025 and current year is 2025
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on TPIN
	When user is on page MSMESIPage and types 1212 on TpinText
	Given user is on page MSMESIPage clicks on TPINContinue
	Then user verifies on page MSMESIPage for Your standing instruction text in placeholder SISuccess
	When user is on page MSMESIPage clicks on HomeButton
#	Given user is on page MSMEDashboardPage clicks on PaymentsOption
#	When user scrolls down to "Mandates"
#	Given user is on page MSMESIPage clicks on StandingInstructionOption
#	Given user is on page MSMESIPage clicks on FundTransferOption	
#	Given user is on page MSMESIPage clicks on OneTimeStandingInstruction
#	Given user is on page MSMESIReviewPage clicks on DeleteSI
#	Given user is on page MSMESIReviewPage clicks on Delete
#	Given user is on page MSMESIReviewPage clicks on TPIN
#	When user is on page MSMESIReviewPage and types 1212 on TpinText
#	Given user is on page MSMESIReviewPage clicks on TPINContinue
	
	
@TestCaseKey=UDB-T47817 @Automatable @RedmiNote9Pro  @Set4
Scenario: Validation of customer can set Statnding instrunction upto 1 lac for other bank-one time payment for sol prop user

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	When user scrolls down to "Mandates"
	Given user is on page MSMESIPage clicks on StandingInstructionOption
	Given user is on page MSMESIPage clicks on FundTransferOption
	Given user is on page MSMESIPage clicks on AddSIButton
	Given user is on page MSMESIPage clicks on AccountNameDropdownList
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on OtherBankPayeeMonicaK
	When user is on page MSMESIPage and types 1000 on AmountField
  Given user is on page MSMESIPage clicks on RecurringPaymentOption
	Given user swipe down the page
	Given user is on page MSMESIPage clicks on SelectFrequency
	Given user is on page MSMESIPage clicks on YearlyFrequency
	When user is on page MSMESIPage and types 5 on NumberOfTransfer
	Given user is on page MSMESIPage clicks on CalenderButton
	Given user selects day 30 month Nov year 2025 and current year is 2025
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on ContinueButton
	Given user is on page MSMESIPage clicks on TPIN
	When user is on page MSMESIPage and types 1212 on TpinText
	Given user is on page MSMESIPage clicks on TPINContinue
	Then user verifies on page MSMESIPage for Your standing instruction text in placeholder SISuccess	
	When user is on page MSMESIPage clicks on HomeButton
#	Given user is on page MSMEDashboardPage clicks on PaymentsOption
#	When user scrolls down to "Mandates"
#	Given user is on page MSMESIPage clicks on StandingInstructionOption
#	Given user is on page MSMESIPage clicks on FundTransferOption
#	Given user is on page MSMESIPage clicks on RecurringPaymentOption
#	Given user is on page MSMESIPage clicks on RecurringStandingInstruction
#	Given user is on page MSMESIReviewPage clicks on DeleteSI
#	Given user is on page MSMESIReviewPage clicks on Delete
#	Given user is on page MSMESIReviewPage clicks on TPIN
#	When user is on page MSMESIReviewPage and types 1212 on TpinText
#	Given user is on page MSMESIReviewPage clicks on TPINContinue
#	
	
@TestCaseKey=UDB-T47810 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify that customer can not allow less than 2 lac amount for RTGS

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEFundTransferPage clicks on FundTransfer
	Given user is on page MSMEFundTransferPage clicks on FromAccount
	Given user is on page MSMEFundTransferPage clicks on FromCashCreditAccount
	Given user is on page MSMEFundTransferPage clicks on SelectPayee
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on OtherBankPayeeMonicaK
	When user is on page MSMEFundTransferPage and types 100000 on AmountField
	Given user is on page MSMEFundTransferPage clicks on ModeOfPayment
	Given user is on page MSMEFundTransferPage clicks on RTGSPaymentMode
	When user is on page MSMEFundTransferPage to check RTGSPaymentMode is Disabled
	
	
@TestCaseKey=UDB-T47818 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify that customer can not allow less than 2 lac amount for NEFT (Individual Account)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEFundTransferPage clicks on FundTransfer
	Given user is on page MSMEFundTransferPage clicks on FromAccount
	Given user is on page MSMEFundTransferPage clicks on FromCurrentAccount
	Given user is on page MSMEFundTransferPage clicks on SelectPayee
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on OtherBankPayeeMonicaK
	When user is on page MSMEFundTransferPage and types 50000 on AmountField
	Given user is on page MSMEFundTransferPage clicks on ModeOfPayment
	Given user is on page MSMEFundTransferPage clicks on NEFTPaymentMode
	Then user verifies on page MSMEFundTransferPage for Maximum Daily limit text in placeholder TransactionDailyLimit
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on InvestmentRemarks
	Given user is on page MSMEFundTransferPage clicks on PayButton
	When user is on page MSMEFundTransferReviewPage to check FromAccount is Displayed
	When user is on page MSMEFundTransferReviewPage to check ToAccount is Displayed
	Then user verifies on page MSMEFundTransferReviewPage for NEFT text in placeholder PaymentMethod
	When user is on page MSMEFundTransferReviewPage to check Amount is Displayed
	Then user verifies on page MSMEFundTransferReviewPage for Investment text in placeholder Remarks
	Given user is on page MSMEFundTransferReviewPage clicks on SubmitButton
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	Given user is on page MSMEFundTransferPage clicks on TPIN
#	When user is on page MSMEFundTransferPage and types 1212 on TpinText
	
	
@TestCaseKey=UDB-T47819 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify that customer can check Account level limit for RTGS transfer (Individual Account)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEFundTransferPage clicks on FundTransfer
	Given user is on page MSMEFundTransferPage clicks on FromAccount
	Given user is on page MSMEFundTransferPage clicks on FromVijaykumarOverdraftAccount
	Given user is on page MSMEFundTransferPage clicks on SelectPayee
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on OtherBankPayeeMonicaK
	When user is on page MSMEFundTransferPage and types 200000 on AmountField
	Given user is on page MSMEFundTransferPage clicks on ModeOfPayment
	Given user is on page MSMEFundTransferPage clicks on RTGSPaymentMode
	Then user verifies on page MSMEFundTransferPage for Maximum Daily limit text in placeholder TransactionDailyLimit
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on InvestmentRemarks
	Given user is on page MSMEFundTransferPage clicks on PayButton
	When user is on page MSMEFundTransferReviewPage to check FromAccount is Displayed
	When user is on page MSMEFundTransferReviewPage to check ToAccount is Displayed
	Then user verifies on page MSMEFundTransferReviewPage for RTGS text in placeholder PaymentMethod
	When user is on page MSMEFundTransferReviewPage to check Amount is Displayed
	Then user verifies on page MSMEFundTransferReviewPage for Investment text in placeholder Remarks
	Given user is on page MSMEFundTransferReviewPage clicks on SubmitButton
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	Given user is on page MSMEFundTransferPage clicks on TPIN
#	When user is on page MSMEFundTransferPage and types 1212 on TpinText
	
	
@TestCaseKey=UDB-T47820 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify that customer can check Account level limit for IMPS transfer (Individual Account)

 # Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEFundTransferPage clicks on FundTransfer
	Given user is on page MSMEFundTransferPage clicks on FromAccount
	Given user is on page MSMEFundTransferPage clicks on FromCurrentAccount
#	Given user is on page MSMEFundTransferPage clicks on SelectPatorkCurrentAccount
	Given user is on page MSMEFundTransferPage clicks on SelectPayee
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on OtherBankPayeeMonicaK
	When user is on page MSMEFundTransferPage and types 500010 on AmountField
	Then user verifies on page MSMEFundTransferPage for "Maximum Daily limit" text in placeholder TransactionDailyLimit
	
	
@TestCaseKey=UDB-T47821 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify that customer can check Account level limit for Within Bank Quick transfer (Individual Account)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on WithinBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on AccountNoText
	When user is on page MSMEQuickTransferPage and types 407102010022239 on AccountNoText
	Then user verifies on page MSMEQuickTransferPage for VIJAY JOSEPH MOYALAN text in placeholder QuickPayeeName
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on VijaykumarOverdraftAccount
	When user is on page MSMEQuickTransferPage and types 100000 on EnterAmount
	Then user verifies on page MSMEQuickTransferPage for Maximum amount text in placeholder MaxAmountVerbiage
	
	
@TestCaseKey=UDB-T47822 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify that customer can check Account level limit for Quick transfer (Individual Account)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on OtherBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on IFSCPaymentMethod
	When user is on page MSMEQuickTransferPage and types Monica Seth on PayeeName
	Given user is on page MSMEQuickTransferPage clicks on AccountNoTextBox
	Given user is on page MSMEQuickTransferPage clicks on ShowText
	When user is on page MSMEQuickTransferPage and types 123456041 on EnterAccountNo
	When user is on page MSMEQuickTransferPage and types 123456041 on ReEnterAccountNo
	Given user swipe down the page
	When user is on page MSMEQuickTransferPage and types SBIN0001885 on EnterIFSCCode
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountType
	Given user is on page MSMEQuickTransferPage clicks on AccountType
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on VijaykumarOverdraftAccount
	When user is on page MSMEQuickTransferPage and types 100000 on EnterAmount
	Then user verifies on page MSMEQuickTransferPage for Maximum amount text in placeholder MaxAmountVerbiage
	
	
	@TestCaseKey=UDB-T47849 @TestCaseKey=UDB-T47855 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify that customer can add payee for other Bank for debitor beneficiary (Individual Account)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on OtherBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on IFSCPaymentMethod
	When user is on page MSMEQuickTransferPage and types Monica Seth on PayeeName
	Given user is on page MSMEQuickTransferPage clicks on AccountNoTextBox
	Given user is on page MSMEQuickTransferPage clicks on ShowText
	When user is on page MSMEQuickTransferPage and types 123456041 on EnterAccountNo
	When user is on page MSMEQuickTransferPage and types 123456041 on ReEnterAccountNo
	Given user swipe down the page
	When user is on page MSMEQuickTransferPage and types SBIN0001885 on EnterIFSCCode
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountType
	Given user is on page MSMEQuickTransferPage clicks on AccountType
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on VijaykumarOverdraftAccount
	When user is on page MSMEQuickTransferPage and types 1500 on EnterAmount
	Given user is on page MSMEQuickTransferPage clicks on PayButton
	Given user is on page MSMEQuickTransferPage clicks on ConfirmButton
	Given user is on page MSMEQuickTransferPage clicks on Submit
	Given user is on page MSMEQuickTransferPage clicks on TPIN
	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	Then user is on page MSMEQuickTransferPage to check HomeButton is Enabled
	Then user is on page MSMEQuickTransferPage to check ShareButton is Enabled
	Then user is on page MSMEQuickTransferPage to check SavePayee is Enabled
	Given user is on page MSMEQuickTransferPage clicks on SavePayee	
	Given user is on page MSMEQuickTransferPage clicks on DebtorBeneficiaryType
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
	
	
@TestCaseKey=UDB-T47845 @TestCaseKey=UDB-T47856 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify that customer can add payee for Within Bank for Debitor beneficiary (Individual Account)
	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on WithinBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on AccountNoText
	When user is on page MSMEQuickTransferPage and types 407102010022239 on AccountNoText
	Then user verifies on page MSMEQuickTransferPage for VIJAY JOSEPH MOYALAN text in placeholder QuickPayeeName
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on VijaykumarOverdraftAccount
	When user is on page MSMEQuickTransferPage and types 1500 on EnterAmount
	Given user is on page MSMEQuickTransferPage clicks on PayButton
	Given user is on page MSMEQuickTransferPage clicks on Submit
	Given user is on page MSMEQuickTransferPage clicks on TPIN
	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	Then user is on page MSMEQuickTransferPage to check HomeButton is Enabled
	Then user is on page MSMEQuickTransferPage to check ShareButton is Enabled
	Then user is on page MSMEQuickTransferPage to check SavePayee is Enabled
	Given user is on page MSMEQuickTransferPage clicks on SavePayee
	Given user is on page MSMEQuickTransferPage clicks on DebtorBeneficiaryType
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
	
	
@TestCaseKey=UDB-T47852 @TestCaseKey=UDB-T47857 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify that customer add payee for Other Bank-MMID and verify the fields of successful fund transfer screen (Individual Account)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on OtherBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on MMIDPaymentMethod
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Then user verifies on page MSMEQuickTransferPage for Please enter valid payee name text in placeholder PayeeNameFieldValidation
	Then user verifies on page MSMEQuickTransferPage for Enter your 10-digit Mobile Number text in placeholder MobileNumberFieldValidation
	Given user swipe down the page
	Then user verifies on page MSMEQuickTransferPage for Enter correct MMID text in placeholder MMIDFieldValidation	
	When user is on page MSMEQuickTransferPage and types Monica Seth on PayeeName
	When user is on page MSMEQuickTransferPage and types 8605405600 on RegisteredMobileNumber
	When user is on page MSMEQuickTransferPage and types 6226000 on EnterMMID
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on VijaykumarOverdraftAccount
	When user is on page MSMEQuickTransferPage and types 1500 on EnterAmount
	Given user is on page MSMEQuickTransferPage clicks on PayButton
	Given user is on page MSMEQuickTransferPage clicks on ConfirmButton
	Then user verifies on page MSMEQuickTransferPage for "₹1,500.00" text in placeholder PaymentAmount
	Given user is on page MSMEQuickTransferPage clicks on Submit
	Given user is on page MSMEQuickTransferPage clicks on TPIN
	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
	Given user is on page MSMEQuickTransferPage clicks on TPINContinue
	Then user is on page MSMEQuickTransferPage to check HomeButton is Enabled
	Then user is on page MSMEQuickTransferPage to check ShareButton is Enabled
	Then user is on page MSMEQuickTransferPage to check SavePayee is Enabled
	Given user is on page MSMEQuickTransferPage clicks on SavePayee
	Then user verifies on page MSMEQuickTransferPage for Creditor text in placeholder BeneficiaryType
	When user is on page MSMEQuickTransferPage clicks on DebtorBeneficiaryType
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton


@TestCaseKey=UDB-T47859 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify that customer can check Account level limit for NEFT transfer (Individual Account)

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEFundTransferPage clicks on FundTransfer
	Given user is on page MSMEFundTransferPage clicks on FromAccount
	Given user is on page MSMEFundTransferPage clicks on VijaykumarOverdraftAccount
	Given user is on page MSMEFundTransferPage clicks on SelectPayee
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on OtherBankPayeeMonicaK
	When user is on page MSMEFundTransferPage and types 2000 on AmountField
	Given user is on page MSMEFundTransferPage clicks on ModeOfPayment
	Given user is on page MSMEFundTransferPage clicks on NEFTPaymentMode
	Then user verifies on page MSMEFundTransferPage for Maximum Daily limit text in placeholder TransactionDailyLimit
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on InvestmentRemarks
	Given user is on page MSMEFundTransferPage clicks on PayButton
	When user is on page MSMEFundTransferReviewPage to check FromAccount is Displayed
	When user is on page MSMEFundTransferReviewPage to check ToAccount is Displayed
	Then user verifies on page MSMEFundTransferReviewPage for NEFT text in placeholder PaymentMethod
	When user is on page MSMEFundTransferReviewPage to check Amount is Displayed
	Then user verifies on page MSMEFundTransferReviewPage for Investment text in placeholder Remarks
	Given user is on page EnterOTPPage clicks on SubmitButton
	Given user is on page MSMEFundTransferPage clicks on TPIN
	When user is on page MSMEFundTransferPage and types 1212 on TpinText
	Given user is on page MSMEFundTransferPage clicks on TPINContinue
	When user is on page MSMEFundTransferReviewPage to check SubmitButton is Displayed
	
	
@TestCaseKey=UDB-T47860 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify that customer can check Account level limit for RTGS transfer

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEFundTransferPage clicks on FundTransfer
	Given user is on page MSMEFundTransferPage clicks on FromAccount
	Given user is on page MSMEFundTransferPage clicks on VijaykumarOverdraftAccount
	Given user is on page MSMEFundTransferPage clicks on SelectPayee
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on OtherBankPayeeMonicaK
	When user is on page MSMEFundTransferPage and types 200000 on AmountField
	Given user is on page MSMEFundTransferPage clicks on ModeOfPayment
	Given user is on page MSMEFundTransferPage clicks on RTGSPaymentMode
	Then user verifies on page MSMEFundTransferPage for Maximum Daily limit text in placeholder TransactionDailyLimit
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on InvestmentRemarks
	Given user is on page MSMEFundTransferPage clicks on PayButton
	When user is on page MSMEFundTransferReviewPage to check FromAccount is Displayed
	When user is on page MSMEFundTransferReviewPage to check ToAccount is Displayed
	Then user verifies on page MSMEFundTransferReviewPage for RTGS text in placeholder PaymentMethod
	When user is on page MSMEFundTransferReviewPage to check Amount is Displayed
	Then user verifies on page MSMEFundTransferReviewPage for Investment text in placeholder Remarks
	Given user is on page MSMEFundTransferReviewPage clicks on SubmitButton
#	When user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
#	Given user is on page EnterOTPPage clicks on SubmitButton
#	Given user is on page MSMEFundTransferPage clicks on TPIN
#	When user is on page MSMEFundTransferPage and types 1212 on TpinText
	
	
@TestCaseKey=UDB-T47861 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify that customer can check Account level limit for IMPS transfer

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEFundTransferPage clicks on FundTransfer
	Given user is on page MSMEFundTransferPage clicks on FromAccount
	Given user is on page MSMEFundTransferPage clicks on VijaykumarOverdraftAccount
	Given user is on page MSMEFundTransferPage clicks on SelectPayee
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on OtherBankPayeeMonicaK
	When user is on page MSMEFundTransferPage and types 5000 on AmountField
	Given user is on page MSMEFundTransferPage clicks on ModeOfPayment
	Given user is on page MSMEFundTransferPage clicks on IMPSPaymentMode
	Then user verifies on page MSMEFundTransferPage for Maximum Daily limit text in placeholder TransactionDailyLimit
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on InvestmentRemarks
	Given user is on page MSMEFundTransferPage clicks on PayButton
	Given user is on page MSMEFundTransferPage clicks on ConfirmButton
	When user is on page MSMEFundTransferReviewPage to check FromAccount is Displayed
	When user is on page MSMEFundTransferReviewPage to check ToAccount is Displayed
	Then user verifies on page MSMEFundTransferReviewPage for IMPS text in placeholder PaymentMethod
	When user is on page MSMEFundTransferReviewPage to check Amount is Displayed
	Then user verifies on page MSMEFundTransferReviewPage for Investment text in placeholder Remarks
	Given user is on page EnterOTPPage clicks on SubmitButton
	Given user is on page MSMEFundTransferPage clicks on TPIN
	When user is on page MSMEFundTransferPage and types 1212 on TpinText
	Given user is on page MSMEFundTransferPage clicks on TPINContinue
	

@TestCaseKey=UDB-T47862 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify that customer can check Account level limit for Within Bank Quick transfer

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEDashboardPage clicks on QuickTransfer
	Given user is on page MSMEQuickTransferPage clicks on WithinBankPayeeOption
	Given user is on page MSMEQuickTransferPage clicks on AccountNoText
	When user is on page MSMEQuickTransferPage and types 407102010022239 on AccountNoText
	Then user verifies on page MSMEQuickTransferPage for VIJAY JOSEPH MOYALAN text in placeholder QuickPayeeName
	Given user is on page MSMEQuickTransferPage clicks on ContinueButton
	Given user is on page MSMEQuickTransferPage clicks on SelectAccountDropDown
	Given user is on page MSMEQuickTransferPage clicks on VijaykumarOverdraftAccount
	When user is on page MSMEQuickTransferPage and types 5000 on EnterAmount
	Given user swipe down the page
	Given user is on page MSMEQuickTransferPage clicks on InvestmentRemarks
	Given user is on page MSMEQuickTransferPage clicks on PayButton
	When user is on page MSMEQuickTransferPage to check FromAccount is Displayed
	When user is on page MSMEQuickTransferPage to check ToAccount is Displayed
	Then user verifies on page MSMEQuickTransferPage for "Within Bank" text in placeholder PaymentMode
	Then user verifies on page MSMEQuickTransferPage for "₹5,000.00" text in placeholder PaymentAmount
	Then user verifies on page MSMEQuickTransferPage for Investment text in placeholder Remarks
	Given user is on page MSMEQuickTransferPage clicks on Submit
	Given user is on page MSMEQuickTransferPage clicks on TPIN
	When user is on page MSMEQuickTransferPage and types 1212 on TpinText
	Then user is on page MSMEQuickTransferPage to check TPINContinue is Enabled
	
	
@TestCaseKey=UDB-T47813 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify that customer can not allow more  than 5 lac amount for IMPS

	# Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user is on page MSMEFundTransferPage clicks on FundTransfer
	Given user is on page MSMEFundTransferPage clicks on FromAccount
	Given user is on page MSMEFundTransferPage clicks on FromCurrentAccount
#	Given user is on page MSMEFundTransferPage clicks on SelectPatorkCurrentAccount
	Given user is on page MSMEFundTransferPage clicks on SelectPayee
	Given user swipe down the page
	Given user is on page MSMEFundTransferPage clicks on OtherBankPayeeMonicaK
	When user is on page MSMEFundTransferPage and types 500010 on AmountField
	Then user verifies on page MSMEFundTransferPage for "Maximum Daily limit" text in placeholder TransactionDailyLimit