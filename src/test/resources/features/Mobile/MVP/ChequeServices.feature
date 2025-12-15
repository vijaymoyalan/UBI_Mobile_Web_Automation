Feature: Mobile UI test for Cheque Services Journey


@Deviceid=OppoA18
@CaseKey=UDB-T16635 @CaseKey=UDB-T16625 @CaseKey=UDB-T16636 @CaseKey=UDB-T16626 
@CaseKey=UDB-T16637 @CaseKey=UDB-T16627 @CaseKey=UDB-T16638 @CaseKey=UDB-T16631 
@CaseKey=UDB-T16632 @CaseKey=UDB-T16634 @CaseKey=UDB-T16640 @CaseKey=UDB-T16628
@CaseKey=UDB-T16629 
Scenario: Verify that User is able to click on 'Cheque Status Enquiry' in "Cheque Services Request Details Page" 
#Given user logins to app
Given user logins to app entering Login PIN
When user scrolls down to "Cheque Services"
Given user is on page DashboardPage clicks on ChequeServices
Given user is on page ChequeServices clicks on ChequeStatusEnquiry
Given user is on page ChequeServices clicks on SelectAccount
When user scrolls down to "XXXXX 00002"
Given user is on page ChequeServices clicks on ODAXXXXX00002
Given user is on page ChequeServices clicks on GetStatusButton
Then user verifies text on page "ChequeServices" is "Please enter the correct Cheque No." on "ErrorBlankChequeNumber"
When user is on page ChequeServices and types 12192 on ChequeNo
Given user is on page ChequeServices clicks on GetStatusButton
Then user verifies text on page "ChequeServices" is "Cheque number should be between 6 to 8 digits" on "ErrorChequeNumberlessThanSixDigit"
When user is on page ChequeServices and types 21424424 on ChequeNo
Given user is on page ChequeServices clicks on GetStatusButton
Then user verifies text on page "ChequeServices" is "Cheque not issued to this account" on "WrongChequeErrorMessage"
Given user is on page ChequeServices clicks on OkayButton
When user is on page ChequeServices and types 12129292 on ChequeNo
Given user is on page ChequeServices clicks on GetStatusButton
Then user verifies text on page "ChequeServices" is "12129292" on "ChequeNumber12129292text"
Then user verifies text on page "ChequeServices" is "Stopped" on "ChequeStatusStopped"
Given user is on page ChequeServices clicks on OkayButton
Given user is on page ChequeServices clicks on ChequeStatusEnquiry
Given user is on page ChequeServices clicks on SelectAccount
When user scrolls down to "XXXXX 00002"
Given user is on page ChequeServices clicks on ODAXXXXX00002
When user is on page ChequeServices and types 12129299 on ChequeNo
Given user is on page ChequeServices clicks on GetStatusButton
Then user verifies text on page "ChequeServices" is "12129299" on "ChequeNumber12129299text"
Then user verifies text on page "ChequeServices" is "Unused" on "ChequeStatusUnused"
Given user is on page ChequeServices clicks on OkayButton
Given user clicks with cordinate 542 1561
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 542 1561
Given user is on page ProfilePage clicks on ContinueButton

@Deviceid=OppoA18
@CaseKey=UDB-T16646 @CaseKey=UDB-T16647 @CaseKey=UDB-T16648 @CaseKey=UDB-T16649 
@CaseKey=UDB-T16642 @CaseKey=UDB-T16653 @CaseKey=UDB-T16643 @CaseKey=UDB-T16654 
@CaseKey=UDB-T16645 @CaseKey=UDB-T16660 @CaseKey=UDB-T16650 @CaseKey=UDB-T16651 
@CaseKey=UDB-T16641 @CaseKey=UDB-T16652
Scenario: Verify that User is able to click on 'Cheque Book Request' in "Cheque Services Request Details Page" 
#Given user logins to app
Given user logins to app entering Login PIN
When user scrolls down to "Cheque Services"
Given user is on page DashboardPage clicks on ChequeServices
Given user is on page ChequeServices clicks on ChequeBookRequest
Given user is on page ChequeServices clicks on SelectAccount
Given user is on page ChequeServices clicks on SBAXXXXX00199
Then user verifies text on page "ChequeBookRequestPage" is "20" on "ChequeLeaves20"
Given user is on page ChequeServices clicks on SelectAccount
When user scrolls down to "XXXXX 50101"
Given user is on page ChequeServices clicks on CAXXXXX50101
Then user verifies text on page "ChequeBookRequestPage" is "50" on "ChequeLeaves50"
Given user is on page ChequeServices clicks on ChangeCAFromDropdown
When user scrolls down to "XXXXX 00002"
Given user is on page ChequeServices clicks on ODAXXXXX00002
Then user verifies text on page "ChequeBookRequestPage" is "50" on "ChequeLeaves50"
Then user verifies text on page "ChequeBookRequestPage" is "Marol Andheri, Near Sagun Hospital, Marol, Mumbai, Maharashtra - 275101, India" on "CommunicationAddress"
Given user is on page ChequeBookRequestPage clicks on CommunicationAddress
Given user is on page ChequeBookRequestPage clicks on ClickHereLink
Given user is on page ChequeBookRequestPage clicks on CloseButton
Then user verifies text on page "ChequeBookRequestPage" is "If the above address is not correct, please visit nearest Union Bank of India branch to update. Charges may be applicable. 0 to view the charges" on "IncorrectAddressNote"
Given user is on page ChequeBookRequestPage clicks on SubmitButton
When user is on page ChequeBookRequestPage and types 0152 on Tpin
Given user is on page ChequeBookRequestPage clicks on TPinShow
Given user is on page ChequeBookRequestPage clicks on ContinuetButton
Then user verifies text on page "ChequeBookRequestPage" is "Please enter correct TPIN, you have 2 more attempts remaining" on "IncorrectTPinError"
When user is on page ChequeBookRequestPage and types 1470 on Tpin
Given user is on page ChequeBookRequestPage clicks on ContinuetButton
Given user is on page ChequeBookRequestPage clicks on OkayButton
Given user clicks with cordinate 542 1561
Given user clicks with cordinate 542 1561
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 542 1561
Given user is on page ProfilePage clicks on ContinueButton

@Deviceid=OppoA18
@CaseKey=UDB-T16679  @CaseKey=UDB-T16753 @CaseKey=UDB-T16699  @CaseKey=UDB-T16694 
@CaseKey=UDB-T16680 
Scenario: Verify that User is able to select Account from Account Dropdown in "New Positvie Pay " request page   
#Given user logins to app
Given user logins to app entering Login PIN
When user scrolls down to "Cheque Services"
Given user is on page DashboardPage clicks on ChequeServices
Given user is on page ChequeServices clicks on PositivePay
Given user is on page ChequeServices clicks on NewPositivePayRequest
Given user is on page ChequeServices clicks on SelectAccount
When user scrolls down to "XXXXX 00002"
Given user is on page ChequeServices clicks on ODAXXXXX00002
When user is on page NewPositivePayRequestPage and types 2345 on AmountEditBox
When user is on page NewPositivePayRequestPage and types Automation Tester on PayeeNameEditBox
When user scrolls down to "SAN No."
When user is on page NewPositivePayRequestPage and types 0221201 on SANEditBox
Given user is on page NewPositivePayRequestPage clicks on ContinueButton
Then user verifies text on page "NewPositivePayRequestPage" is "Please enter 6 digit valid SAN Number" on "ErrorForMoreThanSixDigitSAN"
When user is on page NewPositivePayRequestPage and types 022120 on SANEditBox
Given user is on page NewPositivePayRequestPage clicks on ContinueButton
Given user is on page NewPositivePayRequestPage clicks on SubmitButton
When user is on page ChequeBookRequestPage and types 1470 on Tpin
Given user is on page ChequeBookRequestPage clicks on ContinuetButton
Given user is on page NewPositivePayRequestPage clicks on OkayButton
Given user clicks with cordinate 542 1561
Given user clicks with cordinate 542 1561
Given user clicks with cordinate 542 1561
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 542 1561
Given user is on page ProfilePage clicks on ContinueButton

@Deviceid=OppoA18
@CaseKey=UDB-T16668 @CaseKey=UDB-T16669 @CaseKey=UDB-T16665 @CaseKey=UDB-T16666 
@CaseKey=UDB-T16671 @CaseKey=UDB-T16661 @CaseKey=UDB-T16662 @CaseKey=UDB-T16663
@CaseKey=UDB-T16670
Scenario: Verify that User is able to click on 'Stop Cheque Payment' in "Cheque Services Request Details Page"   
#Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on DepositsTab
When user scrolls down to "Cheque Services"
Given user is on page DashboardPage clicks on ChequeServices
Given user is on page ChequeServices clicks on StopChequePayment
Given user is on page ChequeServices clicks on SelectAccount
When user scrolls down to "XXXXX 00002"
Given user is on page ChequeServices clicks on ODAXXXXX00002
Then user verifies text on page "ChequeServices" is "UMESH XXXXX 00002 (Overdraft Account)" on "ODAXXXXX00002Text"
When user is on page StopChequePaymentPage clicks on SubmitButton
Then user verifies text on page "StopChequePaymentPage" is "Please enter the correct Cheque No." on "ErrorMessageToEnterCorrectCheque"
When user is on page StopChequePaymentPage and types 3453 on SearchCheque
When user is on page StopChequePaymentPage clicks on SubmitButton
Then user verifies text on page "StopChequePaymentPage" is "Cheque number should be between 6 to 8 digits" on "ErrorMessageIncorrectDigitsOfChequeNumber"
When user is on page StopChequePaymentPage and types 12129299 on SearchCheque
When user is on page StopChequePaymentPage clicks on Cheque12129299
When user is on page StopChequePaymentPage clicks on SubmitButton
When user is on page StopChequePaymentPage and types 0152 on Tpin
Given user is on page StopChequePaymentPage clicks on TPinShow
Given user is on page StopChequePaymentPage clicks on ContinueButton
Then user verifies text on page "StopChequePaymentPage" is "Please enter correct TPIN, you have 2 more attempts remaining" on "IncorrectTPinError"
When user is on page StopChequePaymentPage and types 1470 on Tpin
When user is on page StopChequePaymentPage clicks on CloseButton
Given user clicks with cordinate 542 1561
Given user clicks with cordinate 542 1561
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 542 1561
Given user is on page ProfilePage clicks on ContinueButton