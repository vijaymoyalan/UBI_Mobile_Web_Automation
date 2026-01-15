Feature: RD Journey for Retail Internet banking

@TestCaseKey=UDB-T005 @web
Scenario: Validate that user should be able to see the Download button inster of share button in RIB Portal as it is has been replaced by Download button

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
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
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
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
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Then user is on page RIB_RDPage to verify ContinueButton is Displayed
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage to verify DepositAmountText is Displayed
 
 
@TestCaseKey=UDB-T10065 @TestCaseKey=UDB-T10071 @web
Scenario: Verify Negative testing for Address field for Nominee

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ChangeNomineeAddress
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user verifies for message on page RIB_RDPage as Please enter Pincode text in placeholder NomineePincodeError
 Then user verifies for message on page RIB_RDPage as Please enter nominee address line text in placeholder NomineeAddress1Error
 Then user verifies for message on page RIB_RDPage as Please enter nominee address line text in placeholder NomineeAddress2Error
 
 
@TestCaseKey=UDB-T10066 @web
Scenario: Verify Negative testing for Age field for Nominee

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Then user is on page RIB_RDPage clears the DOBTextBox
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user verifies for message on page RIB_RDPage as Please enter Nominee text in placeholder DOBErrorMessage
 
 
@TestCaseKey=UDB-T10067 @web
Scenario: Verify Negative testing for Nominee fields Name

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Then user is on page RIB_RDPage clears the NomineeName
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user verifies for message on page RIB_RDPage as Please enter Nominee text in placeholder NomineeNameErrorMessage
 
 
@TestCaseKey=UDB-T10068 @web
Scenario: Verify Negative testing for Nominee fields Name

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Then user is on page RIB_RDPage clears the NomineeRelationTextBox
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user verifies for message on page RIB_RDPage as Please enter Nominee text in placeholder NomineeRelationErrorMessage
 
 @TestCaseKey=UDB-T10070 @web
Scenario: Verify Regular RD Negative testing for Deposit Amount field

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element RDName
 Then user verifies for message on page RIB_RDPage as Deposit amount is required text in placeholder DepositAmountErrorMessage
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 0 on DepositAmount
 Then user verifies for message on page RIB_RDPage as Deposit amount cannot text in placeholder DepositAmountErrorMessage
 Then user is on page RIB_RDPage clears the DepositAmount
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 100 on DepositAmount
 Then user verifies for message on page RIB_RDPage as Deposit amount cannot text in placeholder DepositAmountErrorMessage
 
 
@TestCaseKey=UDB-T10072 @web
Scenario: Verify the Negative scenarios for Custom field Years and MOnths on Tenure screen

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_RDPage and clicks on SelectCustomeTenure
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element SelectCustomeTenure
 Then user verifies for message on page RIB_RDPage as Please enter Months text in placeholder CustomMonthErrorMessage
 Given user is on page RIB_RDPage and types 5 on CustomMonthTextBox
 Then user verifies for message on page RIB_RDPage as Tenure selected is less text in placeholder CustomMonthErrorMessage
 
 
@TestCaseKey=UDB-T1016 @web
Scenario: Verify that ETB customers aged between 18 to 30 should not be allowed to open recurring deposit amount of below 500

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_RDPage and types 100 on DepositAmount
  Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element RDName
 Then user verifies for message on page RIB_RDPage as Deposit amount cannot text in placeholder DepositAmountErrorMessage
 
 
@TestCaseKey=UDB-T1020 @web
Scenario: Verify that ETB customers age between 18 to 30 should open recurring deposit amount of above Max limit  rs 99L

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_RDPage and types 10000000 on DepositAmount
  Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element RDName
 Then user verifies for message on page RIB_RDPage as Deposit amount cannot text in placeholder DepositAmountErrorMessage
 
@TestCaseKey=UDB-T1026 @TestCaseKey=UDB-T942 @web
Scenario: Verify that ETB customers age within 18 to 30 should open recurring deposit along with nominee details

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Then user is on page RIB_RDPage to verify ContinueButton is Displayed
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element TnC
 Given user is on page RIB_RDPage and clicks on TnC
 Given user is on page RIB_RDPage and clicks on AgreeButton
 Then user is on page RIB_RDPage to verify SubmitButton is Displayed
 Given user is on page RIB_RDPage and clicks on SubmitButton
 Given user is on page RIB_RDPage and clicks on TPIN
 Given user is on page RIB_RDPage and types 123456 on TPIN
 Given user is on page RIB_RDPage and clicks on ContinueButton
 
 
@TestCaseKey=UDB-T1043 @web
Scenario: Verify that the address of the nominee has been changed successfully

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
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
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on DetailsTab
 Then user verifies for message on page RIB_ExistingRD as Customer Information text in placeholder CustomerInfoSection
 Then user is on page RIB_ExistingRD scroll to webpage element AccountInfoSection
 Then user verifies for message on page RIB_ExistingRD as Account Information text in placeholder AccountInfoSection
 Then user is on page RIB_ExistingRD scroll to webpage element NomineeInfoSection
 Then user verifies for message on page RIB_ExistingRD as Nominee Information text in placeholder NomineeInfoSection
 
 
@TestCaseKey=UDB-T68632 @web
Scenario: Verify Account information section under Details tab of existing RD

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on DetailsTab
 Then user is on page RIB_ExistingRD scroll to webpage element AccountInfoSection
 Then user verifies for message on page RIB_ExistingRD as Account Information text in placeholder AccountInfoSection
 Then user is on page RIB_ExistingRD to verify CountOfContributionText is Displayed
 Then user is on page RIB_ExistingRD to verify MaturityDateText is Displayed
 Then user is on page RIB_ExistingRD to verify FormText is Displayed
 Then user is on page RIB_ExistingRD to verify RDAccountTypeText is Displayed
 
 
@TestCaseKey=UDB-T68633 @web
Scenario: Verify data in Account information section under Details tab of existing RD

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on DetailsTab
 Then user is on page RIB_ExistingRD scroll to webpage element AccountInfoSection
 Then user verifies for message on page RIB_ExistingRD as Account Information text in placeholder AccountInfoSection
 Then user is on page RIB_ExistingRD to verify CountOfContributionValue is Displayed
 Then user is on page RIB_ExistingRD to verify MaturityDateValue is Displayed
 Then user is on page RIB_ExistingRD to verify FormValue is Displayed
 Then user is on page RIB_ExistingRD to verify RDAccountTypeValue is Displayed
 
@TestCaseKey=UDB-T68636  @TestCaseKey=UDB-T68637 @web
Scenario: Verify Branch Information section under Details tab of existing RD

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on StatementTab
 Given user is on page RIB_ExistingRD and clicks on CustomStartDate
 Given user selects day 4 month Dec year 2024 and current year is 2026
 Given user is on page RIB_ExistingRD and clicks on CustomEndDate
 Given user selects day 1 month Dec year 2025 and current year is 2026
 

@TestCaseKey=UDB-T900 @web
Scenario: Verify user should be able to download statement pdf through current month option for Recurrring deposite

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2020 and current year is 2026
 
 
@TestCaseKey=UDB-T917 @web
Scenario: Validate if the terms and conditions T&C  document link present on RD closure page is downloadable

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element SubmitButton
 Then user is on page RIB_RDPage to verify TnC is Displayed
 Given user is on page RIB_RDPage and clicks on TnC
 Then user is on page RIB_RDPage to verify AgreeButton is Displayed
 Given user is on page RIB_RDPage and clicks on AgreeButton
 
 
@TestCaseKey=UDB-T918 @web
Scenario: Verify URL redirection for RD interest rate on website on  clicking of View Rate Table on RD landing page

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on ViewRateCard
 Then user is on page RIB_RDPage to verify InterestRateCard is Displayed
 Then user is on page RIB_RDPage scroll to webpage element BottomPage
 Then user is on page RIB_RDPage to verify BottomPage is Displayed
 
 
@TestCaseKey=UDB-T932 @web
Scenario: Validate Customer can download RD certificate/RD advice from summary page after RD account opening

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Then user is on page RIB_RDPage to verify ContinueButton is Displayed
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element TnC
 Given user is on page RIB_RDPage and clicks on TnC
 Given user is on page RIB_RDPage and clicks on AgreeButton
 Then user is on page RIB_RDPage to verify SubmitButton is Displayed
 Given user is on page RIB_RDPage and clicks on SubmitButton
 Given user is on page RIB_RDPage and clicks on TPIN
 Given user is on page RIB_RDPage and types 123456 on TPIN
 Given user is on page RIB_RDPage and clicks on ContinueButton
 
 
@TestCaseKey=UDB-T936 @web
Scenario: Validate the Progress bar to be available for all the RD account onboarding journeys

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Then user is on page RIB_RDPage to verify DetailsPageProgress is Displayed
 Given user is on page RIB_RDPage and clicks on AccountNameDropDown
 Given user is on page RIB_RDPage and clicks on SavingAccountSelection
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types VijayTest on RDName
 Given user is on page RIB_RDPage and clicks on DepositAmount
 Given user is on page RIB_RDPage and types 2000 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage to verify ReviewPageProgress is Displayed
 Then user is on page RIB_RDPage scroll to webpage element TnC
 
 
@TestCaseKey=UDB-T937 @web
Scenario: Validate that T&C toggle button should be pre-selected as 'not accepted' on the review screen

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element TnC
 Then user is on page RIB_RDPage to verify SubmitButton is Disabled
 
 
@TestCaseKey=UDB-T941 @web
Scenario: Verify that ETB customers is trying to open open recurring deposit when tenure is selected as custom with maximum value

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectCustomeTenure
 Given user is on page RIB_RDPage and clicks on SelectCustomeTenure
 Given user is on page RIB_RDPage and types 110 on CustomMonthTextBox
 Then user is on page RIB_RDPage scroll to webpage element TotalInterestPayout
 Then user is on page RIB_RDPage to verify TotalMaturityValue is Displayed
 Then user is on page RIB_RDPage to verify TotalInterestPayout is Displayed
 
 
@TestCaseKey=UDB-T943 @web
Scenario: Verify that SA nominee details should be displayed by default

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on AccountNameDropDown
 Given user is on page RIB_RDPage and clicks on SavingAccountSelection
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Then user is on page RIB_RDPage to verify NomineeName is Displayed
 Then user verifies for message on page RIB_RDPage as ANAND JOSEPH MOYALAN text in placeholder NomineeName
 
 
@TestCaseKey=UDB-T944 @web
Scenario: Verify that CA nominee details should be displayed by default

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on AccountNameDropDown
 Given user is on page RIB_RDPage and clicks on CurrentAccountSelection
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Then user is on page RIB_RDPage to verify NomineeName is Displayed
 Then user verifies for message on page RIB_RDPage as ANAND JOSEPH MOYALAN text in placeholder NomineeName
 
 
@TestCaseKey=UDB-T945 @web
Scenario: Verify that OD nominee details should be displayed by default

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on AccountNameDropDown
 Given user is on page RIB_RDPage and clicks on OverdraftAccountSelection
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Then user is on page RIB_RDPage to verify NomineeName is Displayed
 Then user verifies for message on page RIB_RDPage as ANAND JOSEPH MOYALAN text in placeholder NomineeName
 
 
 @TestCaseKey=UDB-T946 @web
Scenario: Verify that user should able to change/edit SA nominee details

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on AccountNameDropDown
 Given user is on page RIB_RDPage and clicks on SavingAccountSelection
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on ChangeRelation
 Given user is on page RIB_RDPage and clicks on SelectRelation
 
 
@TestCaseKey=UDB-T947 @web
Scenario: Verify that user should able to change/edit CA nominee details

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on AccountNameDropDown
 Given user is on page RIB_RDPage and clicks on CurrentAccountSelection
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on ChangeRelation
 Given user is on page RIB_RDPage and clicks on SelectRelation
 
 
@TestCaseKey=UDB-T948 @web
Scenario: Verify that user should able to change/edit OD nominee details

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_RDPage and clicks on AccountNameDropDown
 Given user is on page RIB_RDPage and clicks on OverdraftAccountSelection
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on ChangeRelation
 Given user is on page RIB_RDPage and clicks on SelectRelation
 
 
@TestCaseKey=UDB-T9558  @TestCaseKey=UDB-T988 @web
Scenario: Validate the ETB User want to open the RD Account with 1 Year as tenure for age is between 18 to 60  (Below 60)

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_RDPage and types 500 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure1Year
 Given user is on page RIB_RDPage and clicks on SelectTenure1Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Then user is on page RIB_RDPage to verify ContinueButton is Displayed
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element TnC
 Given user is on page RIB_RDPage and clicks on TnC
 Given user is on page RIB_RDPage and clicks on AgreeButton
 Then user is on page RIB_RDPage to verify SubmitButton is Displayed
 Given user is on page RIB_RDPage and clicks on SubmitButton
 Given user is on page RIB_RDPage and clicks on TPIN
 Given user is on page RIB_RDPage and types 123456 on TPIN
 Given user is on page RIB_RDPage and clicks on ContinueButton
 
 
@TestCaseKey=UDB-T9559 @TestCaseKey=UDB-T992 @web
Scenario: Validate the ETB User want to open the RD Account with 2 Year as tenure for age is between 18 to 60 (Below 60)

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_RDPage and types 500 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Then user is on page RIB_RDPage to verify ContinueButton is Displayed
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element TnC
 Given user is on page RIB_RDPage and clicks on TnC
 Given user is on page RIB_RDPage and clicks on AgreeButton
 Then user is on page RIB_RDPage to verify SubmitButton is Displayed
 Given user is on page RIB_RDPage and clicks on SubmitButton
 Given user is on page RIB_RDPage and clicks on TPIN
 Given user is on page RIB_RDPage and types 123456 on TPIN
 Given user is on page RIB_RDPage and clicks on ContinueButton
 
 
@TestCaseKey=UDB-T957 @web
Scenario: Validate the ETB user open the RD Account and on Review page user see the "Submit" button is disabled until user accept the "Terms & Conditions"

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element TnC
 Then user is on page RIB_RDPage to verify SubmitButton is Disabled
 
 
@TestCaseKey=UDB-T958 @web
Scenario: Validate the ETB user open the RD Account and on Review page user see the "Submit" button is enabled once "Terms & Condition" is accepted

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element TnC
 Given user is on page RIB_RDPage and clicks on TnC
 Given user is on page RIB_RDPage and clicks on AgreeButton
 Then user is on page RIB_RDPage to verify SubmitButton is Enabled
 
 
@TestCaseKey=UDB-T959 @web
Scenario: Validate the ETB user open the RD Account and on Review page user click on "Back" button to land on pervious page for editing the information

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element BackButton
 Given user is on page RIB_RDPage and clicks on BackButton
 Then user is on page RIB_RDPage scroll to webpage element RDName
 
 
@TestCaseKey=UDB-T960 @web
Scenario: Validate the ETB user open the RD Account and on Review page user click on "Back" button to land on pervious page to do some changes on pre-filled customer details

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element BackButton
 Given user is on page RIB_RDPage and clicks on BackButton
 Then user is on page RIB_RDPage scroll to webpage element RDName
 Given user is on page RIB_RDPage and clicks on RDName
 Given user is on page RIB_RDPage and types PankajKumar on RDName
 
 
@TestCaseKey=UDB-T970  @TestCaseKey=UDB-T973 @web
Scenario: Validate ETB user with age between 18 to 30 opens the RD account successfully

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Then user is on page RIB_RDPage to verify ContinueButton is Displayed
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element TnC
 Given user is on page RIB_RDPage and clicks on TnC
 Given user is on page RIB_RDPage and clicks on AgreeButton
 Then user is on page RIB_RDPage to verify SubmitButton is Displayed
 Given user is on page RIB_RDPage and clicks on SubmitButton
 Given user is on page RIB_RDPage and clicks on TPIN
 Given user is on page RIB_RDPage and types 123456 on TPIN
 Given user is on page RIB_RDPage and clicks on ContinueButton
 
 
@TestCaseKey=UDB-T981 @TestCaseKey=UDB-T984 @web
Scenario: Verify that ETB customers age between 18 to 30 should open recurring deposit when tenure is selected as popular with RD amount minimum rs 500

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_RDPage and types 500 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Given user is on page RIB_RDPage and clicks on SelectTenure6Months
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Then user is on page RIB_RDPage to verify ContinueButton is Displayed
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element TnC
 Given user is on page RIB_RDPage and clicks on TnC
 Given user is on page RIB_RDPage and clicks on AgreeButton
 Then user is on page RIB_RDPage to verify SubmitButton is Displayed
 Given user is on page RIB_RDPage and clicks on SubmitButton
 Given user is on page RIB_RDPage and clicks on TPIN
 Given user is on page RIB_RDPage and types 123456 on TPIN
 Given user is on page RIB_RDPage and clicks on ContinueButton
 
 
@TestCaseKey=UDB-T995 @web
Scenario: Verify that ETB customers between age 18 to 30 should open recurring deposit when tenure is selected as custom with RD amount minimum rs 500

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_RDPage and types 500 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element SelectCustomeTenure
 Given user is on page RIB_RDPage and clicks on SelectCustomeTenure
 Given user is on page RIB_RDPage and types 110 on CustomMonthTextBox
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Then user is on page RIB_RDPage to verify ContinueButton is Displayed
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element TnC
 Given user is on page RIB_RDPage and clicks on TnC
 Given user is on page RIB_RDPage and clicks on AgreeButton
 Then user is on page RIB_RDPage to verify SubmitButton is Displayed
 Given user is on page RIB_RDPage and clicks on SubmitButton
 Given user is on page RIB_RDPage and clicks on TPIN
 Given user is on page RIB_RDPage and types 123456 on TPIN
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user verifies for message on page RIB_RDPage as Your Recurring Deposit Account text in placeholder SuccessMessage
 Then user is on page RIB_RDPage to verify RDAccountNo is Displayed
 Then user is on page RIB_RDPage scroll to webpage element HomeButton
 Then user is on page RIB_RDPage to verify SubmitButton is HomeButton
 
 
@TestCaseKey=UDB-T68642 @web
Scenario: Verify back button on Generate button on page TDS Certificate for Depost

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_ExistingRD and clicks on DownloadTDS
 Given user is on page RIB_ExistingRD and clicks on BackIcon
 
@TestCaseKey=UDB-T68643 @web
Scenario: Verify user selects Year from drop down and clicks on Generate button  on page TDS Certificate for Depost

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_ExistingRD and clicks on DownloadTDS
 Given user is on page RIB_ExistingRD and clicks on TDSFinancialYrOption
 Given user is on page RIB_ExistingRD and clicks on TDSFY25-26
 Given user is on page RIB_ExistingRD and clicks on GenerateButton
 
 
@TestCaseKey=UDB-T68644 @TestCaseKey=UDB-T68645 @web
Scenario: Verify Financial year field  on page TDS Certificate for Depost

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_ExistingRD and clicks on DownloadTDS
 Given user is on page RIB_ExistingRD and clicks on TDSFinancialYrOption
 Then user verifies for message on page RIB_ExistingRD as FY 25-26 text in placeholder TDSFY25-26
 Then user verifies for message on page RIB_ExistingRD as FY 24-25 text in placeholder TDSFY24-25
 Then user verifies for message on page RIB_ExistingRD as FY 23-24 text in placeholder TDSFY23-24
 

@TestCaseKey=UDB-T68646 @web
Scenario: Verify blue chip shown on page TDS Certificate for Depost

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_ExistingRD and clicks on DownloadTDS
 Given user is on page RIB_ExistingRD and clicks on TDSFinancialYrOption
 Given user is on page RIB_ExistingRD and clicks on TDSFY25-26
 Given user is on page RIB_ExistingRD and clicks on GenerateButton
 Then user is on page RIB_ExistingRD to verify AccountName is Displayed
 Then user is on page RIB_ExistingRD to verify AccountNumber is Displayed
 
 
@TestCaseKey=UDB-T68648 @web
Scenario: Verify values show  in field of blue chip shown on page TDS Certificate for Depost  if interest is not credited
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_ExistingRD and clicks on DownloadTDS
 Given user is on page RIB_ExistingRD and clicks on GenerateButton
 Then user is on page RIB_DownloadTDSCertPage verifies amount in InterestAmountDebit
 And user is on page RIB_DownloadTDSCertPage verifies amount in InterestAmountCredit

@TestCaseKey=UDB-T68649 @web
Scenario: Verify share button on page TDS Certificate for Depost  if interest is not credited
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_ExistingRD and clicks on DownloadTDS
 Given user is on page RIB_ExistingRD and clicks on GenerateButton
 Given user is on page RIB_DownloadTDSCertPage and clicks on DownloadButton
 
 @TestCaseKey=UDB-T68651 @web
Scenario: Verify Download button on page TDS Certificate for Depost  if interest is not credited
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
  Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_ExistingRD and clicks on DownloadTDS
 Given user is on page RIB_ExistingRD and clicks on GenerateButton
 Given user is on page RIB_DownloadTDSCertPage and clicks on DepositTabViewMore
 Given user is on page RIB_DownloadTDSCertPage and clicks on DownloadButton
 
  @TestCaseKey=UDB-T68652 @web
Scenario: Verify Downloaded TDS Certificate is password protected
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
  Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_ExistingRD and clicks on DownloadTDS
 Given user is on page RIB_ExistingRD and clicks on GenerateButton 
Given user is on page RIB_DownloadTDSCertPage and clicks on DownloadButton

@TestCaseKey=UDB-T68653 @web
Scenario:Verify data in Downloaded TDS Certificate
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_ExistingRD and clicks on DownloadTDS
 Given user is on page RIB_ExistingRD and clicks on GenerateButton 
 Given user is on page RIB_DownloadTDSCertPage and clicks on DownloadButton


@TestCaseKey=UDB-T68654 @web
Scenario: Verify Interest Certificate option  under Request tab
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
  
@TestCaseKey=UDB-T68655 @web
Scenario: Verify page Interest Certificate for Deposit
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Then user is on page RIB_InterestCertificatePage to verify CurrentFinancialYear is Displayed
 Then user is on page RIB_InterestCertificatePage to verify GenerateButtoniousFinancialYear is Displayed
 Then user is on page RIB_InterestCertificatePage to verify Custom is Displayed
  
  
@TestCaseKey=UDB-T68657 @web
Scenario: Verify user selects Current Financial year and clicks on  Generate button  on page Interest Certificate for Deposit
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on CurrentFinancialYear
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
 Then user is on page RIB_InterestCertificatePage to verify FinancialYear is Displayed
 Then user is on page RIB_InterestCertificatePage to verify DownloadButton is Displayed
 Then user is on page RIB_InterestCertificatePage to verify HomeButton is Displayed
 
 @TestCaseKey=UDB-T68660 @web
Scenario: Verify blue chip shown on  page Interest Certificate for Deposit (Current Financial year)
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on CurrentFinancialYear
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
 Then user is on page RIB_InterestCertificatePage to verify AccountName is Displayed
 Then user is on page RIB_InterestCertificatePage to verify AccountNumber is Displayed
 Then user is on page RIB_InterestCertificatePage to verify InterestAmountDebit is Displayed
 Then user is on page RIB_InterestCertificatePage to verify InterestAmountCredit is Displayed
 
@TestCaseKey=UDB-T68662 @web
Scenario: Verify values show  in field of blue chip shown on  page Interest Certificate for Deposit (Current Financial year),  if interest is not credited
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on CurrentFinancialYear
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
 Then user is on page RIB_InterestCertificatePage verifies amount in InterestAmountDebit
 And user is on page RIB_InterestCertificatePage verifies amount in InterestAmountCredit


@TestCaseKey=UDB-T68668 @web
Scenario: Verify user selects GenerateButtonious Financial year and clicks on  Generate button  on page Interest Certificate for Deposit
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButtoniousFinancialYear
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
 Then user is on page RIB_InterestCertificatePage to verify FinancialYear is Displayed
 Then user is on page RIB_InterestCertificatePage to verify DownloadButton is Displayed
 Then user is on page RIB_InterestCertificatePage to verify HomeButton is Displayed
 
@TestCaseKey=UDB-T68669 @web
Scenario: Verify Financial year field  on  page Interest Certificate for Deposit (GenerateButtonious Financial year)
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on PreviousFinancialYear
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
 
 
@TestCaseKey=UDB-T68671 @web
Scenario: Verify blue chip shown on  page Interest Certificate for Deposit (Previous Financial year)
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on PreviousFinancialYear
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
 Then user is on page RIB_InterestCertificatePage to verify AccountName is Displayed
 Then user is on page RIB_InterestCertificatePage to verify AccountNumber is Displayed
 Then user is on page RIB_InterestCertificatePage to verify InterestAmountDebit is Displayed
 Then user is on page RIB_InterestCertificatePage to verify InterestAmountCredit is Displayed
 
@TestCaseKey=UDB-T68673 @web
Scenario: Verify values show  in field of blue chip shown on  page Interest Certificate for Deposit (Previous Financial year),  if interest is not credited
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on PreviousFinancialYear
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
 Then user is on page RIB_InterestCertificatePage verifies amount in InterestAmountDebit
 And user is on page RIB_InterestCertificatePage verifies amount in InterestAmountCredit

@TestCaseKey=UDB-T68676 @web
Scenario:Verify Download button on  page Interest Certificate for Deposit (Previous Financial year),  if interest is not credited
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on PreviousFinancialYear
 Then user is on page RIB_InterestCertificatePage to verify RIB_InterestCertificatn is Displayed
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
 
@TestCaseKey=UDB-T68679 @web
Scenario:Verify Custom field on page Interest Certificate for Deposit
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on CustomDate
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
 
@TestCaseKey=UDB-T68680 @web
Scenario:Verify user can manualy enter values in Custom field on page Interest Certificate for Deposit
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on CustomDate
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
 
@TestCaseKey=UDB-T68681 @web
Scenario:Verify Custom field allows user to select max 1 year dates
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on CustomDate
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
 
 
 
@TestCaseKey=UDB-T68682 @web
Scenario: Verify user selects Custom year and clicks on  Generate button  on page Interest Certificate for Deposit
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on CustomDate
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
 Then user is on page RIB_InterestCertificatePage to verify FinancialYear is Displayed
 Then user is on page RIB_InterestCertificatePage to verify DownloadButton is Displayed
 Then user is on page RIB_InterestCertificatePage to verify HomeButton is Displayed
 
@TestCaseKey=UDB-T68679 @web
Scenario: Verify Custom field on page Interest Certificate for Deposit
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on CustomDate
 Then user is on page RIB_InterestCertificatePage to verify StartDate is NotClickable
 Then user is on page RIB_InterestCertificatePage to verify EndDate is NotClickable
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
  
@TestCaseKey=UDB-T68683 @web
Scenario: Verify Financial year field  on  page Interest Certificate for Deposit (Custom year)
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on CustomDate
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
  
@TestCaseKey=UDB-T68684 @web
Scenario: Verify value in Financial year field  on  page Interest Certificate for Deposit (Custom year)
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on CustomDate
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
 Then user is on page RIB_InterestCertificatePage to verify StartDate is Displayed
 Then user is on page RIB_InterestCertificatePage to verify EndDate is Displayed
 
@TestCaseKey=UDB-T68685 @web
Scenario: Verify blue chip shown on  page Interest Certificate for Deposit (Custom year)
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on CustomDate
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
 Then user is on page RIB_InterestCertificatePage to verify AccountName is Displayed
 Then user is on page RIB_InterestCertificatePage to verify AccountNumber is Displayed
 Then user is on page RIB_InterestCertificatePage to verify InterestAmountDebit is Displayed
 Then user is on page RIB_InterestCertificatePage to verify InterestAmountCredit is Displayed
 
 
@TestCaseKey=UDB-T68687 @web
Scenario: Verify values show  in field of blue chip shown on  page Interest Certificate for Deposit (Custom year),  if interest is not credited
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on CustomDate
 Given user is on page RIB_InterestCertificatePage and clicks on GenerateButton
 Then user is on page RIB_InterestCertificatePage verifies amount in InterestAmountDebit
 And user is on page RIB_InterestCertificatePage verifies amount in InterestAmountCredit

@TestCaseKey=UDB-T68690 @web
Scenario:Verify Download button on  page Interest Certificate for Deposit (Custom year),  if interest is not credited
 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD  
 Given user is on page RIB_ExistingRD and clicks on RequestTab
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadInterestCertificate
 Given user is on page RIB_InterestCertificatePage and clicks on CustomDate
 Given user is on page RIB_InterestCertificatePage and clicks on DownloadButton
 

@TestCaseKey=UDB-T1032 @web
Scenario: Verify user age between 18 to 30 should be able to view details of RD balance and interest earned.

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 #Then user waits for sometime
 #Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on DepositTabViewMore
 Given user is on page RIB_HomePage and clicks on RDTab
 Given user is on page RIB_HomePage and clicks on ExistingRD
 Given user is on page RIB_ExistingRD and clicks on DetailsTab
 Then user is on page RIB_ExistingRD to verify RDAccountBalance is Displayed
 Then user is on page RIB_ExistingRD to verify RDInterestRate is Displayed
 
 
@TestCaseKey=UDB-T961 @web
Scenario: Validate on RD landing Page  mandatory fields are available

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddRD
 Given user is on RIB_RDPage to check for pending application option and clicks on StartOverButton
 Then user verifies for message on page RIB_RDPage as Account Name text in placeholder AccountSelectionLabel
 Then user verifies for message on page RIB_RDPage as Name your Recurring Deposit text in placeholder CustomerNameLabel
 Then user verifies for message on page RIB_RDPage as Deposit Amount text in placeholder DepositAmountLabel
 Then user is on page RIB_RDPage scroll to webpage element TenureCustomeLabel
 Then user verifies for message on page RIB_RDPage as Custom text in placeholder TenureCustomeLabel
 Then user is on page RIB_RDPage scroll to webpage element InterestPayoutLabel
 Then user verifies for message on page RIB_RDPage as Total Maturity Value text in placeholder MaturityValueLabel
 Then user verifies for message on page RIB_RDPage as Total Interest Payout text in placeholder InterestPayoutLabel
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeLabel
 Then user verifies for message on page RIB_RDPage as Nominee text in placeholder AddNomineeLabel
 
 
@TestCaseKey=UDB-T962 @TestCaseKey=UDB-T963 @web
Scenario: Verify on RD Account Opening Success Page below fields are available and are not editable

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and Enters username UserID and password Password
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
 Given user is on page RIB_RDPage and types 500 on DepositAmount
 Then user is on page RIB_RDPage scroll to webpage element SelectTenure2Year
 Then user is on page RIB_RDPage scroll to webpage element SelectCustomeTenure
 Given user is on page RIB_RDPage and clicks on SelectCustomeTenure
 Given user is on page RIB_RDPage and types 110 on CustomMonthTextBox
 Then user is on page RIB_RDPage scroll to webpage element ScheduleTransferDate
 Given user is on page RIB_RDPage and clicks on ScheduleTransferDate
 Then user selects yesterday's date
 Then user is on page RIB_RDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_RDPage and clicks on NomineeName
 Given user is on page RIB_RDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_RDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2026
 Then user is on page RIB_RDPage scroll to webpage element ContinueButton
 Then user is on page RIB_RDPage to verify ContinueButton is Displayed
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user is on page RIB_RDPage scroll to webpage element TnC
 Given user is on page RIB_RDPage and clicks on TnC
 Given user is on page RIB_RDPage and clicks on AgreeButton
 Then user is on page RIB_RDPage to verify SubmitButton is Displayed
 Given user is on page RIB_RDPage and clicks on SubmitButton
 Given user is on page RIB_RDPage and clicks on TPIN
 Given user is on page RIB_RDPage and types 123456 on TPIN
 Given user is on page RIB_RDPage and clicks on ContinueButton
 Then user verifies for message on page RIB_RDPage as Your Recurring Deposit Account text in placeholder SuccessMessage
 Then user is on page RIB_RDPage to verify RDAccountNo is Displayed
 Then user is on page RIB_RDPage to verify DepositAmountValue is Displayed
 Then user is on page RIB_RDPage to verify TenureValue is Displayed
 Then user is on page RIB_RDPage to verify InterestRateValue is Displayed
 Then user is on page RIB_RDPage to verify MaturityAmountValue is Displayed
 Then user is on page RIB_RDPage to verify MaturityDateValue is Displayed
 Then user is on page RIB_RDPage to verify SIDateValue is Displayed
 Then user is on page RIB_RDPage scroll to webpage element HomeButton
 Then user is on page RIB_RDPage to verify HomeButton is Displayed