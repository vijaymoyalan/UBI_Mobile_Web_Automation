Feature: Mobile UI for LAD


@TestCaseKey=UDB-T43739 @TestCaseKey=UDB-T43685 @Automatable @Smoke @RedmiNote9Pro
Scenario: To verify that the customer can log in to the Vyom Mobile Banking App 

Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Accounts


@TestCaseKey=UDB-T43686 @Automatable @Smoke @RedmiNote9Pro @LADEntryPoint @PilotRun
Scenario: To verify the Customer is able to open LAD account by clicking on +Add  Account  in Loans Tab and select "Loan Against Deposite" from the Add New Loan Account pop up.
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
When user verifies on page LADDetailsPage for Loan Against Deposit text in placeholder LADTitlePage


@TestCaseKey=UDB-T43687 @Automatable @Smoke @RedmiNote9Pro @LADEntryPoint @UATRun
Scenario: To verify the customer is able to open Loan Against Deposit (LAD) by  clicking on "Avail a loan" nudge from Deposit Page 
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
When user scrolls down to "Invest & Insure"
Given user is on page DashboardPage clicks on LoansViewAll
Given user is on page DashboardPage clicks on LoanAgainstDeposit
When user verifies on page LADDetailsPage for Loan Against Deposit text in placeholder LADTitlePage


#@TestCaseKey=UDB-T001 @Automatable @Smoke @RedmiNote9Pro @LADEntryPoint 
#Scenario: LAD Entry Point - Accounts-Deposits- Explore our products 
#Given user logins to app
#Given user logins to app entering Login PIN
##Given user is on page DashboardPage clicks on FingerPrint
#Given user is on page DashboardPage clicks on Accounts
#Given user swipe down the page
#Given user is on page DepositPage clicks on LoansProducts
#Given user is on page DepositPage clicks on ExploreLoansProducts

@TestCaseKey=UDB-T2355 @TestCaseKey=UDB-T2362 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should successfully open the Regular FD. 
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount   
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types VijayMaturity on EnterFDName  
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectOnMaturityPeriod
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user selects day 12 month Apr year 2006 and current year is 2026
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 2121 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
When user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage


@TestCaseKey=UDB-T43692 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @UATRun
Scenario: Verify that the customer can select a deposit account (FD/RD) from the eligible deposit accounts page.
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage to check DepositAccount is Displayed


@TestCaseKey=UDB-T43690 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @UATRun
Scenario: Verify that the customer is redirected to the eligible deposit accounts page upon clicking LAD A/C opening.
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
When user verifies on page LADDetailsPage for Loan Against Deposit text in placeholder LADTitlePage


@TestCaseKey=UDB-T43688 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @UATRun
Scenario: To verify the customer is able to open LAD account by clicking on LAD under Loan Products in Deposit Tab.
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
Given user is on page LADDetailsPage clicks on LoanPurposePersonal
Given user swipe down the page
Given user is on page LADDetailsPage clicks on SelectOperativeAccount
Given user is on page LADDetailsPage clicks on SavingsAccount
Given user is on page LADDetailsPage clicks on ContinueAhead
When user scrolls down to "Declarations"
Given user is on page LADReviewPage clicks on DownloadKeyFacts
#Given user is on page LADReviewPage clicks on AllowDownloadPermission
Given user is on page LADReviewPage clicks on DownloadOkay
Given user swipe down the page
Given user is on page LADReviewPage clicks on Declarations
Given user is on page LADReviewPage clicks on IAccept
Given user is on page LADReviewPage clicks on ContinueLADForm
Given user is on page LADReviewPage clicks on TPIN
When user is on page LADReviewPage and types 2121 on TpinText
When user is on page LADReviewPage clicks on TPINContinue
When user verifies on page LADReviewPage for Loan Against Deposit successfully opened text in placeholder CompletedLADPage


@TestCaseKey=UDB-T43693 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @UATRun
Scenario: Verify that the customer is allowed to select either one FD or one RD at any point in time.
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage to check DepositAccount is Displayed
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue


@TestCaseKey=UDB-T43701 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @UATRun
Scenario: Verify that the customer can select an FD with auto-renewal and click 'Continue.'
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage to check DepositAccount is Displayed
Given user is on page LADDetailsPage to check EnableAutoRenewalMessage is Displayed
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue


@TestCaseKey=UDB-T43725 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @UATRun
Scenario: Verify that the customer enters a transaction PIN (TPIN) for authentication.

#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
Given user is on page LADDetailsPage clicks on LoanPurposePersonal
Given user swipe down the page
Given user is on page LADDetailsPage clicks on SelectOperativeAccount
Given user is on page LADDetailsPage clicks on SavingsAccount
Given user is on page LADDetailsPage clicks on ContinueAhead
When user scrolls down to "Declarations"
Given user is on page LADReviewPage clicks on DownloadKeyFacts
#Given user is on page LADReviewPage clicks on AllowDownloadPermission
Given user is on page LADReviewPage clicks on DownloadOkay
Given user swipe down the page
Given user is on page LADReviewPage clicks on Declarations
Given user is on page LADReviewPage clicks on IAccept
Given user is on page LADReviewPage clicks on ContinueLADForm
Given user is on page LADReviewPage clicks on TPIN
When user is on page LADReviewPage and types 2121 on TpinText
Given user is on page LADReviewPage to check TPINContinue is Enabled


@TestCaseKey=UDB-T43727 @TestCaseKey=UDB-T43730 @TestCaseKey=UDB-T43731  @TestCaseKey=UDB-T43732 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @UATRun
Scenario: Verify that entering the correct TPIN allows proceeding, Verify that the customer can download the sanction letter and KFS, Verify that options "Share" and "Home" are available.

#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
Given user is on page LADDetailsPage clicks on LoanPurposePersonal
Given user swipe down the page
Given user is on page LADDetailsPage clicks on SelectOperativeAccount
Given user is on page LADDetailsPage clicks on SavingsAccount
Given user is on page LADDetailsPage clicks on ContinueAhead
When user scrolls down to "Declarations"
Given user is on page LADReviewPage clicks on DownloadKeyFacts
#Given user is on page LADReviewPage clicks on AllowDownloadPermission
Given user is on page LADReviewPage clicks on DownloadOkay
Given user swipe down the page
Given user is on page LADReviewPage clicks on Declarations
Given user is on page LADReviewPage clicks on IAccept
Given user is on page LADReviewPage clicks on ContinueLADForm
Given user is on page LADReviewPage clicks on TPIN
When user is on page LADReviewPage and types 2121 on TpinText
When user is on page LADReviewPage clicks on TPINContinue
When user verifies on page LADReviewPage for Share text in placeholder ShareButton
When user verifies on page LADReviewPage for Loan Against Deposit successfully opened text in placeholder CompletedLADPage
Given user swipe down the page
When user is on page LADReviewPage clicks on DownloadSanctionLetter
Given user is on page LADReviewPage clicks on DownloadOkay
When user is on page LADReviewPage clicks on DownloadKeyFactsLetter
Given user is on page LADReviewPage clicks on DownloadOkay
When user verifies on page LADReviewPage for Share text in placeholder ShareButton
When user verifies on page LADReviewPage for Home text in placeholder HomeButton
Given user is on page LADReviewPage clicks on HomeButton



@TestCaseKey=UDB-T43703 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @UATRun
Scenario: Verify that clicking 'Continue' without selecting an FD or RD does not proceed further.
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on Continue
When user verifies on page LADDetailsPage for Please select a term deposit to continue text in placeholder DepositSelectionAlert


@TestCaseKey=UDB-T43704 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @UATRun
Scenario: Verify that user is navigated to  loan details page post selecting FD/RD and clicking on continue.

#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue


@TestCaseKey=UDB-T43705 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @UATRun
Scenario: Verify that the customer can enter the following details:Required loan amount against selected FD/RD (via input or slider), Purpose of loan (via selection),Select operative account

#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
When user verifies on page LADDetailsPage for Personal Requirement text in placeholder LoanPurposeOption1
When user verifies on page LADDetailsPage for Agricultural Requirement text in placeholder LoanPurposeOption2
Given user swipe down the page
When user verifies on page LADDetailsPage for Select Operative Account text in placeholder AccountSelection


@TestCaseKey=UDB-T43702 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @PilotRun
Scenario: Verify that the customer can select an FD without auto-renewal and click 'Continue.'
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount  
Given user is on page DepositPage clicks on FixedDeposit
Given user is on page FDDetailsPage clicks on SelectAccount
Given user is on page FDDetailsPage clicks on SelectSavingAccount
Given user is on page FDDetailsPage clicks on EnterFDName
When user is on page FDDetailsPage and types VijayTest on EnterFDName  
When user is on page FDDetailsPage and types 11001 on EnterAmount
When user scrolls down to "Select Interest Payout"
Given user is on page FDDetailsPage clicks on PopularTenure
When user scrolls down to "Total Maturity Amount"
Given user is on page FDDetailsPage clicks on SelectInterestPayout 
Given user is on page FDDetailsPage clicks on SelectOnMaturityPeriod 
When user scrolls down to "Auto Renewal"
Given user is on page FDDetailsPage clicks on AutoRenewalOff 
Given user swipe down the page
Given user is on page FDDetailsPage clicks on NomineeDOB
Given user selects day 12 month Apr year 2006 and current year is 2026
Given user is on page FDDetailsPage clicks on Continue
Given user swipe down the page
Given user is on page FDReviewPage clicks on T&CCheckbox 
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 2121 on TpinText
When user is on page FDReviewPage clicks on TPINContinue
When user verifies on page FDReviewPage for Your Fixed Deposit Account has been opened successfully! text in placeholder CompletedFDPage
Given user is on page FDReviewPage to capture FDAccNo 
When user is on page FDReviewPage clicks on BackButton
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user scrolls to clicks on Masked Account Number
When user verifies on page LADDetailsPage for Enable Deposit Auto-Renewal text in placeholder EnableAutoRenewalText
Given user is on page LADDetailsPage clicks on EnableAutoRenewalButton
When user verifies on page LADDetailsPage for Auto Renewal is Active text in placeholder EnableAutoRenewalMessage
Given user scrolls to clicks on Masked Account Number
Given user is on page LADDetailsPage clicks on Continue
Given user is on page LADDetailsPage clicks on LoanPurposePersonal
Given user swipe down the page
Given user is on page LADDetailsPage clicks on SelectOperativeAccount
Given user is on page LADDetailsPage clicks on SavingsAccount
Given user is on page LADDetailsPage clicks on ContinueAhead
When user scrolls down to "Declarations"
Given user is on page LADReviewPage clicks on DownloadKeyFacts
#Given user is on page LADReviewPage clicks on AllowDownloadPermission
Given user is on page LADReviewPage clicks on DownloadOkay
Given user swipe down the page
Given user is on page LADReviewPage clicks on Declarations
Given user is on page LADReviewPage clicks on IAccept
Given user is on page LADReviewPage clicks on ContinueLADForm
Given user is on page LADReviewPage clicks on TPIN
When user is on page LADReviewPage and types 2121 on TpinText
When user is on page LADReviewPage clicks on TPINContinue
When user verifies on page LADReviewPage for Loan Against Deposit successfully opened text in placeholder CompletedLADPage


@TestCaseKey=UDB-T43707  @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @UATRun
Scenario: Verify that the maximum loan amount message appears below the loan slider: "The maximum loan amount you can avail is Rs. XXXXX.XX, based on your deposit amount."
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
When user verifies on page LADDetailsPage for The maximum loan amount you can avail is text in placeholder LoanAmountText



@TestCaseKey=UDB-T43712  @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening
Scenario: Verify that the customer can select one loan purpose from available options:Personal Requirement,Agriculture Requirement
 
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
Given user is on page LADDetailsPage clicks on ContinueAhead
When user verifies on page LADDetailsPage for Please select a purpose of loan to continue text in placeholder LoanPurposeAlert
Given user is on page LADDetailsPage clicks on LoanPurposePersonal


@TestCaseKey=UDB-T43713  @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening
Scenario: Verify that the customer can select an operative account from the drop-down list.
 
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
Given user is on page LADDetailsPage clicks on ContinueAhead
Given user is on page LADDetailsPage clicks on LoanPurposePersonal
Given user swipe down the page
Given user is on page LADDetailsPage clicks on ContinueAhead
When user verifies on page LADDetailsPage for Please select an operative account to continue text in placeholder SelectOperativeAccountAlert
Given user is on page LADDetailsPage clicks on SelectOperativeAccount
Given user is on page LADDetailsPage clicks on SavingsAccount



@TestCaseKey=UDB-T43714  @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening
Scenario: Verify that clicking 'Continue' after entering loan details proceeds to the next step(KFS page).
 
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
Given user is on page LADDetailsPage clicks on ContinueAhead
Given user is on page LADDetailsPage clicks on LoanPurposePersonal
Given user swipe down the page
Given user is on page LADDetailsPage clicks on ContinueAhead
Given user is on page LADDetailsPage clicks on SelectOperativeAccount
Given user is on page LADDetailsPage clicks on SavingsAccount
Given user is on page LADDetailsPage clicks on ContinueAhead
When user verifies on page LADDetailsPage for Key Facts Statement text in placeholder KFSPage


@TestCaseKey=UDB-T43715  @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening
Scenario: Verify that clicking 'Continue' without selecting: a. Purpose of loan displays the inline error: "Please select a purpose of loan to continue." b. Operative account displays the inline error: "Please select an operative account to continue."
 
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
Given user is on page LADDetailsPage clicks on ContinueAhead
Given user swipe down the page
When user verifies on page LADDetailsPage for Please select a purpose of loan to continue text in placeholder LoanPurposeAlert
When user verifies on page LADDetailsPage for Please select an operative account to continue text in placeholder SelectOperativeAccountAlert


@TestCaseKey=UDB-T43719  @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening
Scenario: Verify that selecting an operative account displays the account balance.
 
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
Given user is on page LADDetailsPage clicks on ContinueAhead
Given user is on page LADDetailsPage clicks on LoanPurposePersonal
Given user swipe down the page
Given user is on page LADDetailsPage clicks on ContinueAhead
Given user is on page LADDetailsPage clicks on SelectOperativeAccount
Given user is on page LADDetailsPage to check SavingsAccount is Displayed
Given user is on page LADDetailsPage clicks on SavingsAccount


@TestCaseKey=UDB-T43720  @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening
Scenario: Verify that selecting an operative account other than Savings Account (Individual and Self), Current Account (Individual and Self/Sole Prop), OD Accountother than ODGEN and ODSTF should not be displayed in operative account list.
 
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
Given user is on page LADDetailsPage clicks on ContinueAhead
Given user is on page LADDetailsPage clicks on LoanPurposePersonal
Given user swipe down the page
Given user is on page LADDetailsPage clicks on ContinueAhead
Given user is on page LADDetailsPage clicks on SelectOperativeAccount
Given user is on page LADDetailsPage to check OperativeAccountSavings is Displayed
Given user is on page LADDetailsPage to check OperativeAccountOverdraft is Displayed
#Given user is on page LADDetailsPage to check OperativeAccountCurrent is Displayed


@TestCaseKey=UDB-T43721 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @UATRun
Scenario: Verify that clicking 'Continue' after selecting an operative account proceeds to the review details page. 
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
Given user is on page LADDetailsPage clicks on LoanPurposePersonal
Given user swipe down the page
Given user is on page LADDetailsPage clicks on SelectOperativeAccount
Given user is on page LADDetailsPage clicks on SavingsAccount
Given user is on page LADDetailsPage clicks on ContinueAhead
When user verifies on page LADKFSPage for Date text in placeholder KFSDate

@TestCaseKey=UDB-T43722 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @UATRun
Scenario: Verify that the page displays:a. KFS details (Date, Application Reference No., Applicant Name, Name of Regulated Entity),b. Deposit Account Details (FD/RD Accounts, Invested Amount, Current Value, Interest Rate, Maturity Date),c. LAD Details (Loan Type, Loan Amount, Loan Credit Account, ROI, Loan Purpose),d. KFS PDF download option,e. Declarations

#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
Given user is on page LADDetailsPage clicks on LoanPurposePersonal
Given user swipe down the page
Given user is on page LADDetailsPage clicks on SelectOperativeAccount
Given user is on page LADDetailsPage clicks on SavingsAccount
Given user is on page LADDetailsPage clicks on ContinueAhead
When user verifies on page LADKFSPage for Date text in placeholder KFSDate
When user verifies on page LADKFSPage for Application Reference Number text in placeholder KFSRefNo
When user verifies on page LADKFSPage for Applicant Name text in placeholder KFSCustName
When user verifies on page LADKFSPage for FD Account text in placeholder KFSFDAccount
When user scrolls down to "Loan Details"
When user verifies on page LADKFSPage for Invested Amount text in placeholder KFSInvestAmt
When user verifies on page LADKFSPage for Current Value text in placeholder KFSCurrentValue
When user verifies on page LADKFSPage for Interest Rate text in placeholder KFSIntRate
When user verifies on page LADKFSPage for Maturity Date text in placeholder KFSMaturityDate
When user verifies on page LADKFSPage for Loan Type text in placeholder KFSLoanType
When user verifies on page LADKFSPage for Loan Amount to be disbursed text in placeholder KFSLoanAmt
When user scrolls down to "Loan Credit Account"
When user verifies on page LADKFSPage for Loan Credit Account text in placeholder KFSLoanCreditAccount
When user verifies on page LADKFSPage for ROI on Loan text in placeholder KFSROI
When user verifies on page LADKFSPage for Loan Purpose text in placeholder KFSLoanPurpose
Given user scrolls down to "Loan Purpose"
Given user is on page LADReviewPage clicks on DownloadKeyFacts
Given user is on page LADReviewPage clicks on DownloadOkay
When user scrolls down to "Declarations"
Given user is on page LADReviewPage clicks on Declarations


@TestCaseKey=UDB-T43723 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @UATRun
Scenario: Verify that the declaration checkbox must be ticked to proceed:a. If checked, clicking 'Continue' proceeds to loan sanction. B. If unchecked, the 'Continue' button remains disabled.

#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
Given user is on page LADDetailsPage clicks on LoanPurposePersonal
Given user swipe down the page
Given user is on page LADDetailsPage clicks on SelectOperativeAccount
Given user is on page LADDetailsPage clicks on SavingsAccount
Given user is on page LADDetailsPage clicks on ContinueAhead
When user scrolls down to "Declarations"
Given user is on page LADReviewPage to check ContinueLADForm is Notclickable
Given user is on page LADReviewPage clicks on Declarations
Given user is on page LADReviewPage clicks on IAccept
Given user is on page LADReviewPage clicks on ContinueLADForm


@TestCaseKey=UDB-T43724 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening @UATRun
Scenario: Verify that clicking "Checkbox" opens a pop-up with options:a. Download T&C, b. I Accept
 
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
Given user is on page LADDetailsPage clicks on LoanPurposePersonal
Given user swipe down the page
Given user is on page LADDetailsPage clicks on SelectOperativeAccount
Given user is on page LADDetailsPage clicks on SavingsAccount
Given user is on page LADDetailsPage clicks on ContinueAhead
When user scrolls down to "Declarations"
Given user is on page LADReviewPage clicks on Declarations
When user verifies on page LADReviewPage for Download T&C text in placeholder T&CDownload
When user verifies on page LADReviewPage for I accept text in placeholder AcceptBtn

@TestCaseKey=UDB-T43740 @TestCaseKey=UDB-T43749 @TestCaseKey=UDB-T43753 @TestCaseKey=UDB-T43754 @TestCaseKey=UDB-T43755 @TestCaseKey=UDB-T43756 @TestCaseKey=UDB-T43757 @TestCaseKey=UDB-T43758 @Automatable @Smoke @RedmiNote9Pro @LADAccountClosure @PilotRun
Scenario:  To verify that the customer can select the LAD Account to close from the Loans tab in accounts page.
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page LADClosure clicks on LoanBorrowingsOption
Given user is on page LADClosure clicks on LoanAgainstDeposit
#When user scrolls down to "Retail"
Given user is on page LADClosure clicks on LADAccount
Given user is on page LADClosure clicks on RequestTab
Given user is on page LADClosure clicks on CloseLAD
When user verifies on page LADClosure for Close Loan Against Deposit account text in placeholder CloseLADAlert
Given user is on page LADClosure clicks on CloseLADContinuBtn
When user verifies on page LADClosure for Loan Limit Utilisation text in placeholder LoanUtilizationStep
When user verifies on page LADClosure for Deposit Account Details text in placeholder LoanDepositAccountDetails
When user verifies on page LADClosure for Loan Details text in placeholder LoanDepositDetails
Given user swipe down the page
Given user is on page LADClosure clicks on CloseLADContinuBtn
Given user is on page LADClosure clicks on OperativeAccountSavings
Given user is on page LADClosure clicks on CloseLADContinuBtn
When user verifies on page LADClosure for Select Account text in placeholder SelectAccountStep
When user verifies on page LADClosure for Deposit Account Details text in placeholder LoanDepositAccountDetails
When user verifies on page LADClosure for Loan Details text in placeholder LoanDepositDetails
Given user swipe down the page
Given user is on page LADClosure clicks on Terms&Conditions
Given user is on page LADClosure clicks on IAccept
Given user is on page LADClosure clicks on CloseLADContinuBtn
Given user is on page LADClosure clicks on TPIN
When user is on page LADClosure and types 2121 on TpinText
When user is on page LADClosure clicks on TPINContinue
When user verifies on page LADClosure for Loan Against Deposit closed successfully! text in placeholder LADClosurePage
Given user swipe down the page
When user verifies on page LADClosure for Share text in placeholder ShareIcon
When user verifies on page LADClosure for Share text in placeholder HomeIcon
When user is on page LADClosure clicks on HomeIcon


@TestCaseKey=UDB-T43741 @Automatable @Smoke @RedmiNote9Pro @LADAccountClosure @PilotRun
Scenario:  To verify that a pop-up message is displayed when the customer clicks "Close LAD." a. If the customer selects "Continue," they should proceed with the closure process.b. If the customer selects "Cancel," they should be redirected to the Home page of the VYOM App.

#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page LADClosure clicks on LoanBorrowingsOption
Given user is on page LADClosure clicks on LoanAgainstDeposit
#When user scrolls down to "Retail"
Given user is on page LADClosure clicks on LADAccount
Given user is on page LADClosure clicks on RequestTab
Given user is on page LADClosure clicks on CloseLAD
When user verifies on page LADClosure for Close Loan Against Deposit account text in placeholder CloseLADAlert
Given user is on page LADClosure to check CloseLADContinuBtn is Displayed
Given user is on page LADClosure to check CancelButton is Displayed
Given user is on page LADClosure clicks on CancelButton
Given user is on page LADClosure clicks on CloseLAD
Given user is on page LADClosure clicks on CloseLADContinuBtn

@TestCaseKey=UDB-T43750 @Automatable @Smoke @RedmiNote9Pro @LADAccountClosure
Scenario: To verify that customer is viewing the details on the "Closure of Loan" screen
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page LADClosure clicks on LoanBorrowingsOption
Given user is on page LADClosure clicks on LoanAgainstDeposit
Given user is on page LADClosure clicks on LADAccount
Given user is on page LADClosure clicks on RequestTab
Given user is on page LADClosure clicks on CloseLAD
When user verifies on page LADClosure for Close Loan Against Deposit account text in placeholder CloseLADAlert
Given user is on page LADClosure clicks on CloseLADContinuBtn
When user verifies on page LADClosure for Loan Limit Utilisation text in placeholder LoanUtilizationStep
When user verifies on page LADClosure for Deposit Account Details text in placeholder LoanDepositAccountDetails
When user verifies on page LADClosure for Invested Amount text in placeholder LoanDepositInvstAmt
When user verifies on page LADClosure for Current Value text in placeholder LoanDepositCurrentValue
When user verifies on page LADClosure for Deposit Interest Rate text in placeholder LoanDepositInterestRate
When user verifies on page LADClosure for Maturity Date text in placeholder LoanDepositMaturityDate
When user scrolls down to "ROI on Loan"
When user verifies on page LADClosure for Loan Details text in placeholder LoanDepositDetails
When user verifies on page LADClosure for Loan Account text in placeholder LoanDepositAccount
When user verifies on page LADClosure for Loan Amount Availed text in placeholder LoanDepositAmt
When user verifies on page LADClosure for ROI on Loan text in placeholder LoanDepositROI
When user verifies on page LADClosure for Interest charged on loan till date text in placeholder LoanDepositInterest
When user verifies on page LADClosure for Amount repaid till date text in placeholder LoanDepositRepaid

@TestCaseKey=UDB-T43709 @Automatable @Smoke @RedmiNote9Pro @LADAccountOpening
Scenario: Verify that the customer can adjust the loan amount within the allowed range.
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page DashboardPage clicks on AddAccount
Given user is on page DashboardPage clicks on LoanAgainstDeposit
Given user is on page LADDetailsPage clicks on DepositAccount
Given user is on page LADDetailsPage clicks on Continue
Given user moves slider number 0 to 200
Given user moves slider number 0 to 300
Given user moves slider number 0 to 100
When user verifies on page LADDetailsPage for 900.00 text in placeholder MinLoanAmount
Given user is on page LADDetailsPage clicks on LoanPurposePersonal


@TestCaseKey=UDB-T43744 @Automatable @Smoke @RedmiNote9Pro @LADAccountClosure
Scenario:  To verify that the "Select Account" stepper screen displays the header: "Select the account for making a repayment."

#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page LADClosure clicks on LoanBorrowingsOption
Given user is on page LADClosure clicks on LoanAgainstDeposit
#When user scrolls down to "Retail"
Given user is on page LADClosure clicks on LADAccount
Given user is on page LADClosure clicks on RequestTab
Given user is on page LADClosure clicks on CloseLAD
Given user is on page LADClosure clicks on CloseLADContinuBtn
Given user swipe down the page
Given user is on page LADClosure clicks on CloseLADContinuBtn
Given user is on page LADClosure clicks on OperativeAccountSavings
Given user is on page LADClosure clicks on CloseLADContinuBtn
When user verifies on page LADClosure for Select Account text in placeholder SelectAccountStep
When user verifies on page LADClosure for Deposit Account Details text in placeholder LoanDepositAccountDetails


@TestCaseKey=UDB-T43751 @Automatable @Smoke @RedmiNote9Pro @LADAccountClosure
Scenario:To verify that the customer can review all details before proceeding with the closure process.
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page LADClosure clicks on LoanBorrowingsOption
Given user is on page LADClosure clicks on LoanAgainstDeposit
Given user is on page LADClosure clicks on LADAccount
Given user is on page LADClosure clicks on RequestTab
Given user is on page LADClosure clicks on CloseLAD
Given user is on page LADClosure clicks on CloseLADContinuBtn
When user verifies on page LADClosure for Loan Limit Utilisation text in placeholder LoanUtilizationStep
When user verifies on page LADClosure for Deposit Account Details text in placeholder LoanDepositAccountDetails
When user verifies on page LADClosure for Invested Amount text in placeholder LoanDepositInvstAmt
When user verifies on page LADClosure for Current Value text in placeholder LoanDepositCurrentValue
When user verifies on page LADClosure for Deposit Interest Rate text in placeholder LoanDepositInterestRate
When user verifies on page LADClosure for Maturity Date text in placeholder LoanDepositMaturityDate
When user scrolls down to "ROI on Loan"
When user verifies on page LADClosure for Loan Details text in placeholder LoanDepositDetails
When user verifies on page LADClosure for Loan Account text in placeholder LoanDepositAccount
When user verifies on page LADClosure for Loan Amount Availed text in placeholder LoanDepositAmt
When user verifies on page LADClosure for ROI on Loan text in placeholder LoanDepositROI
When user verifies on page LADClosure for Interest charged on loan till date text in placeholder LoanDepositInterest
When user verifies on page LADClosure for Amount repaid till date text in placeholder LoanDepositRepaid


@TestCaseKey=UDB-T43752 @Automatable @Smoke @RedmiNote9Pro @LADAccountClosure @PilotRun
Scenario: To verify that the customer must accept the declaration and consent before proceeding.

#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on Loans
Given user is on page LADClosure clicks on LoanBorrowingsOption
Given user is on page LADClosure clicks on LoanAgainstDeposit
#When user scrolls down to "Retail"
Given user is on page LADClosure clicks on LADAccount
Given user is on page LADClosure clicks on RequestTab
Given user is on page LADClosure clicks on CloseLAD
Given user is on page LADClosure clicks on CloseLADContinuBtn
Given user swipe down the page
Given user is on page LADClosure clicks on CloseLADContinuBtn
Given user is on page LADClosure clicks on OperativeAccountSavings
Given user is on page LADClosure clicks on CloseLADContinuBtn
Given user swipe down the page
Given user is on page LADClosure clicks on Terms&Conditions
Given user is on page LADClosure clicks on IAccept
Given user is on page LADClosure to check CloseLADContinuBtn is Enabled
Given user is on page LADClosure clicks on CloseLADContinuBtn


#@TestCaseKey=UDB-T026 @RedmiNote9Pro @LADAccountOpening @UATRun
#Scenario: Verify that the customer can select RD deposit account during LAD open account process.
#Given user logins to app
#Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
#Given user is on page DashboardPage clicks on Accounts
#Given user is on page DashboardPage clicks on Loans
#Given user is on page DashboardPage clicks on AddAccount
#Given user is on page DashboardPage clicks on LoanAgainstDeposit
#Given user swipe down the page
#Given user is on page LADDetailsPage clicks on RDAccount
#Given user is on page LADDetailsPage clicks on Continue
#Given user is on page LADDetailsPage clicks on LoanPurposePersonal
#Given user swipe down the page
#Given user is on page LADDetailsPage clicks on SelectOperativeAccount
#Given user is on page LADDetailsPage clicks on SavingsAccount
#Given user is on page LADDetailsPage clicks on ContinueAhead
#When user scrolls down to "Declarations"
#Given user is on page LADReviewPage clicks on DownloadKeyFacts
#Given user is on page LADReviewPage clicks on AllowDownloadPermission
#Given user is on page LADReviewPage clicks on DownloadOkay
#Given user swipe down the page
#Given user is on page LADReviewPage clicks on Declarations
#Given user is on page LADReviewPage clicks on IAccept
#Given user is on page LADReviewPage clicks on ContinueLADForm
#Given user is on page LADReviewPage clicks on TPIN
#When user is on page LADReviewPage and types 2121 on TpinText
#When user is on page LADReviewPage clicks on TPINContinue
#When user verifies on page LADReviewPage for Share text in placeholder ShareButton
#When user verifies on page LADReviewPage for Loan Against Deposit successfully opened text in placeholder CompletedLADPage
#Given user swipe down the page
#When user is on page LADReviewPage clicks on DownloadSanctionLetter
#Given user is on page LADReviewPage clicks on DownloadOkay
#When user is on page LADReviewPage clicks on DownloadKeyFactsLetter
#Given user is on page LADReviewPage clicks on DownloadOkay
#When user verifies on page LADReviewPage for Share text in placeholder ShareButton
#When user verifies on page LADReviewPage for Home text in placeholder HomeButton


