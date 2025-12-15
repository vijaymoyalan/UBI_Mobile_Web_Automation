Feature: Mobile UI test for General Services Journey

  @Deviceid=OppoA18 @CaseKey=UDB-T16349 @CaseKey=UDB-T16439 @CaseKey=UDB-T16236 @CaseKey=UDB-T16333 @CaseKey=UDB-T16357 @CaseKey=UDB-T16358 @CaseKey=UDB-T16381 @CaseKey=UDB-T16234 @CaseKey=UDB-T16380 @CaseKey=UDB-T16336 @CaseKey=UDB-T16337 @CaseKey=UDB-T16338 @CaseKey=UDB-T16330 @CaseKey=UDB-T16331 @CaseKey=UDB-T16331 @CaseKey=UDB-T16339
  Scenario: Verify navigation to Profile from homepage
    #Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on Home
    Given user clicks with cordinate 86 127
    Then user verifies text on page ProfilePage is Relationship Manager on RelationshipManager
    Given user is on page ProfilePage clicks on RelationshipManager
    Then user verifies text on page ProfilePage is Name: Deep Mishra on RelationshipManagerName
    Given user is on page ProfilePage clicks on OkayButton
    Given user is on page ProfilePage clicks on ReferNowLink
    When user is on page ProfilePage and types 8591856866 on InputRefereeMobileNumberEditText
    Given user is on page ProfilePage clicks on SubmitButton
    When user is on page ProfilePage and types 9325375364 on InputRefereeMobileNumberEditText
    Given user is on page ProfilePage clicks on SubmitButton
    Then user verifies text on page ProfilePage is Message sent successfully on MessageSentText
    Given user clicks with cordinate 551 1571
    Then user verifies text on page ProfilePage is 20041715466928 on CKYC
    Then user verifies text on page ProfilePage is AHMPLXXXXK on PAN
    Then user verifies text on page ProfilePage is XXXX XXXX 8228 on Aadhar
    When user scrolls down to "Email"
    Then user verifies text on page ProfilePage is 8591856866 on MobileNumber
    Then user verifies text on page ProfilePage is SACHINVGHORPADE@GMAIL.COM on Email
    Then user verifies text on page ProfilePage is Y on KYCStatus
    Given user is on page ProfilePage clicks on ViewAddressLink
    Then user verifies text on page ProfilePage is Near Sagun Hospital Marol Mumbai,Maharashtra,India - 275101 on CommunicationAddress
    Given user clicks with cordinate 61 118
    Given user is on page ProfilePage clicks on DeRegister
    Given user is on page ProfilePage clicks on YesRadioButton
    Given user is on page ProfilePage clicks on TANDCDeregisterCheckbox
    Given user is on page ProfilePage clicks on IAcceptButton
    Given user is on page ProfilePage clicks on SubmitDeregisterButton
    When user is on page ProfilePage and types 0852 on TpinEditText
    Given user is on page ProfilePage clicks on closeButtonTopRightCorner
    Given user is on page ProfilePage clicks on NoRadioButton
    Given user is on page ProfilePage clicks on SubmitDeregisterButton
    When user scrolls down to "Logout"
    Given user is on page ProfilePage clicks on TermsAndConditions
    #When user scrolls down to "The construction, validity and performance of these terms and conditions shall be governed in all respects by the laws of India. The parties hereby submit to the exclusive jurisdiction of the competent Courts at Mumbai, India which shall have jurisdiction in the matter to the exclusion of any other courts, irrespective of whether such courts have similar jurisdiction in the matter. Union Bank of India is absolved of any liability arising, direct or indirect, for non-compliance with the laws of any country other than India where the service is accessible."
    Given user is on page ProfilePage clicks on DownloadTermsAndConditionsButton
    Given user is on page ProfilePage clicks on CloseButtonOnTermsAndConditions
    Given user is on page ProfilePage clicks on LogoutButton
    Given user is on page ProfilePage clicks on ContinueButton

  @Deviceid=OppoA18 @CaseKey=UDB-T16202 @CaseKey=UDB-T16203 @CaseKey=UDB-T16241 @CaseKey=UDB-T16245 @CaseKey=UDB-T16242 @CaseKey=UDB-T16369 @CaseKey=UDB-T16370 @CaseKey=UDB-T16371 @CaseKey=UDB-T16399 @CaseKey=UDB-T16402 @CaseKey=UDB-T16412 @CaseKey=UDB-T16415 @CaseKey=UDB-T16205 @CaseKey=UDB-T16237 @CaseKey=UDB-T16238 @CaseKey=UDB-T16239
  Scenario: Verify that ETB user able to  issue e- statement for last financial year
    #Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on Home
    Given user is on page DepositTab clicks on EyeIconDepositTab
    Given user is on page DepositTab clicks on SavingsAccountxxx0199
    Given user is on page SavingsAccountxxx0199Page clicks on DetailsTab
    Then user verifies text on page "SavingsAccountxxx0199Page" is "Umesh Singh Lunthi" on "CustomerNameOnSavingsAccount"
    Then user verifies text on page "SavingsAccountxxx0199Page" is "30710 20700 00199" on "SavingsAccountWholeNumberDetailsPage0199"
    Then user verifies text on page "SavingsAccountxxx0199Page" is "Savings" on "AccountType"
    Then user verifies text on page "SavingsAccountxxx0199Page" is "Union Bank Of India" on "BankName"
    Given user is on page SavingsAccountxxx0199Page clicks on StatementTab
    Then user verifies text on page "SavingsAccountxxx0199Page" is "Total 10 transactions" on "Trasactions_Count_1_10"
    Given user is on page SavingsAccountxxx0199Page clicks on CustomCard
    Given user is on page SavingsAccountxxx0199Page clicks on StartDate
    Given user selects day 15 month Jun year 2017 and current year is 2025
    Then user verifies text on page "SavingsAccountxxx0199Page" is "Total 276 transactions" on "Total_276_transactions"
    Given user is on page SavingsAccountxxx0199Page clicks on LastMonthCard
    When user scrolls down to "Email"
    Given user is on page SavingsAccountxxx0199Page clicks on emailButtonOnStatement
    Given user is on page SavingsAccountxxx0199Page clicks on downloadButtonOnStatement
    When user scrolls up to "Statement"
    Given user is on page SavingsAccountxxx0199Page clicks on Last3MonthCard
    When user scrolls down to "Email"
    Given user is on page SavingsAccountxxx0199Page clicks on emailButtonOnStatement
    Given user is on page SavingsAccountxxx0199Page clicks on downloadButtonOnStatement
    When user scrolls up to "Statement"
    Given user is on page SavingsAccountxxx0199Page clicks on Last6MonthCard
    When user scrolls down to "Email"
    Given user is on page SavingsAccountxxx0199Page clicks on emailButtonOnStatement
    Given user is on page SavingsAccountxxx0199Page clicks on downloadButtonOnStatement
    Then user verifies text on page "SavingsAccountxxx0199Page" is "Download Successful" on "DownloadSuccessfulMessageText"
    Given user is on page SavingsAccountxxx0199Page clicks on OkayButton
    When user scrolls up to "Statement"
    Given user is on page SavingsAccountxxx0199Page clicks on LastfinancialyearCard
    Then user verifies text on page "SavingsAccountxxx0199Page" is "Total 88 transactions" on "Total_88_transactions"
    When user scrolls down to "Email"
    Given user is on page SavingsAccountxxx0199Page clicks on emailButtonOnStatement
    Given user is on page SavingsAccountxxx0199Page clicks on downloadButtonOnStatement
    Then user verifies text on page "SavingsAccountxxx0199Page" is "Download Successful" on "DownloadSuccessfulMessageText"
    Given user is on page SavingsAccountxxx0199Page clicks on OkayButton
    Given user clicks with cordinate 55 122
    Given user clicks with cordinate 86 127
    When user scrolls down to "Logout"
    Given user is on page ProfilePage clicks on LogoutButton
    Given user is on page ProfilePage clicks on ContinueButton

  @Deviceid=OppoA18 @CaseKey=UDB-T16258 @CaseKey=UDB-T16259 @CaseKey=UDB-T16260 @CaseKey=UDB-T16261 @CaseKey=UDB-T16263 @CaseKey=UDB-T16212 @CaseKey=UDB-T16213 @CaseKey=UDB-T16214 @CaseKey=UDB-T16264 @CaseKey=UDB-T16265 @CaseKey=UDB-T16266 @CaseKey=UDB-T16267
  Scenario: Verify that the ETB user can initiate a request for the TDS certificate
    #Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on Home
    When user scrolls down to "Account Services"
    Given user is on page DashboardPage clicks on AccountServices
    Given user is on page AccountServicesPage clicks on TDSCertificate
    Given user is on page TDSCertificatePage clicks on ConsolidatedDeposits
    Given user is on page TDSCertificatePage clicks on generateButton
    Then user verifies text on page TDSCertificatePage is ₹ 0.00 Cr on InterestAmountCreditRuppesSymbol
    Given user clicks with cordinate 55 119
    Given user is on page TDSCertificatePage clicks on FinancialYearDropdown
    Given user is on page TDSCertificatePage clicks on FY23_24
    Given user is on page TDSCertificatePage clicks on generateButton
    Then user verifies text on page TDSCertificatePage is ₹ 1174.0 Cr on InterestAmountCreditRuppesSymbol
    Given user is on page TDSCertificatePage clicks on shareButton
    Given user is on page TDSCertificatePage clicks on cancelButtonOnShare
    Given user is on page TDSCertificatePage clicks on downloadButton
    Then user verifies text on page TDSCertificatePage is Download Successful on DownloadSuccessfulMessageText
    Given user is on page TDSCertificatePage clicks on OkayButton
    Given user is on page TDSCertificatePage clicks on GoToHomeButton
    When user scrolls down to "Account Services"
    Given user is on page DashboardPage clicks on AccountServices
    Given user is on page AccountServicesPage clicks on TDSCertificate
    When user is on page TDSCertificatePage and types 0044 on SearchEditBox
    Given user is on page TDSCertificatePage clicks on DepositAccountxxxx0044
    Given user is on page TDSCertificatePage clicks on FinancialYearDropdown
    Given user is on page TDSCertificatePage clicks on FY23_24
    Given user is on page TDSCertificatePage clicks on generateButton
    Then user verifies text on page TDSCertificatePage is ₹ 991.0 Cr on InterestAmountCreditRuppesSymbol
    Given user is on page TDSCertificatePage clicks on shareButton
    Given user is on page TDSCertificatePage clicks on cancelButtonOnShare
    Given user is on page TDSCertificatePage clicks on downloadButton
    Then user verifies text on page TDSCertificatePage is Download Successful on DownloadSuccessfulMessageText
    Given user is on page TDSCertificatePage clicks on OkayButton
    Given user is on page TDSCertificatePage clicks on GoToHomeButton
    Given user clicks with cordinate 86 127
    When user scrolls down to "Logout"
    Given user is on page ProfilePage clicks on LogoutButton
    Given user is on page ProfilePage clicks on ContinueButton

  @Deviceid=OppoA18 @CaseKey=UDB-T16250 @CaseKey=UDB-T16251 @CaseKey=UDB-T16252 @CaseKey=UDB-T16254 @CaseKey=UDB-T16414 @CaseKey=UDB-T16416 @CaseKey=UDB-T16417 @CaseKey=UDB-T16207 @CaseKey=UDB-T16208 @CaseKey=UDB-T16211 @CaseKey=UDB-T16397 @CaseKey=UDB-T16398 @CaseKey=UDB-T16403 @CaseKey=UDB-T16243 @CaseKey=UDB-T16282 @CaseKey=UDB-T16413 @CaseKey=UDB-T16257
  Scenario: Verify that ETB user able to  issue Loan e- statement for last financial year
    #Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on Home
    Given user is on page DashboardPage clicks on LoansTab
    Given user is on page LoanTab clicks on EyeIconLoanTab
    Given user swipes left to "View More"
    Given user is on page LoanTab clicks on ViewMoreText
    Given user swipes left to "XXXXX 00004"
    Given user is on page LoanTab clicks on HomeLoanxxxxx00004
    Given user is on page HomeLoanxxxxx00004Page clicks on DetailsTab
    Then user verifies text on page HomeLoanxxxxx00004Page is Home Loan on SchemeHomeLoan
    Then user verifies text on page HomeLoanxxxxx00004Page is TLS11 on SchemeCodeTLS11
    Then user verifies text on page HomeLoanxxxxx00004Page is 22 Jun 2022 on AcOpenDate22June2022
    When user scrolls down to "Rate of Interest"
    Then user verifies text on page HomeLoanxxxxx00004Page is 5.50 % p.a on InterestRate5.50
    Then user verifies text on page HomeLoanxxxxx00004Page is Monthly on InstallmentFrequencyMonthly
    Given user is on page HomeLoanxxxxx00004Page clicks on StatementTab
    Then user verifies text on page HomeLoanxxxxx00004Page is Total 10 transactions on Total10transactions
    Given user is on page HomeLoanxxxxx00004Page clicks on LastMonthCard
    Given user is on page HomeLoanxxxxx00004Page clicks on emailButtonOnStatement
    Given user is on page HomeLoanxxxxx00004Page clicks on OkayButton
    Given user is on page HomeLoanxxxxx00004Page clicks on downloadButtonOnStatement
    Then user verifies text on page HomeLoanxxxxx00004Page is Download Successful on DownloadSuccessfulMessageText
    Given user is on page HomeLoanxxxxx00004Page clicks on OkayButton
    Given user is on page HomeLoanxxxxx00004Page clicks on Last3MonthCard
    Given user is on page HomeLoanxxxxx00004Page clicks on emailButtonOnStatement
    Given user is on page HomeLoanxxxxx00004Page clicks on OkayButton
    Given user is on page HomeLoanxxxxx00004Page clicks on downloadButtonOnStatement
    Then user verifies text on page HomeLoanxxxxx00004Page is Download Successful on DownloadSuccessfulMessageText
    Given user is on page HomeLoanxxxxx00004Page clicks on OkayButton
    Given user is on page HomeLoanxxxxx00004Page clicks on Last6MonthCard
    Given user is on page HomeLoanxxxxx00004Page clicks on emailButtonOnStatement
    Given user is on page HomeLoanxxxxx00004Page clicks on OkayButton
    Given user is on page HomeLoanxxxxx00004Page clicks on downloadButtonOnStatement
    Then user verifies text on page HomeLoanxxxxx00004Page is Download Successful on DownloadSuccessfulMessageText
    Given user is on page HomeLoanxxxxx00004Page clicks on OkayButton
    Given user is on page HomeLoanxxxxx00004Page clicks on LastfinancialyearCard
    Given user is on page HomeLoanxxxxx00004Page clicks on emailButtonOnStatement
    Given user is on page HomeLoanxxxxx00004Page clicks on OkayButton
    Given user is on page HomeLoanxxxxx00004Page clicks on downloadButtonOnStatement
    Then user verifies text on page HomeLoanxxxxx00004Page is Download Successful on DownloadSuccessfulMessageText
    Given user is on page HomeLoanxxxxx00004Page clicks on OkayButton
    Given user is on page HomeLoanxxxxx00004Page clicks on CurrentfinancialyearCard
    Given user is on page HomeLoanxxxxx00004Page clicks on emailButtonOnStatement
    Given user is on page HomeLoanxxxxx00004Page clicks on OkayButton
    Given user is on page HomeLoanxxxxx00004Page clicks on downloadButtonOnStatement
    Then user verifies text on page HomeLoanxxxxx00004Page is Download Successful on DownloadSuccessfulMessageText
    Given user is on page HomeLoanxxxxx00004Page clicks on OkayButton
    Given user is on page HomeLoanxxxxx00004Page clicks on TransactTab
    Given user is on page HomeLoanxxxxx00004Page clicks on SelectAccountDownArrow
    Given user is on page HomeLoanxxxxx00004Page clicks on SelectSavingsAccountxxx0199
    When user is on page HomeLoanxxxxx00004Page and types 101 on AmountTextInput
    Given user is on page HomeLoanxxxxx00004Page clicks on payButton
    When user is on page HomeLoanxxxxx00004Page and types 0852 on TpinText
    Given user is on page HomeLoanxxxxx00004Page clicks on ContinueButton
    Given user is on page HomeLoanxxxxx00004Page clicks on OkayButton
    Given user is on page HomeLoanxxxxx00004Page clicks on RequestsTab
    Given user is on page HomeLoanxxxxx00004Page clicks on InterestCertificate
    Given user is on page LoanInterestCertificatePage clicks on PreviousFinancialYear
    Given user is on page LoanInterestCertificatePage clicks on generateButton
    Then user verifies text on page LoanInterestCertificatePage is ₹ 85258.00 Dr on InterestAmountDebitRuppesSymbol
    Given user is on page LoanInterestCertificatePage clicks on ShareButton
    Given user is on page LoanInterestCertificatePage clicks on CancelButton
    Given user is on page LoanInterestCertificatePage clicks on DownloadButton
    Then user verifies text on page LoanInterestCertificatePage is Download Successful on DownloadSuccessfulMessageText
    Given user is on page LoanInterestCertificatePage clicks on OkayButton
    Given user is on page LoanInterestCertificatePage clicks on GoToHomeButton
    Given user clicks with cordinate 86 127
    When user scrolls down to "Logout"
    Given user is on page ProfilePage clicks on LogoutButton
    Given user is on page ProfilePage clicks on ContinueButton

  @Deviceid=OppoA18 @CaseKey=UDB-T16283 @CaseKey=UDB-T16284 @CaseKey=UDB-T16285 @CaseKey=UDB-T16286 @CaseKey=UDB-T16288 @CaseKey=UDB-T16289 @CaseKey=UDB-T16290 @CaseKey=UDB-T16291 @CaseKey=UDB-T16292
  Scenario: Verify that the ETB user is able to select the desired financial year for Interest certificate on deposits
    #Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on Home
    When user scrolls down to "Account Services"
    Given user is on page DashboardPage clicks on AccountServices
    Given user is on page AccountServicesPage clicks on DepositInterestCertificate
    Given user is on page DepositInterestCertificatePage clicks on ConsolidatedDeposits
    Given user is on page DepositInterestCertificatePage clicks on generateButton
    Then user verifies text on page DepositInterestCertificatePage is ₹ 0.00 Cr on InterestAmountCreditRuppesSymbol
    Given user clicks with cordinate 55 119
    Given user is on page DepositInterestCertificatePage clicks on PreviousFinancialYear
    Given user is on page DepositInterestCertificatePage clicks on generateButton
    Then user verifies text on page DepositInterestCertificatePage is ₹ 2008.0 Cr on InterestAmountCreditRuppesSymbol
    Given user is on page DepositInterestCertificatePage clicks on shareButton
    Given user is on page DepositInterestCertificatePage clicks on cancelButtonOnShare
    Given user is on page DepositInterestCertificatePage clicks on downloadButton
    Then user verifies text on page DepositInterestCertificatePage is Download Successful on DownloadSuccessfulMessageText
    Given user is on page DepositInterestCertificatePage clicks on OkayButton
    Given user is on page DepositInterestCertificatePage clicks on GoToHomeButton
    Given user is on page DashboardPage clicks on AccountServices
    Given user is on page AccountServicesPage clicks on DepositInterestCertificate
    When user is on page DepositInterestCertificatePage and types 0044 on SearchEditBox
    Given user is on page DepositInterestCertificatePage clicks on DepositAccountxxxx0044
    Given user is on page DepositInterestCertificatePage clicks on generateButton
    Then user verifies text on page DepositInterestCertificatePage is ₹ 0 Cr on InterestAmountCreditRuppesSymbol
    Given user clicks with cordinate 55 119
    Given user is on page DepositInterestCertificatePage clicks on PreviousFinancialYear
    Given user is on page DepositInterestCertificatePage clicks on generateButton
    Then user verifies text on page DepositInterestCertificatePage is ₹ 991 Cr on InterestAmountCreditRuppesSymbol
    Given user is on page DepositInterestCertificatePage clicks on shareButton
    Given user is on page DepositInterestCertificatePage clicks on cancelButtonOnShare
    Given user is on page DepositInterestCertificatePage clicks on downloadButton
    Then user verifies text on page DepositInterestCertificatePage is Download Successful on DownloadSuccessfulMessageText
    Given user is on page DepositInterestCertificatePage clicks on OkayButton
    Given user is on page DepositInterestCertificatePage clicks on GoToHomeButton
    Given user clicks with cordinate 86 127
    When user scrolls down to "Logout"
    Given user is on page ProfilePage clicks on LogoutButton
    Given user is on page ProfilePage clicks on ContinueButton

  @Deviceid=OppoA18 @CaseKey=UDB-T16428 @CaseKey=UDB-T16427 @CaseKey=UDB-T16400 @CaseKey=UDB-T16396
  Scenario: Verify that the maturity amount and total interest payout are calculated accurately for a Fixed Deposit.
    #Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on Accounts
    Given user is on page DepositPage clicks on AllDepositDropdown
    Given user is on page DepositPage clicks on FixedDepositOption
    Given user is on page DepositPage clicks on FDaccount00044
    Given user is on page DepositPage clicks on DetailsTab
    Then user verifies text on page DepositPage is 7.70% per annum on DepositInterestRateText
    Given user clicks with cordinate 53 116
    Given user is on page DashboardPage clicks on Home
    When user scrolls down to "Calculator"
    Given user is on page DashboardPage clicks on Calculator
    Given user is on page DashboardPage clicks on DepositAmountCalculator
    Given user is on page DashboardPage clicks on DepositTypeDropdown
    Given user is on page DashboardPage clicks on FixedDepositOption
    Given user is on page DashboardPage clicks on calculateButton
    #Given user is on page FDReviewPage clicks on startOverButton
    Given user is on page FDDetailsPage clicks on ClickOnArrow
    Given user is on page FDDetailsPage clicks on SavingAccount
    When user is on page FDDetailsPage and types Automation FD on EnterFDName
    When user is on page FDDetailsPage and types 1001 on EnterAmount
    When user scrolls down to "3 Years"
    Given user is on page FDDetailsPage clicks on 3Years
    When user scrolls down to "Select Interest Payout"
    Given user is on page FDDetailsPage clicks on SelectPeriod
    Given user is on page FDDetailsPage clicks on SelectFirstElement
    #When user scrolls down and clicks on  "On Maturity"
    When user scrolls down to "Add Nominee?"
    Given user is on page FDDetailsPage clicks on AddNominee
    When user scrolls down to "Continue"
    Given user is on page FDDetailsPage clicks on Continue
    Given user is on page FDReviewPage clicks on Checkbox
    Given user is on page FDReviewPage clicks on AcceptButton
    When user scrolls down to "Submit"
    Given user is on page FDReviewPage clicks on Submit
    Given user is on page FDReviewPage clicks on TPIN
    When user is on page FDReviewPage and types 0852 on TpinText
    Given user clicks with cordinate 542 1561
    Given user is on page FDReviewPage clicks on SubmitButton
    Given user is on page FDReviewPage clicks on OkayButton
    Given user clicks with cordinate 86 127
    When user scrolls down to "Logout"
    Given user is on page ProfilePage clicks on LogoutButton
    Given user is on page ProfilePage clicks on ContinueButton

  @Deviceid=OppoA18 @CaseKey=UDB-T16319 @CaseKey=UDB-T16436 @CaseKey=UDB-T16320 @CaseKey=UDB-T16321 @CaseKey=UDB-T16322 @CaseKey=UDB-T16432 @CaseKey=UDB-T16433 @CaseKey=UDB-T16434 @CaseKey=UDB-T16435 @CaseKey=UDB-T16437
  Scenario: Verify that the user can access Other Services by navigating through the Help section.
    #Given user logins to app
    Given user is on page DashboardPage clicks on Help
    Then user verifies text on page HelpPage is Contact Us on ContactUsText
    Given user is on page HelpPage clicks on TaptoCallNumber
    Then user verifies text on page HelpPage is 1800 22 2244 on DialerPadNumberText
    Given user clicks with cordinate 551 1571
    Given user clicks with cordinate 551 1571
    Given user clicks with cordinate 551 1571
    Given user is on page HelpPage clicks on FacebookLink
    Then user verifies text on page HelpPage is Log in on LoginInButtonCaptionOnFB
    Given user clicks with cordinate 551 1571
    When user scrolls down to "Grievance Redressal"
    Given user is on page HelpPage clicks on GrievanceRedressal
    Then user verifies text on page HelpPage is Banks Grievance Redressal Policy on BanksGrievanceRedressalPolicyText
    Given user is on page HelpPage clicks on OpenNewWindowLodgeComplaints
    Then user verifies text on page HelpPage is Lodge Complaints on NewWindowCaptions
    Given user is on page HelpPage clicks on NewWindowCloseButton
    Given user is on page HelpPage clicks on OpenNewWindowLBanksGrievRedressalPolicy
    Then user verifies text on page HelpPage is Banks Grievance Redressal Policy on NewWindowCaptions
    Given user is on page HelpPage clicks on NewWindowCloseButton
    Given user is on page HelpPage clicks on OpenNewWindowImportantContacts
    Then user verifies text on page HelpPage is Important Contacts on NewWindowCaptions
    Given user is on page HelpPage clicks on NewWindowCloseButton
    Given user is on page HelpPage clicks on ExpandHowtolodgegrievances
    Given user clicks with cordinate 54 112
    Given user is on page DashboardPage clicks on Login

  @Deviceid=OppoA18 @CaseKey=UDB-T16222 @CaseKey=UDB-T16223 @CaseKey=UDB-T16224 @CaseKey=UDB-T16225 @CaseKey=UDB-T16227 @CaseKey=UDB-T16228 @CaseKey=UDB-T16231 @CaseKey=UDB-T16230 @CaseKey=UDB-T16232 @CaseKey=UDB-T16233 @CaseKey=UDB-T16226
  Scenario: Verify that ETB user able to navigate to 15 G/H form
    #Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on Home
    When user scrolls down to "Account Services"
    Given user is on page DashboardPage clicks on AccountServices
    Given user is on page AccountServicesPage clicks on Form15GH
    When user scrolls down to "Apply Now"
    Given user is on page Form15GHPage clicks on ApplyNowButton
    Given user is on page Form15GHPage clicks on NoRadioButton
    When user is on page Form15GHPage and types 6000 on EstTotalIncomePrYearEditText
    When user scrolls down to "Continue"
    When user is on page Form15GHPage and types 0 on TotalNumberOfFormText
    When user is on page Form15GHPage and types 6500 on AggregateAmtOfIncomeText
    Given user is on page Form15GHPage clicks on Checkbox
    Given user is on page Form15GHPage clicks on DownloadTermsAndConditionsButton
    Given user is on page Form15GHPage clicks on IAcceptButton
    Given user is on page Form15GHPage clicks on Continue
    Then user verifies text on page Form15GHPage is Awesome! Confirm and review final details on ReviewFinalDetails
    Given user is on page Form15GHPage clicks on Submit
    Given user is on page Form15GHPage clicks on TpinEditText
    When user is on page Form15GHPage and types 0852 on TpinEditText
    Given user is on page Form15GHPage clicks on Continue
    Then user verifies text on page Form15GHPage is Submit on Submit
    Given user clicks with cordinate 54 124
    Then user verifies text on page Form15GHPage is Continue on Continue
    Given user clicks with cordinate 54 124
    Then user verifies text on page Form15GHPage is Apply Now on ApplyNowButton
    Given user clicks with cordinate 73 116
    Then user verifies text on page AccountServicesPage is Form 15G/H on Form15GH
    Given user clicks with cordinate 70 118
    Given user is on page DashboardPage clicks on Home
    Given user clicks with cordinate 86 127
    When user scrolls down to "Logout"
    Given user is on page ProfilePage clicks on LogoutButton
    Given user is on page ProfilePage clicks on ContinueButton

  @Deviceid=OppoA18 @CaseKey=UDB-T16307 @CaseKey=UDB-T16310 @CaseKey=UDB-T16311 @CaseKey=UDB-T16312 @CaseKey=UDB-T16313 @CaseKey=UDB-T16316 @CaseKey=UDB-T16317 @CaseKey=UDB-T16318 @CaseKey=UDB-T16309
  Scenario: Verify Access to 'Locate Us' from Post-login Homepage to locate ATM/Branch
    #Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on Support
    When user scrolls down to "ATM"
    Given user is on page LocateUsPage clicks on ATMTab
    Given user is on page LocateUsPage clicks on BranchTab
    Given user is on page LocateUsPage clicks on ChangeLink
    When user is on page LocateUsPage and types Pune on EnterCityTextBox
    Given user is on page LocateUsPage clicks on SelectCity
    Given user is on page LocateUsPage clicks on SubmitButton
    Given user is on page LocateUsPage clicks on ATMTab
    Then user verifies text on page LocateUsPage is PIMPRICHINCHWAD on ATMPIMPRICHINCHWAD
    Given user is on page LocateUsPage clicks on BranchTab
    Then user verifies text on page LocateUsPage is BHOSARI on BRANCHBHOSARI
    Given user is on page LocateUsPage clicks on NavigateToMapLink
    Given user clicks with cordinate 542 1561
    Then user verifies text on page LocateUsPage is Explore on Explore
    Given user clicks with cordinate 542 1561
    Given user is on page DashboardPage clicks on Home
    Given user clicks with cordinate 86 127
    When user scrolls down to "Logout"
    Given user is on page ProfilePage clicks on LogoutButton
    Given user is on page ProfilePage clicks on ContinueButton

  @Deviceid=OppoA18 @CaseKey=UDB-T16373 @CaseKey=UDB-T16374 @CaseKey=UDB-T16375 @CaseKey=UDB-T16376 @CaseKey=UDB-T16377
  Scenario: Verify that ETB user select Add/ Edit nominee
    #Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on Home
    Given user is on page DepositTab clicks on SavingsAccountxxx0199
    Given user is on page SavingsAccountxxx0199Page clicks on DetailsTab
    When user scrolls down to "Share"
    Given user is on page SavingsAccountxxx0199Page clicks on NomineeEdit
    When user is on page NomineeDetailsPage and types Sachin on NomineeNameEditBox
    Given user is on page NomineeDetailsPage clicks on RelationShipFatherDropdown
    Given user is on page NomineeDetailsPage clicks on SonRelationship
    When user is on page NomineeDetailsPage and types Vidyavihar on Address1EditBox
    When user is on page NomineeDetailsPage and types Near Railway Station on Address2EditBox
    When user scrolls down to "Save Changes"
    Given user is on page NomineeDetailsPage clicks on SaveChangesButton
    When user is on page NomineeDetailsPage and types 0852 on TransactionPinEditBox
    Given user is on page NomineeDetailsPage clicks on ContinueButton
    Then user verifies text on page NomineeDetailsPage is Sachin on NomineeName
    Given user is on page SavingsAccountxxx0199Page clicks on NomineeEdit
    When user is on page NomineeDetailsPage and types Manohar on NomineeNameEditBox
    Given user is on page NomineeDetailsPage clicks on RelationShipSonDropdown
    Given user is on page NomineeDetailsPage clicks on FatherRelationship
    When user scrolls down to "Save Changes"
    Given user is on page NomineeDetailsPage clicks on NomineeCheckbox
    Given user is on page NomineeDetailsPage clicks on SaveChangesButton
    When user is on page NomineeDetailsPage and types 0852 on TransactionPinEditBox
    Given user is on page NomineeDetailsPage clicks on ContinueButton
    Then user verifies text on page NomineeDetailsPage is Manohar on OldNomineeName
    Given user clicks with cordinate 542 1561
    Given user is on page DashboardPage clicks on Home
    Given user clicks with cordinate 86 127
    When user scrolls down to "Logout"
    Given user is on page ProfilePage clicks on LogoutButton
    Given user is on page ProfilePage clicks on ContinueButton

  @Deviceid=OppoA18 @CaseKey=UDB-T16382 @CaseKey=UDB-T16383
  Scenario: Verify that ETB user choose Account and Issue Balance Certificate
    #Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on Home
    When user scrolls down to "Account Services"
    Given user is on page DashboardPage clicks on AccountServices
    Given user is on page AccountServicesPage clicks on BalanceCertificate
    When user is on page BalanceCertificatePage and types 0199 on SearchEditBox
    Given user is on page BalanceCertificatePage clicks on SavingsAccount00199
    Given user is on page BalanceCertificatePage clicks on SelectDate
    Given user is on page BalanceCertificatePage clicks on GenerateButton
    Then user verifies text on page "BalanceCertificatePage" is "₹1,109.50" on "BalanceAmountRupeeSymbol"
    Given user is on page BalanceCertificatePage clicks on ShareButton
    Given user is on page BalanceCertificatePage clicks on CancelButton
    Given user is on page BalanceCertificatePage clicks on DownloadButton
    Given user is on page BalanceCertificatePage clicks on GoToHomeButton
    Given user is on page DashboardPage clicks on Home
    Given user clicks with cordinate 86 127
    When user scrolls down to "Logout"
    Given user is on page ProfilePage clicks on LogoutButton
    Given user is on page ProfilePage clicks on ContinueButton

  @Deviceid=OppoA18 @CaseKey=UDB-T16271 @CaseKey=UDB-T16276 @CaseKey=UDB-T16270 @CaseKey=UDB-T16272 @CaseKey=UDB-T16274 @CaseKey=UDB-T16275 @CaseKey=UDB-T16279
  Scenario: Verify that the ETB user can initiate a request for the interest certificate on a loan
    #Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on Home
    When user scrolls down to "Account Services"
    Given user is on page DashboardPage clicks on AccountServices
    Given user is on page AccountServicesPage clicks on LoanInterestCertificate
    Given user is on page LoanInterestCertificatePage clicks on ConsolidatedLoans
    Given user is on page LoanInterestCertificatePage clicks on PreviousFinancialYear
    Given user is on page LoanInterestCertificatePage clicks on generateButton
    Then user verifies text on page LoanInterestCertificatePage is ₹ 1048438.0 Dr on InterestAmountDebitRuppesSymbol
    Given user is on page LoanInterestCertificatePage clicks on ShareButton
    Given user is on page LoanInterestCertificatePage clicks on CancelButton
    Given user is on page LoanInterestCertificatePage clicks on DownloadButton
    Then user verifies text on page LoanInterestCertificatePage is Download Successful on DownloadSuccessfulMessageText
    Given user is on page LoanInterestCertificatePage clicks on OkayButton
    Given user is on page LoanInterestCertificatePage clicks on GoToHomeButton
    Given user is on page DashboardPage clicks on AccountServices
    Given user is on page AccountServicesPage clicks on LoanInterestCertificate
    When user is on page LoanInterestCertificatePage and types 0051 on SearchEditBox
    Given user is on page LoanInterestCertificatePage clicks on HomeLoan0051
    Given user is on page LoanInterestCertificatePage clicks on PreviousFinancialYear
    Given user is on page LoanInterestCertificatePage clicks on generateButton
    Then user verifies text on page LoanInterestCertificatePage is ₹ 225225.00 Dr on InterestAmountDebitRuppesSymbol
    Given user is on page LoanInterestCertificatePage clicks on ShareButton
    Given user is on page LoanInterestCertificatePage clicks on CancelButton
    Given user is on page LoanInterestCertificatePage clicks on DownloadButton
    Then user verifies text on page LoanInterestCertificatePage is Download Successful on DownloadSuccessfulMessageText
    Given user is on page LoanInterestCertificatePage clicks on OkayButton
    Given user is on page LoanInterestCertificatePage clicks on GoToHomeButton
    Given user clicks with cordinate 86 127
    When user scrolls down to "Logout"
    Given user is on page ProfilePage clicks on LogoutButton
    Given user is on page ProfilePage clicks on ContinueButton

  @Deviceid=GalaxyM32
  @CaseKey=UDB-T16360 @CaseKey=UDB-T16361 @CaseKey=UDB-T16362 @CaseKey=UDB-T16363 
  @CaseKey=UDB-T16364 @CaseKey=UDB-T16365 @CaseKey=UDB-T16366 @CaseKey=UDB-T16367
  Scenario: Verify that ETB user navigate to Payments Screen
    #Given user logins to app
    Given user logins to app entering Login PIN
    Given user is on page DashboardPage clicks on Payments
    When user scrolls down to "Favourite Transaction"
    Given user is on page PaymentPage clicks on TransferTab
    When user scrolls down to "View 5 More"
    Given user is on page PaymentPage clicks on View5More
    When user scrolls down to "Hide"
    Given user is on page PaymentPage clicks on Hide
    Given user is on page PaymentPage clicks on ViewRecentTransaction
    Given user is on page PaymentPage clicks on SelectAccountDropdown
    Given user is on page PaymentPage clicks on SavingAccountXXXXX00001
    Given user is on page PaymentPage clicks on CompletedTab
    Given user is on page PaymentPage clicks on View5More 
    When user scrolls down to "View 5 More"
    Given user is on page PaymentPage clicks on View5More    
    When user scrolls down to "Wednesday,05th Mar 2025"
    When user is on page PaymentPage and types WITHINBANK on SearchBox
    Given user is on page PaymentPage clicks on FirstEntry
    Then user verifies text on page "PaymentPage" is "Within Bank" on "PaymentModeWITHINBANKText"
    Given user is on page PaymentPage clicks on ShareButton
    Given user clicks with cordinate 840 2324
    Given user is on page PaymentPage clicks on BackButton
    When user is on page PaymentPage and types NEFT on SearchBox
    Given user is on page PaymentPage clicks on FirstEntry
    Then user verifies text on page "PaymentPage" is "NEFT" on "PaymentModeNEFTText"
    Given user is on page PaymentPage clicks on ShareButton
    Given user clicks with cordinate 840 2324
    Given user is on page PaymentPage clicks on BackButton    
    Given user clicks with cordinate 840 2324
    Given user clicks with cordinate 840 2324
    Given user is on page DashboardPage clicks on Home
    Given user clicks with cordinate 840 2324
    Given user is on page ProfilePage clicks on ContinueButton

  @Deviceid=OppoA18 @CaseKey=UDB-T16325
  Scenario: Verify that ETB user navigate to Payments Screens
    #Given user logins to app
    Given user is on page PreLoginPage clicks on BalanceEnquiry
    Given user logins to app entering Login PIN
    Then user verifies text on page PreLoginPage is xxxx 5500 on AccountNumberText
    Given user is on page PreLoginPage clicks on PrimaryAccountSwitchButton
    Given user is on page PreLoginPage clicks on BalanceEnquiry
    Given user logins to app entering Login PIN
    Given user is on page PreLoginPage clicks on SetPrimaryACButton
    Then user verifies text on page PreLoginPage is Select a Primary Account on SetPrimaryACText
    Given user is on page PreLoginPage clicks on SBAxxxx5500SwitchButton
    Then user verifies text on page PreLoginPage is xxxx 5500 on AccountNumberText
    Given user clicks with cordinate 55 119
