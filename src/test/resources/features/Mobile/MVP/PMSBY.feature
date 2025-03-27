Feature: Mobile UI for PM-SBY Journey

@TestCaseKey=UDB-1 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user apply for PMSBY from Dashboard-Invest & Insure 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
When user scrolls down to "Invest & Insure"
Given user is on page DashboardPage clicks on InvestandInsureViewAll
Given user is on page InvestAndInsure clicks on PMSBYInsurance

@TestCaseKey=UDB-T12462 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that product information is displayed in "Product Info" Page
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
When user scrolls down to "Invest & Insure"
Given user is on page DashboardPage clicks on InvestandInsureViewAll
Given user is on page InvestAndInsure clicks on PMSBYInsurance
When user scrolls down to "Premium Rate"

@TestCaseKey=UDB-T12463 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that "Accept Terms and Conditions" prompt is displayed in "Product Info" Page
#Given user logins to app
#Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
#Given user is on page DashboardPage clicks on DepositsTab
#When user scrolls down to "Invest & Insure"
#Given user is on page DashboardPage clicks on InvestandInsureViewAll
#Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
When user is on page PMSBY and verifies for Terms & Conditions Terms&Conditions

@TestCaseKey=UDB-T12464 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that terms and conditons are downloadable
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
When user scrolls down to "Invest & Insure"
Given user is on page DashboardPage clicks on InvestandInsureViewAll
Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on DownloadT&C
Given user is on page PMSBY clicks on AllowPermission

@TestCaseKey=UDB-T12474 @TestCaseKey=UDB-T12475 @testCaseKey=UDB-T12480  @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that on PMSBY landing page, list of customer accounts are displayed as a dropdown
#Given user logins to app
#Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
#Given user is on page DashboardPage clicks on DepositsTab
#When user scrolls down to "Invest & Insure"
#Given user is on page DashboardPage clicks on InvestandInsureViewAll
#Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on T&CAccept
Given user is on page PMSBY clicks on AccountName    
When user is on page PMSBY and verifies for Select an Account SelectAccount

@TestCaseKey=UDB-T12481 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that customer name is fetched and displayed
#Given user logins to app
#Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
#Given user is on page DashboardPage clicks on DepositsTab
#When user scrolls down to "Invest & Insure"
#Given user is on page DashboardPage clicks on InvestandInsureViewAll
#Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on T&CAccept
When user is on page PMSBY and verifies for Vijay Joseph Moyalan CustomerName

@TestCaseKey=UDB-T12490 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that user can edit nominee details.
#Given user logins to app
#Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
#Given user is on page DashboardPage clicks on DepositsTab
#When user scrolls down to "Invest & Insure"
#Given user is on page DashboardPage clicks on InvestandInsureViewAll
#Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on T&CAccept
When user scrolls down to "State"
Given user is on page PMSBY clicks on ChangeNominee
Given user is on page PMSBY and enters Test Script Value as NomineeName
Given user is on page PMSBY clicks on NomineeDOB
Given user is on page PMSBY clicks on NomineeDOBYear
Given user is on page PMSBY selects PreviousYear
Given user is on page PMSBY clicks on NomineeYear
Given user is on page PMSBY clicks on NomineeMonth
Given user is on page PMSBY clicks on NomineeDay
Given user is on page PMSBY clicks on Relationship
Given user is on page PMSBY clicks on NomineeRelationship

@TestCaseKey=UDB-T12492 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that "Are you specially abled" radio buttons are visible
#Given user logins to app
#Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
#Given user is on page DashboardPage clicks on DepositsTab
#When user scrolls down to "Invest & Insure"
#Given user is on page DashboardPage clicks on InvestandInsureViewAll
#Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on T&CAccept
When user is on page PMSBY and verifies for Are you specially abled? TextField
When user is on page PMSBY and verifies for Yes YRadioButton
When user is on page PMSBY and verifies for No NRadioButton

@TestCaseKey=UDB-T12494 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that "Submit" button is visible
#Given user logins to app
#Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
#Given user is on page DashboardPage clicks on DepositsTab
#When user scrolls down to "Invest & Insure"
#Given user is on page DashboardPage clicks on InvestandInsureViewAll
#Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on T&CAccept
#When user is on page PMSBY and verifies for Submit ButtonField --- skip this step
Given user verifies on page PMSBY for Submit text in placeholder ButtonField

@TestCaseKey=UDB-T12498 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that success screen is visible after payment is complete
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
When user scrolls down to "Invest & Insure"
Given user is on page DashboardPage clicks on InvestandInsureViewAll
Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on T&CAccept
Given user is on page PMSBY clicks on NoForSpeciallyAbled
When user scrolls down to "State"
Given user is on page PMSBY clicks on ChangeNominee
Given user is on page PMSBY and enters Test Script Value as NomineeName
Given user is on page PMSBY clicks on NomineeDOB
Given user is on page PMSBY clicks on NomineeDOBYear
Given user is on page PMSBY selects PreviousYear
Given user is on page PMSBY clicks on NomineeYear
Given user is on page PMSBY clicks on NomineeMonth
Given user is on page PMSBY clicks on NomineeDay
Given user is on page PMSBY clicks on Relationship
Given user is on page PMSBY clicks on NomineeRelationship
When user scrolls down to "Sum Assured"
Given user is on page PMSBY clicks on SubmitForm
When user scrolls down to "City"
When user scrolls down to "Sum Assured"
Given user is on page PMSBY clicks on Confirm&Pay
Given user is on page PMSBY clicks on TPIN
When user is on page PMSBY and types 0852 on TpinText
#When user is on page PMSBY clicks on TPINContinue

