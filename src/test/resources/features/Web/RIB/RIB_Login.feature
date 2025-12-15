Feature: Retail Internet banking

@TestCaseKey=UDB-T001 @web
Scenario: Verify that user is able to login into RIB portal using user id and password

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 274309887 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 97dcc6b9deaf9726262dcb4103248c53b0b36d2204c3da5458f5b507bfeafc94 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 
 
@TestCaseKey=UDB-T002 @web
Scenario: Verify that user is able to open an FD

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 274309887 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 97dcc6b9deaf9726262dcb4103248c53b0b36d2204c3da5458f5b507bfeafc94 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddFD
 Given user is on RIB_FDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_FDPage and clicks on FDName
 Given user is on page RIB_FDPage and types VijayTest on FDName
 Given user is on page RIB_FDPage and clicks on DepositAmount
 Given user is on page RIB_FDPage and types 2000 on DepositAmount
 Then user is on page RIB_FDPage scroll to webpage element SelectInterestPayout
 Given user is on page RIB_FDPage and clicks on SelectInterestPayout
 Given user is on page RIB_FDPage and clicks on QuaterlyPeriod
 Then user is on page RIB_FDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_FDPage and clicks on NomineeName
 Given user is on page RIB_FDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_FDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2025
 Then user is on page RIB_FDPage scroll to webpage element ContinueButton
 Then user is on page RIB_FDPage to verify ContinueButton is Displayed
 Given user is on page RIB_FDPage and clicks on ContinueButton
 Then user is on page RIB_FDPage scroll to webpage element SubmitButton
 Given user is on page RIB_FDPage and clicks on TnC
 Given user is on page RIB_FDPage and clicks on AgreeButton
 Then user is on page RIB_FDPage to verify SubmitButton is Displayed
 Given user is on page RIB_FDPage and clicks on SubmitButton
 Given user is on page RIB_FDPage and clicks on TPIN
 Given user is on page RIB_FDPage and types fd2ce65b3e9e4f79b074e2dc3f2010519df2d9cb697c7832f42c309278aa7930 on TPIN
 Given user is on page RIB_FDPage and clicks on ContinueButton
 
 
@TestCaseKey=UDB-T003 @web
Scenario: Verify that user is able to change details of FD in review page

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 274309887 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 97dcc6b9deaf9726262dcb4103248c53b0b36d2204c3da5458f5b507bfeafc94 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddFD
 Given user is on RIB_FDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_FDPage and clicks on FDName
 Given user is on page RIB_FDPage and types VijayTest on FDName
 Given user is on page RIB_FDPage and clicks on DepositAmount
 Given user is on page RIB_FDPage and types 2000 on DepositAmount
 Then user is on page RIB_FDPage scroll to webpage element SelectInterestPayout
 Given user is on page RIB_FDPage and clicks on SelectInterestPayout
 Given user is on page RIB_FDPage and clicks on QuaterlyPeriod
 Then user is on page RIB_FDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_FDPage and clicks on NomineeName
 Given user is on page RIB_FDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_FDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2025
 Then user is on page RIB_FDPage scroll to webpage element ContinueButton
 Then user is on page RIB_FDPage to verify ContinueButton is Displayed
 Given user is on page RIB_FDPage and clicks on ContinueButton
 Given user is on page RIB_FDPage and clicks on ChangeFDDetails
 Then user is on page RIB_FDPage scroll to webpage element 3YearsTenure
 Given user is on page RIB_FDPage and clicks on 3YearsTenure
 Then user is on page RIB_FDPage scroll to webpage element ContinueButton
 Given user is on page RIB_FDPage and clicks on ContinueButton
 
 
@TestCaseKey=UDB-T004 @web
Scenario: Verify that user is able to change details of nominee in review page of FD

 Given user is on page RIB_LoginPage and clicks on LoginUsingPassword
 Given user is on page RIB_LoginPage and types 274309887 on UserID
 Given user is on page RIB_LoginPage and clicks on Password
 Given user is on page RIB_LoginPage and types 97dcc6b9deaf9726262dcb4103248c53b0b36d2204c3da5458f5b507bfeafc94 on Password
 Then user waits for sometime
 Then user waits for sometime
 Given user is on page RIB_LoginPage and clicks on LoginButton
 Then user waits for sometime
 Given user is on page RIB_HomePage and clicks on AddAccount
 Given user is on page RIB_HomePage and clicks on AddFD
 Given user is on RIB_FDPage to check for pending application option and clicks on StartOverButton
 Given user is on page RIB_FDPage and clicks on FDName
 Given user is on page RIB_FDPage and types VijayTest on FDName
 Given user is on page RIB_FDPage and clicks on DepositAmount
 Given user is on page RIB_FDPage and types 2000 on DepositAmount
 Then user is on page RIB_FDPage scroll to webpage element SelectInterestPayout
 Given user is on page RIB_FDPage and clicks on SelectInterestPayout
 Given user is on page RIB_FDPage and clicks on QuaterlyPeriod
 Then user is on page RIB_FDPage scroll to webpage element AddNomineeText
 Given user is on page RIB_FDPage and clicks on NomineeName
 Given user is on page RIB_FDPage and types SupriyaTest on NomineeName
 Given user is on page RIB_FDPage and clicks on DOB
 Given user selects day 12 month Apr year 2001 and current year is 2025
 Then user is on page RIB_FDPage scroll to webpage element ContinueButton
 Then user is on page RIB_FDPage to verify ContinueButton is Displayed
 Given user is on page RIB_FDPage and clicks on ContinueButton
 Then user is on page RIB_FDPage scroll to webpage element ChangeNamineeDetails
 Given user is on page RIB_FDPage and clicks on ChangeNamineeDetails
 Then user is on page RIB_FDPage scroll to webpage element ContinueButton
 Given user is on page RIB_FDPage and clicks on ChangeRelation
 Given user is on page RIB_FDPage and clicks on SelectRelation
 Then user is on page RIB_FDPage to verify ContinueButton is Displayed
 