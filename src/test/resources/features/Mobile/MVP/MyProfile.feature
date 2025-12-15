Feature: Mobile UI automation for Profile Menu

@TestCaseKey=UDB-001 @Automatable @Smoke @RedmiNote9Pro
Scenario: Validate the ETB user can view details in My Profile Page
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on DepositsTab  
Given user is on page DashboardPage clicks on UserProfileButton
Then user on page MyProfilePage compares text 613763682 with ProfileCIF
Given user verifies on page MyProfilePage for CKYC text in placeholder CKYCField
Given user verifies on page MyProfilePage for 50058554595361 text in placeholder CKYC
Given user verifies on page MyProfilePage for PAN text in placeholder PANField
Given user verifies on page MyProfilePage for ARJPMXXXXC text in placeholder PAN
When user scrolls down to "Manage"
Given user verifies on page MyProfilePage for Aadhar text in placeholder AadhaarField
#Given user verifies on page MyProfilePage for 990050765320 text in placeholder Aadhaar
Given user verifies on page MyProfilePage for Mobile Number text in placeholder MobileNumberField
Given user verifies on page MyProfilePage for 8605405600 text in placeholder MobileNumber
Given user verifies on page MyProfilePage for Email text in placeholder EmailField
Given user verifies on page MyProfilePage for vmoyalanubi@gmail.com text in placeholder Email
Given user verifies on page MyProfilePage for Address text in placeholder AddressField
Given user verifies on page MyProfilePage for KYC Status text in placeholder KYCStatusField
Given user verifies on page MyProfilePage for N text in placeholder KYCStatus
Given user verifies on page MyProfilePage for TPIN text in placeholder TPINField
Given user verifies on page MyProfilePage for Login PIN text in placeholder LoginPINField
Given user verifies on page MyProfilePage for De-Register text in placeholder DeRegisterField
Given user swipe down the page
Given user verifies on page MyProfilePage for Reset Security Question text in placeholder SecurityQuestionField
Given user verifies on page MyProfilePage for About Vyom text in placeholder AboutField
Given user verifies on page MyProfilePage for App Version text in placeholder AppVersionField
Given user verifies on page MyProfilePage for Terms and Conditions text in placeholder TnCField
Given user verifies on page MyProfilePage for Checksum text in placeholder CheckSumField
Given user is on page MyProfilePage to check LogoutButton is Enabled