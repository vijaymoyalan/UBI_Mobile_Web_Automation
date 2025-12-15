Feature: RD for Retail Internet banking

@TestCaseKey=UDB-T005 @web
Scenario: Validate that user should be able to see the Download button inster of share button in RIB Portal as it is has been replaced by Download button

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 2000 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure3Year
 Given user is on page RIB_RDPage and clicks on SelectTenure3Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2025
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Then user is on page RIB_RDPage to verify ContinueButton is Displayed
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element SubmitButton
 Given user is on page RIB_RDPage and clicks on TnC
 Given user is on page RIB_RDPage and clicks on AgreeButton
 Then user is on page RIB_RDPage to verify SubmitButton is Displayed
 Given user is on page RIB_RDPage and clicks on SubmitButton
 
@TestCaseKey=UDB-T004 @web
Scenario: Validate that Post journey user should be able to edit/delete nominee details from the request tab of the account

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 2000 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure3Year
 Given user is on page RIB_RDPage and clicks on SelectTenure3Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2025
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ChangeNomineeAddress
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on NomineeAddressPincode
 Given user is on page RIB_RDPage and types 400009 on NomineeAddressPincode
 Given user is on page RIB_RDPage and clicks on NomineeAddressLine1
 Given user is on page RIB_RDPage and types Script Address One on NomineeAddressLine1
 Given user is on page RIB_RDPage and clicks on NomineeAddressLine2
 Given user is on page RIB_RDPage and types Script Address Two on NomineeAddressLine2
 Given user is on page RIB_RDPage and clicks on NomineeAddressLine3
 Given user is on page RIB_RDPage and types Script Address Three on NomineeAddressLine3
 
@TestCaseKey=UDB-T006 @TestCaseKey=UDB-T1008 @web
Scenario: Validate that user should be able to see the Amount in words which are entered in Numberic digit under "Deposite Amount" Text Box.  i.e. " Ten Thousand Rupees Only"

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 2000 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure3Year
 Given user is on page RIB_RDPage and clicks on SelectTenure3Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2025
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Then user is on page RIB_RDPage to verify ContinueButton is Displayed
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage to verify DepositAmountText is Displayed
 
 
@TestCaseKey=UDB-T10065 @TestCaseKey=UDB-T10071 @web
Scenario: Verify Negative testing for Address field for Nominee

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 2000 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure3Year
 Given user is on page RIB_RDPage and clicks on SelectTenure3Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2025
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ChangeNomineeAddress
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user verifies for toast message on page RIB_RDPage as Please enter Pincode text in placeholder NomineePincodeError
 Then user verifies for toast message on page RIB_RDPage as Please enter nominee address line text in placeholder NomineeAddress1Error
 Then user verifies for toast message on page RIB_RDPage as Please enter nominee address line text in placeholder NomineeAddress2Error
 
 
@TestCaseKey=UDB-T10066 @web
Scenario: Verify Negative testing for Age field for Nominee

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 2000 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure3Year
 Given user is on page RIB_RDPage and clicks on SelectTenure3Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Then user is on page RIB_RDPage clears the DOBTextBox
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user verifies for toast message on page RIB_RDPage as Please enter Nominee text in placeholder DOBErrorMessage
 
 
@TestCaseKey=UDB-T10067 @web
Scenario: Verify Negative testing for Nominee fields Name

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 2000 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure3Year
 Given user is on page RIB_RDPage and clicks on SelectTenure3Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Then user is on page RIB_RDPage clears the NomineeName
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user verifies for toast message on page RIB_RDPage as Please enter Nominee text in placeholder NomineeNameErrorMessage
 
 
@TestCaseKey=UDB-T10068 @web
Scenario: Verify Negative testing for Nominee fields Name

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 2000 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure3Year
 Given user is on page RIB_RDPage and clicks on SelectTenure3Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Then user is on page RIB_RDPage clears the NomineeRelationTextBox
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user verifies for toast message on page RIB_RDPage as Please enter Nominee text in placeholder NomineeRelationErrorMessage
 
 @TestCaseKey=UDB-T10070 @web
Scenario: Verify Regular RD Negative testing for Deposit Amount field

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element RDName
 Then user verifies for toast message on page RIB_RDPage as Deposit amount is required text in placeholder DepositAmountErrorMessage
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 0 on DepositAmount
 Then user verifies for toast message on page RIB_RDPage as Deposit amount cannot text in placeholder DepositAmountErrorMessage
 Then user is on page RIB_RDPage clears the DepositAmount
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 100 on DepositAmount
 Then user verifies for toast message on page RIB_RDPage as Deposit amount cannot text in placeholder DepositAmountErrorMessage
 
 
@TestCaseKey=UDB-T10072 @web
Scenario: Verify the Negative scenarios for Custom field Years and MOnths on Tenure screen

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Given user is on page RIB_RDPage and clicks on SelectCustomeTenure
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element SelectCustomeTenure
 Then user verifies for toast message on page RIB_RDPage as Please enter Months text in placeholder CustomMonthErrorMessage
 Given user is on page RIB_RDPage and types 5 on CustomMonthTextBox
 Then user verifies for toast message on page RIB_RDPage as Tenure selected is less text in placeholder CustomMonthErrorMessage
 
 
@TestCaseKey=UDB-T1016 @web
Scenario: Verify that ETB customers aged between 18 to 30 should not be allowed to open recurring deposit amount of below 500

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 100 on DepositAmount
  Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element RDName
 Then user verifies for toast message on page RIB_RDPage as Deposit amount cannot text in placeholder DepositAmountErrorMessage
 
 
@TestCaseKey=UDB-T1020 @web
Scenario: Verify that ETB customers age between 18 to 30 should open recurring deposit amount of above Max limit  rs 99L

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 10000000 on DepositAmount
  Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element RDName
 Then user verifies for toast message on page RIB_RDPage as Deposit amount cannot text in placeholder DepositAmountErrorMessage
 
@TestCaseKey=UDB-T1026 @web
Scenario: Verify that ETB customers age within 18 to 30 should open recurring deposit along with nominee details

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 2000 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure3Year
 Given user is on page RIB_RDPage and clicks on SelectTenure3Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2025
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Then user is on page RIB_RDPage to verify ContinueButton is Displayed
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element TnC
 Given user is on page RIB_RDPage and clicks on TnC
 Given user is on page RIB_RDPage and clicks on AgreeButton
 Then user is on page RIB_RDPage to verify SubmitButton is Displayed
 Given user is on page RIB_RDPage and clicks on SubmitButton
 Given user is on page RIB_RDPage and clicks on TPIN
 Given user is on page RIB_RDPage and types fd2ce65b3e9e4f79b074e2dc3f2010519df2d9cb697c7832f42c309278aa7930 on TPIN
 Given user is on page RIB_RDPage and clicks on ContinueButton
 
 
@TestCaseKey=UDB-T1043 @web
Scenario: Verify that the address of the nominee has been changed successfully

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 2000 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure3Year
 Given user is on page RIB_RDPage and clicks on SelectTenure3Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2025
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ChangeNomineeAddress
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on NomineeAddressPincode
 Given user is on page RIB_RDPage and types 400009 on NomineeAddressPincode
 Given user is on page RIB_RDPage and clicks on NomineeAddressLine1
 Given user is on page RIB_RDPage and types Script Address One on NomineeAddressLine1
 Given user is on page RIB_RDPage and clicks on NomineeAddressLine2
 Given user is on page RIB_RDPage and types Script Address Two on NomineeAddressLine2
 Given user is on page RIB_RDPage and clicks on NomineeAddressLine3
 Given user is on page RIB_RDPage and types Script Address Three on NomineeAddressLine3
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 

@TestCaseKey=UDB-T68631 @web
Scenario: Verify Details tab for existing RD

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on DetailsTab
 Then user verifies for toast message on page RIB_ExistingRD as Customer Information text in placeholder CustomerInfoSection
 Then user is on page RIB_ExistingRD scroll to webpage element AccountInfoSection
 Then user verifies for toast message on page RIB_ExistingRD as Account Information text in placeholder AccountInfoSection
 Then user is on page RIB_ExistingRD scroll to webpage element NomineeInfoSection
 Then user verifies for toast message on page RIB_ExistingRD as Nominee Information text in placeholder NomineeInfoSection
 
 
@TestCaseKey=UDB-T68632 @web
Scenario: Verify Account information section under Details tab of existing RD

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on DetailsTab
 Then user is on page RIB_ExistingRD scroll to webpage element AccountInfoSection
 Then user verifies for toast message on page RIB_ExistingRD as Account Information text in placeholder AccountInfoSection
 Then user is on page RIB_ExistingRD to verify CountOfContributionText is Displayed
 Then user is on page RIB_ExistingRD to verify MaturityDateText is Displayed
 Then user is on page RIB_ExistingRD to verify FormText is Displayed
 Then user is on page RIB_ExistingRD to verify RDAccountTypeText is Displayed
 
 
@TestCaseKey=UDB-T68633 @web
Scenario: Verify data in Account information section under Details tab of existing RD

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on DetailsTab
 Then user is on page RIB_ExistingRD scroll to webpage element AccountInfoSection
 Then user verifies for toast message on page RIB_ExistingRD as Account Information text in placeholder AccountInfoSection
 Then user is on page RIB_ExistingRD to verify CountOfContributionValue is Displayed
 Then user is on page RIB_ExistingRD to verify MaturityDateValue is Displayed
 Then user is on page RIB_ExistingRD to verify FormValue is Displayed
 Then user is on page RIB_ExistingRD to verify RDAccountTypeValue is Displayed
 
@TestCaseKey=UDB-T68636  @TestCaseKey=UDB-T68637 @web
Scenario: Verify Branch Information section under Details tab of existing RD

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on DetailsTab
 Then user is on page RIB_ExistingRD scroll to webpage element BranchLocationText
 Then user is on page RIB_ExistingRD to verify BranchLocationText is Displayed
 Then user is on page RIB_ExistingRD to verify BranchLocationValue is Displayed
 
 
@TestCaseKey=T68641 @web
Scenario: Verify Download TDS Certificate under Request Tab

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_ExistingRD and clicks on DownloadTDS
 
 
@TestCaseKey=T68654 @web
Scenario: Verify Interest Certificate option under Request tab

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_ExistingRD and clicks on DownloadInterestCertificate
 
 
@TestCaseKey=UDB-T68695 @web
Scenario: Verify account shown in Select account drop down if user is opening RD again .

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on AccountNameDropDown
 Then user is on page RIB_RDPage to verify SavingAccountSelection is Displayed
 Then user is on page RIB_RDPage to verify CurrentAccountSelection is Displayed
 Then user is on page RIB_RDPage to verify OverdraftAccountSelection is Displayed
 
 
@TestCaseKey=UDB-T898 @web
Scenario: Verify user should be able to view details of RD, transaction details and request tab for additional options.

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Then user is on page RIB_ExistingRD to verify StatementTab is Displayed
 Given user is on page RIB_ExistingRD and clicks on StatementTab
 Then user is on page RIB_ExistingRD to verify DetailsTab is Displayed
 Given user is on page RIB_ExistingRD and clicks on DetailsTab
 Then user is on page RIB_ExistingRD to verify RequestTab is Displayed
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 
 
@TestCaseKey=UDB-T899 @web
Scenario: Verify user should be able to download statement pdf through custom option for Recurrring deposite

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on StatementTab
 Given user is on page RIB_ExistingRD and clicks on CustomStartDate
 Given user selects day 4 month Dec year 2024 and current year is 2025
 Given user is on page RIB_ExistingRD and clicks on CustomEndDate
 Given user selects day 1 month Dec year 2025 and current year is 2025
 

@TestCaseKey=UDB-T900 @web
Scenario: Verify user should be able to download statement pdf through current month option for Recurrring deposite

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on StatementTab
 Given user is on page RIB_ExistingRD and clicks on CurrentMonth
 
 
@TestCaseKey=UDB-T901 @web
Scenario: Verify user should be able to download statement pdf through last month option for Recurrring deposite

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on StatementTab
 Given user is on page RIB_ExistingRD and clicks on LastMonth
 
 
@TestCaseKey=UDB-T902 @web
Scenario: Verify user should be able to download statement pdf through 3 months option for Recurrring deposite

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on StatementTab
 Given user is on page RIB_ExistingRD and clicks on Last3Month
 
 
@TestCaseKey=UDB-T903 @web
Scenario: Verify user should be able to download statement pdf through 6 months option for Recurrring deposite

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on StatementTab
 Given user is on page RIB_ExistingRD and clicks on Last6Month
 
 
@TestCaseKey=UDB-T904 @web
Scenario: Verify user should be able to download statement pdf through current financial year option for Recurrring deposite

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on StatementTab
 Given user is on page RIB_ExistingRD and clicks on CurrentFinancialYear
 
 
 
@TestCaseKey=UDB-T905 @web
Scenario: Verify user should be able to download statement pdf through last financial year option for Recurrring deposite

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on StatementTab
 Given user is on page RIB_ExistingRD and clicks on LastFinancialYear

 
@TestCaseKey=UDB-T913 @web
Scenario: Verify that if user entered age of nominee is less than 18 Years

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on AccountNameDropDown
 Given user is on page RIB_RDPage and clicks on SavingAccountSelection
 Given user is on page RIB_RDPage and clicks on RDName 
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 2000 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure3Year
 Given user is on page RIB_RDPage and clicks on SelectTenure3Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2020 and current year is 2025
 
 
@TestCaseKey=UDB-T917 @web
Scenario: Validate if the terms and conditions T&C  document link present on RD closure page is downloadable

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 613763682 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on AccountNameDropDown
 Given user is on page RIB_RDPage and clicks on SavingAccountSelection
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 2000 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure3Year
 Given user is on page RIB_RDPage and clicks on SelectTenure3Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2025
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element SubmitButton
 Then user is on page RIB_RDPage to verify TnC is Displayed
 Given user is on page RIB_RDPage and clicks on TnC
 Then user is on page RIB_RDPage to verify AgreeButton is Displayed
 Given user is on page RIB_RDPage and clicks on AgreeButton
 