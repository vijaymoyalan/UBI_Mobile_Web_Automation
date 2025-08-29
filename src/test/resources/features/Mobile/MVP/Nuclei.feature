Feature: Mobile UI for Nuclei Journey

@TestCaseKey=TC01 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the DashBoard Screen for LifeStyle
  Given user logins to app
  Given user logins to app entering Login PIN
  Given user is on page DashboardPage clicks on FingerPrint    
	Given user is on page DashboardPage clicks on Lifestyle   

@TestCaseKey=TC02 @Automatable @Smoke @RedmiNote9Pro @PilotRun
 Scenario: Verify that User is able to View different types of Categories in Lifestyle
  Given user logins to app
  Given user logins to app entering Login PIN
  Given user is on page DashboardPage clicks on FingerPrint    
	Given user is on page DashboardPage clicks on Lifestyle
	Given user verifies on page Lifestyle for Recharge text in placeholder RechargeSection
#	When user scrolls down to "Gift Card"
	Given user verifies on page Lifestyle for Travel text in placeholder TravelSection
	Given user swipe down the page
	Given user verifies on page Lifestyle for Gift Card text in placeholder GiftSection
	Given user verifies on page Lifestyle for Donations text in placeholder DonationsSection
	
	
@TestCaseKey=TC03 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the Enable the Toggle for Consent Required for Mobile Recharge
  Given user logins to app
  Given user logins to app entering Login PIN
  Given user is on page DashboardPage clicks on FingerPrint   
	Given user is on page DashboardPage clicks on Lifestyle
	Given user is on page Lifestyle clicks on MobileRecharge
	Given user is on page Lifestyle and gives Consent for first time
	Then user verifies on page LifestyleMobileRecharge for Recharge text in placeholder RechargeTitlePage
	
@TestCaseKey=TC04 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should navigate to LifeStyle Dashboard for Travel Bus Booking
	Given user logins to app
  Given user logins to app entering Login PIN 
  Given user is on page DashboardPage clicks on FingerPrint   
	Given user is on page DashboardPage clicks on Lifestyle
	When user scrolls down to "Gift Card"
	Given user is on page Lifestyle clicks on Bus
	Given user is on page Lifestyle and gives Consent for first time

	
@TestCaseKey=TC05 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should navigate to LifeStyle Dashboard for Gift Cards Categories
	Given user logins to app
  Given user logins to app entering Login PIN 
  Given user is on page DashboardPage clicks on FingerPrint   
	Given user is on page DashboardPage clicks on Lifestyle
	Given user swipe down the page
	Given user is on page Lifestyle clicks on GiftCard
	Given user is on page Lifestyle and gives Consent for first time