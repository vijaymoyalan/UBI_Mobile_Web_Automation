Feature: Smoke for Login Registration Journey


@TestCaseKey=UDB-T1067 @positive
Scenario: Validate that ETB user performing First Time Registration where user shouldnt get SIM card selection screen when user has single SIM on phone
Given user is on page PermissionsPage clicks on allowPhonepermission
Given user is on page SelectALanguagePage clicks on English
Given user is on page SelectALanguagePage clicks on ContinueButton
Given user is on page PermissionsPage clicks on Permissionscheckbox
Given user is on page PermissionsPage clicks on allowlocationpermission
Given user is on page PermissionsPage clicks on allowsmspermission
Given user is on page PermissionsPage clicks on allownotificationspermission
Given user is on page PermissionsPage clicks on TNCcheckbox
Given user is on page TNCPage clicks on AcceptTC
Given user is on page SIMDeviceBindingPage clicks on LetsGetStarted
Given user is on page SIMDeviceBindingPage clicks on ChooseSim2



@TestCaseKey=UDB-T1134 @postive
Scenario: Validate that ETB user performing First Time Registration where user setting valid M-PIN using Debit Card flow
Given user is on page PermissionsPage clicks on allowPhonepermission
Given user is on page SelectALanguagePage clicks on English
Given user is on page SelectALanguagePage clicks on ContinueButton
Given user is on page PermissionsPage clicks on Permissionscheckbox
Given user is on page PermissionsPage clicks on allowlocationpermission
Given user is on page PermissionsPage clicks on allowsmspermission
Given user is on page PermissionsPage clicks on allownotificationspermission
Given user is on page PermissionsPage clicks on TNCcheckbox
Given user is on page TNCPage clicks on AcceptTC
Given user is on page SIMDeviceBindingPage clicks on LetsGetStarted
Given user is on page SIMDeviceBindingPage clicks on ChooseSim1
Given user is on page SIMDeviceBindingPage clicks on ContinueSimButton
Given user is on page RegisterForVyomPage clicks on DebitCardDropdown
When user is on page RegisterForVyomPage and types 5443279000001283 on DebitCardNumberText
When user is on page RegisterForVyomPage and types 0530 on ExpiryDateText
When user is on page RegisterForVyomPage and types 1283 on ATMPINText
Given user is on page RegisterForVyomPage clicks on ValidateButton
When user is on page SetLoginPINPage and types 2580 on EnterLoginPIN
When user is on page SetLoginPINPage and types 2580 on ReEnterLoginPIN
Given user is on page SetLoginPINPage clicks on CreateButton


@TestCaseKey=UDB-T1149 @positive
Scenario: Validate that ETB user performing First Time Registration where user setting valid T-PIN using Debit Card flow
Given user is on page PermissionsPage clicks on allowPhonepermission
Given user is on page SelectALanguagePage clicks on English
Given user is on page SelectALanguagePage clicks on ContinueButton
Given user is on page PermissionsPage clicks on Permissionscheckbox
Given user is on page PermissionsPage clicks on allowlocationpermission
Given user is on page PermissionsPage clicks on allowsmspermission
Given user is on page PermissionsPage clicks on allownotificationspermission
Given user is on page PermissionsPage clicks on TNCcheckbox
Given user is on page TNCPage clicks on AcceptTC
Given user is on page SIMDeviceBindingPage clicks on LetsGetStarted
Given user is on page SIMDeviceBindingPage clicks on ChooseSim1
Given user is on page SIMDeviceBindingPage clicks on ContinueSimButton
Given user is on page RegisterForVyomPage clicks on DebitCardDropdown
When user is on page RegisterForVyomPage and types 5443279000001283 on DebitCardNumberText
When user is on page RegisterForVyomPage and types 0530 on ExpiryDateText
When user is on page RegisterForVyomPage and types 1283 on ATMPINText
Given user is on page RegisterForVyomPage clicks on ValidateButton
When user is on page SetLoginPINPage and types 2580 on EnterLoginPIN
When user is on page SetLoginPINPage and types 2580 on ReEnterLoginPIN
Given user is on page SetLoginPINPage clicks on CreateButton
When user is on page SetTPINPage and types 0852 on EnterTPIN
When user is on page SetTPINPage and types 0852 on ReEnterTPIN
Given user is on page SetTPINPage clicks on CreateButton
When user enters OTP on page EnterOTPPage and types OTP on EnterOTP
Given user is on page EnterOTPPage clicks on ContinueButton


@TestCaseKey=UDB-T1137 @negative
Scenario: Validate that ETB user performing First Time Registration where user setting invalid Login PIN using Debit Card flow
Given user is on page PermissionsPage clicks on allowPhonepermission
Given user is on page SelectALanguagePage clicks on English
Given user is on page SelectALanguagePage clicks on ContinueButton
Given user is on page PermissionsPage clicks on Permissionscheckbox
Given user is on page PermissionsPage clicks on allowlocationpermission
Given user is on page PermissionsPage clicks on allowsmspermission
Given user is on page PermissionsPage clicks on allownotificationspermission
Given user is on page PermissionsPage clicks on TNCcheckbox
Given user is on page TNCPage clicks on AcceptTC
Given user is on page SIMDeviceBindingPage clicks on LetsGetStarted
Given user is on page SIMDeviceBindingPage clicks on ChooseSim1
Given user is on page SIMDeviceBindingPage clicks on ContinueSimButton
Given user is on page RegisterForVyomPage clicks on DebitCardDropdown
When user is on page RegisterForVyomPage and types 5443279000001283 on DebitCardNumberText
When user is on page RegisterForVyomPage and types 0530 on ExpiryDateText
When user is on page RegisterForVyomPage and types 1283 on ATMPINText
Given user is on page RegisterForVyomPage clicks on ValidateButton
When user is on page SetLoginPINPage and types 2580 on EnterLoginPIN
When user is on page SetLoginPINPage and types 0852 on ReEnterLoginPIN
Given user is on page SetLoginPINPage clicks on CreateButton


@TestCaseKey=UDB-T1140 @negative
Scenario: Validate that ETB user performing First Time Registration where user clicks on "Create" without setting Login PIN using Debit Card flow
Given user is on page PermissionsPage clicks on allowPhonepermission
Given user is on page SelectALanguagePage clicks on English
Given user is on page SelectALanguagePage clicks on ContinueButton
Given user is on page PermissionsPage clicks on Permissionscheckbox
Given user is on page PermissionsPage clicks on allowlocationpermission
Given user is on page PermissionsPage clicks on allowsmspermission
Given user is on page PermissionsPage clicks on allownotificationspermission
Given user is on page PermissionsPage clicks on TNCcheckbox
Given user is on page TNCPage clicks on AcceptTC
Given user is on page SIMDeviceBindingPage clicks on LetsGetStarted
Given user is on page SIMDeviceBindingPage clicks on ChooseSim1
Given user is on page SIMDeviceBindingPage clicks on ContinueSimButton
Given user is on page RegisterForVyomPage clicks on DebitCardDropdown
When user is on page RegisterForVyomPage and types 5443279000001283 on DebitCardNumberText
When user is on page RegisterForVyomPage and types 0530 on ExpiryDateText
When user is on page RegisterForVyomPage and types 1283 on ATMPINText
Given user is on page RegisterForVyomPage clicks on ValidateButton
Given user is on page SetLoginPINPage clicks on CreateButton


@TestCaseKey=UDB-T1152 @negative
Scenario: Validate that ETB user performing First Time Registration where user clicks on "Create" without setting T-PIN using Debit Card flow
Given user is on page PermissionsPage clicks on allowPhonepermission
Given user is on page SelectALanguagePage clicks on English
Given user is on page SelectALanguagePage clicks on ContinueButton
Given user is on page PermissionsPage clicks on Permissionscheckbox
Given user is on page PermissionsPage clicks on allowlocationpermission
Given user is on page PermissionsPage clicks on allowsmspermission
Given user is on page PermissionsPage clicks on allownotificationspermission
Given user is on page PermissionsPage clicks on TNCcheckbox
Given user is on page TNCPage clicks on AcceptTC
Given user is on page SIMDeviceBindingPage clicks on LetsGetStarted
Given user is on page SIMDeviceBindingPage clicks on ChooseSim1
Given user is on page SIMDeviceBindingPage clicks on ContinueSimButton
Given user is on page RegisterForVyomPage clicks on DebitCardDropdown
When user is on page RegisterForVyomPage and types 5443279000001283 on DebitCardNumberText
When user is on page RegisterForVyomPage and types 0530 on ExpiryDateText
When user is on page RegisterForVyomPage and types 1283 on ATMPINText
Given user is on page RegisterForVyomPage clicks on ValidateButton
When user is on page SetLoginPINPage and types 2580 on EnterLoginPIN
When user is on page SetLoginPINPage and types 2580 on ReEnterLoginPIN
Given user is on page SetLoginPINPage clicks on CreateButton
Given user is on page SetTPINPage clicks on CreateButton

@TestCaseKey=UDB-T1092 @positive
Scenario: Validate that ETB user performing First Time Registration when user status is "Active"
Given user is on page PermissionsPage clicks on allowPhonepermission
Given user is on page SelectALanguagePage clicks on English
Given user is on page SelectALanguagePage clicks on ContinueButton
Given user is on page PermissionsPage clicks on Permissionscheckbox
Given user is on page PermissionsPage clicks on allowlocationpermission
Given user is on page PermissionsPage clicks on allowsmspermission
Given user is on page PermissionsPage clicks on allownotificationspermission
Given user is on page PermissionsPage clicks on TNCcheckbox
Given user is on page TNCPage clicks on AcceptTC
Given user is on page SIMDeviceBindingPage clicks on LetsGetStarted
Given user is on page MFAPage clicks on ChooseSim1 
Given user is on page MFAPage clicks on ContinueSimButton
Given user is on page RegisterForVyomPage clicks on DebitCardDropdown
When user is on page RegisterForVyomPage and types 5443279000001283 on DebitCardNumberText
When user is on page RegisterForVyomPage and types 0530 on ExpiryDateText
When user is on page RegisterForVyomPage and types 1283 on ATMPINText
Given user is on page RegisterForVyomPage clicks on ValidateButton
When user is on page SetLoginPINPage and types 2580 on EnterLoginPIN
When user is on page SetLoginPINPage and types 2580 on ReEnterLoginPIN
Given user is on page SetLoginPINPage clicks on CreateButton
When user is on page SetTPINPage and types 0852 on EnterTPIN
When user is on page SetTPINPage and types 0852 on ReEnterTPIN
Given user is on page SetTPINPage clicks on CreateButton
When user enters OTP on page EnterOTPPage and types OTP on EnterOTP
Given user is on page EnterOTPPage clicks on ContinueButton
Given user is on page SecurityQuestionsPage clicks on SecurityQuestionsDD1
Given user is on page SecurityQuestionsPage clicks on SecurityQuestions1
When user is on page SecurityQuestionsPage and types Mumbai on Answer1
Given user is on page SecurityQuestionsPage clicks on SecurityQuestionsDD2
Given user is on page SecurityQuestionsPage clicks on SecurityQuestions2
When user is on page SecurityQuestionsPage and types Pinky on Answer2
Given user is on page SecurityQuestionsPage clicks on SecurityQuestionsDD3
Given user is on page SecurityQuestionsPage clicks on SecurityQuestions3
When user is on page SecurityQuestionsPage and types Mumbai on Answer3
Given user is on page SecurityQuestionsPage clicks on ContinueButton
Given user logins to app entering Login PIN

@TestCaseKey=UDB-T1123 @negative
Scenario: Validate that ETB user performing First Time Registration using invalid Aadhaar Number
Given user is on page PermissionsPage clicks on allowPhonepermission
Given user is on page SelectALanguagePage clicks on English
Given user is on page SelectALanguagePage clicks on ContinueButton
Given user is on page PermissionsPage clicks on Permissionscheckbox
Given user is on page PermissionsPage clicks on allowlocationpermission
Given user is on page PermissionsPage clicks on allowsmspermission
Given user is on page PermissionsPage clicks on allownotificationspermission
Given user is on page PermissionsPage clicks on TNCcheckbox
Given user is on page TNCPage clicks on AcceptTC
Given user is on page SIMDeviceBindingPage clicks on LetsGetStarted
Given user is on page MFAPage clicks on ChooseSim1 
Given user is on page MFAPage clicks on ContinueSimButton
Given user is on page RegisterForVyomPage clicks on AadharCardDropdown
When user is on page RegisterForVyomPage and types 480336610111 on AadharCardNumberText
Given user is on page RegisterForVyomPage clicks on SendOTPButton


@TestCaseKey=UDB-T1131 @SamsungM32 @positive
Scenario: Validate that ETB user performing First Time Registration where user successfully Login using Debit Card flow
Given user is on page PermissionsPage clicks on allowPhonepermission
Given user is on page SelectALanguagePage clicks on English
Given user is on page SelectALanguagePage clicks on ContinueButton
Given user is on page PermissionsPage clicks on Permissionscheckbox
Given user is on page PermissionsPage clicks on allowlocationpermission
Given user is on page PermissionsPage clicks on allowsmspermission
Given user is on page PermissionsPage clicks on allownotificationspermission
#Given user is on page PermissionsPage clicks on TNCcheckbox
Given user is on page TNCPage clicks on AcceptTC
Given user is on page SIMDeviceBindingPage clicks on LetsGetStarted
Given user is on page RegisterForVyomPage clicks on DebitCardDropdown
When user is on page RegisterForVyomPage and types 5443279000001283 on DebitCardNumberText
When user is on page RegisterForVyomPage and types 0530 on ExpiryDateText
When user is on page RegisterForVyomPage and types 1283 on ATMPINText
Given user is on page RegisterForVyomPage clicks on ValidateButton


@TestCaseKey=UDB-T1155 @SamsungM32 @positive
Scenario: Validate that ETB user performing First Time Registration where user get option to go back on T-PIN screen using Debit Card flow
Given user is on page PermissionsPage clicks on allowPhonepermission
Given user is on page SelectALanguagePage clicks on English
Given user is on page SelectALanguagePage clicks on ContinueButton
Given user is on page PermissionsPage clicks on Permissionscheckbox
Given user is on page PermissionsPage clicks on allowlocationpermission
Given user is on page PermissionsPage clicks on allowsmspermission
Given user is on page PermissionsPage clicks on allownotificationspermission
Given user is on page PermissionsPage clicks on TNCcheckbox
Given user is on page TNCPage clicks on AcceptTC
Given user is on page SIMDeviceBindingPage clicks on LetsGetStarted
Given user is on page MFAPage clicks on ChooseSim1 
Given user is on page MFAPage clicks on ContinueSimButton
Given user is on page RegisterForVyomPage clicks on DebitCardDropdown
When user is on page RegisterForVyomPage and types 5443279000001283 on DebitCardNumberText
When user is on page RegisterForVyomPage and types 0530 on ExpiryDateText
When user is on page RegisterForVyomPage and types 1283 on ATMPINText
Given user is on page RegisterForVyomPage clicks on ValidateButton
When user is on page SetLoginPINPage and types 2580 on EnterLoginPIN
When user is on page SetLoginPINPage and types 2580 on ReEnterLoginPIN
Given user is on page SetLoginPINPage clicks on CreateButton
When user is on page SetTPINPage and types 0852 on EnterTPIN


@TestCaseKey=UDB-T1143 @SamsungM32 @positive
Scenario: Validate that ETB user performing First Time Registration where user get option to go back on Login PIN screen using Debit Card flow
Given user is on page PermissionsPage clicks on allowPhonepermission
Given user is on page SelectALanguagePage clicks on English
Given user is on page SelectALanguagePage clicks on ContinueButton
Given user is on page PermissionsPage clicks on Permissionscheckbox
Given user is on page PermissionsPage clicks on allowlocationpermission
Given user is on page PermissionsPage clicks on allowsmspermission
Given user is on page PermissionsPage clicks on allownotificationspermission
Given user is on page PermissionsPage clicks on TNCcheckbox
Given user is on page TNCPage clicks on AcceptTC
Given user is on page SIMDeviceBindingPage clicks on LetsGetStarted
Given user is on page MFAPage clicks on ChooseSim1 
Given user is on page MFAPage clicks on ContinueSimButton
Given user is on page RegisterForVyomPage clicks on DebitCardDropdown
Given user is on page SIMDeviceBindingPage clicks on LetsGetStarted
When user is on page RegisterForVyomPage and types 5443279000001283 on DebitCardNumberText
When user is on page RegisterForVyomPage and types 0530 on ExpiryDateText
When user is on page RegisterForVyomPage and types 1283 on ATMPINText
Given user is on page RegisterForVyomPage clicks on ValidateButton
When user is on page SetLoginPINPage and types 2580 on EnterLoginPIN

@TestCaseKey=UDB-T602 @SamsungM32 @AddVerify @positive
Scenario: Validate that ETB user performing Pre-Login Journey where new user selects Marketing Carousel option on screen
Given user is on page PermissionsPage clicks on allowPhonepermission
Given user is on page SelectALanguagePage clicks on English
Given user is on page SelectALanguagePage clicks on ContinueButton
Given user is on page PermissionsPage clicks on Permissionscheckbox
Given user is on page PermissionsPage clicks on allowlocationpermission
Given user is on page PermissionsPage clicks on allowsmspermission
Given user is on page PermissionsPage clicks on allownotificationspermission
Given user is on page PermissionsPage clicks on TNCcheckbox
Given user is on page TNCPage clicks on AcceptTC
Given user is on page PreLoginPage clicks on MarketingCarousel

@TestCaseKey=UDB-T608 @SamsungM32 @positive
Scenario: Validate that ETB user performing Pre-Login Journey where returning user wants to access Marketing Carousel
Given user is on page PermissionsPage clicks on allowPhonepermission
Given user is on page SelectALanguagePage clicks on English
Given user is on page SelectALanguagePage clicks on ContinueButton
Given user is on page PermissionsPage clicks on Permissionscheckbox
Given user is on page PermissionsPage clicks on allowlocationpermission
Given user is on page PermissionsPage clicks on allowsmspermission
Given user is on page PermissionsPage clicks on allownotificationspermission
Given user is on page PermissionsPage clicks on TNCcheckbox
Given user is on page TNCPage clicks on AcceptTC
Given user is on page PreLoginPage clicks on MarketingCarousel

@TestCaseKey=UDB-T1126 @negative
Scenario: Validate that ETB user performing First Time Registration using Aadhar flow where user entered wrong OTP
Given user is on page PermissionsPage clicks on allowPhonepermission
Given user is on page SelectALanguagePage clicks on English
Given user is on page SelectALanguagePage clicks on ContinueButton
Given user is on page PermissionsPage clicks on Permissionscheckbox
Given user is on page PermissionsPage clicks on allowlocationpermission
Given user is on page PermissionsPage clicks on allowsmspermission
Given user is on page PermissionsPage clicks on allownotificationspermission
Given user is on page PermissionsPage clicks on TNCcheckbox
Given user is on page TNCPage clicks on AcceptTC
Given user is on page SIMDeviceBindingPage clicks on LetsGetStarted
Given user is on page RegisterForVyomPage clicks on AadharCardDropdown
When user is on page RegisterForVyomPage and types 480336610111 on AadharCardNumberText
Given user is on page RegisterForVyomPage clicks on SendOTPButton
Given user is on page RegisterForVyomPage clicks on OTPPopUp and types 0000 in OTPField


@TestCaseKey=UDB-T586 @positive
Scenario: Validate that ETB user performing Set New Pin jounrey when user unable to verify the Login Pin and now using valid debit card to reset the old pin
Given user is on page PermissionsPage clicks on allowPhonepermission
Given user is on page SelectALanguagePage clicks on English
Given user is on page SelectALanguagePage clicks on ContinueButton
Given user is on page PermissionsPage clicks on Permissionscheckbox
Given user is on page PermissionsPage clicks on allowlocationpermission
Given user is on page PermissionsPage clicks on allowsmspermission
Given user is on page PermissionsPage clicks on allownotificationspermission
Given user is on page PermissionsPage clicks on TNCcheckbox
Given user is on page TNCPage clicks on AcceptTC
Given user is on page SIMDeviceBindingPage clicks on LetsGetStarted
Given user is on page MFAPage clicks on ChooseSim1 
Given user is on page MFAPage clicks on ContinueSimButton
Given user is on page RegisterForVyomPage clicks on DebitCardDropdown
When user is on page RegisterForVyomPage and types 5443279000001283 on DebitCardNumberText
When user is on page RegisterForVyomPage and types 0530 on ExpiryDateText
When user is on page RegisterForVyomPage and types 1283 on ATMPINText
Given user is on page RegisterForVyomPage clicks on ValidateButton
When user is on page SetLoginPINPage and types 2580 on EnterLoginPIN
When user is on page SetLoginPINPage and types 2580 on ReEnterLoginPIN
Given user is on page SetLoginPINPage clicks on CreateButton

@TestCaseKey=UDB-Derigister
Scenario: Customer De-register from APP.

Given user is on page MyProfilePage clicks on UserProfileButton
Given user swipe down the page
Given user is on page MyProfilePage clicks on DeRegisterField
Given user is on page MyProfilePage clicks on ConfirmDeRegisterTnC
Given user is on page MyProfilePage clicks on DeRegisterTnCAccept
Given user is on page MyProfilePage clicks on DeRegisterSubmit
Given user is on page MyProfilePage clicks on TPIN
When user is on page MyProfilePage and types 1212 on TpinText
When user is on page MyProfilePage clicks on TPINContinue
Given user verifies on page MyProfilePage for Welcome to Vyom! text in placeholder WelcomeScreen