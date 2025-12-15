Feature: Mobile UI for SSA P2 Journey

@TestCaseKey=UDB-T1063 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user cannot make the payment of SSY Account less than Rs250 using MB 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSABranchPage clicks on ApplyNowbutton
Given user is on DepositPage to check for pending application option and clicks on StartOver
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 200 on EnterInitialAmount
Given user is on page SSABranchPage clicks on ContinueButton
Given user verifies on page SSABranchPage for Minimum deposit amount must be ₹250 or greater. text in placeholder MinimumAmountValidation


@TestCaseKey=UDB-T1068 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user cannot make the payment of SSY Account more than Rs150000 using MB
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSABranchPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 1510000 on EnterInitialAmount
Given user is on page SSABranchPage clicks on ContinueButton
Given user verifies on page SSABranchPage for Maximum deposit amount of ₹1,50,000 is permitted every Financial Year. text in placeholder MaximumAmountValidation

@TestCaseKey=UDB-T1066  @TestCaseKey=UDB-T1119 @TestCaseKey=UDB-T1140 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user can successfully open the SSY account with maximum balance of Rs150000 using MB when age of 1st girl child is 1 day old
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSABranchPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 150000 on EnterInitialAmount
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
When user is on page SSAGirlDetailPage clicks on ContinueButton
Given user scrolls down to "Preferred Branch"
Given user scrolls down to "Initial Contribution Details"
Given user swipe down the page
When user is on page SSASubmitPage clicks on DeclarationTerm&Conditions
When user is on page SSASubmitPage clicks on Term&ConditionsIAccept
When user is on page SSASubmitPage clicks on SubmitButton
Given user is on page SSASubmitPage clicks on TPIN
When user is on page SSASubmitPage and types 2121 on TpinText
When user is on page SSASubmitPage clicks on TPINContinue
Given user scrolls down to "SSA Acknowledgement Letter"
Given user is on page SSASubmitPage to check HomeButton is Enabled
When user is on page SSASubmitPage clicks on HomeButton



@TestCaseKey=UDB-T1111 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user open the SSY Account with successfully change the Child Address on Girl Child detail page
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSABranchPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 150000 on EnterInitialAmount
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
Given user swipe down the page
When user is on page SSAGirlDetailPage clicks on ChangeGirlChildAddress
When user is on page SSAGirlDetailPage and types 421503 on PinCode
Given user swipe down the page
When user is on page SSAGirlDetailPage and types House 45 on AddressLine1
When user is on page SSAGirlDetailPage and types Locality Miltry Road on AddressLine2
When user is on page SSAGirlDetailPage and types UBI Building on AddressLine3
When user is on page SSAGirlDetailPage clicks on ContinueButton
Given user scrolls down to "Preferred Branch"
Given user scrolls down to "Initial Contribution Details"
Given user swipe down the page
When user is on page SSASubmitPage clicks on DeclarationTerm&Conditions
When user is on page SSASubmitPage clicks on Term&ConditionsIAccept
When user is on page SSASubmitPage clicks on SubmitButton
Given user is on page SSASubmitPage clicks on TPIN
When user is on page SSASubmitPage and types 2121 on TpinText
When user is on page SSASubmitPage clicks on TPINContinue
Given user scrolls down to "SSA Acknowledgement Letter"
Given user is on page SSASubmitPage to check HomeButton is Enabled
When user is on page SSASubmitPage clicks on HomeButton

@TestCaseKey=UDB-T1113 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user open the SSY Account and successfully upload the Birth Certificate using "Browser Gallery"
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSABranchPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 1500 on EnterInitialAmount
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
Given user swipe down the page
When user is on page SSAGirlDetailPage clicks on UploadBirthCertificate
When user is on page SSAGirlDetailPage clicks on BrowsePhone
When user is on page SSAGirlDetailPage clicks on MobileDocSelection
When user is on page SSAGirlDetailPage clicks on ContinueButton
Given user scrolls down to "Preferred Branch"
Given user scrolls down to "Initial Contribution Details"
Given user swipe down the page
When user is on page SSASubmitPage clicks on DeclarationTerm&Conditions
When user is on page SSASubmitPage clicks on Term&ConditionsIAccept
When user is on page SSASubmitPage clicks on SubmitButton
Given user is on page SSASubmitPage clicks on TPIN
When user is on page SSASubmitPage and types 2121 on TpinText
When user is on page SSASubmitPage clicks on TPINContinue
Given user scrolls down to "SSA Acknowledgement Letter"
Given user is on page SSASubmitPage to check HomeButton is Enabled
When user is on page SSASubmitPage clicks on HomeButton

@TestCaseKey=UDB-T1114 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user open the SSY Account and successfully upload the Birth Certificate using "Take Photo"
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSABranchPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 1500 on EnterInitialAmount
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
Given user swipe down the page
When user is on page SSAGirlDetailPage clicks on UploadBirthCertificate
When user is on page SSAGirlDetailPage clicks on CameraTakePhoto
When user is on page SSAGirlDetailPage clicks on AllowPermission
When user is on page SSAGirlDetailPage clicks on CameraClick
When user is on page SSAGirlDetailPage clicks on ComfirmCameraClick
When user is on page SSAGirlDetailPage clicks on ContinueButton
Given user scrolls down to "Preferred Branch"
Given user scrolls down to "Initial Contribution Details"
Given user swipe down the page
When user is on page SSASubmitPage clicks on DeclarationTerm&Conditions
When user is on page SSASubmitPage clicks on Term&ConditionsIAccept
When user is on page SSASubmitPage clicks on SubmitButton
Given user is on page SSASubmitPage clicks on TPIN
When user is on page SSASubmitPage and types 2121 on TpinText
When user is on page SSASubmitPage clicks on TPINContinue
Given user scrolls down to "SSA Acknowledgement Letter"
Given user is on page SSASubmitPage to check HomeButton is Enabled
When user is on page SSASubmitPage clicks on HomeButton



@TestCaseKey=UDB-T1122  @TestCaseKey=UDB-T1123 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user can successfully open the SSY account with maximum balance of Rs150000 using MB when age of 1st girl child is 1 day old..
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSABranchPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 1500 on EnterInitialAmount
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
When user is on page SSAGirlDetailPage clicks on ContinueButton
Given user swipe down the page
When user is on page SSASubmitPage clicks on BackButton
When user is on page SSAGirlDetailPage and types Priyanka Singh on GirlChildName
When user is on page SSAGirlDetailPage clicks on DOB
Given user selects day 12 month Apr year 2025 and current year is 2025
When user is on page SSAGirlDetailPage clicks on ContinueButton
Given user scrolls down to "Preferred Branch"
Given user scrolls down to "Initial Contribution Details"
Given user swipe down the page

@TestCaseKey=UDB-T1148  @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate that ETB user download Statement of SSY Account.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page ExistingSSAPage clicks on ExistingSSAAccount
Given user is on page ExistingSSAPage clicks on StatementTab
Given user is on page ExistingSSAPage clicks on DownloadStatement
Given user is on page ExistingSSAPage clicks on AllowPermission
Given user verifies on page ExistingSSAPage for Statement Downloaded text in placeholder StatementDownloadAlert
Given user is on page ExistingSSAPage clicks on DownloadAlert

@TestCaseKey=UDB-T1619  @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that User will have the option to close the T&C pop up by clicking on X icon.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSABranchPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 1500 on EnterInitialAmount
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
When user is on page SSAGirlDetailPage clicks on ContinueButton
Given user scrolls down to "Preferred Branch"
Given user scrolls down to "Initial Contribution Details"
Given user swipe down the page
When user is on page SSASubmitPage clicks on DeclarationTerm&Conditions
When user is on page SSASubmitPage clicks on CloseDeclaration


@TestCaseKey=UDB-T1171  @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user want to view details of SSY Account
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page ExistingSSAPage clicks on ExistingSSAAccount
Given user is on page ExistingSSAPage clicks on DetailsTab
Given user verifies on page ExistingSSAPage for Account Information text in placeholder DetailsAccInfo
Given user is on page ExistingSSAPage to check AccountNumber is NotNull
Given user is on page ExistingSSAPage to check AccountBalance is NotNull
Given user verifies on page ExistingSSAPage for "Girl Child's Details" text in placeholder DetailsChildInfo
Given user is on page ExistingSSAPage to check ApplicantName is NotNull
Given user is on page ExistingSSAPage to check RelationshipStatus is NotNull
Given user is on page ExistingSSAPage to check BirthOrder is NotNull
Given user is on page ExistingSSAPage to check BirthType is NotNull
Given user is on page ExistingSSAPage to check DOB is NotNull
Given user is on page ExistingSSAPage to check MaturityDate is NotNull
Given user is on page ExistingSSAPage to check ChildAddress is NotNull


@TestCaseKey=UDB-T1625  @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify the user able to view Total credited Balance amount of SSA Account
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page ExistingSSAPage clicks on ExistingSSAAccount
Given user is on page ExistingSSAPage clicks on DetailsTab
Given user is on page ExistingSSAPage verifies amount in BalanceAmount


@TestCaseKey=UDB-T1613 @TestCaseKey=UDB-T1614 @TestCaseKey=UDB-T1617 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user able to resume the drop-off journey on Girl Child page after click on "Review" button
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSABranchPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 1500 on EnterInitialAmount
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
When user is on page SSAGirlDetailPage clicks on ContinueButton
When user is on page SSASubmitPage clicks on BackButton
When user is on page SSAGirlDetailPage clicks on BackButton
When user is on page SSAGirlDetailPage clicks on BackButton
Given user is on page SSABranchPage clicks on ResumeSSA
Given user is on page SSABranchPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on ResumeButton
Given user verifies on page SSAReviewPage for AppGirlName text in placeholder GirlChildNamePlaceholder
Given user verifies on page SSAReviewPage for Father text in placeholder RelationshipPlaceholder
Given user verifies on page SSAReviewPage for First text in placeholder BirthOrderPlaceholder
Given user verifies on page SSAReviewPage for Single text in placeholder BirthTypePlaceholder
Given user verifies on page SSAReviewPage for Cut-Ori text in placeholder AddressTitlePlaceholder
When user scrolls down to "Initial Contribution Details"
Given user verifies on page SSAReviewPage for Preferred Branch text in placeholder PreferredBranchSection
Given user verifies on page SSAReviewPage for College Square - Cuttack text in placeholder BranchTitlePlaceholder
Given user verifies on page SSAReviewPage for 10:00am to 4:00pm text in placeholder WorkingHoursPlaceholder
Given user verifies on page SSAReviewPage for Initial Contribution Details text in placeholder InitialContributionSection
Given user verifies on page SSAReviewPage for Sukanya Samriddhi Account text in placeholder ContributionToPlaceholder
Given user verifies on page SSAReviewPage for VIJAY JOSEPH MOYALAN text in placeholder DebitAccountPlaceholder
Given user verifies on page SSAReviewPage for ₹1,500.00 text in placeholder DebitAmountPlaceholder


@TestCaseKey=UDB-T1067 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user can successfully open the SSY account with maximum balance of Rs150000 using MB when age 1st girl child is 10 years
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddAccount
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSABranchPage clicks on ApplyNowbutton
Given user is on page SSABranchPage clicks on SSADebitAccDropdown
Given user is on page SSABranchPage clicks on SSADebitAccSelection
When user is on page SSABranchPage and types 150000 on EnterInitialAmount
Given user is on page SSABranchPage clicks on ContinueButton
When user is on page SSAGirlDetailPage and types AppGirlName on GirlChildName
When user is on page SSAGirlDetailPage clicks on DOB
Given user selects a date 10 years before today
When user is on page SSAGirlDetailPage clicks on Relationship
When user is on page SSAGirlDetailPage clicks on RelationshipSelection
When user is on page SSAGirlDetailPage clicks on BirthOrder
When user is on page SSAGirlDetailPage clicks on BirthOrderFirstChild
When user is on page SSAGirlDetailPage clicks on BirthType
When user is on page SSAGirlDetailPage clicks on BirthTypeSelection
When user scrolls down to "Address"
When user is on page SSAGirlDetailPage clicks on ContinueButton
Given user scrolls down to "Preferred Branch"
Given user scrolls down to "Initial Contribution Details"
Given user swipe down the page
When user is on page SSASubmitPage clicks on DeclarationTerm&Conditions
When user is on page SSASubmitPage clicks on Term&ConditionsIAccept
When user is on page SSASubmitPage clicks on SubmitButton
Given user is on page SSASubmitPage clicks on TPIN
When user is on page SSASubmitPage and types 2121 on TpinText
When user is on page SSASubmitPage clicks on TPINContinue
Given user scrolls down to "SSA Acknowledgement Letter"
Given user is on page SSASubmitPage to check HomeButton is Enabled
When user is on page SSASubmitPage clicks on HomeButton

@TestCaseKey=UDB-T1626 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify the user able to see the SSA option available on Landing screen under Investment Tab
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page AccountsPage clicks on SSA Icon
Given user is on page SSABranchPage to check ApplyNowbutton is Enabled