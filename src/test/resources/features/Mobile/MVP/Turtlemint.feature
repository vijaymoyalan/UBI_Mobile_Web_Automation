Feature: Mobile Automation of Turtlemint
#Author :Dipesh Titirmare/Vijay Moyalan
################################################################################

@TestCaseKey=UDB-T0001 @RemiNote9
Scenario: Verify that User is able to login to Vyom APP and navigate to entry page.
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page Turtlemint clicks on ViewAllButton
Then user verifies on page Turtlemint for Invest & Insure text in placeholder InvestAndInsure


@TestCaseKey=UDB-T0002 @RemiNote9
Scenario: User should be able to navigate to Insurance Entry Point
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page Turtlemint clicks on ViewAllButton
Then user verifies on page Turtlemint for Insure text in placeholder Insure
Then user verifies on page Turtlemint for Insurance text in placeholder Insurance


@TestCaseKey=UDB-T0003 @RemiNote9
Scenario: User should not be able to see the Insurance under Investment section. 
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page Turtlemint clicks on ViewAllButton
Then user verifies on page Turtlemint for Investment text in placeholder Investment
#When user is at page Turtlemint if element is disabled clicks on Investment
Then user verifies on page Turtlemint for Insure text in placeholder Insure

@TestCaseKey=UDB-T0004 @RemiNote9
Scenario: User should be shown a popup error message for any services down.
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page Turtlemint clicks on ViewAllButton
Then user verifies on page Turtlemint for Investment text in placeholder Investment
Then user verifies on page Turtlemint for Insure text in placeholder Insure
Given user is on page Turtlemint clicks on Insurance
Then user verifies on page Turtlemint for Unknown Error text in placeholder UnKnownError
Given user is on page Turtlemint clicks on ErrorOkayButton


@TestCaseKey=UDB-T0005 @RemiNote9 @PilotRun
Scenario: User should be able to navigate to Turtlemint Home Page
#Given user logins to app
Given user logins to app entering Login PIN
#Given user is on page DashboardPage clicks on FingerPrint
Given user swipe down the page
Given user is on page Turtlemint clicks on ViewAllButton
Then user verifies on page Turtlemint for Insure text in placeholder Insure
Then user verifies on page Turtlemint for Insurance text in placeholder Insurance
Given user is on page Turtlemint clicks on Insurance
Then user verifies on page Turtlemint for Unisure text in placeholder TurtlemintDashbord