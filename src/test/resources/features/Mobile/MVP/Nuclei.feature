Feature: Mobile UI for Nuclei Journey

@TestCaseKey=TC01 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the DashBoard Screen for LifeStyle
  Given user logins to app
  Given user logins to app entering Login PIN
  Given user is on page DashboardPage clicks on FingerPrint    
	Given user is on page DashboardPage clicks on Lifestyle   

@TestCaseKey=TC02 @Automatable @Smoke @RedmiNote9Pro
 Scenario: Verify that User is able to View different types of Categories in Lifestyle
  Given user logins to app
  Given user logins to app entering Login PIN
  Given user is on page DashboardPage clicks on FingerPrint    
	Given user is on page DashboardPage clicks on Lifestyle
	Given user verifies on page Lifestyle for Recharge text in placeholder "Recharge"
	Given user verifies on page Lifestyle for Travel text in placeholder "Travel"
	When user scrolls down to "Order"
	Given user verifies on page Lifestyle for Order text in placeholder "Order"
	Given user verifies on page Lifestyle for Gift text in placeholder "Gift"
	When user scrolls down to "Donations"
	Given user verifies on page Lifestyle for Donations text in placeholder "Donations"
	
	
@TestCaseKey=TC03 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the Enable the Toggle for Consent Required for Mobile Recharge
  Given user logins to app
  Given user logins to app entering Login PIN
  Given user is on page DashboardPage clicks on FingerPrint   
	Given user is on page DashboardPage clicks on Lifestyle
	Given user is on page Lifestyle clicks on Mobile
	Given user is on page Lifestyle and gives Consent for first time
	
@TestCaseKey=TC04 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should navigate to LifeStyle Dashboard for Travel Bus Booking
	Given user logins to app
  Given user logins to app entering Login PIN 
  Given user is on page DashboardPage clicks on FingerPrint   
	Given user is on page DashboardPage clicks on Lifestyle
	Given user is on page Lifestyle clicks on Bus
	Given user is on page Lifestyle and gives Consent for first time
	When user is on page LifestyleTravelBus and verifies for Bus onBusPage
	#When user is on page LifestyleTravelBus clicks on FromCity
	#When user is on page LifestyleTravelBus and types Hyderabad on FromCitySearch
	#When user is on page LifestyleTravelBus clicks on FromCitySearchResult
	#When user is on page LifestyleTravelBus clicks on ToCity
	#When user is on page LifestyleTravelBus and types Bangalore on ToCitySearch
	#When user is on page LifestyleTravelBus clicks on ToCitySearchResult
	#When user is on page LifestyleTravelBus clicks on TravelDate
	#When user is on page LifestyleTravelBus clicks on SearchBuses --- this step is skipped as Travel date selected is today.
	#When user is on page LifestyleTravelBus clicks on BusSelection
	
@TestCaseKey=TC05 @Automatable @Smoke @RedmiNote9Pro
Scenario: Verify that ETB user should navigate to LifeStyle Dashboard for Gift Cards Categories
	Given user logins to app
  Given user logins to app entering Login PIN 
  Given user is on page DashboardPage clicks on FingerPrint   
	Given user is on page DashboardPage clicks on Lifestyle
	When user scrolls down to "Gift"
	When user scrolls down to "Donations"
	Given user is on page LifestyleGiftOrder clicks on SwiggyMoneyVoucher
	Given user is on page Lifestyle and gives Consent for first time
	When user is on page LifestyleGiftOrder and verifies for Gift Cards onGiftCardPage
	#Given user is on page LifestyleGiftOrder clicks on SearchGiftCard
	#When user is on page LifestyleGiftOrder and types Amazon on SearchGiftCardBox
  #When user is on page LifestyleGiftOrder clicks on SelectGiftCardOption     