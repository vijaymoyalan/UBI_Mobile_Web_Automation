Feature: Mobile UI for PM-SBY Journey

@TestCaseKey=UDB-T12460 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user apply for PMSBY from Dashboard-Invest & Insure 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
When user scrolls down to "Invest & Insure"
Given user is on page DashboardPage clicks on InvestandInsureViewAll
Given user is on page InvestAndInsure clicks on PMSBYInsurance

@TestCaseKey=UDB-T12462 @TestCaseKey=UDB-T12491 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that product information is displayed in "Product Info" Page
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page InvestAndInsure clicks on PMSBYInsurance
When user scrolls down to "Premium Rate"

@TestCaseKey=UDB-T12463 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that "Accept Terms and Conditions" prompt is displayed in "Product Info" Page
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
When user is on page PMSBY and verifies for Terms & Conditions Terms&Conditions

@TestCaseKey=UDB-T12464 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that terms and conditons are downloadable
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on DownloadT&C
Given user is on page PMSBY clicks on AllowPermission

@TestCaseKey=UDB-T12474 @TestCaseKey=UDB-T12475 @testCaseKey=UDB-T12480  @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that on PMSBY landing page, list of customer accounts are displayed as a dropdown
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on T&CAccept
Given user is on page PMSBY clicks on AccountName    
When user is on page PMSBY and verifies for Select an Account SelectAccount

@TestCaseKey=UDB-T12481 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that customer name is fetched and displayed
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on T&CAccept
When user is on page PMSBY and verifies for Vijay Joseph Moyalan CustomerName

@TestCaseKey=UDB-T12490 @TestCaseKey=UDB-T12483 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that user can edit nominee details.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page InvestAndInsure clicks on PMSBYInsurance
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
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on T&CAccept
When user is on page PMSBY and verifies for Are you specially abled? TextField
When user is on page PMSBY and verifies for Yes YRadioButton
When user is on page PMSBY and verifies for No NRadioButton

@TestCaseKey=UDB-T12494 @Automatable @Smoke @RedmiNote9Pro 
Scenario: Verify that "Submit" button is visible
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on T&CAccept
#When user is on page PMSBY and verifies for Submit ButtonField --- skip this step
Given user verifies on page PMSBY for Submit text in placeholder ButtonField

@TestCaseKey=UDB-T12498 @TestCaseKey=UDB-T12496 @TestCaseKey=UDB-T12505 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that success screen is visible after payment is complete
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
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
When user is on page PMSBY and types 1212 on TpinText
Given user verifies on page PMSBY for **** text in placeholder TPinText
Given user is on page PMSBY clicks on ShowTPINIcon
Given user verifies on page PMSBY for 1212 text in placeholder TPinText
Given user is on page PMSBY to check TPINContinue is Enabled


@TestCaseKey=UDB-T12459 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that user is able to navigate to PMSBY information page from below entry point: home screen > Investment tab 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page InvestAndInsure clicks on PMSBYInsurance

@TestCaseKey=UDB-T12476  @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that customer can select other account by clicking dropdown
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on T&CAccept
Given user is on page PMSBY clicks on AccountName
Given user is on page PMSBY clicks on SelectCurrentAccount

@TestCaseKey=UDB-T12486  @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that Father's name / Husband's name is editable
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on T&CAccept
When user is on page PMSBY and types Test Script Name on FatherNameTextBox

@TestCaseKey=UDB-T12485  @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that Father's name / Husband's name is fetched and displayed if available in CBS
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on T&CAccept
Given user verifies on page PMSBY for MOYALAN ANTONY JOSEPH text in placeholder FatherNameTextBox

@TestCaseKey=UDB-T12493  @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that "i" icon should display the meaning of "Specially abled"
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on T&CAccept
Given user is on page PMSBY clicks on SpeciallyAbledInfoIcon
Given user verifies on page PMSBY for Are you physically challenged? text in placeholder InfoIconText


@TestCaseKey=UDB-T12482 @TestCaseKey=UDB-T12484  @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that customer name and DOB is not editable
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
Given user is on page DashboardPage clicks on InvestandInsureTab
Given user is on page DashboardPage clicks on AddNew
Given user is on page InvestAndInsure clicks on PMSBYInsurance
Given user is on page PMSBY clicks on ApplyNow
Given user is on page PMSBY clicks on T&CAccept
Given user is on page PMSBY to check CustName is NotClickable
Given user is on page PMSBY to check CustDOB is NotClickable



