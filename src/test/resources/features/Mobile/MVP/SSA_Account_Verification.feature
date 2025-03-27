Feature: Smoke for SSA Journey

@TestCaseKey=UDB-T1131 @Automatable @Smoke @RedmiNote9Pro

Scenario: Validate the ETB user open the SSY Account successfully and on Homepage the name of Girl Child is displayed with status "Birth Certificate Veritification is Pending"

Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Accounts
Given user is on page AccountsPage clicks on AccountsInvestandInsureTab
When user is on page InvestAndInsure clicks on AllInvestments
When user is on page InvestAndInsure clicks on SukanyaSamriddhiYojana
