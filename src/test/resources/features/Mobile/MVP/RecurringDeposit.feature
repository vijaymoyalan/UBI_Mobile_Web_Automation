Feature: Smoke for Recurring Deposit Journey

@TestCaseKey=UDB-T9560 @TestCaseKey=UDB-T1212
@TestCaseKey=UDB-T1278 @TestCaseKey=UDB-T1279 @google-pixel7a
Scenario: User should be able to open RD sucessfully with 6 months of tenures
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Six months RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
When user scrolls down to "6 Months"
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T9565 @TestCaseKey=UDB-T1213 @google-pixel7a
Scenario: User should be able to open RD sucessfully with 9 months of tenure.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Nine months RD on EnterRDName
When user is on page RDDetailsPage and types 500 on EnterAmount
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on 9 Months
Given user is on page RDDetailsPage clicks on SelectPeriodRDFor9Months
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T875 @TestCaseKey=UDB-T1214 @google-pixel7a
Scenario: User should be able to open RD sucessfully with 1 Year of tenure.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types RD Test on EnterRDName
When user is on page RDDetailsPage and types 1000 on EnterAmount
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on 1 Year
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
#When user scrolls down to "Continue"
#Given user scrolls down to "Add Nominee?" 
#Given user is on page RDDetailsPage clicks on NomineeNameRD
#When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
#Given user clicks with cordinate 263 2333
#When user is on page RDDetailsPage clicks on DateofBirthNominee
#Given user is on page RDDetailsPage clicks on SelectDateofYear
#Given user is on page RDDetailsPage clicks on PreviousButton
#Given user is on page RDDetailsPage clicks on PreviousButton
#Given user is on page RDDetailsPage clicks on SelectDobYear
#Given user is on page RDDetailsPage clicks on SelectDobMonth
#Given user is on page RDDetailsPage clicks on SelectDobDate
#Given user is on page RDDetailsPage clicks on RelationShipNominee
#Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton


@TestCaseKey=UDB-T876 @TestCaseKey=UDB-T1215 @google-pixel7a
Scenario: User should be able to open RD sucessfully with 2 Years of tenure.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Two years RD on EnterRDName
When user is on page RDDetailsPage and types 500 on EnterAmount
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on 2 Years
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T990 @TestCaseKey=UDB-T1216 @google-pixel7a
Scenario: User should be able to open RD sucessfully Super Senior staff with 1 Year of tenure.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types One Year RD on EnterRDName
When user is on page RDDetailsPage and types 500 on EnterAmount
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on 1 Year
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton


@TestCaseKey=UDB-T877 @TestCaseKey=UDB-T1261 @google-pixel7a
Scenario: User should be able to open RD sucessfully with custom tenure.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Custom RD on EnterRDName
When user is on page RDDetailsPage and types 500 on EnterAmount
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on Custom
Given user is on page RDDetailsPage and types 3 on YearsInCustom
Given user is on page RDDetailsPage and types 1 on MonthsInCustom
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T1193 @google-pixel7a
Scenario: Verify that ETB customers above age 60 should open recurring deposit when tenure is selected as popular with RD amount minimum rs 500.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Six months RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T1194 @google-pixel7a
Scenario: Verify that ETB customers above age 60 should open recurring deposit when tenure is selected as recommended with RD amount minimum rs 500
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Nine months RD on EnterRDName
When user is on page RDDetailsPage and types 500 on EnterAmount
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on 9 Months
Given user is on page RDDetailsPage clicks on SelectPeriodRDFor9Months
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T1195 @google-pixel7a
Scenario: Verify that ETB customers above age 60 should open recurring deposit when tenure is selected as 1 year tenure with RD amount minimum rs 500
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types One Year RD on EnterRDName
When user is on page RDDetailsPage and types 500 on EnterAmount
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on 1 Year
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T1196 @google-pixel7a
Scenario: Verify that ETB customers above age 60 should open recurring deposit when tenure is selected as 2 year tenure with RD amount minimum rs 500
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Two years RD on EnterRDName
When user is on page RDDetailsPage and types 500 on EnterAmount
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on 2 Years
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T1197 @google-pixel7a
Scenario: Verify that ETB customers above age 60 should open recurring deposit when tenure is selected as custom with RD amount minimum rs 500.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Custom RD on EnterRDName
When user is on page RDDetailsPage and types 500 on EnterAmount
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on Custom
Given user is on page RDDetailsPage and types 3 on YearsInCustom
Given user is on page RDDetailsPage and types 1 on MonthsInCustom
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T2344 @TestCaseKey=UDB-T2345 @TestCaseKey=UDB-T2346 @NewTestCase @google-pixel7a
Scenario: Verify that user doest not allow user to open RD account with invalid amount
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types invalid amount on EnterRDName
When user is on page RDDetailsPage and types 1 on EnterAmount
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on Continue
When user verifies error message on page RDDetailsPage is Deposit amount cannot be less than₹500 on ErrorDeposit

@TestCaseKey=UDB-T101 @NewTestCase @google-pixel7a 
Scenario: Verify that account that Any of the partners (Code002) is able to open RD
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Any of the partners on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@NewTestCase @TestCaseKey=UDB-T1206 @TestCaseKey=UDB-T1207 @TestCaseKey=UDB-T1208 @TestCaseKey=UDB-T2348 @TestCaseKey=UDB-T2349 @TestCaseKey=UDB-T2350 @google-pixel7a
Scenario: Verify that an account with Insufficient balance should not able to open RD
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccountInsufficient
When user verifies error message on page RDDetailsPage is There are insufficient funds in your account. Please choose another account. on ErrorInsufficientBalance

@NewTestCase @TestCaseKey=UDB-T1209 @TestCaseKey=UDB-T1210 @TestCaseKey=UDB-T1211 @google-pixel7a
Scenario: Verify that an Inactive account user should not able to open RD 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on InactiveAccount
Given user scrolls down to "Ibm's Savings Account, xxxxx 76296"

@TestCaseKey=UDB-T1198 @google-pixel7a
Scenario: Verify that ETB customers above age 60 should open recurring deposit amount of above Max limit rs 99L
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user verifies error message on page RDDetailsPage is There are insufficient funds in your account. Please choose another account. on ErrorInsufficientBalance
When user is on page RDDetailsPage and types max RD amount on EnterRDName
When user is on page RDDetailsPage and types 999999999 on EnterAmount

@TestCaseKey=UDB-T1199 @google-pixel7a
Scenario: Verify that ETB staff customers above age 60 should not be allowed to open recurring deposit amount of below 500
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types invalid amount on EnterRDName
When user is on page RDDetailsPage and types 499 on EnterAmount
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on Continue
When user verifies error message on page RDDetailsPage is Deposit amount cannot be less than₹500 on ErrorDeposit

@TestCaseKey=UDB-T102 @NewTestCase @google-pixel7a 
Scenario: Verify that user with Either or survivor (Code 004) is able to open RD
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
When user scrolls down to EitherSurvivorAccount
Given user is on page RDDetailsPage clicks on EitherSurvivorAccount
When user is on page RDDetailsPage and types Either or survivor RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@NewTestCase @google-pixel7a @TestCaseKey=UDB-T103
Scenario: Verify that an account with Former or survivor (Code 005) is able to open RD
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
When user scrolls down to EitherSurvivorAccount
Given user is on page RDDetailsPage clicks on FormerSurvivorAccount
When user is on page RDDetailsPage and types Former or survivor RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T104 @NewTestCase @google-pixel7a
Scenario: Verify that an account with Any two jointly (Code 007) is able to open RD
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on FormerSurvivorAccount
When user is on page RDDetailsPage and types Former or survivor RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton


@TestCaseKey=UDB-T1507 @google-pixel7a
Scenario: Validate ETB user with age between 18 to 30 opens the RD account successfully
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Six months RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
When user scrolls down to "6 Months"
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T1508 @TestCaseKey=UDB-T2334 @google-pixel7a
Scenario: Validate ETB Staff user with age above 60 opens the RD account successfully
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Six months RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
When user scrolls down to "6 Months"
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T1509 @google-pixel7a
Scenario: Validate ETB user with age above 60 opens the RD account successfully
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Six months RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
When user scrolls down to "6 Months"
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
#Give?n user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T2308 
@TestCaseKey=UDB-T2309 
@TestCaseKey=UDB-T2310 @google-pixel7a
Scenario: Verify that ETB staff user above age 60 should open recurring deposit when tenure is selected as popular with RD amount minimum rs 500
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Six months RD on EnterRDName
When user is on page RDDetailsPage and types 500 on EnterAmount
When user scrolls down to "6 Months"
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton


@TestCaseKey=UDB-T2312 
@TestCaseKey=UDB-T2313 
@TestCaseKey=UDB-T2314 
@googlepixel
Scenario: User should be able to open RD sucessfully with 1 Year of tenure
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types One Year RD on EnterRDName
When user is on page RDDetailsPage and types 500 on EnterAmount
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on 1 Year
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T2316 @TestCaseKey=UDB-T2317 @TestCaseKey=UDB-T2318
@googlepixel
Scenario: User should able to open RD sucessfully with 1 Year of tenure.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types One Year RD on EnterRDName
When user is on page RDDetailsPage and types 500 on EnterAmount
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on 1 Year
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton


@TestCaseKey=UDB-T2320 @TestCaseKey=UDB-T2321 @TestCaseKey=UDB-T2322 @google-pixel7a
Scenario: User should be able to open RD sucessfully with 2 Years of tenure
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Two years RD on EnterRDName
When user is on page RDDetailsPage and types 500 on EnterAmount
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on 2 Years
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T2324 @TestCaseKey=UDB-T2325 @TestCaseKey=UDB-T2326 @TestCaseKey=UDB-T2327
@TestCaseKey=UDB-T2328 @UDB-T2579
@TestCaseKey=UDB-T2329 @googlepixel
Scenario: User should be able to open RD sucessfully with custom tenures
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Custom RD on EnterRDName
When user is on page RDDetailsPage and types 500 on EnterAmount
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on Custom
Given user is on page RDDetailsPage and types 3 on YearsInCustom
Given user is on page RDDetailsPage and types 1 on MonthsInCustom
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T2339 @TestCaseKey=UDB-T1255 @TestCaseKey=UDB-T2352 @TestCaseKey=UDB-T2353
@TestCaseKey=UDB-T2487 @TestCaseKey=UDB-T2488 @TestCaseKey=UDB-T2586
Scenario: User should be able to open RD sucessfully with 6 months of tenure.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Six months RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
When user scrolls down to "6 Months"
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton

@TestCaseKey=UDB-T1220
Scenario: Verify user should be able to download statement pdf through current month option for Recurrring deposite
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on SavingsAccount00186
Given user is on page SavingsAccount00186 clicks on StatementTab
Given user is on page SavingsAccount00186 clicks on CurrentMonth
When user scrolls down to "Download"
Given user is on page SavingsAccount00186 clicks on Download
Then user verifies text on page SavingsAccount00186 is Download Successful on DownloadSuccessfulMessageText
 
@TestCaseKey=UDB-T1221
Scenario: Verify user should be able to download statement pdf through last month option for Recurrring deposite
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on SavingsAccount00186
Given user is on page SavingsAccount00186 clicks on StatementTab
Given user is on page SavingsAccount00186 clicks on LastMonth
When user scrolls down to "Download"
Given user is on page SavingsAccount00186 clicks on Download
Then user verifies text on page SavingsAccount00186 is Download Successful on DownloadSuccessfulMessageText

@TestCaseKey=UDB-T1222
Scenario: Verify user should be able to download statement pdf through last 3 month option for Recurrring deposite
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on SavingsAccount00186
Given user is on page SavingsAccount00186 clicks on StatementTab
Given user is on page SavingsAccount00186 clicks on Last 3 months
When user scrolls down to "Download"
Given user is on page SavingsAccount00186 clicks on Download
Then user verifies text on page SavingsAccount00186 is Download Successful on DownloadSuccessfulMessageText


@TestCaseKey=UDB-T1223
Scenario: Verify user should be able to download statement pdf through last 6 month option for Recurrring deposite
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on SavingsAccount00186
Given user is on page SavingsAccount00186 clicks on StatementTab
Given user is on page SavingsAccount00186 clicks on Last 6 months
When user scrolls down to "Download"
Given user is on page SavingsAccount00186 clicks on Download
Then user verifies text on page SavingsAccount00186 is Download Successful on DownloadSuccessfulMessageText


@TestCaseKey=UDB-T1224
Scenario: Verify user should be able to download statement pdf through current financial year option for Recurrring deposite
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on SavingsAccount00186
Given user is on page SavingsAccount00186 clicks on StatementTab
Given user is on page SavingsAccount00186 clicks on Current financial year
When user scrolls down to "Download"
Given user is on page SavingsAccount00186 clicks on Download
Then user verifies text on page SavingsAccount00186 is Download Successful on DownloadSuccessfulMessageText

@TestCaseKey=UDB-T1225
Scenario: Verify user should be able to download statement pdf through last financial year option for Recurrring deposite.

Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on SavingsAccount00186
Given user is on page SavingsAccount00186 clicks on StatementTab
Given user is on page SavingsAccount00186 clicks on Last financial year
When user scrolls down to "Download"
Given user is on page SavingsAccount00186 clicks on Download
Then user verifies text on page SavingsAccount00186 is Download Successful on DownloadSuccessfulMessageText

@TestCaseKey=UDB-T1219 
Scenario: Verify user should be able to download statement pdf through custom option for Recurrring deposite
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on SavingsAccount00186
Given user is on page SavingsAccount00186 clicks on StatementTab
Given user is on page SavingsAccount00186 clicks on Custom
When user scrolls down to "Download"
Given user is on page SavingsAccount00186 clicks on Download

@TestCaseKey=UDB-T1226
Scenario: Verify user should be able to download statement pdf through last financial year option for Recurrring deposite
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Accounts
Given user is on page DashboardPage clicks on SavingsAccount00186
Given user is on page SavingsAccount00186 clicks on StatementTab
Given user is on page SavingsAccount00186 clicks on CurrentMonth
When user scrolls down to "Email"
Given user is on page SavingsAccount00186 clicks on Email
Then user verifies text on page SavingsAccount00186 is Download Successful on DownloadSuccessfulMessageText

@TestCaseKey=UDB-T1230
Scenario: Verify that all date that are not acceptable for (schedule of monthly) field should be displayed in dark grey colour
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Six months RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
When user scrolls down to "6 Months"
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD

@TestCaseKey=UDB-T1282
Scenario: Validate on RD landing Page  mandatory fields are available
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Six months RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
When user scrolls down to "6 Months"
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN

@TestCaseKey=UDB-T2576 
@TestCaseKey=UDB-T2577 
@TestCaseKey=UDB-T2578 
@TestCaseKey=UDB-T2584 @TestCaseKey=UDB-T2584
@TestCaseKey=UDB-T1621 @TestCaseKey=UDB-T1238 @google-pixel7a
Scenario: Verify staff user age between 18 to 30 should be able to view details of RD balance and interest earned.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Six months RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
When user is on page RDDetailsPage clicks on ViewInterestTable


@NewTestCase @TestCaseKey=UDB-111
Scenario: Verify that Sole prop (017) should be able to open RD
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on CurrentAccount
When user is on page RDDetailsPage and types Six months RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
When user scrolls down to "6 Months"
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
Given user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
When user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Nominee's Details
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton


@TestCaseKey=UDB-T891 @TestCaseKey=UDB-T1262 @TestCaseKey=UDB-T1257 
@TestCaseKey=UDB-T1256
Scenario: Verify that the OD account is able to open RD
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
When user scrolls down to "XXXXX 18015"
Given user is on page RDDetailsPage clicks on Overdraftaccount
When user is on page RDDetailsPage and types Six months RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
When user scrolls down to "6 Months"
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
When user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on NomineeNameRD
Given user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user scrolls down to Terms & Conditions
Given user is on page RDReviewPage clicks on Checkbox
Given user is on page RDReviewPage clicks on AcceptButton
Given user is on page RDReviewPage clicks on Submit
Given user is on page RDReviewPage clicks on TPIN
When user is on page RDReviewPage and types 2121 on TpinText
Given user is on page RDReviewPage clicks on SubmitButton


@TestCaseKey=UDB-T1267 @TestCaseKey=UDB-T1268 @TestCaseKey=UDB-T1510
@TestCaseKey=UDB-T1511 @TestCaseKey=UDB-T1512 @TestCaseKey=UDB-T1513
@TestCaseKey=UDB-T3428
Scenario: Verify that user should able to change/edit CA/OD nominee details
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Six months RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
When user scrolls down to "6 Months"
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
When user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on Change
Given user is on page RDDetailsPage clicks on NomineeNameRD
Given user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue

@TestCaseKey=UDB-T1280 @TestCaseKey=UDB-T1281
Scenario: Validate the ETB user open the RD Account and on Review page user click on "Back" button to land on previous page for editing the information
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Recurring Deposit
Given user is on page RDDetailsPage clicks on ClickOnArrow
Given user is on page RDDetailsPage clicks on SavingsAccount
When user is on page RDDetailsPage and types Six months RD on EnterRDName
When user is on page RDDetailsPage and types 550 on EnterAmount
When user scrolls down to "6 Months"
Given user is on page RDDetailsPage clicks on 6 Months
Given user scrolls down to "Schedule a monthly transfer" 
Given user is on page RDDetailsPage clicks on SelectPeriodRD
Given user is on page RDDetailsPage clicks on SelectFirstElementRD
When user scrolls down to "Continue"
When user scrolls down to "Add Nominee?" 
Given user is on page RDDetailsPage clicks on Change
Given user is on page RDDetailsPage clicks on NomineeNameRD
Given user is on page RDDetailsPage and types IBMEMP on NomineeNameRD
Given user clicks with cordinate 263 2333
When user is on page RDDetailsPage clicks on DateofBirthNominee
Given user is on page RDDetailsPage clicks on SelectDateofYear
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on PreviousButton
Given user is on page RDDetailsPage clicks on SelectDobYear
Given user is on page RDDetailsPage clicks on SelectDobMonth
Given user is on page RDDetailsPage clicks on SelectDobDate
Given user is on page RDDetailsPage clicks on RelationShipNominee
Given user is on page RDDetailsPage clicks on SelectRelationShipNominee
Given user is on page RDDetailsPage clicks on Continue
Given user is on page RDReviewPage clicks on BackChange

@TestCaseKey=UDB-T1252
Scenario: Validate Customer can download RD certificate/RD advice from summary page after RD account opening
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Accounts
Given user scrolls down and clicks on "Recurring Deposit(1)"
Given user is on page DashboardPage clicks on SavingsAccount00337