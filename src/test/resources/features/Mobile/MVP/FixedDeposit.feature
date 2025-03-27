Feature: Smoke for Fixed Deposit Journey

CaseKey=UDB-T9668
Scenario: Create a fixed deposit
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Accounts
Given user is on page DepositPage clicks on AddAccount
Given user is on page AddNewAccountPage clicks on Fixed Deposit
Given user is on page FDDetailsPage clicks on ClickOnArrow
Given user is on page FDDetailsPage clicks on CurrentAccount
When user is on page FDDetailsPage and types Automation FD on EnterFDName
When user is on page FDDetailsPage and types 10000 on EnterAmount
When user scrolls down to "3 Years"
Given user is on page FDDetailsPage clicks on 3Years
Given user is on page FDDetailsPage clicks on SelectPeriod
Given user is on page FDDetailsPage clicks on SelectFirstElement
#When user scrolls down and clicks on  "On Maturity"
When user scrolls down to "Auto Renewal"
Given user is on page FDDetailsPage clicks on AddNominee
When user scrolls down to "Continue"
Given user is on page FDDetailsPage clicks on Continue
Given user is on page FDReviewPage clicks on Checkbox
Given user is on page FDReviewPage clicks on AcceptButton
Given user is on page FDReviewPage clicks on Submit
Given user is on page FDReviewPage clicks on TPIN
When user is on page FDReviewPage and types 0852 on TpinText
Given user is on page FDReviewPage clicks on SubmitButton
