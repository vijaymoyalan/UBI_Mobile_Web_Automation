Feature: Mobile UI for Fisdom Journey 
#Fisdom PIN for CIF 613763682 is 1233
@TestCaseKey=UDB-1 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user can navigate to Fisdom screen from Dashboard-Invest & Insure 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab
When user scrolls down to "Invest & Insure"
Given user is on page DashboardPage clicks on InvestandInsureViewAll
Given user is on page InvestAndInsure clicks on Investments&Stocks
When user scrolls down to "Declarations"
Given user is on page FisdomPage clicks on Declaration
Given user is on page FisdomPage clicks on Continue
When user is on page FisdomPage and verifies for Welcome back FisdomLogin