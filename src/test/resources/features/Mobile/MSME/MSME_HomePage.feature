Feature: Mobile UI automation for MSME HomePage
#Tester: Vijay Moyalan

#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps

@TestCaseKey=UDB-T52161 @Automatable @HomePage_RedmiNote9Pro  @Set1
Scenario: CC/OD Account Display

	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on BorrowingsTab
	Then user is on page HomePage to check CashCreditAccount is Displayed
	Given user swipes left to "Overdraft"
	Then user is on page HomePage to check OverdraftAccount is Displayed
	
	
@TestCaseKey=UDB-T52204 @Automatable @HomePage_RedmiNote9Pro  @Set1
Scenario: Current Account - Individual - Fund Transfer

	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Then user is on page HomePage to check FundTransferShortCut is Displayed
	
@TestCaseKey=UDB-T52203 @Automatable @HomePage_RedmiNote9Pro  @Set1
Scenario: Current Account - Individual - Payment Link

	Then user is on page HomePage to check PaymentLinkShortCut is Displayed
	
	
@TestCaseKey=UDB-T52205 @Automatable @HomePage_RedmiNote9Pro  @Set1
Scenario: Current Account - Individual - Scan QR

	Then user is on page HomePage to check BharatQRShortCut is Displayed
	
	
@TestCaseKey=UDB-T52144 @Automatable @HomePage_RedmiNote9Pro  @Set1
Scenario: Individual Login - Total Deposits Balance

	Given user is on page MSMEDashboardPage clicks on Accounts
	Given user is on page MSMEDashboardPage clicks on DepositTab
	Given user is on page MSMEDashboardPage clicks on ShowBalance
	Given user is on page MSMEDashboardPage verifies amount in TotalBalance
	
	
@TestCaseKey=UDB-T52178 @Automatable @HomePage_RedmiNote9Pro  @Set1
Scenario: Invest & Insure Home Tab (Individual)

	Given user is on page MSMEDashboardPage clicks on Home
	Given user is on page MSMEDashboardPage clicks on Invest&InsureTab
	Then user verifies on page HomePage for Apply Now text in placeholder InvestApplyNowButton
	Given user swipes left to "Demat Simplified"
	Then user verifies on page HomePage for Apply Now text in placeholder InvestApplyNowButton
	Given user swipes left to "Mutual Growth"
	Then user verifies on page HomePage for Apply Now text in placeholder InvestApplyNowButton
	Given user swipes left to "IPO"
	Then user verifies on page HomePage for Apply Now text in placeholder InvestApplyNowButton
	
@TestCaseKey=UDB-T52186 @Automatable @HomePage_RedmiNote9Pro  @Set1
Scenario: Payments Tab (Individual Login)

Given user is on page MSMEDashboardPage clicks on PaymentsOption
Then user verifies on page HomePage for "Transfer" text in placeholder TransferText
Then user verifies on page HomePage for "Receive Money" text in placeholder ReceiveMoneyText
Then user verifies on page HomePage for "Send Money" text in placeholder SendMoneyText
Given user swipe down the page
Then user verifies on page HomePage for "Payments" text in placeholder PaymentText
Then user verifies on page HomePage for "View Recent Transactions" text in placeholder RecentTransactionsText


@TestCaseKey=UDB-T52187 @Automatable @HomePage_RedmiNote9Pro  @Set1
Scenario: Payments Tab (Sole-Proprietor Login)

	Given user is on page MSMEDashboardPage clicks on Home
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on PaymentsOption
	Given user scrolls up to "Pending Approvals"
	Then user verifies on page HomePage for "Transfer" text in placeholder TransferText
	Then user verifies on page HomePage for "Receive Money" text in placeholder ReceiveMoneyText
	Then user verifies on page HomePage for "Send Money" text in placeholder SendMoneyText
	Given user swipe down the page
	Then user verifies on page HomePage for "Payments" text in placeholder PaymentText
	Then user verifies on page HomePage for "View Recent Transactions" text in placeholder RecentTransactionsText
	
	
@TestCaseKey=UDB-T52157 @Automatable @HomePage_RedmiNote9Pro  @Set1
Scenario: Switch Between Entities

	Given user is on page MSMEDashboardPage clicks on Home
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	
@TestCaseKey=UDB-T52165 @Automatable @HomePage_RedmiNote9Pro  @Set1
Scenario: View More Cards

	Given user is on page MSMEDashboardPage clicks on Home
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on Accounts
	Given user is on page MSMEDashboardPage clicks on BorrowingsTab
	
@TestCaseKey=UDB-T52148 @Automatable @HomePage_RedmiNote9Pro  @Set1
Scenario: Sole-Proprietor Login - View More Option for Deposits

	Given user is on page MSMEDashboardPage clicks on Home
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on Accounts
	Given user is on page MSMEDashboardPage clicks on DepositTab
	
@TestCaseKey=UDB-T52200 @Automatable @HomePage_RedmiNote9Pro  @Set1
Scenario: Current Account - Sole Prop - Live Collections
	
	Given user is on page MSMEDashboardPage clicks on Home
	Then user is on page MSMEDashboardPage to check Invest&InsureTab is Displayed
	Given user is on page MSMEDashboardPage clicks on Invest&InsureTab
	Given user is on page MSMEDashboardPage clicks on DepositTab   	
	Then user is on page MSMEDashboardPage to check LiveCollections is Enabled
	
	
@TestCaseKey=UDB-T52194 @Automatable @HomePage_RedmiNote9Pro  @Set1
Scenario: Current Account - Sole Prop - Pending Collections
	
	When user scrolls down to "Tailored Products"
	Then user is on page MSMEDashboardPage to check PendingCollections is Displayed
	Given user is on page MSMEDashboardPage clicks on PendingCollections
	Then user verifies on page MSMEDashboardPage for "Account Name" text in placeholder AccountNameDropdownText
	Given user is on page MSMEDashboardPage clicks on BackIcon
	
@TestCaseKey=UDB-T52201 @Automatable @HomePage_RedmiNote9Pro  @Set1
Scenario: Current Account - Sole Prop - QR Code
	
	Given user scrolls up to "Patork Automation"	
	Given user is on page MSMEDashboardPage clicks on Home
	Then user is on page MSMEDashboardPage to check HomeQRCodeField is Displayed
	Given user is on page MSMEDashboardPage clicks on HomeQRCodeField
	
	
@TestCaseKey=UDB-T52208 @Automatable @HomePage_RedmiNote9Pro
Scenario: Fixed Deposits - No Shortcuts
	
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on DepositTab
	Then user verifies text Fixed Deposit is not displayed
	
	
@TestCaseKey=UDB-T52234 @Automatable @HomePage_RedmiNote9Pro
Scenario: Invest & Insure - IPO Shishu Mudra STP
	
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on Invest&InsureTab
	Then user verifies text Shishu Mudra is not displayed
	
	
@TestCaseKey=UDB-T52230 @Automatable @HomePage_RedmiNote9Pro
Scenario: Invest & Insure - Mutual Fund No Shortcuts
	
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on Invest&InsureTab
	Then user verifies text Mutual Fund is not displayed
	
	
@TestCaseKey=UDB-T52182 @TestCaseKey=UDB-T52149 @Automatable @HomePage_RedmiNote9Pro
Scenario: Invest & Insure Accounts Tab (Sole Proprietor)
	
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on Accounts
	Then user verifies text Invest & Insure is not displayed
	
@TestCaseKey=UDB-T52183 @TestCaseKey=UDB-T52150 @Automatable @HomePage_RedmiNote9Pro
Scenario: Invest & Insure Accounts Tab (Individual)
	
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on VijaykumarPatelAccount
	Given user is on page MSMEDashboardPage clicks on Accounts
	Then user verifies text Invest & Insure is not displayed

 #Given user enters SMS OTP on page EnterOTPPage and types OTP on EnterOTP
 #Given user is on page EnterOTPPage clicks on SubmitButton
