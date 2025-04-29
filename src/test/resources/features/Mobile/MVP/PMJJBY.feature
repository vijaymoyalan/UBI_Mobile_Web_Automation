Feature: Mobile UI for PM-JJBY Journey

@TestCaseKey=UDB-1 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user apply for PMJJBY from Dashboard-Invest & Insure
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
When user scrolls down to "Invest & Insure"
Given user is on page DashboardPage clicks on InvestandInsureViewAll
Given user is on page InvestAndInsure clicks on PMJJBYInsurance

@TestCaseKey=UDB-T12743 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate that user is able to open PMJJBY account from below entry point Portfolio section on home screen > Investment tab
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page AddNewAccountPage clicks on PMJJBYInsurance

@TestCaseKey=UDB-T12744 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate that user is able to open PMJJBY account from below entry point Home page > Accounts > Investment and insure > Add Account > select PMJJBY
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on PMJJBYInsurance

@TestCaseKey=UDB-T12784	@Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user want to change nominee
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on PMJJBYInsurance
Given user is on page PMJJBY clicks on ApplyNow
Given user is on page PMJJBY clicks on Terms&Conditions
When user scrolls down to "State"
Given user is on page PMJJBY clicks on ChangeNominee
Given user is on page PMJJBY and enters Test Script Value as NomineeName
Given user is on page PMJJBY clicks on NomineeDOB
Given user is on page PMJJBY clicks on NomineeDOBYear
Given user is on page PMJJBY selects PreviousYear
Given user is on page PMJJBY clicks on NomineeYear
Given user is on page PMJJBY clicks on NomineeMonth
Given user is on page PMJJBY clicks on NomineeDay
Given user is on page PMJJBY clicks on Relationship
Given user is on page PMJJBY clicks on NomineeRelationship

@TestCaseKey=UDB-T12807	@Automatable @Smoke @RedmiNote9Pro
Scenario: Validate that user is getting success message if there is Enrolment Successful post enrolment

Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on PMJJBYInsurance
Given user is on page PMJJBY clicks on ApplyNow
Given user is on page PMJJBY clicks on Terms&Conditions
When user scrolls down to "PMJJBY Details"
Given user is on page PMJJBY clicks on NomineeDOB
Given user is on page PMJJBY clicks on NomineeDOBYear
Given user is on page PMJJBY selects PreviousYear
Given user is on page PMJJBY clicks on NomineeYear
Given user is on page PMJJBY clicks on NomineeMonth
Given user is on page PMJJBY clicks on NomineeDay
Given user is on page PMJJBY clicks on Submit
When user scrolls down to "City"
When user scrolls down to "Sum Assured"
Given user is on page PMJJBY clicks on Confirm&Pay
Given user is on page PMJJBY clicks on TPIN
When user is on page PMJJBY and types 1212 on TpinText

@TestCaseKey=UDB-T12830	@Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that scheme details are displayed under PMJJBY Details section

Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on PMJJBYInsurance
Given user is on page PMJJBY clicks on ApplyNow
Given user is on page PMJJBY clicks on Terms&Conditions
When user scrolls down to "Sum Assured"
When user is on page PMJJBY and verifies for Cover Start Date StartDate
When user is on page PMJJBY and verifies for Cover End Date EndDate
When user is on page PMJJBY and verifies for Sum Assured SumAssured
When user is on page PMJJBY and verifies for Premium Premium



@TestCaseKey=UDB-T12764	@Automatable @Smoke @RedmiNote9Pro
Scenario: Validate that ETB user open the PMJJBY account and while doing payment user entered correct T-PIN
#Given user logins to app
#Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
#Given user is on page DashboardPage clicks on Accounts
#Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
#Given user is on page AccountsPage clicks on InvestandInsureAddAccount
#Given user is on page AccountsPage clicks on PMJJBYInsurance
#Given user is on page PMJJBY clicks on ApplyNow
#Given user is on page PMJJBY clicks on Terms&Conditions
When user scrolls down to "PMJJBY Details"
Given user is on page PMJJBY clicks on NomineeDOB
Given user selects day 12 month Apr year 2006 and current year is 2025
Given user is on page PMJJBY clicks on Submit
When user scrolls down to "City"
When user scrolls down to "Sum Assured"
Given user is on page PMJJBY clicks on Confirm&Pay
Given user is on page PMJJBY clicks on TPIN
When user is on page PMJJBY and types 1212 on TpinText
When user is on page PMJJBY clicks on TPINContinue
Given user verifies on page PMJJBY for Please enter correct TPIN, you have 2 more attempts remaining text in placeholder TPINIncorrectMsg

@TestCaseKey=UDB-T12785	@Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user want to change nominee of PMJJBY and on page Nominee details are non-editable
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on PMJJBYInsurance
Given user is on page PMJJBY clicks on ApplyNow
Given user is on page PMJJBY clicks on Terms&Conditions
When user scrolls down to "PMJJBY Details"
Given user is on page PMJJBY clicks on ChangeNominee
Given user is on page PMJJBY to check NomineeNameTextBox is Enabled
Given user is on page PMJJBY to check NomineeDOBCalander is Enabled
Given user is on page PMJJBY to check NomineeRelationship is Enabled

@TestCaseKey=UDB-T12811	@Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that product information is displayed in "Product Info" Page
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on PMJJBYInsurance
Given user verifies on page PMJJBY for About the Policy text in placeholder PolicyDetails
When user scrolls down to "How to Apply?"
Given user swipe down the page


@TestCaseKey=UDB-T12812	@Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that "Accept Terms and Conditions" prompt is displayed in "Product Info" Page
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on PMJJBYInsurance
Given user is on page PMJJBY clicks on ApplyNow
Given user verifies on page PMJJBY for Terms & Conditions text in placeholder PolicyT&C
Given user verifies on page PMJJBY for I accept text in placeholder AcceptButton
Given user verifies on page PMJJBY for Download T&C text in placeholder DownloadT&CButton
Given user is on page PMJJBY clicks on T&CCloseIcon


@TestCaseKey=UDB-T12815	@Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that on PMJJBY landing page, list of customer accounts are displayed as a dropdown
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on PMJJBYInsurance
Given user is on page PMJJBY clicks on ApplyNow
Given user is on page PMJJBY clicks on Terms&Conditions
Given user is on page PMJJBY clicks on SelectDebitAccount
Given user verifies on page PMJJBY for Savings Account text in placeholder SavingsAccount
Given user verifies on page PMJJBY for Current Account text in placeholder CurrentAccount
Given user verifies on page PMJJBY for Overdraft Account text in placeholder OverdraftAccount


@TestCaseKey=UDB-T12816	@Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that by default, first account fetched from CBS will be displayed
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on PMJJBYInsurance
Given user is on page PMJJBY clicks on ApplyNow
Given user is on page PMJJBY clicks on Terms&Conditions
Given user verifies on page PMJJBY for Savings Account text in placeholder AccountNameDisplayed

@TestCaseKey=UDB-T12820	@Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that customer name is fetched and displayed
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on PMJJBYInsurance
Given user is on page PMJJBY clicks on ApplyNow
Given user is on page PMJJBY clicks on Terms&Conditions
Given user verifies on page PMJJBY for Vijay Joseph Moyalan text in placeholder CustomerFetchedName

@TestCaseKey=UDB-T12822	@Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that customer DOB is fetched and displayed
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on PMJJBYInsurance
Given user is on page PMJJBY clicks on ApplyNow
Given user is on page PMJJBY clicks on Terms&Conditions
Given user verifies on page PMJJBY for 23 Dec 1984 text in placeholder CustomerFetchedDOB


@TestCaseKey=UDB-T12824	@Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that Father's name / Husband's name is fetched and displayed if available in CBS
#Given user logins to app
#Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
#Given user is on page DashboardPage clicks on Accounts
#Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
#Given user is on page AccountsPage clicks on InvestandInsureAddAccount
#Given user is on page AccountsPage clicks on PMJJBYInsurance
#Given user is on page PMJJBY clicks on ApplyNow
#Given user is on page PMJJBY clicks on Terms&Conditions
Given user verifies on page PMJJBY for MOYALAN ANTONY JOSEPH text in placeholder FatherNameTextBox


@TestCaseKey=UDB-T12829	@Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that user can edit nominee details upon clicking "change" action button
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
Given user is on page AccountsPage clicks on InvestandInsureAddAccount
Given user is on page AccountsPage clicks on PMJJBYInsurance
Given user is on page PMJJBY clicks on ApplyNow
Given user is on page PMJJBY clicks on Terms&Conditions
When user scrolls down to "State"
Given user is on page PMJJBY clicks on ChangeNominee
Given user is on page PMJJBY and enters Test Script Value as NomineeName
Given user is on page PMJJBY clicks on NomineeDOB
Given user selects day 12 month Apr year 2006 and current year is 2025
Given user is on page PMJJBY clicks on Relationship
Given user is on page PMJJBY clicks on NomineeRelationship


