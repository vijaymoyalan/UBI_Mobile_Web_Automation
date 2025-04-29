Feature: Mobile UI for FD

@TestCaseKey=UDB-T9654 @TestCaseKey=UDB-T2482 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that a Normal user can successfully open a normal Fixed Deposit (FD) with a tenure of 399 days and an interest payout set as "Monthly" 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Test on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
When user scrolls down to "Nominee Details"
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage


@TestCaseKey=UDB-T9660 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that a Normal user can successfully open a Normal Fixed Deposit (FD) with a tenure of 399 days and an interest payout set as "Monthly" and auto renewal set as "Off" 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Test on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
When user scrolls down to "Auto Renewal"
Given user is on page FDDetailsPage clicks on AutoRenewalOff 
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage

@TestCaseKey=UDB-NTC-01 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that the OD account is able to open FD 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on OverDraftAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Test on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
When user scrolls down to "Nominee Details"
Given user swipe down the page
Given user is on page FDDetailsPage and enters Test Script Value as NomineeName
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Relationship
Given user is on page FDDetailsPage clicks on NomineeRelationship
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage


@TestCaseKey=UDB-T2355 @TestCaseKey=UDB-T2362 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should successfully open the Regular FD with Interest Payout On Maturity and Auto Renew selection is "Auto renew with principle and interest amount " and should be able to deposit minimum of Rs 1000 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Maturity on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectOnMaturityPeriod 
When user scrolls down to "Add Nominee?"
Given user is on page FDDetailsPage clicks on AutoRenewalPAInt
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage


@TestCaseKey=UDB-T2356 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should successfully open the Regular FD with Interest Payout as Monthly and should be able to deposit minimum of Rs 1000 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Monthly on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
When user scrolls down to "Nominee Details"
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage


@TestCaseKey=UDB-T2357 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should successfully open the Regular FD with Interest Payout as Quarterly and should be able to deposit minimum of Rs 1000 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Test on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectQuarterlyPeriod 
When user scrolls down to "Nominee Details"
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage


@TestCaseKey=UDB-T2371 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Select Tenure screen and Interest calculated against the selected period when user selects tenure as Popular 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Test on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
Given user verifies on page FDDetailsPage for 399 Days,  Popular , 7% interest rate text in placeholder PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectQuarterlyPeriod 
Given user is on page FDDetailsPage verifies amount in InterestAmountPayout


@TestCaseKey=UDB-T2372 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Select Tenure screen and Interest calculated against the selected period When user selects tenure as Recommended
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Test on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on RecommendedTenure
Given user verifies on page FDDetailsPage for 1 Year, Recommended, 6.8% interest rate text in placeholder RecommendedTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectQuarterlyPeriod 
Given user is on page FDDetailsPage verifies amount in InterestAmountPayout

@TestCaseKey=UDB-T2373 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Select Tenure screen and Interest calculated against the selected period When user selects tenure as 1 Year
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Test on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on OneYearTenure
Given user verifies on page FDDetailsPage for 1 Year, Recommended, 6.8% interest rate text in placeholder OneYearTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectQuarterlyPeriod 
Given user is on page FDDetailsPage verifies amount in InterestAmountPayout

@TestCaseKey=UDB-T2374 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Select Tenure screen and Interest calculated against the selected period When user selects tenure as "2 Year"
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Test on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on TwoYearTenure
Given user verifies on page FDDetailsPage for 2 Years, 6.6% interest rate text in placeholder TwoYearTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectQuarterlyPeriod 
Given user is on page FDDetailsPage verifies amount in InterestAmountPayout


@TestCaseKey=UDB-T2375 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Select Tenure screen and Interest calculated against the selected period when user selects tenure as "Custom" and tenure period is greater than 1 Month or Max 120 Months
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Test on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on CustomTenure
When user is on page FDDetailsPage and types 105 on CustomTenureMonth
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectQuarterlyPeriod 
Given user is on page FDDetailsPage verifies amount in InterestAmountPayout

@TestCaseKey=UDB-T2376 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Select Tenure screen and Interest calculated against the selected period when user selects tenure as Custom and tenure period is Less than 1 Month or Minimum 7 days
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Test on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on CustomTenure
When user is on page FDDetailsPage and types 31 on CustomTenureDays
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectOnMaturityPeriod 
Given user is on page FDDetailsPage verifies amount in InterestAmountPayout


@TestCaseKey=UDB-T2377 @TestCaseKey=UDB-T2400 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Select Tenure screen and Interest calculated against the selected period when user selects tenure as Custom and tenure period is 10 Years
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Test on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on CustomTenure
When user is on page FDDetailsPage and types 10 on CustomTenureYears
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectOnMaturityPeriod 
Given user is on page FDDetailsPage verifies amount in InterestAmountPayout


@TestCaseKey=UDB-T2378 @TestCaseKey=UDB-T2401 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Select Tenure screen and Interest calculated against the selected period when user selects tenure as Custom and tenure period is 3650 Days( Which is 120 months)
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Test on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on CustomTenure
When user is on page FDDetailsPage and types 3650 on CustomTenureDays
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectOnMaturityPeriod 
Given user is on page FDDetailsPage verifies amount in InterestAmountPayout

@TestCaseKey=UDB-T2385 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should successfully open the Regular FD with Auto Renew selection is Disable 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay AutoRenewOff on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
When user scrolls down to "Auto Renewal"
Given user is on page FDDetailsPage clicks on AutoRenewalOff 
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage


@TestCaseKey=UDB-T2393 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should successfully open the Tax Saver FD via Add Account link and should be able to deposit minimum of Rs 5000 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on TaxSaverFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay TaxSaver on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on TaxSaverTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage


@TestCaseKey=UDB-T2394 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should successfully open the Tax Saver FD with Interest Payout On Maturity and Auto Renew selection is disabled 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on TaxSaverFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types TaxSaver Maturity on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on TaxSaverTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectOnMaturityPeriod 
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage

@TestCaseKey=UDB-T2395 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should not Auto Renew  the Tax Saver FD 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on TaxSaverFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types TaxSaver Maturity on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on TaxSaverTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectOnMaturityPeriod 
When user scrolls down to "Add Nominee?"
Given user verifies on page FDDetailsPage for auto renewal off switch button text in placeholder AutoRenewalToggle

@TestCaseKey=UDB-T2396 @TestCaseKey=UDB-T2397 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify the Interest Pay Out option for Tax Saver FD for ETB user 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on TaxSaverFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types TaxSaver Maturity on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on TaxSaverTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectOnMaturityPeriod
Given user is on page FDDetailsPage verifies amount in InterestAmountPayout

@TestCaseKey=UDB-T2405 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Select Tenure screen should show the Plan details as per the Plan mention in View Rate Table Link to view all plans with interest rates 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit
When user scrolls down to "Select Tenure"  
Given user is on page FDDetailsPage clicks on ViewInterestRate

@TestCaseKey=UDB-T2416 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user is able to download Interest Certificate for each FD (Individual FD) 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AllDeposit
Given user verifies on page AccountsPage for Fixed Deposit text in placeholder FixedDepositOption
Given user is on page AccountsPage clicks on FixedDepositOption
Given user is on page AccountsPage clicks on ViewFDAccount
Given user is on page FDDetailsPage clicks on FDRequest
Given user is on page FDDetailsPage clicks on DownloadInterestCert
Given user is on page FDDetailsPage clicks on ChooseCurrentFD
Given user is on page FDDetailsPage clicks on ChooseFinancialYr
Given user is on page FDDetailsPage clicks on SelectYrFromList
Given user is on page FDDetailsPage clicks on Download
Given user is on page FDDetailsPage clicks on AllowPermission
Given user verifies on page FDDetailsPage for Download Successful text in placeholder DownloadSuccess
Given user is on page FDDetailsPage clicks on Okay

@TestCaseKey=UDB-T2418 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should able to view the statement details for FD 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AllDeposit
Given user verifies on page AccountsPage for Fixed Deposit text in placeholder FixedDepositOption
Given user is on page AccountsPage clicks on FixedDepositOption
Given user is on page AccountsPage clicks on ViewFDAccount
Given user is on page FDDetailsPage clicks on StatementsTab
Given user verifies on page FDDetailsPage for Current month text in placeholder CurrentMonthOption
Given user verifies on page FDDetailsPage for Last month text in placeholder LastMonthOption
Given user verifies on page FDDetailsPage for Last 3-months text in placeholder Last3MonthOption
Given user verifies on page FDDetailsPage for Last 6-months text in placeholder Last6MonthOption
Given user is on page FDDetailsPage clicks on Download
Given user is on page FDDetailsPage clicks on AllowPermission
Given user verifies on page FDDetailsPage for Download Successful text in placeholder DownloadSuccess
Given user is on page FDDetailsPage clicks on Okay

@TestCaseKey=UDB-T2419 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should able to view the  details for FD in Details Tab 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AllDeposit
Given user verifies on page AccountsPage for Fixed Deposit text in placeholder FixedDepositOption
Given user is on page AccountsPage clicks on FixedDepositOption
Given user is on page AccountsPage clicks on ViewFDAccount
Given user is on page FDDetailsPage clicks on DetailsTab
Given user verifies on page FDDetailsPage for Account Information text in placeholder AccountInfoSection
When user scrolls down to "Nominee's Details"
Given user verifies on page FDDetailsPage for "Nominee's Details" text in placeholder NomineeDetailsSection
Given user verifies on page FDDetailsPage for Branch Information text in placeholder BranchInfoSection

@TestCaseKey=UDB-T2420 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should able to view the  Request Tab for FD 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AllDeposit
Given user verifies on page AccountsPage for Fixed Deposit text in placeholder FixedDepositOption
Given user is on page AccountsPage clicks on FixedDepositOption
Given user is on page AccountsPage clicks on ViewFDAccount
Given user is on page FDDetailsPage clicks on RequestsTab

@TestCaseKey=UDB-T2446 @TestCaseKey=UDB-T2447 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user is able to download Interest Certificate for Consolidated view 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AllDeposit
Given user verifies on page AccountsPage for Fixed Deposit text in placeholder FixedDepositOption
Given user is on page AccountsPage clicks on FixedDepositOption
Given user is on page AccountsPage clicks on ViewFDAccount
Given user is on page FDDetailsPage clicks on RequestsTab
Given user is on page FDDetailsPage clicks on DownloadInterestCert
Given user is on page FDDetailsPage clicks on ChooseAllcombinedFD
Given user is on page FDDetailsPage clicks on ChooseFinancialYr
Given user is on page FDDetailsPage clicks on SelectYrFromList
Given user is on page FDDetailsPage clicks on Download
Given user is on page FDDetailsPage clicks on AllowPermission
Given user verifies on page FDDetailsPage for Download Successful text in placeholder DownloadSuccess
Given user is on page FDDetailsPage clicks on Okay


@TestCaseKey=UDB-T2459 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should successfully open the Regular FD without adding a nominee 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit  
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay NoNominee on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
When user scrolls down to "Nominee Details"
Given user is on page FDDetailsPage clicks NoNominee
Given user is on page FDDetailsPage clicks on Continue
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage


@TestCaseKey=UDB-T2460 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should successfully open the Tax saver FD without adding a nominee 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on TaxSaverFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types TaxSaver NoNominee on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on TaxSaverTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
When user scrolls down to "Nominee Details"
Given user is on page FDDetailsPage clicks NoNominee
Given user is on page FDDetailsPage clicks on Continue
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage


@TestCaseKey=UDB-T2464 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that user tries to create a Normal FD with an amount less than Rs. 1000 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit  
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay MinAmt on EnterFDName  
When user is on page FDDetailsPage and types 990 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Continue
Given user verifies on page FDDetailsPage for Enter an amount that is within the permissible limit. text in placeholder DepositAmtVerbiage

@TestCaseKey=UDB-T2465 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that user tries to create a Normal FD with an amount greater than Rs. 1.99 crores 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay MaxAmt on EnterFDName  
When user is on page FDDetailsPage and types 21000000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Continue
Given user verifies on page FDDetailsPage for Enter an amount that is within the permissible limit. text in placeholder DepositAmtVerbiage


@TestCaseKey=UDB-T2467 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that user tries to create a Tax saver FD with an amount less than Rs. 5000
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on TaxSaverFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types TaxSaver MinAmt on EnterFDName  
When user is on page FDDetailsPage and types 490 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on TaxSaverTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Continue
Given user verifies on page FDDetailsPage for Enter an amount that is within the permissible limit. text in placeholder DepositAmtVerbiage

@TestCaseKey=UDB-T2468 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that user tries to create a Tax saver FD with an amount more than Rs. 1.5 lakhs.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on TaxSaverFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types TaxSaver MaxAmt on EnterFDName  
When user is on page FDDetailsPage and types 150100 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on TaxSaverTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Continue
Given user verifies on page FDDetailsPage for Enter an amount that is within the permissible limit. text in placeholder DepositAmtVerbiage

@TestCaseKey=UDB-T2588 @TestCaseKey=UDB-T2482 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user is able to open FD with current account 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectCurrentAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay CurrentAC on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
When user scrolls down to "Nominee Details"
Given user swipe down the page
Given user is on page FDDetailsPage and enters Test Script Value as NomineeName
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Relationship
Given user is on page FDDetailsPage clicks on NomineeRelationship
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage

@TestCaseKey=UDB-T2398 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Select Tenure screen and Interest calculated against the selected period When user selects tenure as "Custom" and tenure period is min 5 years & max 10 years
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay CustTenure on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on CustomTenure
When user is on page FDDetailsPage and types 8 on CustomTenureYears
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectOnMaturityPeriod 
Given user is on page FDDetailsPage verifies amount in InterestAmountPayout

@TestCaseKey=UDB-T2399 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Select Tenure screen and Interest calculated against the selected period When user selects tenure as "Custom" and tenure period is Less than 5 year
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay CustTenure on EnterFDName  
When user is on page FDDetailsPage and types 15000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on CustomTenure
When user is on page FDDetailsPage and types 4 on CustomTenureYears
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectOnMaturityPeriod
Given user is on page FDDetailsPage verifies amount in InterestAmountPayout


@TestCaseKey=UDB-T2354 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user Non-bank employee with age 18-30 should successfully open the Regular FD with Interest Payout On Maturity and Auto Renew selection is "Auto renew with principle amount only " and should be able to deposit minimum of Rs 1000 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Maturity on EnterFDName  
When user is on page FDDetailsPage and types 1000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectOnMaturityPeriod 
When user scrolls down to "Add Nominee?"
Given user is on page FDDetailsPage clicks on AutoRenewalPrincipalAmt
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage


@TestCaseKey=UDB-T2363 @TestCaseKey=UDB-T2386 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should successfully Auto Renew the Regular FD with "principle amount only" if Payout is selected as "On Maturity" 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay PrincipleAmt on EnterFDName  
When user is on page FDDetailsPage and types 12000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectOnMaturityPeriod 
When user scrolls down to "Add Nominee?"
Given user is on page FDDetailsPage clicks on AutoRenewalPrincipalAmt
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage


@TestCaseKey=UDB-T2384 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Regular FD Negative testing for Deposit Amount field
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit  
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay MinAmt on EnterFDName  
When user is on page FDDetailsPage and types 990 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user is on page FDDetailsPage clicks on NomineeDOBYear
Given user is on page FDDetailsPage selects PreviousYear
Given user is on page FDDetailsPage clicks on NomineeYear
Given user is on page FDDetailsPage clicks on NomineeMonth
Given user is on page FDDetailsPage clicks on NomineeDay
Given user is on page FDDetailsPage clicks on Continue
Given user verifies on page FDDetailsPage for Enter an amount that is within the permissible limit. text in placeholder DepositAmtVerbiage
When user is on page FDDetailsPage and types 20000000 on EnterAmount
Given user swipe down the page
Given user is on page FDDetailsPage clicks on Continue
Given user verifies on page FDDetailsPage for Enter an amount that is within the permissible limit. text in placeholder DepositAmtVerbiage


@TestCaseKey=UDB-T2387 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user is able to add New Nominee details Below 18 years while creating FD if nominee details are not present in selected SA/CA/OD account 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay NomiMinor on EnterFDName  
When user is on page FDDetailsPage and types 12000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
When user scrolls down to "Nominee Details"
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user selects day 1 month Apr year 2020 and current year is 2025
Given user swipe down the page
Given user is on page FDDetailsPage clicks on GuardianName
When user is on page FDDetailsPage and types Sachin Guardian on GuardianName
Given user is on page FDDetailsPage clicks on GuardianDOB
Given user selects day 11 month Apr year 2006 and current year is 2025 
Given user is on page FDDetailsPage clicks on GuardianRelationship
Given user is on page FDDetailsPage clicks on GuardianRelationshipSelection
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage

@TestCaseKey=UDB-T2379 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify the Negative scenarios for Custom field Year on Tenure screen
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay InvalidYr on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on CustomTenure
When user is on page FDDetailsPage and types 12 on CustomTenureYears
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod
Given user verifies for toast message on page FDDetailsPage as No Scheme is available for given details text in placeholder ErrorToastMsg

@TestCaseKey=UDB-T2380 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify the Negative scenarios for Custom field Months on Tenure screen
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay InvalidYr on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on CustomTenure
When user is on page FDDetailsPage and types 251 on CustomTenureMonth
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod
Given user verifies for toast message on page FDDetailsPage as No Scheme is available for given details text in placeholder ErrorToastMsg

@TestCaseKey=UDB-T2381 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify the Negative scenarios for Custom field Days on Tenure screen
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay InvalidYr on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on CustomTenure
When user is on page FDDetailsPage and types 4 on CustomTenureDays
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod
Given user verifies for toast message on page FDDetailsPage as No Scheme is available for given details text in placeholder ErrorToastMsg

@TestCaseKey=UDB-T2407 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Tax Saver FD Negative testing for Deposit Amount field 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on TaxSaverFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay TaxSaver on EnterFDName  
When user is on page FDDetailsPage and types 1500 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on TaxSaverTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod
Given user verifies for toast message on page FDDetailsPage as No Scheme is available for given details text in placeholder ErrorToastMsg

@TestCaseKey=UDB-T2413 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Pre-mature closure for Regular FD and Penalty charges
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AllDeposit
Given user is on page AccountsPage clicks on FixedDepositOption
Given user is on page AccountsPage clicks on ViewFD
Given user is on page FDDetailsPage clicks on FDRequest
Given user is on page FDDetailsPage clicks on FDClosure
Given user is on page FDDetailsPage clicks on FDClosureAgreeButton
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue


@TestCaseKey=UDB-T2415 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should successfully open the Tax Saver FD with Auto Renew selection is Disable
#Given user logins to app
#Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
#Given user is on page DashboardPage clicks on Accounts
#Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on TaxSaverFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay TaxSaver on EnterFDName  
When user is on page FDDetailsPage and types 15000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on TaxSaverTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod
When user scrolls down to "Nominee Details"
Given user is on page FDDetailsPage to check FDAutoRenewal toggle switch is On    # need to work as method is not getting called
#Given user swipe down the page
#Given user is on page FDDetailsPage clicks on NomineeDOB
#Given user selects day 12 month Apr year 2006 and current year is 2025
#Given user is on page FDDetailsPage clicks on Continue
#Given user swipe down the page
#Given user is on page FDReviewPage clicks on T&CCheckbox 
#Given user is on page FDReviewPage clicks on AcceptButton
#Given user is on page FDReviewPage clicks on Submit
#Given user is on page FDReviewPage clicks on TPIN
#When user is on page FDReviewPage and types 1212 on TpinText
#When user is on page FDReviewPage clicks on TPINContinue
#Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage

@TestCaseKey=UDB-T2421 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Negative testing for Nominee fields Name 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user swipe down the page
Given user is on page FDDetailsPage clicks on ChangeNominee
When user is on page FDDetailsPage and types AZ on NomineeName
Given user verifies on page FDDetailsPage for Name should contain more than two characters. text in placeholder NomineeNameValidation


@TestCaseKey=UDB-T2424 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify Negative testing for Address field for Nominee 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user swipe down the page
Given user is on page FDDetailsPage clicks on ChangeNominee
Given user is on page FDDetailsPage clicks on NomineeAddressCheckbox
When user scrolls down to "Pin"
Given user verifies on page FDDetailsPage for Name should contain more than two characters. text in placeholder NomineeNameValidation

@TestCaseKey=UDB-T2427 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that user should be able to Edit the pre-filled FD details After review screen
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Joseph on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
When user scrolls down to "Nominee Details"
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user selects day 12 month Apr year 2006 and current year is 2025
Given user is on page FDDetailsPage clicks on Continue
Given user is on page FDReviewPage clicks on FDDetailsChange
Given user verifies on page FDDetailsPage for Fixed Deposit Details text in placeholder DetailsPage



@TestCaseKey=UDB-T2428 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that Proceed button should be disable if T&C is not selected
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Joseph on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
When user scrolls down to "Nominee Details"
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user selects day 12 month Apr year 2006 and current year is 2025
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage to check SubmitButton is Disabled


@TestCaseKey=UDB-T2429 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that Proceed button should be Enable if T&C is Accepted
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Joseph on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
When user scrolls down to "Nominee Details"
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user selects day 12 month Apr year 2006 and current year is 2025
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage to check SubmitButton is Enabled


@TestCaseKey=UDB-T2430 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user is trying to  open a FD and payment contribution transaction has failed Due to incorrect TPIN
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Joseph on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
When user scrolls down to "Nominee Details"
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user selects day 12 month Apr year 2006 and current year is 2025
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
#When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Please enter correct TPIN, you have 2 more attempts remaining text in placeholder TPINIncorrectMsg


@TestCaseKey=UDB-T2431 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that User is able to download the T&C
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay Joseph on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
When user scrolls down to "Nominee Details"
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user selects day 12 month Apr year 2006 and current year is 2025
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox
Given user is on page FDReviewPage clicks on DownloadT&C
Given user is on page FDReviewPage clicks on AllowPermission

@TestCaseKey=UDB-T2383 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that user is able to share image of successful payment on available apps by clicking on ‘share’ icon 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on NormalFixedDeposit 
Given user is on page FDDetailsPage clicks on SelectAccount    
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types Vijay AutoRenewOff on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectMonthlyPeriod 
When user scrolls down to "Auto Renewal"
Given user is on page FDDetailsPage clicks on AutoRenewalOff 
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user selects day 12 month Apr year 2006 and current year is 2025
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 1212 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
Given user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage
When user is on page FDReviewPage clicks on ShareButton

