Feature: Customer consent logic testing

 @TestCaseKey=UDB-consent @web
Scenario: Verify that BM is able to trigger a CTA to which will send a link to the customer for authentication

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Given user is on page AssistedPortalDashboard and clicks on NewApplicationButton
 Given user is on page AssistedPortalDashboard and clicks on ApplicationLiabilitiesTab
 Then user is on page AssistedPortalDashboard to verify NewRecurringDeposit is Displayed
 Given user is on page AssistedPortalDashboard and clicks on NewRecurringDeposit
 Given user is on page NewApplicationPage and types 8605405600 on CustomerContactNumber
 Then user is on page NewApplicationPage to verify ContinueButton is Displayed
 Given user is on page NewApplicationPage and clicks on ContinueButton
 Given user is on page NewApplicationPage and clicks on SelectCIF
 Then user is on page NewApplicationPage to verify SendConsentLink is Displayed
 Given user is on page NewApplicationPage and clicks on SendConsentLink
 And user waits for customer consent to be accepted
