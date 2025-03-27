Feature: Mobile UI for SSA Journey

@TestCaseKey=UDB-1234 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user see the Select your Debit Account dropdown above the Preferred Branch section on Account Details screen

#Given user logins to app
#Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on Accounts
#Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
#Given user is on page AccountsPage clicks on InvestandInsureAddAccount
#Given user is on page AccountsPage clicks on SSAAddNewAccount
#Given user is on page AccountsPage clicks on SSA Icon
#Given user is on page SSASummaryPage clicks on ApplyNowbutton
#Given user is on page SSABranchPage clicks on SSADebitAccDropdown
#Given user is on page SSABranchPage clicks on SSADebitAccSelection
#When user is on page SSABranchPage and types 250 on EnterInitialAmount
#When user is on page SSABranchPage clicks on SelectBrachFromList
#When user is on page SSABranchPage clicks on EnterPinCode
#When user is on page SSABranchPage and types 421503 on EnterPinCode
#When user is on page SSABranchPage clicks on SearchIcon
#Given user is on page SSABranchPage clicks on SelectPreferredBranch
#Given user is on page SSABranchPage clicks on ContinueButton
#When user is on page SSAGirlDetailPage and types AppGirlName on GirlChildName
#When user is on page SSAGirlDetailPage clicks on DOB
#When user is on page SSAGirlDetailPage clicks on DOBSelection
#When user is on page SSAGirlDetailPage clicks on Relationship
#When user is on page SSAGirlDetailPage clicks on RelationshipSelection
#When user is on page SSAGirlDetailPage clicks on BirthOrder
#When user is on page SSAGirlDetailPage clicks on BirthOrderFirstChild
#When user is on page SSAGirlDetailPage clicks on BirthType
#When user is on page SSAGirlDetailPage clicks on BirthTypeSelection
#When user scrolls down to "Address"
#When user is on page SSAGirlDetailPage clicks on EnterGirlChildAddress
#When user is on page SSAGirlDetailPage and types 421503 on PinCode
#When user is on page SSAGirlDetailPage and types A-Wing, Green Park Building on AddressLine1
#When user scrolls down to "Address"
#When user is on page SSAGirlDetailPage and types Belavali, BadlapurWest on AddressLine2
#When user scrolls down to "Address"
#When user is on page SSAGirlDetailPage and types lane3, Badlapur on AddressLine3
When user is on page SSAGirlDetailPage clicks on UploadBirthCertificate
When user is on page SSAGirlDetailPage clicks on UploadBirthCertificateByBrowse
#When user is on page SSAGirlDetailPage clicks on MobileDocSelection to upload GirlBirthCertificate
When user uploads GirlBirthCertificate
#When user is on page SSAGirlDetailPage clicks on ContinueButton
#Given user scrolls up to "Girl Child's Details"
#Given user scrolls down to "Preferred Branch"
#Given user scrolls down to "Initial Contribution Details"
#Given user scrolls down to "Declaration"
#When user is on page SSAGirlDetailPage to check Submit is disabled------- code to be written
#When user is on page SSASubmitPage clicks on DeclarationTerm&Conditions
#When user is on page SSASubmitPage clicks on Term&ConditionsIAccept
#When user is on page SSASubmitPage clicks on Submit
#Given user scrolls down to "Application Number"
#Given user scrolls down to "SSA Acknowledgement Letter"
#When user is on page SSASubmitPage clicks on SSAAcknowledgementLetter
#When user is on page SSASubmitPage clicks on SSAAcknowledgementDownloadOK
#When user is on page SSASubmitPage clicks on HomeButton



