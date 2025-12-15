Feature: Mobile UI automation for My Profile Menu

@TestCaseKey=UDB-001 @Automatable @Smoke @RedmiNote9Pro
Scenario: Login Into APP and switch account
Given user logins to MSME app
Given user logins to MSME app entering Login PIN
Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
Given user is on page MSMEDashboardPage clicks on ChangeAccountSelection
Given user verifies on page MSMEDashboardPage for PATORK AUTOMATION text in placeholder AccountDisplayed









#To verify that ETB user clicks on Accounts icon from Bottom
#To verify that ETB user should view Account Listing page
#To verify that ETB user should select required  Account-Savings Account
#To verify that ETB user should select Start & End Date 
#To verify that ETB user should click on Download icon for any e-statement
#To verify that ETB user should view pdf within Device (for any e-statement )