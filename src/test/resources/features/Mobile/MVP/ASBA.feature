Feature: Mobile Automation of ASBA
#Author: Dipesh Titirmare
################################################################################

@Test-T0001 @googlepixel
Scenario: Entry Ponit for ASBA
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton



@Test-T0002 @googlepixel
Scenario: Validate that ETB user would able to see the IPO(ASBA) Under Investment Section.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Then user verifies text on page ASBAPage is IPO (ASBA) on IPOASBAText
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton


@Test-T0003 @googlepixel
Scenario: Validate that ETB User can be able to see all ongoing IPOs on IPO(ASBA) landing screen. 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Then user verifies text on page ASBAPage is EQUITAS HOLDINGS LIMITED on EQUITASLIMITEDTEXT
Given user clicks with cordinate 84 202
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton

@Test-T0004 @googlepixel
Scenario: Validate that upon click of Upcoming IPO it should show all Upcoming IPO

Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on UpcomingIPO
Then user verifies text on page ASBAPage is orientech on orientechText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton



@Test-T0005 @googlepixel
Scenario: Validate that upon click on Ongoing  IPO tab it should show all Ongoing  IPO's.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Then user verifies text on page ASBAPage is EQUITAS HOLDINGS LIMITED on EQUITASLIMITEDTEXT
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton

@Test-T0006 @RedmiNote10A
Scenario: Validate that an ETB user can see the search bar on the IPO (ASBA) landing page for searching ongoing or upcoming IPOs based on alphabetical order or the name of the IPO.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user clicks with cordinate 660 1182
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page ASBAPage clicks on SearchBox
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton


@Test-T0007 @googlepixel
Scenario: Validate that user would be able to search the IPOs by entering the Alphabets or not
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page ASBAPage clicks on SearchBox
When user is on page ASBAPage and types Equitas on SearchBox
Given user is on page ASBAPage clicks on UpcomingIPO
When user is on page ASBAPage and types ABC on SearchBox
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton



@Test-T0008 @googlepixel
Scenario: Validate that user would be able to search the IPOs by entering the Numeric digits or not
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page ASBAPage clicks on SearchBox
When user is on page ASBAPage and types Equitas on SearchBox
Given user is on page ASBAPage clicks on UpcomingIPO
When user is on page ASBAPage and types ABC on SearchBox
When user is on page ASBAPage and types Equitas on SearchBox
When user is on page ASBAPage and types 1234 on SearchBox
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton



@Test-T0009 @googlepixel
Scenario: Validate that user would be able to search the IPOs by entering the special character or not
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page ASBAPage clicks on SearchBox
When user is on page ASBAPage and types Equitas on SearchBox
Given user is on page ASBAPage clicks on UpcomingIPO
When user is on page ASBAPage and types !@$%^ on SearchBox
When user is on page ASBAPage and types 1234 on SearchBox
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton



@Test-T0010 @googlepixel
Scenario: Validate that upon click of Upcoming IPO it should show all Upcoming IPO's.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on UpcomingIPO
Then user verifies text on page ASBAPage is orientech on orientechText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton


@Test-T0011 @googlepixel
Scenario: Validate that user would be able to see 2 button on warning popup are 1) Cancel 2) Add Demat
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page ASBAPage is Add Demat Account on AddDematWarningPopupText
Then user verifies text on page ASBAPage is Cancel on CancelText
Then user verifies text on page ASBAPage is Add Demat on AddDematText
Given user is on page ASBAPage clicks on CancelButtonPopup
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton


@Test-T0012 @googlepixel
Scenario: Validate that if User don't want to add the demat acocount then click on Cancel "Button" and will be on redirect to Ipo Details page .
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page ASBAPage is Add Demat Account on AddDematWarningPopupText
Then user verifies text on page ASBAPage is Cancel on CancelText
Given user is on page ASBAPage clicks on CancelButtonPopup
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton


@Test-T0013 @googlepixel
Scenario: Validate that upon click of "Add Demat" Acount "Button" it has to redirect to Add demat accounts screen if Demat Account not already added.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page ASBAPage is Add Demat Account on AddDematWarningPopupText
Then user verifies text on page ASBAPage is Add Demat on AddDematText
Given user is on page ASBAPage clicks on AddDematButtonPopup
Then user verifies text on page ASBAPage is Depository Type on DepositoryType
Given user clicks with cordinate 72 201
Then user verifies text on page ASBAPage is ABC India Ltd on ABCIPOText
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton



@Test-T0014 @googlepixel
Scenario: Validate that User would get redirect to Add demat account page after click on "Add Demat" button from the Popup.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page ASBAPage is Add Demat Account on AddDematWarningPopupText
Then user verifies text on page ASBAPage is Add Demat on AddDematText
Given user is on page ASBAPage clicks on AddDematButtonPopup
Then user verifies text on page AddDematPage is Depository Type on DepositoryType
Given user clicks with cordinate 72 201
Then user verifies text on page ASBAPage is ABC India Ltd on ABCIPOText
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton

@Test-T0015 @googlepixel
Scenario: Validate that user would able to select the depository type as CDSL.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page ASBAPage is Add Demat Account on AddDematWarningPopupText
Given user is on page ASBAPage clicks on AddDematButtonPopup
Then user verifies text on page ASBAPage is Depository Type on DepositoryType
Given user is on page ASBAPage clicks on CDSLTAB
Given user clicks with cordinate 72 201
Then user verifies text on page ASBAPage is ABC India Ltd on ABCIPOText
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton



@Test-T0016 @googlepixel
Scenario: Validate that User would be able to click on NSDL Tab from the Add Demat Account page.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page ASBAPage is Add Demat Account on AddDematWarningPopupText
Given user is on page ASBAPage clicks on AddDematButtonPopup
Then user verifies text on page ASBAPage is Depository Type on DepositoryType
Given user is on page ASBAPage clicks on CDSLTAB
Given user is on page ASBAPage clicks on NSDLTAB
Given user clicks with cordinate 72 201
Then user verifies text on page ASBAPage is ABC India Ltd on ABCIPOText
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton


@Test-T0017 @googlepixel
Scenario: Validate that Digital DP ID field Text box would accept only "16 digit DP ID" not  more than 16 digit or less than 16 digit.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page ASBAPage is Add Demat Account on AddDematWarningPopupText
Given user is on page ASBAPage clicks on AddDematButtonPopup
Then user verifies text on page AddDematPage is Depository Type on DepositoryType
Given user is on page AddDematPage clicks on CDSLTAB
Then user verifies text on page AddDematPage is Account Details on AccountDetialsText
Given user is on page AddDematPage clicks on Enter16DigitDpId
When user is on page AddDematPage and types 2233445566776543 on Enter16DigitDpId
Then user verifies text on page AddDematPage is PAN No.  on PanNoTitleText
Given user is at page AddDematPage if element is disabled clicks on PanNoTitleText
#Given user is on page AddDematPage clicks on PanNoVeifyText
When user is on page AddDematPage and types Mobile Automation on NickNameEnterField
Then user verifies text on page AddDematPage is Add Account on AddAccountButton
Given user is on page AddDematPage clicks on CheckBoxClick
Then user verifies text on page AddDematPage is Terms & Conditions on Terms&ConditionText
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on DownloadT&CButton
#Given user is on page AddDematPage clicks on AllowPermission
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on IAcceptButton
Then user verifies text on page AddDematPage is Account Details on AccountDetialsText
Given user is on page AddDematPage clicks on AddAccountButton
Then user verifies text on page ASBAPage is ABC India Ltd on ABCIPOText
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0018 @googlepixel
Scenario: Validate that ETB user should be able to delete the Already added demat account by clicking on "Delete Demat Account" button from Your Account page.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page ASBAPage clicks on ManageHyperlink
Then user verifies text on page ASBAPage is Your Demat Accounts on YourDematAccountText
Given user is on page AddDematPage clicks on AlreadyAddedDematArrow
Then user verifies text on page AddDematPage is Delete Demat Account on DeleteDematAccountText
Given user is on page AddDematPage clicks on DeleteDematAccountText
#Then user verifies text on page AddDematPage is Enter your Transaction PIN on EnterYourTransactionPINText
Given user is on page AddDematPage clicks on TPIN
When user is on page AddDematPage and types 0852 on TPIN
Given user is on page AddDematPage clicks on TPINContinue
Then user verifies text on page AddDematPage is Depository Type on DepositoryType
Given user clicks with cordinate 72 201
Then user verifies text on page ASBAPage is Your Demat Accounts on YourDematAccountText
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0019 @googlepixel
Scenario: Validate that user would able to select the depository type as NSDL.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ManageDematAccountSlider
Then user verifies text on page AddDematPage is Depository Type on DepositoryType
Given user is on page ASBAPage clicks on NSDLTAB
Then user verifies text on page AddDematPage is Account Details on AccountDetialsText
#Given user is on page AddDematPage clicks on Enter16DigitDpId
When user is on page AddDematPage and types 234523 on Enter8DigitDpID
Given user is on page AddDematPage clicks on Enter8DigitText
When user is on page AddDematPage and types 98765654 on Enter8DigitClientID
Then user verifies text on page AddDematPage is Account Details on AccountDetialsText
Then user verifies text on page AddDematPage is PAN No.  on PanNoTitleText
Given user is at page AddDematPage if element is disabled clicks on PanNoTitleText
#Given user is on page AddDematPage clicks on PanNoVeifyText
When user is on page AddDematPage and types Mobile Automation on NickNameEnterField
Then user verifies text on page AddDematPage is Add Account on AddAccountButton
Given user is at page AddDematPage if element is disabled clicks on AddAccountButton
Given user is on page AddDematPage clicks on CheckBoxClick
Then user verifies text on page AddDematPage is Terms & Conditions on Terms&ConditionText
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on DownloadT&CButton
#Given user is on page AddDematPage clicks on AllowPermission
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on IAcceptButton
Then user verifies text on page AddDematPage is Account Details on AccountDetialsText
Given user is on page AddDematPage clicks on AddAccountButton
Given user is on page AddDematPage clicks on YourDematText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0020 @googlepixel
Scenario: Validate that all Already added Demat accounts are visible under the "Demat Accounts" Tab.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ManageDematAccountSlider
Given user is on page AddDematPage clicks on YourDematText
Then user verifies text on page AddDematPage is Mobile Automation on ALreadyAddedDematAccountList
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0021 @googlepixel
Scenario: Validate that ETB user would be able to "Modify" the demat account fields (DP ID, Client ID, Nick Name).
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page ASBAPage clicks on ManageHyperlink
Then user verifies text on page ASBAPage is Your Demat Accounts on YourDematAccountText
Given user is on page AddDematPage clicks on AlreadyAddedDematArrow
Then user verifies text on page AddDematPage is Demat Account Details on DematAccountDetailsText
Given user is on page AddDematPage clicks on ModifyButton
Given user is on page AddDematPage clicks on DPIDNSDLModify
When user is on page AddDematPage and types 456567 on DPIDNSDLModify
Given user is on page AddDematPage clicks on CLientIDNSDLModify
When user is on page AddDematPage and types 98765678 on CLientIDNSDLModify
Given user is at page AddDematPage if element is disabled clicks on SaveChangesButton
#Then user verifies text on page AddDematPage is Enter your Transaction PIN on EnterYourTransactionPINText
Given user is on page AddDematPage clicks on CheckBoxClick
Then user verifies text on page AddDematPage is Terms & Conditions on Terms&ConditionText
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on DownloadT&CButton
#Given user is on page AddDematPage clicks on AllowPermission
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on IAcceptButton
Then user verifies text on page AddDematPage is Demat Account Details on YourDematText
Given user is on page AddDematPage clicks on SaveChangesButton
Given user is on page AddDematPage clicks on TPIN
When user is on page AddDematPage and types 0852 on TPIN
Given user is on page AddDematPage clicks on TPINContinue
Then user verifies text on page AddDematPage is Depository Type on DepositoryType
Given user clicks with cordinate 72 201
Then user verifies text on page ASBAPage is Your Demat Accounts on YourDematAccountText
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton


@Test-T0022 @googlepixel
Scenario: Validate that   customer would be shown a detailed screen of the selected IPO, on IPO detailed screen page.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0023 @googlepixel
Scenario: Validate that   ETB User should be able to apply for IPO if he/she added the Demat account 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page ASBAPage is ABC India Ltd on ABCIPOText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton



@Test-T0024 @googlepixel
Scenario: Validate that ETB User should be able to apply for IPO if he/she added the Demat account 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page ASBAPage is ABC India Ltd on ABCIPOText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0025 @googlepixel
Scenario: Validate that the user would be able to see a progress bar at the top of the IPO detailed screen, with three sections: 1) Bidding Details 2) User Details 3) Review Details"
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Select Applicant on SelectApplicantText
Then user verifies text on page BiddingDetailsPage is Review Application on ReviewApplicationText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0026 @googlepixel
Scenario: Validate that ETB user would be land on by default "Biding Details" section.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0027 @googlepixel
Scenario: Validate that user would be able to see the "Toggle icon" for cut of price in bidding details section and by default it would be enabled.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText

Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton


@Test-T0028 @googlepixel
Scenario: Validate that if user  want to disable the cut off price "toggle icon" then would be click on it and would be get disable.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0029 @googlepixel
Scenario: Verify that user would be able to see the "Add another Bid Button" on the biding details page upon click on it user will able to add another bid.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is +  Add another bid on AddAnotherButton
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton


@Test-T0030 @googlepixel
Scenario: Validate that upon click on "Continue" button from bidding details page user would be redirect to Select Applicant page section.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Continue on ContinueBiddingDetails
Given user clicks with cordinate 72 201
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton


@Test-T0031 @googlepixel
Scenario: Validate that ETB user should be redirect to "Select Applicant" section after filling all the details of bedding details page then click on "Continue" button.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
Given user clicks with cordinate 72 201
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0032 @googlepixel
Scenario: Validate that user would be able to see the "Applicant name" drop down in Selecet Applicant section.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
Given user clicks with cordinate 72 201
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0033 @googlepixel
Scenario: Validate that the user can view the 'Pay From' section, which includes a dropdown for 'Linked Account'.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown
When user scrolls down to "₹35.52"
Given user is on page SelectApplicantPage clicks on CrossIcon
Given user clicks with cordinate 72 201
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0034 @googlepixel
Scenario: Validate that after clicking the 'Continue' button from the Select Applicant page, the user will be redirected to the Review Application page.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown
When user scrolls down to "₹35.52"
#Given user is on page SelectApplicantPage clicks on CrossIcon
Given user is on page SelectApplicantPage clicks on ActiveSavingAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
Given user is on page SelectApplicantPage clicks on ContinueSelectApplicantPage
Then user verifies text on page ReviewApplicationPage is Review Application on ReviewApplicationText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0035 @googlepixel
Scenario: Validate that   ETB user would be redirect to "Review Application" section, after Click on "Continue button" from user detail page.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown
When user scrolls down to "₹35.52"
#Given user is on page SelectApplicantPage clicks on CrossIcon
Given user is on page SelectApplicantPage clicks on ActiveSavingAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
Given user is on page SelectApplicantPage clicks on ContinueSelectApplicantPage
Then user verifies text on page ReviewApplicationPage is Review Application on ReviewApplicationText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0036 @googlepixel
Scenario: Validate that   by default, the option to add only one bid is present on the IPO Bidding Page.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is BID 1/3 on Bid1/3
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0037 @googlepixel
Scenario: Validate that when the customer sets the toggle on for cut-off price on the bid details screen, the price for the bid is automatically set to the maximum amount, and the customer is only allowed to modify the bid quantity.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is 300.00 on BidPriceBox
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0038 @googlepixel
Scenario: Validate that   ETB User sets the toggle off for the cut-off price on the bid details screen, the default display shows the maximum amount of the bid range.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is 300 on MaxBidPriceToggleOff
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0039 @googlepixel
Scenario: Validate that the Total amount for a single bid is correctly calculated as the bid price multiplied by the number of shares.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is BID 1/3 on Bid1/3
When user scrolls down to "Total Amount"
Then user verifies text on page BiddingDetailsPage is Total Amount on TotalAmountBox
Then user verifies text on page BiddingDetailsPage is Fourteen Thousand Four Hundred Seventy Five Rupees Only on TotalAmountRetail
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0040 @googlepixel
Scenario: Validate that user would be able to see the "Delete" icon there so user can clear the fields of "Quantity" and "Bid Price" or can be able to delete the bid.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is +  Add another bid on AddAnotherButton
Given user is on page BiddingDetailsPage clicks on AddAnotherButton
Given user is on page BiddingDetailsPage clicks on DeleteBidIcon2
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0041 @googlepixel
Scenario: Validate that the selected debit account has an available balance for debit transactions, and an error message is displayed if the balance is insufficient.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
#Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown 
#Given user is on page SelectApplicantPage clicks on CrossIcon
Given user is on page SelectApplicantPage clicks on ActiveSAInsufficiantBalance
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
Given user is on page SelectApplicantPage clicks on ContinueSelectApplicantPage
When user scrolls down to "Pay from"
Then user verifies text on page SelectApplicantPage is Insufficient Balance. Please select another Account on ActiveSAInsufficiantBalanceErrorMessage
Given user clicks with cordinate 72 201
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0042 @googlepixel
Scenario: Validate the selected debit account has an available balance for debit transactions, and an error message is displayed if the balance is insufficient.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
#Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown 
#Given user is on page SelectApplicantPage clicks on CrossIcon
Given user is on page SelectApplicantPage clicks on ActiveSAInsufficiantBalance
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
Given user is on page SelectApplicantPage clicks on ContinueSelectApplicantPage
When user scrolls down to "Pay from"
Then user verifies text on page SelectApplicantPage is Insufficient Balance. Please select another Account on ActiveSAInsufficiantBalanceErrorMessage
Given user clicks with cordinate 72 201
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0043 @googlepixel
Scenario: Validate that   this test verifies that "Dormant" accounts are either greyed out or ineligible for selection.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown 
When user scrolls down to "₹94.39"
Given user is at page SelectApplicantPage if element is disabled clicks on DormantSavingAccount
Given user is on page SelectApplicantPage clicks on CrossIcon
#Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
#Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0044 @googlepixel
Scenario: Validate that   this test verifies that "Inactive" accounts are either greyed out and ineligible for selection.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown 
When user scrolls down to "₹94.39"
Given user is at page SelectApplicantPage if element is disabled clicks on InActiveSavingAccount
Given user is on page SelectApplicantPage clicks on CrossIcon
#Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0045 @googlepixel
Scenario: Validate that user would be able to see the following details on Review screen:
1) IPO Name
2) Quantity
3) Bid Price
3) Total Amount
4) Investor type
5) Applicant
6) From Account
7) Check Box
8) Proceed to pay button"
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown 
#When user scrolls down to "₹94.39"
Given user is on page SelectApplicantPage clicks on ActiveSavingAccount
Given user is on page SelectApplicantPage clicks on ContinueSelectApplicantPage
Then user verifies text on page ReviewApplicationPage is Review Application on ReviewApplicationText
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
Then user verifies text on page ReviewApplicationPage is Quantity on Quantity
Then user verifies text on page ReviewApplicationPage is BIDPrice on BIDPrice
Then user verifies text on page ReviewApplicationPage is Total Amount on TotalAmount
Then user verifies text on page ReviewApplicationPage is Investor Type on InvestorType
Then user verifies text on page ReviewApplicationPage is Applicant on Applicant
Then user verifies text on page ReviewApplicationPage is From Account on FromAccount
#Given user is on page AddDematPage clicks on CheckBoxClick
#Then user verifies text on page AddDematPage is Terms & Conditions on Terms&ConditionText
#Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
#Given user is on page AddDematPage clicks on DownloadT&CButton
#Given user is on page AddDematPage clicks on AllowPermission
#Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
#Given user is on page AddDematPage clicks on IAcceptButton
Given user is at page SelectApplicantPage if element is disabled clicks on PayButton
#Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0046 @googlepixel
Scenario: Validate that   user would Preview all the details has been field in previous sections are correct or not if correct then click on  Check box.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown 
#When user scrolls down to "₹94.39"
Given user is on page SelectApplicantPage clicks on ActiveSavingAccount
Given user is on page SelectApplicantPage clicks on ContinueSelectApplicantPage
Then user verifies text on page ReviewApplicationPage is Review Application on ReviewApplicationText
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
Then user verifies text on page ReviewApplicationPage is Quantity on Quantity
Then user verifies text on page ReviewApplicationPage is BIDPrice on BIDPrice
Then user verifies text on page ReviewApplicationPage is Total Amount on TotalAmount
Then user verifies text on page ReviewApplicationPage is Investor Type on InvestorType
Then user verifies text on page ReviewApplicationPage is Applicant on Applicant
Then user verifies text on page ReviewApplicationPage is From Account on FromAccount
#Given user is on page AddDematPage clicks on CheckBoxClick
#Then user verifies text on page AddDematPage is Terms & Conditions on Terms&ConditionText
#Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
#Given user is on page AddDematPage clicks on DownloadT&CButton
#Given user is on page AddDematPage clicks on AllowPermission
#Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
#Given user is on page AddDematPage clicks on IAcceptButton
Given user is at page SelectApplicantPage if element is disabled clicks on PayButton
#Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0047 @googlepixel
Scenario: Validate that if user would Agree on Terms and conditions of that check box after reading all this and then click on "I accept" button.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown 
#When user scrolls down to "₹94.39"
Given user is on page SelectApplicantPage clicks on ActiveSavingAccount
Given user is on page SelectApplicantPage clicks on ContinueSelectApplicantPage
Then user verifies text on page ReviewApplicationPage is Review Application on ReviewApplicationText
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
Then user verifies text on page ReviewApplicationPage is Quantity on Quantity
Then user verifies text on page ReviewApplicationPage is BIDPrice on BIDPrice
Then user verifies text on page ReviewApplicationPage is Total Amount on TotalAmount
Then user verifies text on page ReviewApplicationPage is Investor Type on InvestorType
Then user verifies text on page ReviewApplicationPage is Applicant on Applicant
Then user verifies text on page ReviewApplicationPage is From Account on FromAccount
Given user is on page AddDematPage clicks on CheckBoxClick
Then user verifies text on page AddDematPage is Terms & Conditions on Terms&ConditionText
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
#Given user is on page AddDematPage clicks on DownloadT&CButton
#Given user is on page AddDematPage clicks on AllowPermission
#Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on IAcceptButton
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
#Given user is at page SelectApplicantPage if element is disabled clicks on PayButton
#Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0048 @googlepixel
Scenario: Validate that   if user  wants to download the Terms and conditions after click on that check box then click on " Download T&C" Button.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown 
#When user scrolls down to "₹94.39"
Given user is on page SelectApplicantPage clicks on ActiveSavingAccount
Given user is on page SelectApplicantPage clicks on ContinueSelectApplicantPage
Then user verifies text on page ReviewApplicationPage is Review Application on ReviewApplicationText
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
Then user verifies text on page ReviewApplicationPage is Quantity on Quantity
Then user verifies text on page ReviewApplicationPage is BIDPrice on BIDPrice
Then user verifies text on page ReviewApplicationPage is Total Amount on TotalAmount
Then user verifies text on page ReviewApplicationPage is Investor Type on InvestorType
Then user verifies text on page ReviewApplicationPage is Applicant on Applicant
Then user verifies text on page ReviewApplicationPage is From Account on FromAccount
Given user is on page AddDematPage clicks on CheckBoxClick
Then user verifies text on page AddDematPage is Terms & Conditions on Terms&ConditionText
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on DownloadT&CButton
#Given user is on page AddDematPage clicks on AllowPermission
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on IAcceptButton
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
#Given user is at page SelectApplicantPage if element is disabled clicks on PayButton
#Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0049 @googlepixel
Scenario: Validate that   after accepting the T&C user would click on "Pay" button.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown 
#When user scrolls down to "₹94.39"
Given user is on page SelectApplicantPage clicks on ActiveSavingAccount
Given user is on page SelectApplicantPage clicks on ContinueSelectApplicantPage
Then user verifies text on page ReviewApplicationPage is Review Application on ReviewApplicationText
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
Then user verifies text on page ReviewApplicationPage is Quantity on Quantity
Then user verifies text on page ReviewApplicationPage is BIDPrice on BIDPrice
Then user verifies text on page ReviewApplicationPage is Total Amount on TotalAmount
Then user verifies text on page ReviewApplicationPage is Investor Type on InvestorType
Then user verifies text on page ReviewApplicationPage is Applicant on Applicant
Then user verifies text on page ReviewApplicationPage is From Account on FromAccount
Given user is on page AddDematPage clicks on CheckBoxClick
Then user verifies text on page AddDematPage is Terms & Conditions on Terms&ConditionText
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on DownloadT&CButton
#Given user is on page AddDematPage clicks on AllowPermission
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on IAcceptButton
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
Given user is on page ReviewApplicationPage clicks on PayButton
Given user is on page SelectApplicantPage clicks on CrossIcon
#Given user is at page SelectApplicantPage if element is disabled clicks on PayButton
#Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0050 @googlepixel
Scenario: Validate that   user should able to redirect to enter the "Transaction PIN " popup after entering the TPIN and then click on "Continue" button .
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown 
#When user scrolls down to "₹94.39"
Given user is on page SelectApplicantPage clicks on ActiveSavingAccount
Given user is on page SelectApplicantPage clicks on ContinueSelectApplicantPage
Then user verifies text on page ReviewApplicationPage is Review Application on ReviewApplicationText
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
Then user verifies text on page ReviewApplicationPage is Quantity on Quantity
Then user verifies text on page ReviewApplicationPage is BIDPrice on BIDPrice
Then user verifies text on page ReviewApplicationPage is Total Amount on TotalAmount
Then user verifies text on page ReviewApplicationPage is Investor Type on InvestorType
Then user verifies text on page ReviewApplicationPage is Applicant on Applicant
Then user verifies text on page ReviewApplicationPage is From Account on FromAccount
Given user is on page AddDematPage clicks on CheckBoxClick
Then user verifies text on page AddDematPage is Terms & Conditions on Terms&ConditionText
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on DownloadT&CButton
#Given user is on page AddDematPage clicks on AllowPermission
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on IAcceptButton
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
Given user is on page ReviewApplicationPage clicks on PayButton
Given user is on page AddDematPage clicks on TPIN
When user is on page AddDematPage and types 0852 on TPIN
Given user is on page AddDematPage clicks on TPINContinue
Then user verifies text on page BiddingDetailsPage is IPO Raised Successfully on IPORaisedSUccessPage
#Given user is at page SelectApplicantPage if element is disabled clicks on PayButton
#Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
Given user is on page IPoSuccessScreen clicks on Home
#Given user is on page ASBAPage clicks on OngoingIPO
#Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0051 @googlepixel
Scenario: Validate that a "Ref ID" would be generated after click on continue button from Review screen and display on the "IPO Requested Raised" Page.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
#Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is on page SelectApplicantPage clicks on SelectDematAccount1
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown 
#When user scrolls down to "₹94.39"
Given user is on page SelectApplicantPage clicks on ActiveSavingAccount1
Given user is on page SelectApplicantPage clicks on ContinueSelectApplicantPage
Then user verifies text on page ReviewApplicationPage is Review Application on ReviewApplicationText
Then user verifies text on page ReviewApplicationPage is IPO Name on IPOName
Then user verifies text on page ReviewApplicationPage is Quantity on Quantity
Then user verifies text on page ReviewApplicationPage is Bid Price on BIDPrice
Then user verifies text on page ReviewApplicationPage is Total Amount on TotalAmount
Then user verifies text on page ReviewApplicationPage is Investor Type on InvestorType
Then user verifies text on page ReviewApplicationPage is Applicant on Applicant
Then user verifies text on page ReviewApplicationPage is From Account on FromAccount
Given user is on page AddDematPage clicks on CheckBoxClick
Then user verifies text on page AddDematPage is Terms & Conditions on Terms&ConditionText
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on DownloadT&CButton
#Given user is on page AddDematPage clicks on AllowPermission
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on IAcceptButton
Then user verifies text on page ReviewApplicationPage is IPO Name on IPOName
Given user is on page ReviewApplicationPage clicks on PayButton
Given user is on page AddDematPage clicks on TPIN
When user is on page AddDematPage and types 0852 on TPIN
Given user is on page AddDematPage clicks on TPINContinue
#Then user verifies text on page BiddingDetailsPage is IPO Raised Successfully on IPORaisedSUccessPage
Then user verifies text on page IpoSuccessPage is IPO Applied Successfully on IpoAppliedSuccessfullyText
Then user verifies text on page IpoSuccessPage is Apply Another on ApplyAnotherButton
Then user verifies text on page IpoSuccessPage is Home on HomeButton
Given user is on page IpoSuccessPage clicks on Home
#Given user is at page SelectApplicantPage if element is disabled clicks on PayButton
#Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
#Given user is on page IPoSuccessScreen clicks on Home
#Given user is on page ASBAPage clicks on OngoingIPO
#Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0052 @googlepixel
Scenario: Validate that   user would be able to see the Two Buttons on  "IPO Request Raised" page are 1) Apply Another 2) Home .
#Given user logins to app
#Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
#Given user is on page DashboardPage clicks on Home
#Given user swipe down the page
#Given user is on page ASBAPage clicks on ArrownBtnInvest
#Given user is on page ASBAPage clicks on IPO(ASBA)
#Given user is on page ASBAPage clicks on ViewAndApplyIPO
#Given user is on page ASBAPage clicks on OngoingIPO
#Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
#Given user is on page ASBAPage clicks on ABCLimited
#Given user is on page ASBAPage clicks on ApplyNowButton
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
#Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
#Given user is on page BiddingDetailsPage clicks on PlocyHolderType
#Given user is on page BiddingDetailsPage clicks on ToggleOff
#Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
#Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
#When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
#Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
#Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
#Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
#Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
#Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
#Given user is on page SelectApplicantPage clicks on SelectDematAccount
#Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
#When user scrolls down to "Pay from"
#Given user is on page SelectApplicantPage clicks on SelectAccountDropDown 
#When user scrolls down to "₹94.39"
#Given user is on page SelectApplicantPage clicks on ActiveSavingAccount
#Given user is on page SelectApplicantPage clicks on ContinueSelectApplicantPage
#Then user verifies text on page ReviewApplicationPage is Review Application on ReviewApplicationText
#Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
#Then user verifies text on page ReviewApplicationPage is Quantity on Quantity
#Then user verifies text on page ReviewApplicationPage is BIDPrice on BIDPrice
#Then user verifies text on page ReviewApplicationPage is Total Amount on TotalAmount
#Then user verifies text on page ReviewApplicationPage is Investor Type on InvestorType
#Then user verifies text on page ReviewApplicationPage is Applicant on Applicant
#Then user verifies text on page ReviewApplicationPage is From Account on FromAccount
#Given user is on page AddDematPage clicks on CheckBoxClick
#Then user verifies text on page AddDematPage is Terms & Conditions on Terms&ConditionText
#Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
#Given user is on page AddDematPage clicks on DownloadT&CButton
#Given user is on page AddDematPage clicks on AllowPermission
#Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
#Given user is on page AddDematPage clicks on IAcceptButton
#Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
#Given user is on page ReviewApplicationPage clicks on PayButton
#Given user is on page AddDematPage clicks on TPIN
#When user is on page AddDematPage and types 0852 on TPIN
#Given user is on page AddDematPage clicks on TPINContinue
#Given user is on page IPoSuccessScreen clicks onIPORaisedSUccessPage
#Given user is at page SelectApplicantPage if element is disabled clicks on PayButton
#Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
Then user verifies text on page IPoSuccessScreen is IPO Applied Successfully on IpoAppliedSuccessfullyText
Then user verifies text on page IPoSuccessScreen is Apply Another on ApplyAnotherButton
Then user verifies text on page IPoSuccessScreen is Home on Home
Given user is on page IPoSuccessScreen clicks on Home 
#Given user is on page ASBAPage clicks on OngoingIPO
#Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0053 @googlepixel
Scenario: Validate that upon click on "Apply Another Button" user would be redirect to IPO(ASBA) Page.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on EmployeeType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown 
#When user scrolls down to "₹94.39"
Given user is on page SelectApplicantPage clicks on ActiveSavingAccount
Given user is on page SelectApplicantPage clicks on ContinueSelectApplicantPage
Then user verifies text on page ReviewApplicationPage is Review Application on ReviewApplicationText
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
Then user verifies text on page ReviewApplicationPage is Quantity on Quantity
Then user verifies text on page ReviewApplicationPage is BIDPrice on BIDPrice
Then user verifies text on page ReviewApplicationPage is Total Amount on TotalAmount
Then user verifies text on page ReviewApplicationPage is Investor Type on InvestorType
Then user verifies text on page ReviewApplicationPage is Applicant on Applicant
Then user verifies text on page ReviewApplicationPage is From Account on FromAccount
Given user is on page AddDematPage clicks on CheckBoxClick
Then user verifies text on page AddDematPage is Terms & Conditions on Terms&ConditionText
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on DownloadT&CButton
#Given user is on page AddDematPage clicks on AllowPermission
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on IAcceptButton
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
Given user is on page ReviewApplicationPage clicks on PayButton
Given user is on page AddDematPage clicks on TPIN
When user is on page AddDematPage and types 0852 on TPIN
Given user is on page AddDematPage clicks on TPINContinue
Then user verifies text on page BiddingDetailsPage is IPO Raised Successfully on IPORaisedSUccessPage
#Given user is at page SelectApplicantPage if element is disabled clicks on PayButton
#Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
Given user is on page IPoSuccessScreen clicks on ApplyAnotherButton
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0054 @googlepixel
Scenario: Validate that upon click on " Home Button" user would be redirect to Home page of the DBP application.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ElegibleHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown 
#When user scrolls down to "₹94.39"
Given user is on page SelectApplicantPage clicks on ActiveSavingAccount
Given user is on page SelectApplicantPage clicks on ContinueSelectApplicantPage
Then user verifies text on page ReviewApplicationPage is Review Application on ReviewApplicationText
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
Then user verifies text on page ReviewApplicationPage is Quantity on Quantity
Then user verifies text on page ReviewApplicationPage is BIDPrice on BIDPrice
Then user verifies text on page ReviewApplicationPage is Total Amount on TotalAmount
Then user verifies text on page ReviewApplicationPage is Investor Type on InvestorType
Then user verifies text on page ReviewApplicationPage is Applicant on Applicant
Then user verifies text on page ReviewApplicationPage is From Account on FromAccount
Given user is on page AddDematPage clicks on CheckBoxClick
Then user verifies text on page AddDematPage is Terms & Conditions on Terms&ConditionText
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on DownloadT&CButton
#Given user is on page AddDematPage clicks on AllowPermission
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on IAcceptButton
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
Given user is on page ReviewApplicationPage clicks on PayButton
Given user is on page AddDematPage clicks on TPIN
When user is on page AddDematPage and types 0852 on TPIN
Given user is on page AddDematPage clicks on TPINContinue
Then user verifies text on page BiddingDetailsPage is IPO Raised Successfully on IPORaisedSUccessPage
#Given user is at page SelectApplicantPage if element is disabled clicks on PayButton
#Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
Given user is on page IPoSuccessScreen clicks on Home
#Given user is on page ASBAPage clicks on OngoingIPO
#Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0055 @googlepixel
Scenario: Validate that if ETB User click on "Applied IPO" then user will redirect to Applied IPO section and can able to see all the applied IPO there.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
#Then user verifies text on page BiddingDetailsPage is Select Investor Type   on SelectInvestorTypeText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 100 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is Bid Price  on BidPriceText
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Then user verifies text on page BiddingDetailsPage is Continue on ContinueBiddingDetails
Given user is on page BiddingDetailsPage clicks on ContinueBiddingDetails
Then user verifies text on page SelectApplicantPage is Select Applicant on SelectApplicantPageText
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountDropDown
Given user is on page SelectApplicantPage clicks on SelectDematAccountDropDown
#Then user verifies text on page SelectApplicantPage is Select Demat Account  on SelectDematAccountSliderText
Given user is on page SelectApplicantPage clicks on SelectDematAccount
Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Then user verifies text on page SelectApplicantPage is Pay from on PayFrom
When user scrolls down to "Pay from"
Given user is on page SelectApplicantPage clicks on SelectAccountDropDown 
#When user scrolls down to "₹94.39"
Given user is on page SelectApplicantPage clicks on ActiveSavingAccount
Given user is on page SelectApplicantPage clicks on ContinueSelectApplicantPage
Then user verifies text on page ReviewApplicationPage is Review Application on ReviewApplicationText
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
Then user verifies text on page ReviewApplicationPage is Quantity on Quantity
Then user verifies text on page ReviewApplicationPage is BIDPrice on BIDPrice
Then user verifies text on page ReviewApplicationPage is Total Amount on TotalAmount
Then user verifies text on page ReviewApplicationPage is Investor Type on InvestorType
Then user verifies text on page ReviewApplicationPage is Applicant on Applicant
Then user verifies text on page ReviewApplicationPage is From Account on FromAccount
Given user is on page AddDematPage clicks on CheckBoxClick
Then user verifies text on page AddDematPage is Terms & Conditions on Terms&ConditionText
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on DownloadT&CButton
#Given user is on page AddDematPage clicks on AllowPermission
Then user verifies text on page AddDematPage is Download T&C on DownloadT&CButton
Given user is on page AddDematPage clicks on IAcceptButton
Then user verifies text on page ReviewApplicationPage is IPOName on IPOName
Given user is on page ReviewApplicationPage clicks on PayButton
Given user is on page AddDematPage clicks on TPIN
When user is on page AddDematPage and types 0852 on TPIN
Given user is on page AddDematPage clicks on TPINContinue
Then user verifies text on page BiddingDetailsPage is IPO Raised Successfully on IPORaisedSUccessPage
#Given user is at page SelectApplicantPage if element is disabled clicks on PayButton
#Given user is at page SelectApplicantPage if element is disabled clicks on PanNoText
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
Given user is on page IPoSuccessScreen clicks on Home
#Given user is on page ASBAPage clicks on OngoingIPO
#Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0056 @googlepixel
Scenario: Validate that user would be able to see the Allotment status on this "Applied IPO" section.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0057 @googlepixel
Scenario: Validate that user would click on the Applied IPO to view the Detailed view of the Applied IPO so user can review the status of an IPO.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0058 @googlepixel
Scenario: Validate that   user would be able to see the following details on the Applied IPO Application status screen.
1) Offer start date
2) Offer end date
3) Bid accepted
4) IPO Allotment
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
Then user verifies text on page AppliedIPOPage is Offer start date on offerStartDate
Then user verifies text on page AppliedIPOPage is Offer end date on offerEndte
Then user verifies text on page AppliedIPOPage is Bid accepted on BidAcceptted
Then user verifies text on page AppliedIPOPage is IPO Allotment on IPOAllotment
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton


@Test-T0059 @googlepixel
Scenario: Validate that   user would be able to see the dates on Application status on format of "dd mmm yyyy".
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
Then user verifies text on page AppliedIPOPage is Offer start date on offerStartDate
Then user verifies text on page AppliedIPOPage is Offer end date on offerEndte
Then user verifies text on page AppliedIPOPage is Bid accepted on BidAcceptted
Then user verifies text on page AppliedIPOPage is IPO Allotment on IPOAllotment
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0060 @googlepixel
Scenario: "Validate that   the Entry point for Modifying the IPO details through:
1) Entry Point : - > Option a) Home > Service Request section >  Investment Section > IPO (ASBA) > Applied IPO> IPO Name> Modify IPO(Button)> Modify Bid.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
Then user verifies text on page AppliedIPOPage is Offer start date on offerStartDate
Then user verifies text on page AppliedIPOPage is Offer end date on offerEndte
Then user verifies text on page AppliedIPOPage is Bid accepted on BidAcceptted
Then user verifies text on page AppliedIPOPage is IPO Allotment on IPOAllotment
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0061 @googlepixel
Scenario: Validate that   user would be able to see the "Home" button would be in Red color fill and text would be in White color.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
Then user verifies text on page AppliedIPOPage is Offer start date on offerStartDate
Then user verifies text on page AppliedIPOPage is Offer end date on offerEndte
Then user verifies text on page AppliedIPOPage is Bid accepted on BidAcceptted
Then user verifies text on page AppliedIPOPage is IPO Allotment on IPOAllotment
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0062 @googlepixel
Scenario: Validate that   User would be able to see the Two Button on bottom of the Applied IPO status page are:
1) Withdraw IPO
2) Modify IPO
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
Then user verifies text on page AppliedIPOPage is Offer start date on offerStartDate
Then user verifies text on page AppliedIPOPage is Offer end date on offerEndte
Then user verifies text on page AppliedIPOPage is Bid accepted on BidAcceptted
Then user verifies text on page AppliedIPOPage is IPO Allotment on IPOAllotment
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0063 @googlepixel
Scenario: Validate that   the Entry point for Withdrawn the IPO details through:
1) Entry Point : - > Option a) Home > Service Request section >  Investment Section > IPO (ASBA) > Applied IPO> IPO Name> Modify IPO(Button)> Withdrawn Bid.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
Then user verifies text on page AppliedIPOPage is Offer start date on offerStartDate
Then user verifies text on page AppliedIPOPage is Offer end date on offerEndte
Then user verifies text on page AppliedIPOPage is Bid accepted on BidAcceptted
Then user verifies text on page AppliedIPOPage is IPO Allotment on IPOAllotment
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0064 @googlepixel
Scenario: Validate that   user would be able to see the "Withdraw IPO" button text in  Red color and button would be fill in white color.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
Then user verifies text on page AppliedIPOStatusPage is Offer start date on offerStartDate
Then user verifies text on page AppliedIPOStatusPage is Offer end date on offerEndte
Then user verifies text on page AppliedIPOStatusPage is Bid accepted on BidAcceptted
Then user verifies text on page AppliedIPOStatusPage is IPO Allotment on IPOAllotment
Then user verifies text on page AppliedIPOStatusPage is Withdraw IPO on WithdrawIPOButton
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0065 @googlepixel
Scenario: Validate that   User can be able to withdraw a full bid upon click on Withdraw IPO button and user would be redirect to "Bid Withdrawn successfully" screen.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
Then user verifies text on page AppliedIPOStatusPage is Offer start date on offerStartDate
Then user verifies text on page AppliedIPOStatusPage is Offer end date on offerEndte
Then user verifies text on page AppliedIPOStatusPage is Bid accepted on BidAcceptted
Then user verifies text on page AppliedIPOStatusPage is IPO Allotment on IPOAllotment
Then user verifies text on page AppliedIPOStatusPage is Withdraw IPO on WithdrawIPOButton
Given user is on page AppliedIPOStatusPage clicks on WithdrawIPOButton
Given user is on page AppliedIPOStatusPage clicks on YesButtonW
Given user is on page AddDematPage clicks on TPIN
When user is on page AddDematPage and types 0852 on TPIN
Given user is on page AddDematPage clicks on TPINContinue
Then user verifies text on page BiddingDetailsPage is IPO Raised Successfully on IPORaisedSUccessPage
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0066 @googlepixel
Scenario: Validate that   user would be able to see below fields on Bid Withdrawn successfully screen."1) Ref Id. 2) IPO Name  3) Quantity   4) Total Amount 5) Investor Type 6) Primary Account 7) from Account" 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Then user verifies text on page ASBAPage is IPO (ASBA) on IPOASBASlider
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
#Then user verifies text on page AppliedIPOStatusPage is Offer start date on offerStartDate
#Then user verifies text on page AppliedIPOStatusPage is Offer end date on offerEndte
#Then user verifies text on page AppliedIPOStatusPage is Bid accepted on BidAcceptted
#Then user verifies text on page AppliedIPOStatusPage is IPO Allotment on IPOAllotment
Then user verifies text on page AppliedIPOStatusPage is Withdraw IPO on WithdrawIPOButton
Given user is on page AppliedIPOStatusPage clicks on WithdrawIPOButton
Given user is on page AppliedIPOStatusPage clicks on YesButtonW
Given user is on page AddDematPage clicks on TPIN
When user is on page AddDematPage and types 0741 on TPIN
Given user is on page AddDematPage clicks on TPINContinue
Then user verifies text on page AppliedIPOStatusPage is Bid Withdrawn Successfully! on WithdrawnSuccesScreen
When user scrolls down to "Applicant"
Then user verifies text on page AppliedIPOStatusPage is Reference ID on ReferenceIdW
Then user verifies text on page AppliedIPOStatusPage is Account on AccountW
Then user verifies text on page AppliedIPOStatusPage is IPO Name on IPONameW
Then user verifies text on page AppliedIPOStatusPage is Quantity on QuantityW
#Then user verifies text on page AppliedIPOStatusPage is Bid Price IPO on BIdPriceW
Then user verifies text on page AppliedIPOStatusPage is Total Amount on TotalAmountW
Then user verifies text on page AppliedIPOStatusPage is Investor Type on InvestorTypeW
Then user verifies text on page AppliedIPOStatusPage is Applicant on ApplicantW
#Then user verifies text on page AppliedIPOStatusPage is Apply Another on ApplyAnotherW
#Then user verifies text on page AppliedIPOStatusPage is Home on HomeW
#Given user is on page AppliedIPOStatusPage clicks on ApplyAnotherW
#Given user is on page ASBAPage clicks on OngoingIPO
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
#Given user is on page DashboardPage clicks on Home
#Given user clicks with cordinate 113 197
#When user scrolls down to "Logout"
#Given user is on page ASBAPage clicks on LogoutButton
#Given user is on page ASBAPage clicks on ContinueButton

@Test-T0067 @googlepixel
Scenario: Validate that   user would be able to see the two buttons on the withdrawn bid successful screen are 1) Apply Another 2)Go to Home button.
Given user logins to app
Then user verifies text on page AppliedIPOStatusPage is Apply Another on ApplyAnotherW
Then user verifies text on page AppliedIPOStatusPage is Home on HomeW
Given user is on page AppliedIPOStatusPage clicks on ApplyAnotherW
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0068 @googlepixel
Scenario: Validate that   if user want to modify the bid then upon click of "Modify IPO "button slider will come and having two options A) Modify Bid B) Withdrawn Bid then select "Modify Bid" then  popup would appear having two buttons 1) cancel and 2) Modify Bid
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
#Then user verifies text on page AppliedIPOStatusPage is Offer start date on offerStartDate
#Then user verifies text on page AppliedIPOStatusPage is Offer end date on offerEndte
#Then user verifies text on page AppliedIPOStatusPage is Bid accepted on BidAcceptted
#Then user verifies text on page AppliedIPOStatusPage is IPO Allotment on IPOAllotment
Then user verifies text on page ModifyIPO is Modify IPO on ModifyIPOButton
Given user is on page ModifyIPO clicks on ModifyIPO
Given user is on page ModifyIPO clicks on SaveChangesM
Given user is on page AddDematPage clicks on TPIN
When user is on page AddDematPage and types 0741 on TPIN
Given user is on page AddDematPage clicks on TPINContinue
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0069 @googlepixel
Scenario: Validate that user would be able to see Two button 1) Cancel 2) Save Changes button. 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
#Then user verifies text on page AppliedIPOStatusPage is Offer start date on offerStartDate
#Then user verifies text on page AppliedIPOStatusPage is Offer end date on offerEndte
#Then user verifies text on page AppliedIPOStatusPage is Bid accepted on BidAcceptted
#Then user verifies text on page AppliedIPOStatusPage is IPO Allotment on IPOAllotment
Then user verifies text on page ModifyIPO is Modify IPO on ModifyIPOButton
Given user is on page ModifyIPO clicks on ModifyIPO
Then user verifies text on page ModifyIPO is Save Changes on SaveChangesM
Then user verifies text on page ModifyIPO is Cancel on CancelBUttonM
Given user is on page ModifyIPO clicks on SaveChangesM
Given user is on page AddDematPage clicks on TPIN
When user is on page AddDematPage and types 0741 on TPIN
Given user is on page AddDematPage clicks on TPINContinue
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0070 @googlepixel
Scenario: Validate that user would be able to save all changes after click on "Save Changes" button. 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
#Then user verifies text on page AppliedIPOStatusPage is Offer start date on offerStartDate
#Then user verifies text on page AppliedIPOStatusPage is Offer end date on offerEndte
#Then user verifies text on page AppliedIPOStatusPage is Bid accepted on BidAcceptted
#Then user verifies text on page AppliedIPOStatusPage is IPO Allotment on IPOAllotment
Then user verifies text on page ModifyIPO is Modify IPO on ModifyIPOButton
Given user is on page ModifyIPO clicks on ModifyIPO
Then user verifies text on page ModifyIPO is Save Changes on SaveChangesM
Then user verifies text on page ModifyIPO is Cancel on CancelBUttonM
Given user is on page ModifyIPO clicks on SaveChangesM
Given user is on page AddDematPage clicks on TPIN
When user is on page AddDematPage and types 0741 on TPIN
Given user is on page AddDematPage clicks on TPINContinue
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0071 @googlepixel
Scenario: Validate that user don’t want to modify IPO then click on "Cancel" button. 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
#Then user verifies text on page AppliedIPOStatusPage is Offer start date on offerStartDate
#Then user verifies text on page AppliedIPOStatusPage is Offer end date on offerEndte
#Then user verifies text on page AppliedIPOStatusPage is Bid accepted on BidAcceptted
#Then user verifies text on page AppliedIPOStatusPage is IPO Allotment on IPOAllotment
Then user verifies text on page ModifyIPO is Modify IPO on ModifyIPOButton
Given user is on page ModifyIPO clicks on ModifyIPO
Then user verifies text on page ModifyIPO is Save Changes on SaveChangesM
Then user verifies text on page ModifyIPO is Cancel on CancelBUttonM
Given user is on page ModifyIPO clicks on CancelBUttonM
#Given user is on page AddDematPage clicks on TPIN
#When user is on page AddDematPage and types 0852 on TPIN
#Given user is on page AddDematPage clicks on TPINContinue
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0072 @googlepixel
Scenario: Validate that   if user want to cancel the modification then click on "Cancel" button from modify bid popup at the end. 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
#Then user verifies text on page AppliedIPOStatusPage is Offer start date on offerStartDate
#Then user verifies text on page AppliedIPOStatusPage is Offer end date on offerEndte
#Then user verifies text on page AppliedIPOStatusPage is Bid accepted on BidAcceptted
#Then user verifies text on page AppliedIPOStatusPage is IPO Allotment on IPOAllotment
Then user verifies text on page ModifyIPO is Modify IPO on ModifyIPOButton
Given user is on page ModifyIPO clicks on ModifyIPO
Then user verifies text on page ModifyIPO is Save Changes on SaveChangesM
Then user verifies text on page ModifyIPO is Cancel on CancelBUttonM
Given user is on page ModifyIPO clicks on CancelBUttonM
#Given user is on page AddDematPage clicks on TPIN
#When user is on page AddDematPage and types 0852 on TPIN
#Given user is on page AddDematPage clicks on TPINContinue
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton


@Test-T0073 @googlepixel
Scenario: Validate that error message would displayed to the customer below for the quantity field if the entered quantity is not in multiples of the lot size. Error message would be "Please enter the quantity in multiply of lot size". 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ElegibleHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 52 on QuantityBoxFilled
Then user verifies text on page BiddingDetailsPage is "Please enter quantity in multiples of the lot size" on QuantityInLineErrorMessage
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton



@Test-T0074 @googlepixel
Scenario: Validate that   an appropriate error message is displayed to the customer if the entered bid price is outside the permissible range.  Error message would be "Please enter the Bid price within the mentioned range". 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ElegibleHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 303 on BidPriceBox
Then user verifies text on page BiddingDetailsPage is "Please enter Bid price within the mentioned range" on BidPriceInLineErrorMessage
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0075 @googlepixel
Scenario: Validate that User  would not be able to see the "withdrawn Bid"  Button on the Applied Ipo status screen. 
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Then user verifies text on page ASBAPage is IPO (ASBA) on IPOASBASlider
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
Then user verifies text on page AppliedIPOStatusPage is Withdraw IPO on WithdrawIPOButton
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0076 @vivo
Scenario: Validate that user would not be able to modify the IPO if he does not have sufficient amount is his account then it will throw an working popup on screen.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
#Then user verifies text on page AppliedIPOStatusPage is Offer start date on offerStartDate
#Then user verifies text on page AppliedIPOStatusPage is Offer end date on offerEndte
#Then user verifies text on page AppliedIPOStatusPage is Bid accepted on BidAcceptted
#Then user verifies text on page AppliedIPOStatusPage is IPO Allotment on IPOAllotment
Then user verifies text on page ModifyIPO is Modify IPO on ModifyIPOButton
Given user is on page ModifyIPO clicks on ModifyIPO
Then user verifies text on page ModifyIPO is Save Changes on SaveChangesM
Then user verifies text on page ModifyIPO is Cancel on CancelBUttonM
Given user is on page ModifyIPO clicks on SaveChangesM
Given user is on page AddDematPage clicks on TPIN
When user is on page AddDematPage and types 0741 on TPIN
Given user is on page AddDematPage clicks on TPINContinue
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0077 @vivo
Scenario: Validate that   if Internet is disconnected while applying for IPO then user would be able to see the Appropriate error message on the screen.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Then user verifies text on page AppliedIPOPage is Awaited on ApplicationStatusText
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
#Then user verifies text on page AppliedIPOStatusPage is Offer start date on offerStartDate
#Then user verifies text on page AppliedIPOStatusPage is Offer end date on offerEndte
#Then user verifies text on page AppliedIPOStatusPage is Bid accepted on BidAcceptted
#Then user verifies text on page AppliedIPOStatusPage is IPO Allotment on IPOAllotment
Then user verifies text on page ModifyIPO is Modify IPO on ModifyIPOButton
Given user is on page ModifyIPO clicks on ModifyIPO
Then user verifies text on page ModifyIPO is Save Changes on SaveChangesM
Then user verifies text on page ModifyIPO is Cancel on CancelBUttonM
Given user is on page ModifyIPO clicks on SaveChangesM
Given user is on page AddDematPage clicks on TPIN
When user is on page AddDematPage and types 0741 on TPIN
Given user is on page AddDematPage clicks on TPINContinue
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0078 @vivo
Scenario: Validate that Investor attempts to block an amount greater than the available balance
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page ASBAPage clicks on OngoingIPO
Then user verifies text on page ASBAPage is ABC LIMITED on ABCLIMITEDTEXT
Given user is on page ASBAPage clicks on ABCLimited
Given user is on page ASBAPage clicks on ApplyNowButton
Then user verifies text on page BiddingDetailsPage is Bidding Details on BiddingDetailsText
Given user is on page BiddingDetailsPage clicks on SelectInvestorTypeText
#Then user verifies text on page BiddingDetailsPage is Select Policy Holders   on PlocyHolderType
Given user is on page BiddingDetailsPage clicks on ElegibleHolderType
Given user is on page BiddingDetailsPage clicks on ToggleOff
Then user verifies text on page BiddingDetailsPage is Quantity  on QuantityText
Given user is on page BiddingDetailsPage clicks on QuantityBoxFilled
#When user is on page BiddingDetailsPage and types 0 on QuantityBoxFilled
#Given user is on page BiddingDetailsPage clicks on QuantityBoxEmpty
When user is on page BiddingDetailsPage and types 303 on BidPriceBox
Then user verifies text on page BiddingDetailsPage is "Please enter Bid price within the mentioned range" on BidPriceInLineErrorMessage
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
Given user is on page ASBAPage clicks on OngoingIPO
Given user clicks with cordinate 72 201
Given user clicks with cordinate 72 201
#Given user clicks with cordinate 100 201
Given user is on page DashboardPage clicks on Home
Given user clicks with cordinate 113 197
When user scrolls down to "Logout"
Given user is on page ASBAPage clicks on LogoutButton
Given user is on page ASBAPage clicks on ContinueButton

@Test-T0079 @RedmiNote9
Scenario: Validate that Investor attempts to modify bid Quanty for the applied IPO.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
Given user is on page AppliedIPOPage clicks on ModifyIPO
Given user is on page AppliedIPOPage clicks on ConfirmModifyIPO
When user is on page AppliedIPOPage and types 100 on LotQuantitySize
Given user is on page AppliedIPOPage clicks on SaveModifedIPO
When user is on page AppliedIPOPage and types 1212 on TPIN
Given user is on page AppliedIPOPage clicks on TPINContinue

@Test-T0080 @RedmiNote9
Scenario: Validate that Investor attempts to modify Bid price for the applied IPO.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
Given user is on page AppliedIPOPage clicks on ModifyIPO
Given user is on page AppliedIPOPage clicks on ConfirmModifyIPO
Given user is on page AppliedIPOPage clicks on CutOffPriceButton
When user is on page AppliedIPOPage and types 280 on CutOffBidPrice
Given user is on page AppliedIPOPage clicks on SaveModifedIPO
When user is on page AppliedIPOPage and types 1212 on TPIN
Given user is on page AppliedIPOPage clicks on TPINContinue

@Test-T0081 @RedmiNote9
Scenario: Validate that error verbiage for modify bid Quanty for the applied IPO.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
Given user is on page AppliedIPOPage clicks on ModifyIPO
Given user is on page AppliedIPOPage clicks on ConfirmModifyIPO
When user is on page AppliedIPOPage and types 10 on LotQuantitySize
Given user verifies on page AppliedIPOPage for Please enter quantity in multiples of the lot size text in placeholder BidQtyErrorMessage

@Test-T0082 @RedmiNote9
Scenario: Validate Investor attempts to modify Bid price for the applied IPO.
Given user logins to app
Given user logins to app entering Login PIN
Given user is on page DashboardPage clicks on FingerPrint
Given user is on page DashboardPage clicks on Home
Given user swipe down the page
Given user is on page ASBAPage clicks on ArrownBtnInvest
Given user is on page ASBAPage clicks on IPO(ASBA)
Given user is on page ASBAPage clicks on ViewAndApplyIPO
Given user is on page AppliedIPOPage clicks on AppliedIpo
Given user is on page AppliedIPOPage clicks on AlreadyAppliedIPOArrow
Given user is on page AppliedIPOPage clicks on ModifyIPO
Given user is on page AppliedIPOPage clicks on ConfirmModifyIPO
Given user is on page AppliedIPOPage clicks on CutOffPriceButton
When user is on page AppliedIPOPage and types 10 on CutOffBidPrice
Given user verifies on page AppliedIPOPage for Please enter Bid price within the mentioned range text in placeholder BidPriceErrorMessage