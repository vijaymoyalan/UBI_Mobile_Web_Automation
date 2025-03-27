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
	Given user is on page DashboardPage clicks on DepositsTab
	When user scrolls down to "Invest & Insure"
	Given user is on page DashboardPage clicks on InvestandInsureViewAll
	Given user is on page InvestAndInsure clicks on PMJJBYInsurance
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

#	Given user logins to app
#	Given user logins to app entering Login PIN
#	Given user is on page DashboardPage clicks on FingerPrint
#	Given user is on page DashboardPage clicks on DepositsTab
#	When user scrolls down to "Invest & Insure"
#	Given user is on page DashboardPage clicks on InvestandInsureViewAll
#	Given user is on page InvestAndInsure clicks on PMJJBYInsurance
#	Given user is on page PMJJBY clicks on ApplyNow
#	Given user is on page PMJJBY clicks on Terms&Conditions
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
  When user is on page PMJJBY and types 0852 on TpinText
  When user is on page PMJJBY clicks on TPINContinue
  When user is on page PMJJBY and verifies for Completed PaymentConfirmation

@TestCaseKey=UDB-T12830	@Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that scheme details are displayed under PMJJBY Details section

#	Given user logins to app
#	Given user logins to app entering Login PIN
#	Given user is on page DashboardPage clicks on FingerPrint
#	Given user is on page DashboardPage clicks on DepositsTab
#	When user scrolls down to "Invest & Insure"
#	Given user is on page DashboardPage clicks on InvestandInsureViewAll
#	Given user is on page InvestAndInsure clicks on PMJJBYInsurance
#	Given user is on page PMJJBY clicks on ApplyNow
#	Given user is on page PMJJBY clicks on Terms&Conditions
	When user scrolls down to "Sum Assured"
	When user is on page PMJJBY and verifies for Cover Start Date StartDate
	When user is on page PMJJBY and verifies for Cover End Date EndDate
	When user is on page PMJJBY and verifies for Sum Assured SumAssured
	When user is on page PMJJBY and verifies for Premium Premium