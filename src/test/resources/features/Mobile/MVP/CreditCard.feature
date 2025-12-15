Feature: Smoke for CreditCard Journey

@Deviceid=OppoA18 
@CaseKey=UDB-T088 @CaseKey=UDB-T087 @CaseKey=UDB-T002 @CaseKey=UDB-T001 
@CaseKey=UDB-T089 @CaseKey=UDB-T003 @CaseKey=UDB-T008 @CaseKey=UDB-T090 
@CaseKey=UDB-T009
Scenario: Verify that user is able to click on 'Generate PIN' option on the Manage Credit Card Page    
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Home
Given user is on page DashboardPage clicks on CreditCards
Given user swipes left to "xxxxx X8758"
Given user is on page DashboardPage clicks on SelectCardX8758
Given user is on page CreditCardPage clicks on ManageCreditCard
Given user is on page CreditCardPage clicks on GeneratePIN
When user is on page GeneratePINPage and types 0852 on Enter4DigitPin
When user is on page GeneratePINPage and types 0852 on Re-Enter4DigitPin
Given user is on page GeneratePINPage clicks on ContinueButton
When user enters OTP on page EnterOTPPage and types OTP on EnterOTP
Given user is on page EnterOTPPage clicks on SubmitButton
Then user verifies text on page "EnterOTPPage" is "PIN set successfully!" on "PINSetMessage"
Given user is on page EnterOTPPage clicks on OkayButton
Given user clicks with cordinate 54 118
Then user verifies text on page "CreditCardPage" is "Overview" on "Overview"
Given user clicks with cordinate 54 118
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 542 1561
Given user is on page ProfilePage clicks on ContinueButton


@Deviceid=OppoA18 
@CaseKey=UDB-T011 @CaseKey=UDB-T022 @CaseKey=UDB-T010 @CaseKey=UDB-T021
@CaseKey=UDB-T024 @CaseKey=UDB-T013 @CaseKey=UDB-T023 @CaseKey=UDB-T012 
@CaseKey=UDB-T015 @CaseKey=UDB-T026 @CaseKey=UDB-T014 @CaseKey=UDB-T025 
@CaseKey=UDB-T028 @CaseKey=UDB-T017 @CaseKey=UDB-T0128 @CaseKey=UDB-T027 
@CaseKey=UDB-T016 @CaseKey=UDB-T020 @CaseKey=UDB-T019 @CaseKey=UDB-T018 
Scenario: Verify that User is navigated to the Block/Unblock Card page by clicking on the 'Block/Unblock Card' option   

Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Home
Given user is on page DashboardPage clicks on CreditCards
Given user swipes left to "xxxxx X8758"
Given user is on page DashboardPage clicks on SelectCardX8758
Given user is on page CreditCardPage clicks on ManageCreditCard
Given user is on page CreditCardPage clicks on Block/Unblock
Given user is on page CreditCardPage clicks on ActionPerform
Given user is on page CreditCardPage clicks on Block
Given user is on page CreditCardPage clicks on TypeOfBlock
Given user is on page CreditCardPage clicks on Temporary
Given user is on page CreditCardPage clicks on ReasonToBlock
Given user is on page CreditCardPage clicks on Stolen
Given user is on page CreditCardPage clicks on ContinueButton
Given user is on page CreditCardPage clicks on CancelButton
Given user is on page CreditCardPage clicks on ReasonToBlock
Given user is on page CreditCardPage clicks on Lost
Given user is on page CreditCardPage clicks on ContinueButton
Given user is on page CreditCardPage clicks on CancelButton
Given user is on page CreditCardPage clicks on ReasonToBlock
Given user is on page CreditCardPage clicks on Damaged
Given user is on page CreditCardPage clicks on ContinueButton
Given user is on page CreditCardPage clicks on CancelButton
Given user is on page CreditCardPage clicks on ReasonToBlock
Given user is on page CreditCardPage clicks on Fraudulent
Given user is on page CreditCardPage clicks on ContinueButton
Given user is on page CreditCardPage clicks on CancelButton
Given user is on page CreditCardPage clicks on ReasonToBlock
Given user is on page CreditCardPage clicks on Other
When user is on page CreditCardPage and types User can not entered more than 50 char hence test case is passed on Remarks
Given user is on page CreditCardPage clicks on ContinueButton
Given user is on page CreditCardPage clicks on ContinueButton
When user is on page CreditCardPage and types 0852 on TpinText
Given user is on page CreditCardPage clicks on ContinueButton
Then user verifies text on page CreditCardPage is Credit Card Blocked Temporarily! on Temporarily
Given user is on page CreditCardPage clicks on ManageCreditCard
Given user is on page CreditCardPage clicks on Block/Unblock
Given user is on page CreditCardPage clicks on ActionPerform
Given user is on page CreditCardPage clicks on Unblock
Given user is on page CreditCardPage clicks on ContinueButton
When user is on page CreditCardPage and types 0852 on TpinText
Given user is on page CreditCardPage clicks on ContinueButton
Then user verifies text on page CreditCardPage is Credit Card Unblocked! on CardUnblocked
Given user is on page CreditCardPage clicks on ManageCreditCard
Given user clicks with cordinate 54 118
Then user verifies text on page CreditCardPage is Overview on Overview
Given user clicks with cordinate 54 118
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 542 1561
Given user is on page ProfilePage clicks on ContinueButton



@CaseKey=UDB-T044 @CaseKey=UDB-T032 @CaseKey=UDB-T054 @CaseKey=UDB-T046 
@CaseKey=UDB-T034 @CaseKey=UDB-T048 @CaseKey=UDB-T036 @CaseKey=UDB-T038 
@CaseKey=UDB-T080 @CaseKey=UDB-T082 @CaseKey=UDB-T040 @CaseKey=UDB-T050 
@CaseKey=UDB-T042 @CaseKey=UDB-T029 @CaseKey=UDB-T077 @CaseKey=UDB-T033 
@CaseKey=UDB-T043 @CaseKey=UDB-T035 @CaseKey=UDB-T079 @CaseKey=UDB-T045 
@CaseKey=UDB-T037 @CaseKey=UDB-T047 @CaseKey=UDB-T039 @CaseKey=UDB-T049 
@CaseKey=UDB-T081 @CaseKey=UDB-T051 @CaseKey=UDB-T031 @CaseKey=UDB-T041 
Scenario: Verify that User is able to see the Dometic TAB by default when he is navigated to the transaction limits page by clicking on the 'Transaction Limits' option
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Home
Given user is on page DashboardPage clicks on CreditCards
Given user swipes left to "xxxxx X8758"
Given user is on page DashboardPage clicks on SelectCardX8758
Given user is on page CreditCardPage clicks on ManageCreditCard
Given user is on page CreditCardPage clicks on Transaction Limits
Given user is on page PaymentLimitsPage clicks on DomesticTab
Given user is at page PaymentLimitsPage if element is disabled clicks on ATMWithdrawalsSwitchButton
Given user moves slider number 1 to 600
When user is on page PaymentLimitsPage and types 1 on ATMWithdrawalsEditBox
Given user moves slider number 1 to 150
Given user is at page PaymentLimitsPage if element is disabled clicks on POSSwitchButton
Given user moves slider number 2 to 600
When user is on page PaymentLimitsPage and types 1 on POSEditBox
Given user moves slider number 2 to 175
When user scrolls down to "Tap and Pay"
Given user is at page PaymentLimitsPage if element is disabled clicks on E-CommerceSwitchButton
Given user moves slider number 3 to 600
When user is on page PaymentLimitsPage and types 1 on E-CommerceEditBox
Given user moves slider number 3 to 200
Given user is at page PaymentLimitsPage if element is disabled clicks on TapAndPaySwitchButton
Given user moves slider number 4 to 600
When user is on page PaymentLimitsPage and types 1 on TapAndPayEditBox
Given user moves slider number 4 to 225
Given user is on page PaymentLimitsPage clicks on ContinueButton
When user is on page PaymentLimitsPage and types 0852 on TpinText
Given user is on page PaymentLimitsPage clicks on ContinueButton
Then user verifies text on page PaymentLimitsPage is Channel Limits changed successfully! on ChangeLimitMessageText
Given user is on page PaymentLimitsPage clicks on OkayButton
Given user clicks with cordinate 54 118
Then user verifies text on page CreditCardPage is Overview on Overview
Given user clicks with cordinate 54 118
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 542 1561
Given user is on page ProfilePage clicks on ContinueButton


@CaseKey=UDB-T066 @CaseKey=UDB-T076 @CaseKey=UDB-T078 @CaseKey=UDB-T056 
@CaseKey=UDB-T058 @CaseKey=UDB-T060 @CaseKey=UDB-T070 @CaseKey=UDB-T062 
@CaseKey=UDB-T084 @CaseKey=UDB-T072 @CaseKey=UDB-T064 @CaseKey=UDB-T086 
@CaseKey=UDB-T052 @CaseKey=UDB-T074 @CaseKey=UDB-T055 @CaseKey=UDB-T065 
@CaseKey=UDB-T057 @CaseKey=UDB-T067 @CaseKey=UDB-T059 @CaseKey=UDB-T069 
@CaseKey=UDB-T071 @CaseKey=UDB-T061 @CaseKey=UDB-T083 @CaseKey=UDB-T053 
@CaseKey=UDB-T075 @CaseKey=UDB-T085 @CaseKey=UDB-T063
Scenario: Verify User is able to navigate to the INTERNATIONAL TAB when he clicks on the INTERNATIONAL TAB
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Home
Given user is on page DashboardPage clicks on CreditCards
Given user swipes left to "xxxxx X8758"
Given user is on page DashboardPage clicks on SelectCardX8758
Given user is on page CreditCardPage clicks on ManageCreditCard
Given user is on page CreditCardPage clicks on Transaction Limits
Given user is on page PaymentLimitsPage clicks on InternationalTab
Given user is on page PaymentLimitsPage clicks on EnableInternationalTransactions
Given user is at page PaymentLimitsPage if element is disabled clicks on EnableInternationalTransactions
Given user is on page PaymentLimitsPage clicks on EnableInternationalTransactions
Given user is at page PaymentLimitsPage if element is disabled clicks on INTATMWithdrawals
Given user moves slider number 1 to 600
When user is on page PaymentLimitsPage and types 1 on INTATMWithdrawalsEditBox
Given user moves slider number 1 to 150
Given user is at page PaymentLimitsPage if element is disabled clicks on INTPointofSale
Given user moves slider number 2 to 600
When user is on page PaymentLimitsPage and types 1 on INTPOSEditBox
Given user moves slider number 2 to 175
When user scrolls down to "Tap and Pay"
Given user is at page PaymentLimitsPage if element is disabled clicks on INTE-Commerce
Given user moves slider number 3 to 600
When user is on page PaymentLimitsPage and types 1 on INTE-CommerceEditBox
Given user moves slider number 3 to 200
Given user is at page PaymentLimitsPage if element is disabled clicks on INTTapandPay
Given user moves slider number 4 to 600
When user is on page PaymentLimitsPage and types 1 on INTTapAndPayEditBox
Given user moves slider number 4 to 225
Given user is on page PaymentLimitsPage clicks on ContinueButton
When user is on page PaymentLimitsPage and types 0852 on TpinText
Given user is on page PaymentLimitsPage clicks on ContinueButton
Then user verifies text on page PaymentLimitsPage is Channel Limits changed successfully! on ChangeLimitMessageText
Given user is on page PaymentLimitsPage clicks on OkayButton
Given user clicks with cordinate 54 118
Then user verifies text on page CreditCardPage is Overview on Overview
Given user clicks with cordinate 54 118
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 542 1561
Given user is on page ProfilePage clicks on ContinueButton


@CaseKey=UDB-T0100 @CaseKey=UDB-T099 @CaseKey=UDB-T0111 
@CaseKey=UDB-T098 @CaseKey=UDB-T0101 @CaseKey=UDB-T0145 
@CaseKey=UDB-T0102 @CaseKey=UDB-T0103 @CaseKey=UDB-T0104 
@CaseKey=UDB-T0115 @CaseKey=UDB-T0116 @CaseKey=UDB-T0105 
@CaseKey=UDB-T0106 @CaseKey=UDB-T0117 @CaseKey=UDB-T091 
@CaseKey=UDB-T093 @CaseKey=UDB-T092 @CaseKey=UDB-T097 
Scenario: Verify that user clicks on "Pay Bill" Button
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Home
Given user is on page DashboardPage clicks on CreditCards
Given user swipes left to "xxxxx X8758"
Given user is on page DashboardPage clicks on SelectCardX8758
Given user is on page CreditCardPage clicks on Overview
When user scrolls down to "Pay Bill"
Given user is on page CreditCardPage clicks on Pay Bill
Given user is on page CreditCardPage clicks on SelectAccountDropdown
Given user is on page CreditCardPage clicks on SelectAccountXXXXX00199
Given user is on page CreditCardPage clicks on CurrentOutstandingRadioButton
Given user is on page CreditCardPage clicks on ContinueButton
Given user is on page CreditCardPage clicks on CloseButtonTopRightCorner
Given user is on page CreditCardPage clicks on OtherAmount
When user is on page CreditCardPage and types 2 on Amount
When user scrolls down to "Credit Card Payment"
Given user is on page CreditCardPage clicks on RemarksOtherCard
When user is on page CreditCardPage and types User can not enter more than 50 chars hence test case is passed on Remarks
Given user is on page CreditCardPage clicks on ContinueButton
Given user is on page CreditCardPage clicks on TpinText
When user is on page CreditCardPage and types 0852 on TpinText
Given user is on page CreditCardPage clicks on TPinShow
Given user clicks with cordinate 542 1561
Given user is on page CreditCardPage clicks on ContinueButton
Given user is on page CreditCardPage clicks on Okaybutton
Given user clicks with cordinate 542 1561
When user scrolls up to "Overview"
Given user clicks with cordinate 542 1561
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 542 1561
Given user is on page ProfilePage clicks on ContinueButton


@CaseKey=UDB-T068 @CaseKey=UDB-T056 @CaseKey=UDB-T058 @CaseKey=UDB-T073 
@CaseKey=UDB-T063
Scenario: Verify User is able to disable the International transactions using the toggle button in the INTERNATIONAL TAB 
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Home
Given user is on page DashboardPage clicks on CreditCards
Given user swipes left to "xxxxx X8758"
Given user is on page DashboardPage clicks on SelectCardX8758
Given user is on page CreditCardPage clicks on ManageCreditCard
Given user is on page CreditCardPage clicks on Transaction Limits
Given user is on page PaymentLimitsPage clicks on InternationalTab
Given user is on page PaymentLimitsPage clicks on EnableInternationalTransactions
Given user is at page PaymentLimitsPage if element is disabled clicks on EnableInternationalTransactions
Given user is on page PaymentLimitsPage clicks on INTATMWithdrawals
Given user is at page PaymentLimitsPage if element is disabled clicks on INTATMWithdrawals
Given user is on page PaymentLimitsPage clicks on INTPointofSale
Given user is at page PaymentLimitsPage if element is disabled clicks on INTPointofSale
When user scrolls down to "Tap and Pay"
Given user is on page PaymentLimitsPage clicks on INTE-Commerce
Given user is at page PaymentLimitsPage if element is disabled clicks on INTE-Commerce
Given user is on page PaymentLimitsPage clicks on INTTapandPay
Given user is at page PaymentLimitsPage if element is disabled clicks on INTTapandPay
Given user is on page PaymentLimitsPage clicks on ContinueButton
When user is on page PaymentLimitsPage and types 0852 on TpinText
Given user is on page PaymentLimitsPage clicks on ContinueButton
Then user verifies text on page PaymentLimitsPage is Channel Limits changed successfully! on ChangeLimitMessageText
Given user is on page PaymentLimitsPage clicks on OkayButton
Given user clicks with cordinate 54 118
Then user verifies text on page CreditCardPage is Overview on Overview
Given user clicks with cordinate 54 118
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 542 1561
Given user is on page ProfilePage clicks on ContinueButton



@CaseKey=UDB-T033 @CaseKey=UDB-T043 @CaseKey=UDB-T048
Scenario: Verify User is able to toggle OFF for setting ATM withdrawals on the DOMESTIC TAB
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Home
Given user is on page DashboardPage clicks on CreditCards
Given user swipes left to "xxxxx X8758"
Given user is on page DashboardPage clicks on SelectCardX8758
Given user is on page CreditCardPage clicks on ManageCreditCard
Given user is on page CreditCardPage clicks on Transaction Limits
Given user is on page PaymentLimitsPage clicks on DomesticTab
Given user is on page PaymentLimitsPage clicks on ATMWithdrawalsSwitchButton
Given user is at page PaymentLimitsPage if element is disabled clicks on ATMWithdrawalsSwitchButton
Given user is on page PaymentLimitsPage clicks on POSSwitchButton
Given user is at page PaymentLimitsPage if element is disabled clicks on POSSwitchButton
When user scrolls down to "Tap and Pay"
Given user is on page PaymentLimitsPage clicks on E-CommerceSwitchButton
Given user is at page PaymentLimitsPage if element is disabled clicks on E-CommerceSwitchButton
Given user is on page PaymentLimitsPage clicks on TapAndPaySwitchButton
Given user is at page PaymentLimitsPage if element is disabled clicks on TapAndPaySwitchButton
Given user is on page PaymentLimitsPage clicks on ContinueButton
When user is on page PaymentLimitsPage and types 0852 on TpinText
Given user is on page PaymentLimitsPage clicks on ContinueButton
Then user verifies text on page PaymentLimitsPage is Channel Limits changed successfully! on ChangeLimitMessageText
Given user is on page PaymentLimitsPage clicks on OkayButton
Given user clicks with cordinate 54 118
Then user verifies text on page CreditCardPage is Overview on Overview
Given user clicks with cordinate 54 118
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 542 1561
Given user is on page ProfilePage clicks on ContinueButton


@CaseKey=UDB-T0146
Scenario: Verify that user is able to click on the Continue button on the TPIN box - Manage auto debit Journey
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on Home
Given user is on page DashboardPage clicks on CreditCards
Given user swipes left to "xxxxx X8758"
Given user is on page DashboardPage clicks on SelectCardX8758
Given user is on page CreditCardPage clicks on ManageCreditCard
Given user is on page CreditCardPage clicks on ManageAutoDebit
Given user is on page ManageAutoDebitPage clicks on SelectAccountDropdown
Given user is on page ManageAutoDebitPage clicks on SelectAccountXXXXX00199
Given user is on page ManageAutoDebitPage clicks on MinimumAmountDueRadioButton
Given user is on page ManageAutoDebitPage clicks on ContinueButton
When user is on page ManageAutoDebitPage and types 0852 on TpinText
Given user is on page ManageAutoDebitPage clicks on ContinueButton
Then user verifies text on page ManageAutoDebitPage is Auto Debit Enabled on AutoDebitEnabledText
Then user verifies text on page ManageAutoDebitPage is Minimum Amount Due on MinimumAmountDueText
Given user is on page ManageAutoDebitPage clicks on ManageCreditCardButton
Given user is on page CreditCardPage clicks on ManageAutoDebit
Given user is on page ManageAutoDebitPage clicks on SelectAccountDropdown
Given user is on page ManageAutoDebitPage clicks on SelectAccountXXXXX00199
Given user is on page ManageAutoDebitPage clicks on TotalAmountDueRadioButton
Given user is on page ManageAutoDebitPage clicks on ContinueButton
When user is on page ManageAutoDebitPage and types 0852 on TpinText
Given user is on page ManageAutoDebitPage clicks on ContinueButton
Then user verifies text on page ManageAutoDebitPage is Auto Debit Enabled on AutoDebitEnabledText
Then user verifies text on page ManageAutoDebitPage is Total Amount Due on TotalAmountDueText
Given user is on page ManageAutoDebitPage clicks on ManageCreditCardButton
Given user clicks with cordinate 54 118
Then user verifies text on page CreditCardPage is Overview on Overview
Given user clicks with cordinate 54 118
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 542 1561
Given user is on page ProfilePage clicks on ContinueButton