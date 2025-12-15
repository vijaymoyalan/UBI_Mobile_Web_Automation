Feature: Smoke for Account Aggregator Journey

@TestCaseKey=
Scenario: Verify successful login
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Then user verifies text on page DashboardPage is "SavingsAccount" on Savings

@TestCaseKey=
Scenario: Navigate to Add Account via CARDS
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount

@TestCaseKey=
Scenario: Navigate to Add Account via Accounts
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount

@TestCaseKey=
Scenario: Verify "Uniview" tab functionality
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw


@TestCaseKey=
Scenario: Verify redirection to AA platform during consent process
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw
Given user is on page accountagregator clicks on checkbox

@TestCaseKey=
Scenario: Handle invalid AA platform redirection link
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw
Given user is on page accountagregator clicks on checkbox

@TestCaseKey=
Scenario: Verify manual refresh functionality for fetching statement
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw
Given user is on page accountagregator clicks on checkbox
Given user is on page accountagregator clicks on accept

@TestCaseKey=
Scenario: Verify statement storage in DBP for fetched data
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw
Given user is on page accountagregator clicks on checkbox
Given user is on page accountagregator clicks on accept
Given user is on page accountagregator clicks on proceed

@TestCaseKey=
Scenario: Verify error handling for unsupported banks during account addition
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw
Given user is on page accountagregator clicks on checkbox
Given user is on page accountagregator clicks on accept
Given user is on page accountagregator clicks on proceed

@TestCaseKey=
Scenario: Verify handling of expired consent
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw
Given user is on page accountagregator clicks on checkbox
Given user is on page accountagregator clicks on accept
Given user is on page accountagregator clicks on proceed

@TestCaseKey=
Scenario: Verify successful consent renewal
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw
Given user is on page accountagregator clicks on checkbox
Given user is on page accountagregator clicks on accept
Given user is on page accountagregator clicks on proceed

@TestCaseKey=
Scenario: Verify that added accounts are listed correctly
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw
Given user is on page accountagregator clicks on checkbox
Given user is on page accountagregator clicks on accept
Given user is on page accountagregator clicks on proceed
Then user verifies text on page accountagregator is "Accounts" on Accounts

@TestCaseKey=
Scenario: Verify missing bank name/logo in added accounts
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw
Given user is on page accountagregator clicks on checkbox
Given user is on page accountagregator clicks on accept
Given user is on page accountagregator clicks on proceed
Given user is on page accountagregator clicks on protean


@TestCaseKey=
Scenario: Verify balance display from fetched statement
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw
Given user is on page accountagregator clicks on checkbox
Given user is on page accountagregator clicks on accept
Given user is on page accountagregator clicks on proceed
Given user is on page accountagregator clicks on protean
Then user verifies text on page accountagregator is "statement" on display


@TestCaseKey=
Scenario: Verify that the user can fetch account balance and statements successfully.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw
Given user is on page accountagregator clicks on checkbox
Given user is on page accountagregator clicks on accept
Given user is on page accountagregator clicks on proceed
Given user is on page accountagregator clicks on protean
Then user verifies text on page accountagregator is "statement" on display
Given user is on page accountagregator clicks on protean

@TestCaseKey=
Scenario: Ensure balance cannot be fetched twice within 24 hours.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw
Given user is on page accountagregator clicks on checkbox
Given user is on page accountagregator clicks on accept
Given user is on page accountagregator clicks on proceed
Given user is on page accountagregator clicks on protean


@TestCaseKey=
Scenario: Verify that invalid user credentials cannot access the system.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw
Given user is on page accountagregator clicks on checkbox
Given user is on page accountagregator clicks on accept
Given user is on page accountagregator clicks on proceed
Given user is on page accountagregator clicks on protean


@TestCaseKey=
Scenario: Ensure system fetches updated balance only after 24 hours.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw
Given user is on page accountagregator clicks on checkbox
Given user is on page accountagregator clicks on accept
Given user is on page accountagregator clicks on proceed
Given user is on page accountagregator clicks on protean	


@TestCaseKey=123 
Scenario: Validate successful aggregation of multiple linked accounts.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page accountagregator clicks on accounts
Given user is on page accountagregator clicks on addaccount
Given user is on page accountagregator clicks on univeiw
Given user is on page accountagregator clicks on checkbox
Given user is on page accountagregator clicks on accept
Given user is on page accountagregator clicks on proceed
Given user is on page accountagregator clicks on protean
Given user is on page accountagregator clicks on Continue