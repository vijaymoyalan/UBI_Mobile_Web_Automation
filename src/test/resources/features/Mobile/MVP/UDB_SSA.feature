Feature: Mobile UI for SSA Journey

@TestCaseKey=UDB-1 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user apply for SSY Account from Dashboard-Invest & Insure(1st Entry Point) 
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
When user scrolls down to "Invest & Insure"
Given user is on page DashboardPage clicks on InvestandInsureViewAll
Given user is on page InvestAndInsure clicks on SukanyaSamriddhiYojana

@TestCaseKey=UDB-2 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user apply for SSY Account from Dashboard-Invest & Insure Tab(2nd Entry Point)
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page AddNewAccountPage clicks on SSA Icon

@TestCaseKey=UDB-3 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user apply for SSY Account from Accounts - Invest and Insure Tab_Add Account(3rd Entry Point)
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on SSAAddNewAccount
Given user is on page AccountsPage clicks on SSA Icon

@TestCaseKey=UDB-4 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user apply for SSY Account from Accounts - Invest and Insure Tab under Explore section(4th Entry Point)
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
When user scrolls down to "Explore Our Products"
Given user is on page AccountsPage clicks on GovtSchemeSSA

@TestCaseKey=UDB-T1108 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user gets an option to edit PinCode of Preferred Branch location
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on SSAAddNewAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSASummaryPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 250 on EnterInitialAmount
When user is on page SSABranchPage clicks on ChangePreferredBranch
When user is on page SSABranchPage and types 421503 on EnterPinCode
When user is on page SSABranchPage clicks on SearchIcon

@TestCaseKey=UDB-T1109 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user gets an option to edit BranchName of Preferred Branch location
#Given user logins to app
#Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
#Given user is on page DashboardPage clicks on Accounts
#Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
#Given user is on page AccountsPage clicks on InvestandInsureAddAccount
#Given user is on page AccountsPage clicks on SSAAddNewAccount
#Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSASummaryPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 250 on EnterInitialAmount
When user is on page SSABranchPage clicks on ChangePreferredBranch
When user is on page SSABranchPage and types Marol on EnterPinCode
When user is on page SSABranchPage clicks on SearchIcon

@TestCaseKey=UDB-T1110 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user gets an option to edit Area of Preferred Branch location
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on SSAAddNewAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSASummaryPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 250 on EnterInitialAmount
When user is on page SSABranchPage clicks on ChangePreferredBranch
When user is on page SSABranchPage and types Chowk Bazar on EnterPinCode
When user is on page SSABranchPage clicks on SearchIcon

@TestCaseKey=UDB-5 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user see the Select your Debit Account dropdown above the Preferred Branch section on Account Details screen 
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on SSAAddNewAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSASummaryPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection

@TestCaseKey=UDB-T1590 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user open the SSY Account and enters incorrect Girl Child Name on Girl Child Details page
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on SSAAddNewAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSASummaryPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 250 on EnterInitialAmount
Given user is on page SSABranchPage clicks on ContinueButton
When user is on page SSAGirlDetailPage and types A on GirlChildNameTextBox
Given user is on page SSAGirlDetailPage clicks on ContinueButton
Given user verifies for any error message on page SSAGirlDetailPage as Name should contains 2-40 for GirlChildName

@TestCaseKey=UDB-6 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user open the SSY Account and on "Girl Child Detail" screen user entered invalid PINCODE under "Girl Child Address" section
#Given user logins to app
#Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on Accounts
#Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
#Given user is on page AccountsPage clicks on InvestandInsureAddAccount
#Given user is on page AccountsPage clicks on SSAAddNewAccount
#Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSASummaryPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 250 on EnterInitialAmount
When user is on page SSABranchPage clicks on ChangePreferredBranch
When user is on page SSABranchPage and types 12345 on EnterPinCode
When user is on page SSABranchPage clicks on SearchIcon

@TestCaseKey=UDB-T1115 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user open the SSY Account and check the Upload Birth Certificate field is optional
#Given user logins to app
#Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on Accounts
#Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
#Given user is on page AccountsPage clicks on InvestandInsureAddAccount
#Given user is on page AccountsPage clicks on SSAAddNewAccount
#Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSASummaryPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 250 on EnterInitialAmount
When user is on page SSABranchPage clicks on ChangePreferredBranch
When user is on page SSABranchPage and types 421503 on EnterPinCode
When user is on page SSABranchPage clicks on SearchIcon
Given user is on page SSABranchPage clicks on SelectBrachFromList
Given user is on page SSABranchPage clicks on ContinueButton
When user is on page SSAGirlDetailPage and types AppGirlName on GirlChildName
When user is on page SSAGirlDetailPage clicks on DOB
When user is on page SSAGirlDetailPage clicks on DOBSelection
When user is on page SSAGirlDetailPage clicks on Relationship
When user is on page SSAGirlDetailPage clicks on RelationshipSelection
When user is on page SSAGirlDetailPage clicks on BirthOrder
When user is on page SSAGirlDetailPage clicks on BirthOrderSelection
When user is on page SSAGirlDetailPage clicks on BirthType
When user is on page SSAGirlDetailPage clicks on BirthTypeSecondChild
When user scrolls down to "Address"
When user is on page SSAGirlDetailPage clicks on EnterGirlChildAddress
When user is on page SSAGirlDetailPage and types 421503 on PinCode
#When user scrolls down to "State"
When user is on page SSAGirlDetailPage clicks on AddressLine1
When user is on page SSAGirlDetailPage and types A-Wing, Green Park Building on AddressLine1
When user is on page SSAGirlDetailPage clicks on State
When user is on page SSAGirlDetailPage and types Belavali, BadlapurWest on AddressLine2
When user is on page SSAGirlDetailPage clicks on ContinueButton
When user scrolls down to "Upload Birth Certificate"
When user is on page SSAGirlDetailPage clicks on ContinueButton

@TestCaseKey=UDB-1234 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user see the Select your Debit Account dropdown above the Preferred Branch section on Account Details screen

#Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on SSAAddNewAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSASummaryPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 250 on EnterInitialAmount
When user is on page SSABranchPage clicks on SelectBrachFromList
When user is on page SSABranchPage clicks on EnterPinCode
When user is on page SSABranchPage and types 421503 on EnterPinCode
When user is on page SSABranchPage clicks on SearchIcon
Given user is on page SSABranchPage clicks on SelectPreferredBranch
Given user is on page SSABranchPage clicks on ContinueButton
When user is on page SSAGirlDetailPage and types AppGirlName on GirlChildName
When user is on page SSAGirlDetailPage clicks on DOB
When user is on page SSAGirlDetailPage clicks on DOBSelection
When user is on page SSAGirlDetailPage clicks on Relationship
When user is on page SSAGirlDetailPage clicks on RelationshipSelection
When user is on page SSAGirlDetailPage clicks on BirthOrder
When user is on page SSAGirlDetailPage clicks on BirthOrderFirstChild
When user is on page SSAGirlDetailPage clicks on BirthType
When user is on page SSAGirlDetailPage clicks on BirthTypeSelection
When user scrolls down to "Address"
When user is on page SSAGirlDetailPage clicks on EnterGirlChildAddress
When user is on page SSAGirlDetailPage and types 421503 on PinCode
When user is on page SSAGirlDetailPage and types A-Wing, Green Park Building on AddressLine1
When user scrolls down to "Address"
When user is on page SSAGirlDetailPage and types Belavali, BadlapurWest on AddressLine2
When user scrolls down to "Address"
When user is on page SSAGirlDetailPage and types lane3, Badlapur on AddressLine3
When user is on page SSAGirlDetailPage clicks on UploadBirthCertificate
When user is on page SSAGirlDetailPage clicks on UploadBirthCertificateByBrowse
When user is on page SSAGirlDetailPage clicks on MobileDocSelection
When user is on page SSAGirlDetailPage clicks on ContinueButton
Given user scrolls up to "Girl Child's Details"
Given user scrolls down to "Preferred Branch"
Given user scrolls down to "Initial Contribution Details"
Given user scrolls down to "Declaration"
#When user is on page SSAGirlDetailPage to check Submit is disabled------- code to be written
When user is on page SSASubmitPage clicks on DeclarationTerm&Conditions
When user is on page SSASubmitPage clicks on Term&ConditionsIAccept
When user is on page SSASubmitPage clicks on Submit
Given user scrolls down to "Application Number"
Given user scrolls down to "SSA Acknowledgement Letter"
When user is on page SSASubmitPage clicks on SSAAcknowledgementLetter
When user is on page SSASubmitPage clicks on SSAAcknowledgementDownloadOK
When user is on page SSASubmitPage clicks on HomeButton

@TestCaseKey=UDB-T1117
Scenario: Validate the ETB user open the SSY Account and check the "Upload Legal Guardian Certificate" field is optional
#Given user logins to app
#Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on Accounts
#Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
#Given user is on page AccountsPage clicks on InvestandInsureAddAccount
#Given user is on page AccountsPage clicks on SSAAddNewAccount
#Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSASummaryPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 250 on EnterInitialAmount
When user is on page SSABranchPage clicks on ChangePreferredBranch
When user is on page SSABranchPage clicks on EnterPinCode
When user is on page SSABranchPage and types 421503 on EnterPinCode
When user is on page SSABranchPage clicks on SearchIcon
Given user is on page SSABranchPage clicks on SelectPreferredBranch
Given user is on page SSABranchPage clicks on ContinueButton
When user is on page SSAGirlDetailPage and types AppGirlName on GirlChildName
When user is on page SSAGirlDetailPage clicks on DOB
When user is on page SSAGirlDetailPage clicks on DOBSelection
When user is on page SSAGirlDetailPage clicks on Relationship
When user is on page SSAGirlDetailPage clicks on RelationshipSelection
When user is on page SSAGirlDetailPage clicks on BirthOrder
When user is on page SSAGirlDetailPage clicks on BirthOrderFirstChild
When user is on page SSAGirlDetailPage clicks on BirthType
When user is on page SSAGirlDetailPage clicks on BirthTypeSelection
When user scrolls down to "Address"
When user is on page SSAGirlDetailPage clicks on EnterGirlChildAddress
When user is on page SSAGirlDetailPage and types 421503 on PinCode
When user is on page SSAGirlDetailPage clicks on AddressLine1
When user is on page SSAGirlDetailPage and types A-Wing, Green Park Building on AddressLine1
Given user scrolls up to "Upload Birth Certificate(Optional)"
Given user scrolls down and clicks on "Upload Birth Certificate(Optional)"
When user is on page SSAGirlDetailPage and types Belavali, BadlapurWest on AddressLine2
When user is on page SSAGirlDetailPage clicks on ContinueButton
When user scrolls down to "Upload Birth Certificate"
When user is on page SSAGirlDetailPage clicks on ContinueButton


@TestCaseKey=UDB-T1071
Scenario: Validate the ETB user is not eligible to open the third SSY account using MB when the user already have 2 existing SSA 
#Given user logins to app
#Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on SSAAddNewAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSASummaryPage clicks on ApplyNowbutton
Then user verifies error message on page SSASummaryPage is "You have reached the maximum no of SSA!" on ExistingSSAMessagetitle
Then user verifies error message on page SSASummaryPage is "You currently have 2 SSA accounts, To open additional account please visit your branch" on ExistingSSAMessage
Given user is on page SSASummaryPage clicks on ExistingSSAPopupOkButton

@TestCaseKey=UDB-T1157
Scenario: Validate the ETB user see their all opened SSY Accounts list in order of maturity on Homepage screen
#Given user logins to app
#Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on ClickonExistingSSA

@TestCaseKey=UDB-T1628
Scenario: Verify the user want to transfer the SSA account from one branch to other within UBI
#Given user logins to app
#Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on ClickonExistingSSA
Given user is on page ExistingSSAPage clicks on RequestTab
Given user is on page RequestDetailPage clicks on AccountTransfer
Then user verifies error message on page RequestDetailPage is "Account Transfer" on AccTransferTitle
Then user verifies error message on page RequestDetailPage is "Please visit your Preferred Branch" on AccTransferMessage
Given user is on page RequestDetailPage clicks on AccTransferPopupOkButton

@TestCaseKey=UDB-T1167
Scenario: Validate the ETB user want to close the SSY Account on maturity then "Closure" is enabled on Request Tab
#Given user logins to app
#Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on ClickonExistingSSA
Given user is on page ExistingSSAPage clicks on RequestTab
Given user is on page RequestDetailPage clicks on ClosureOption
Then user verifies error message on page RequestDetailPage is "Sukanya Samriddhi Account Closure" on ClosurePopupTitle
Then user verifies error message on page RequestDetailPage is "Please visit your Preferred Branch" on ClosurePopupMessage
Given user is on page RequestDetailPage clicks on ClosurePopupOkButton
