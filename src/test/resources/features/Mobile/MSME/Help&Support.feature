Feature: Mobile UI automation for MSME Help & Support
#Tester: Vijay Moyalan/Varun Hota

#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps


@TestCaseKey=UDB-T44515 @Automatable @RedmiNote9Pro  @Set1
Scenario: To verify that the user can access the Support tab after login.
#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption


@TestCaseKey=UDB-T44516 @TestCaseKey=UDB-T44517 @Automatable @RedmiNote9Pro  @Set1
Scenario: To check if the “Service Request” & “Resource Center” option is visible in the Support section.
#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Then user verifies on page MSMESupportPage for Service Request text in placeholder ServiceRequestSection
	Then user verifies on page MSMESupportPage for Resource Center text in placeholder ResourceCenterSection


@TestCaseKey=UDB-T44518 @TestCaseKey=UDB-T44519 @Automatable @RedmiNote9Pro  @Set1
Scenario: To verify if the “Grievance Redressal” & "FAQs" option is available in the Support section.

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Then user verifies on page MSMESupportPage for Grievance Redressal text in placeholder GrievanceRedressalSection
	When user scrolls down to "Demo Videos"
	Then user verifies on page MSMESupportPage for FAQ text in placeholder FAQSection
	

@TestCaseKey=UDB-T44520 @TestCaseKey=UDB-T44521 @Automatable @RedmiNote9Pro  @Set1
Scenario: To verify if the “Demo Videos” & “Locate us” option is available in the Support section.

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	When user scrolls down to "Demo Videos"
	Then user verifies on page MSMESupportPage for Demo Videos text in placeholder DemoVideosSection
	When user scrolls down to "Locate Us"
	Then user verifies on page MSMESupportPage for Locate Us text in placeholder LocateUsSection
	

@TestCaseKey=UDB-T44522 @TestCaseKey=UDB-T44581 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Navigation to Account Services

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on AccountServicesOption
	Then user verifies on page MSMESupportPage for Account Related Services text in placeholder AccountServicesPage
	
	
@TestCaseKey=UDB-T44523 @TestCaseKey=UDB-T44524 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Add Nominee Service and Transfer Account Service Visibility

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on AccountServicesOption
	Then user verifies on page MSMESupportPage for Add Nominee text in placeholder AccountServicesAddNominee
	Then user verifies on page MSMESupportPage for Transfer Account text in placeholder AccountServicesTransferAcc
	
	
@TestCaseKey=UDB-T44526 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Navigation to Card Services

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on CardServicesOption
	Then user verifies on page MSMESupportPage for Card Services text in placeholder CardServicesTitleName
	
	
@TestCaseKey=UDB-T44527 @TestCaseKey=UDB-T44531 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Debit Card & Credit Card Services Visibility

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on CardServicesOption
	Then user verifies on page MSMESupportPage for Debit Card Services text in placeholder DebitCardName
	Then user verifies on page MSMESupportPage for Credit Card Services text in placeholder CreditCardName
	
	
@TestCaseKey=UDB-T44534 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Navigation to Cheque Services

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on ChequeServicesOption
	Then user verifies on page MSMESupportPage for Cheque Services text in placeholder ChequeServiceTitleName
	
	
@TestCaseKey=UDB-T44535 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Cheque Book Request Visibility

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on ChequeServicesOption
	Then user verifies on page MSMESupportPage for Cheque Book Request text in placeholder ChequeBookField
	Given user is on page MSMESupportPage clicks on ChequeBookField
	Then user verifies on page MSMESupportPage for Cheque Book Request text in placeholder ChequeBookTitleName
	
	
@TestCaseKey=UDB-T44536 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Cheque Status Enquiry Visibility

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on ChequeServicesOption
	Then user verifies on page MSMESupportPage for Cheque Status Enquiry text in placeholder ChequeStatusField
	Given user is on page MSMESupportPage clicks on ChequeStatusField
	Then user verifies on page MSMESupportPage for Cheque Status Enquiry text in placeholder ChequeStatusTitleName
	
	
@TestCaseKey=UDB-T44537 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Cheque Status Enquiry Visibility.

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on ChequeServicesOption
	Then user verifies on page MSMESupportPage for Stop Cheque Payment text in placeholder StopChequeField
	Given user is on page MSMESupportPage clicks on StopChequeField
	Then user verifies on page MSMESupportPage for Stop Cheque Payment text in placeholder StopChequeTitleName
	
	
@TestCaseKey=UDB-T44538 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Positive Pay Service Visibility

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on ChequeServicesOption
	Then user verifies on page MSMESupportPage for Positive Pay text in placeholder PositivePayField
	Given user is on page MSMESupportPage clicks on PositivePayField
	Then user verifies on page MSMESupportPage for Positive Pay text in placeholder PositivePayTitleName
	
	
@TestCaseKey=UDB-T44540 @TestCaseKey=UDB-T44622 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Navigation to Certificates

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on CertificatesOption
	Then user verifies on page MSMESupportPage for Certificates text in placeholder CertificatesTitleName
	Given user is on page MSMESupportPage clicks on BackIcon
	
	
@TestCaseKey=UDB-T44541 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Issue Interest Certificate for Loans

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on CertificatesOption
	Then user verifies on page MSMESupportPage for "Issue Interest Certificate" text in placeholder LoansIntCertName
	Given user is on page MSMESupportPage clicks on LoanInterestCertificates
	Given user is on page MSMESupportPage clicks on ComingSoonPopup
	
#	Then user verifies on page MSMESupportPage for "Issue Interest Certificate" text in placeholder LoansIntCertTitleName
	
	
@TestCaseKey=UDB-T44542 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Issue Interest Certificate for Deposits

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on CertificatesOption
	Then user verifies on page MSMESupportPage for "Interest Certificate" text in placeholder DepositIntCertName
	Given user is on page MSMESupportPage clicks on DepositInterestCertificates
	Given user is on page MSMESupportPage clicks on ComingSoonPopup
#	Then user verifies on page MSMESupportPage for "Issue Interest Certificate" text in placeholder DepositIntCertTitleName
	
@TestCaseKey=UDB-T44543 @Automatable @RedmiNote9Pro  @Set1
Scenario: Verify Issue Balance Certificate

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on CertificatesOption
	Then user verifies on page MSMESupportPage for "Issue Balance Certificate" text in placeholder BalanceCertName
	Given user is on page MSMESupportPage clicks on BalanceCertificates
	Then user verifies on page MSMESupportPage for "Balance Certificate" text in placeholder BalanceCertTitleName
	
	
@TestCaseKey=UDB-T44544 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Issue Form 16

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on CertificatesOption
	Then user verifies on page MSMESupportPage for "Form 16A" text in placeholder Form16CertName
	Given user is on page MSMESupportPage clicks on Form16Certificate
	Given user is on page MSMESupportPage clicks on ComingSoonPopup
#	Then user verifies on page MSMESupportPage for "Form 16/16A" text in placeholder Form16CertTitleName
	
	
@TestCaseKey=UDB-T44545 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Issue TDS Certificate for Deposits

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on CertificatesOption
	Then user verifies on page MSMESupportPage for "Issue TDS Certificate" text in placeholder TDSDepositCertName
	Given user is on page MSMESupportPage clicks on TDSDepositCertificate
	Given user is on page MSMESupportPage clicks on ComingSoonPopup
#	Then user verifies on page MSMESupportPage for "TDS Certificate Consolidated" text in placeholder TDSDepositCertTitleName
	
	
@TestCaseKey=UDB-T44552 @TestCaseKey=UDB-T44553  @TestCaseKey=UDB-T44597 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Resource Center and Resource Center Options Visibility

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Then user verifies on page MSMESupportPage for "Resource Center" text in placeholder ResourceCenterName
	Then user verifies on page MSMESupportPage for "Announcements" text in placeholder AnnouncementsFieldName
	Then user verifies on page MSMESupportPage for "Important Information" text in placeholder ImpInfoFieldName
	Then user verifies on page MSMESupportPage for "Others" text in placeholder OthersFieldName
	
	
@TestCaseKey=UDB-T44554 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Click on Announcements Option

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Then user verifies on page MSMESupportPage for "Announcements" text in placeholder AnnouncementsFieldName
	Given user is on page MSMESupportPage clicks on AnnouncementsField
	Then user verifies on page MSMESupportPage for "Announcements" text in placeholder AnnouncementsTitleName
	Then user verifies on page MSMESupportPage for "New Schemes, Products" text in placeholder NewSchemesName
	Given user is on page MSMESupportPage clicks on NewSchemesProductsLink
	Given user is on page MSMESupportPage clicks on ClosePage
	Then user verifies on page MSMESupportPage for "MSME loan interest rate" text in placeholder MSMELoanIntRateName
	Given user is on page MSMESupportPage clicks on LoanInterestRateLink
	Given user is on page MSMESupportPage clicks on ClosePage
	Then user verifies on page MSMESupportPage for "App/feature updates" text in placeholder AppUpdatesName
	Given user is on page MSMESupportPage clicks on AppFeatureLink
	Given user is on page MSMESupportPage clicks on ClosePage
	
	
@TestCaseKey=UDB-T44555 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Click on Important Information Option

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Then user verifies on page MSMESupportPage for "Important Information" text in placeholder ImpInfoFieldName
	Given user is on page MSMESupportPage clicks on ImportantInfoField
	Then user verifies on page MSMESupportPage for "Important Information" text in placeholder ImportantInfoTitleName
	Then user verifies on page MSMESupportPage for "Glimpse of Important schemes" text in placeholder ImportantSchemesName
	Given user is on page MSMESupportPage clicks on ImportantSchemeLink
	Given user is on page MSMESupportPage clicks on ClosePage
	Then user verifies on page MSMESupportPage for "Safe and secure guidelines" text in placeholder GuidelinesName
	Given user is on page MSMESupportPage clicks on GuidelinesLink
	Given user is on page MSMESupportPage clicks on ClosePage
	Then user verifies on page MSMESupportPage for "Union MSME Superfast" text in placeholder STPLinkName
	Given user is on page MSMESupportPage clicks on MSMESTPLink
	Given user is on page MSMESupportPage clicks on ClosePage
	
	
@TestCaseKey=UDB-T44556 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Click on Others Option

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Then user verifies on page MSMESupportPage for "Others" text in placeholder OthersFieldName
	Given user is on page MSMESupportPage clicks on OthersField
	Then user verifies on page MSMESupportPage for "Others" text in placeholder OthersTitleName
	Then user verifies on page MSMESupportPage for "General Information" text in placeholder GeneralInfoName
	Then user verifies on page MSMESupportPage for "Policy and Disclosures" text in placeholder PolicyDisclosuresName
	Then user verifies on page MSMESupportPage for "General Banking Guidelines" text in placeholder BankingGuidelinesName
	
	
@TestCaseKey=UDB-T44557 @TestCaseKey=UDB-T44558 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Grievance Redressal Option and Grievance Redressal Fields Visibility

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	When user scrolls down to "FAQ's"
	Then user verifies on page MSMESupportPage for Grievance Redressal text in placeholder GrievanceRedressalSection
	Given user is on page MSMESupportPage clicks on GrievanceRedressalField
	Then user verifies on page MSMESupportPage for "Grievance Redressal" text in placeholder GrievanceRedressalName
	Then user verifies on page MSMESupportPage for "Lodge Complaints" text in placeholder LodgeComplaintsName
	Then user verifies on page MSMESupportPage for "Bank's Grievance Redressal Policy" text in placeholder RedressalPolicyName
	Then user verifies on page MSMESupportPage for "Important Contacts" text in placeholder ImportantContactsName
	Then user verifies on page MSMESupportPage for "How to lodge grievances?" text in placeholder LodgeGrievancesName
	
	
@TestCaseKey=UDB-T44559  @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Click on Banks Grievance Redressal Policy

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	When user scrolls down to "FAQ's"
	Given user is on page MSMESupportPage clicks on GrievanceRedressalField
	Then user verifies on page MSMESupportPage for "Bank's Grievance Redressal Policy" text in placeholder RedressalPolicyName
	Given user is on page MSMESupportPage clicks on RedressalPolicyLink
	Then user verifies on page MSMESupportPage for "Bank's Grievance Redressal Policy" text in placeholder RedressalPolicyTitleName
	
	
@TestCaseKey=UDB-T44560 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Click on Important Contacts

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	When user scrolls down to "FAQ's"
	Given user is on page MSMESupportPage clicks on GrievanceRedressalField
	Then user verifies on page MSMESupportPage for "Important Contacts" text in placeholder ImportantContactsName
	Given user is on page MSMESupportPage clicks on ImportantContactsLink
	Then user verifies on page MSMESupportPage for "Important Contacts" text in placeholder ImportantContactsTitleName
	
	
@TestCaseKey=UDB-T44561 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Click on Lodge Complaints

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	When user scrolls down to "FAQ's"
	Given user is on page MSMESupportPage clicks on GrievanceRedressalField
	Then user verifies on page MSMESupportPage for "Lodge Complaints" text in placeholder LodgeComplaintsName
	Given user is on page MSMESupportPage clicks on LodgeComplaintsLink
	Then user verifies on page MSMESupportPage for "Lodge Complaints" text in placeholder LodgeComplaintsTitleName
	
	
@TestCaseKey=UDB-T44562 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Click on How to Lodge Grievances

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	When user scrolls down to "FAQ's"
	Given user is on page MSMESupportPage clicks on GrievanceRedressalField
	Then user verifies on page MSMESupportPage for "How to lodge grievances?" text in placeholder LodgeGrievancesName
	Given user is on page MSMESupportPage clicks on LodgeGrievancesIcon
	Given user swipe down the page
	Given user scrolls up to "Lodge Complaints"
	Given user is on page MSMESupportPage clicks on LodgeGrievancesIcon
	
	
@TestCaseKey=UDB-T44563 @TestCaseKey=UDB-T44564 @TestCaseKey=UDB-T44565 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify FAQs Section Visibility, Verify FAQ Content Display and Verify Click on View All Button

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	When user scrolls down to "FAQ's"
	Then user verifies on page MSMESupportPage for FAQ text in placeholder FAQSection
	Given user is on page MSMESupportPage clicks on FAQViewAll
	Then user verifies on page MSMESupportPage for FAQ text in placeholder FAQTitleName

	
	
@TestCaseKey=UDB-T44566 @TestCaseKey=UDB-T44567 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Accordion Menu for Each FAQ

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	When user scrolls down to "FAQ's"
	Given user is on page MSMESupportPage clicks on FAQViewAll
	Then user verifies on page MSMESupportPage for "Deposits" text in placeholder DepositsTabField
	Given user is on page MSMESupportPage clicks on GeneralTab
	Then user verifies on page MSMESupportPage for "General" text in placeholder GeneralTabField
	Given user is on page MSMESupportPage clicks on Loans&AdvancesTab
	Then user verifies on page MSMESupportPage for "Loans and Advances" text in placeholder Loans&AdvancesTabField
	Given user is on page MSMESupportPage clicks on VASTab
	Then user verifies on page MSMESupportPage for "Value Added Services" text in placeholder VASTabField
	
	
@TestCaseKey=UDB-T44568 @TestCaseKey=UDB-T44569 @TestCaseKey=UDB-T44606 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Demo Videos Section Visibility and Demo Video Links Display

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	When user scrolls down to "FAQ's"
	Then user verifies on page MSMESupportPage for Demo Videos text in placeholder DemoVideosSection
	Given user is on page MSMESupportPage clicks on DemoVideosViewAll
	Then user verifies on page MSMESupportPage for "Kisan Tatkal" text in placeholder KisanTatkalField
#	Given user is on page MSMESupportPage clicks on KisanTatkalVideos
#	Given user is on page MSMESupportPage clicks on ClosePage
	Then user verifies on page MSMESupportPage for "Linking Aadhaar to Account" text in placeholder LinkingAadhaarField
#	Given user is on page MSMESupportPage clicks on LinkingAadhaarVideos
#	Given user is on page MSMESupportPage clicks on ClosePage


@TestCaseKey=UDB-T44573 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Debit Card Services for Allowed User

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on CardServicesOption
	Given user is on page MSMESupportPage clicks on DebitCardServicesOption
	Then user verifies on page MSMESupportPage for Debit Card Services text in placeholder DebitCardName
	
	
@TestCaseKey=UDB-T44575 @Automatable @RedmiNote9Pro  @Set2
Scenario: Verify Credit Card Services for Allowed User

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on CardServicesOption
	Given user is on page MSMESupportPage clicks on CreditCardServicesOption
	Then user verifies on page MSMESupportPage for Credit Card Services text in placeholder CreditCardName
	
	
@TestCaseKey=UDB-T44570 @TestCaseKey=UDB-T44571 @TestCaseKey=UDB-T44605 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify Locate Us, Locate ATM Option, Locate Branch Option

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	When user scrolls down to "FAQ's"
	When user scrolls down to "Locate Us"
	Given user swipe down the page
	Then user verifies on page MSMESupportPage for Locate Us text in placeholder LocateUsSection
#	Given user is on page MSMESupportPage clicks on ATMButton
	Then user verifies on page MSMESupportPage for ATM text in placeholder ATMField
	Then user verifies on page MSMESupportPage for Branch text in placeholder BranchField
	Then user verifies on page MSMESupportPage for 0-3 kms text in placeholder ATMRadiusOption1
	Then user verifies on page MSMESupportPage for 3-5 kms text in placeholder ATMRadiusOption2
	Then user verifies on page MSMESupportPage for 5-10 kms text in placeholder ATMRadiusOption3
	Given user is on pabge MSMESupportPage clicks on BranchButton
	
	
	
@TestCaseKey=UDB-T44528 @TestCaseKey=UDB-T44529 @TestCaseKey=UDB-T44530 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify Debit Card Services Account Display, Swipe Action for Multiple Accounts, Debit Card Management Screen

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on CardServicesOption
	Given user is on page MSMESupportPage clicks on DebitCardServicesOption
	Then user verifies on page MSMESupportPage for Debit Card Services text in placeholder DebitCardName
	Then user verifies on page MSMESupportPage for Account Details text in placeholder DebitCardAccountSection
	
	
@TestCaseKey=UDB-T44532 @TestCaseKey=UDB-T44533 @TestCaseKey=UDB-T44588 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify Credit Card Services Display and Credit Card Management Screen

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on CardServicesOption
	Given user is on page MSMESupportPage clicks on CreditCardServicesOption
	Then user verifies on page MSMESupportPage for Credit Card Services text in placeholder CreditCardName
	Then user verifies on page MSMESupportPage for Select a Credit Card text in placeholder CreditCardSelectionName
	
	
@TestCaseKey=UDB-T44582 @TestCaseKey=UDB-T44583 @TestCaseKey=UDB-T44584 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify Common Bottom Section,Service Request in Bottom Section and Pending Service Request in Bottom Section

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEHomePage clicks on Home
	Given user swipe down the page
	Then user verifies on page MSMEHomePage for Service Request text in placeholder ServiceRequestName
#	Then user verifies on page MSMEHomePage for Pending Service Requests text in placeholder PendingServiceRequestName
	
	
@TestCaseKey=UDB-T44586 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify "View All" action under Service Request

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEHomePage clicks on Home
	Given user swipe down the page
	Given user is on page MSMEHomePage clicks on ServiceRequestViewAll
	
	
@TestCaseKey=UDB-T44591 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify "View All" action under Pending Service Request

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEHomePage clicks on Home
	Given user swipe down the page
	Given user is on page MSMEHomePage clicks on PendingServiceRequestViewAll
	
	
	
@TestCaseKey=UDB-T44587  @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify Account Services flow from Service Request

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on AccountServicesOption
	Given user is on page MSMESupportPage clicks on AddNominee
	Given user is on page MSMESupportPage clicks on ComingSoonPopup
	
#	Below code comments are this feature is in next release
#	Then user verifies on page MSMESupportPage for Edit Nominee Details text in placeholder EditNomineeTitlePage
#	Given user is on page MSMESupportPage clicks on BackIcon
#	Given user is on page MSMESupportPage clicks on TransferAccount
#	Then user verifies on page MSMESupportPage for Transfer Account text in placeholder TransferAccountTitlePage
	
	
	
@TestCaseKey=UDB-T44596 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify Service Request Options

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Then user verifies on page MSMESupportPage for Account\nServices text in placeholder AccountServicesText
	Then user verifies on page MSMESupportPage for Card\nServices text in placeholder CardServicesText
	Then user verifies on page MSMESupportPage for Cheque\nServices text in placeholder ChequeServicesText
	Then user verifies on page MSMESupportPage for Certificates text in placeholder CertificateText
	Then user verifies on page MSMESupportPage for Account\nServices text in placeholder ServiceRequestSection
	
	
@TestCaseKey=UDB-T44589 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify Cheque Services flow from Service Request

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on ChequeServicesOption
	Given user is on page MSMESupportPage clicks on ChequeBookField
	Then user verifies on page MSMESupportPage for Cheque Book Request text in placeholder ChequeBookTitleName
	Given user is on page MSMESupportPage clicks on BackIcon
	Given user is on page MSMESupportPage clicks on ChequeStatusField
	Then user verifies on page MSMESupportPage for Cheque Status Enquiry text in placeholder ChequeStatusTitleName
	Given user is on page MSMESupportPage clicks on BackIcon
	Given user is on page MSMESupportPage clicks on StopChequeField
	Then user verifies on page MSMESupportPage for Stop Cheque Payment text in placeholder StopChequeTitleName
	Given user is on page MSMESupportPage clicks on BackIcon
	Given user is on page MSMESupportPage clicks on PositivePayField
	Then user verifies on page MSMESupportPage for Positive Pay text in placeholder PositivePayTitleName
	Given user is on page MSMESupportPage clicks on CloseIcon
	Given user is on page MSMESupportPage clicks on BackIcon
	
	
@TestCaseKey=UDB-T44611 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify Service Request Options from bottom of home screen.

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEHomePage clicks on Home
	Given user swipe down the page
	Given user is on page MSMESupportPage clicks on HomeAccountService
	Given user is on page MSMESupportPage clicks on BackIcon
	Given user is on page MSMESupportPage clicks on HomeCardService
	Given user is on page MSMESupportPage clicks on BackIcon
	Given user is on page MSMESupportPage clicks on HomeChequeService
	Given user is on page MSMESupportPage clicks on BackIcon
	
	
@TestCaseKey=UDB-T44599 @Automatable @RedmiNote9Pro  @Set3
Scenario: Validate Grievance Redressal Navigation & Links

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	When user scrolls down to "FAQ's"
	Given user is on page MSMESupportPage clicks on GrievanceRedressalField
	Given user is on page MSMESupportPage clicks on RedressalPolicyLink
	Given user is on page MSMESupportPage clicks on ClosePage
	Given user is on page MSMESupportPage clicks on LodgeComplaintsLink
	Given user is on page MSMESupportPage clicks on ClosePage
	Given user is on page MSMESupportPage clicks on ImportantContactsLink
	Given user is on page MSMESupportPage clicks on ClosePage
	Given user is on page MSMESupportPage clicks on LodgeGrievancesIcon
	
	
@TestCaseKey=UDB-T44615 @Automatable @RedmiNote9Pro  @Set3
Scenario: Verify Grievance Submission Process

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	When user scrolls down to "FAQ's"
	Given user is on page MSMESupportPage clicks on GrievanceRedressalField
	Given user is on page MSMESupportPage clicks on LodgeComplaintsLink
	Then user verifies on page MSMESupportPage for "Lodge Complaints" text in placeholder LodgeComplaintsTitleName
	Given user is on page MSMESupportPage clicks on ClosePage
	
	
	
@TestCaseKey=UDB-T44602 @TestCaseKey=UDB-T44621 @Automatable @RedmiNote9Pro  @Set3
Scenario: Validate Certificate Generation

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on CertificatesOption
	Given user is on page MSMESupportPage clicks on DepositInterestCertificates
	Given user is on page MSMESupportPage clicks on ComingSoonPopup
#	Given user is on page MSMESupportPage clicks on SolePropCurrentAccount
#	Given user is on page MSMESupportPage clicks on PreviousFinancialYr
#	Given user is on page MSMESupportPage clicks on CustomYr
#	Given user is on page MSMESupportPage clicks on CurrentFinancialYr
#	Given user is on page MSMESupportPage clicks on GenerateButtom
#	Given user is on page MSMESupportPage to check ShareButton is Enabled
#	Given user is on page MSMESupportPage to check DownloadButton is Enabled
#	Given user is on page MSMESupportPage to check GoHomeButton is Enabled
	
	
@TestCaseKey=UDB-T44620 @Automatable @RedmiNote9Pro  @Set3
Scenario: Validate Certificate Generation for Issue Balance Certificate

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on ChangeAccountIcon
	Given user is on page MSMEDashboardPage clicks on PatorkAutomationAccount
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Given user is on page MSMESupportPage clicks on CertificatesOption
	Given user is on page MSMESupportPage clicks on BalanceCertificates
	Given user is on page MSMESupportPage clicks on SolePropCurrentAccount
	Given user is on page MSMESupportPage clicks on GenerateButtom
	Given user is on page MSMESupportPage to check ShareButton is Enabled
	Given user is on page MSMESupportPage to check DownloadButton is Enabled
	Given user is on page MSMESupportPage to check GoHomeButton is Enabled
	
	
@TestCaseKey=UDB-T44612 @Automatable @RedmiNote9Pro  @Set3
Scenario: Validate Resource Center Navigation

#	Given user logins to MSME app
	Given user logins to MSME app entering Login PIN
	Given user is on page MSMEDashboardPage clicks on SupportOption
	Then user verifies on page MSMESupportPage for "Resource Center" text in placeholder ResourceCenterName
	Given user is on page MSMESupportPage clicks on AnnouncementsField
	Then user verifies on page MSMESupportPage for "Announcements" text in placeholder AnnouncementsTitleName
	Given user is on page MSMESupportPage clicks on BackIcon
	Given user is on page MSMESupportPage clicks on ImportantInfoField
	Then user verifies on page MSMESupportPage for "Important Information" text in placeholder ImportantInfoTitleName
	Given user is on page MSMESupportPage clicks on BackIcon
	Given user is on page MSMESupportPage clicks on OthersField
	Then user verifies on page MSMESupportPage for "Others" text in placeholder OthersTitleName
	Given user is on page MSMESupportPage clicks on BackIcon
	
	
@TestCaseKey=UDB-T44597 @Automatable @RedmiNote9Pro  @Set4
Scenario: Validate Resource Center Navigation in pre-login screen.

#	Given user logins to MSME app
	Given user is on page MSMEPreLoginPage clicks on HelpIcon
	When user scrolls down to "Grievance Redressal"
	Then user verifies on page MSMEPreLoginPage for "Resource Center" text in placeholder ResourceCenterName
	Then user verifies on page MSMEPreLoginPage for "Announcements" text in placeholder AnnouncementsFieldName
	Then user verifies on page MSMEPreLoginPage for "Important Information" text in placeholder ImpInfoFieldName
	Then user verifies on page MSMEPreLoginPage for "Others" text in placeholder OthersFieldName
	
	
@TestCaseKey=UDB-T44598 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify Grievance Redressal Option and Grievance Redressal Fields Visibility in pre login screen

#	Given user logins to MSME app
	Given user is on page MSMEPreLoginPage clicks on HelpIcon
	When user scrolls down to "Grievance Redressal"
	Then user verifies on page MSMEPreLoginPage for Grievance Redressal text in placeholder GrievanceRedressalSection
	Given user is on page MSMEPreLoginPage clicks on GrievanceRedressalField
	Then user verifies on page MSMEPreLoginPage for "Grievance Redressal" text in placeholder GrievanceRedressalName
	Then user verifies on page MSMEPreLoginPage for "Lodge Complaints" text in placeholder LodgeComplaintsName
	Then user verifies on page MSMEPreLoginPage for "Bank's Grievance Redressal Policy" text in placeholder RedressalPolicyName
	Then user verifies on page MSMEPreLoginPage for "Important Contacts" text in placeholder ImportantContactsName
	Then user verifies on page MSMEPreLoginPage for "How to lodge grievances?" text in placeholder LodgeGrievancesName
	
	
@TestCaseKey=UDB-T44603 @Automatable @RedmiNote9Pro  @Set4
Scenario: Validate FAQ Section Expand/Collapse

#	Given user logins to MSME app
	Given user is on page MSMEPreLoginPage clicks on HelpIcon
	When user scrolls down to "FAQ's"
	Given user is on page MSMEPreLoginPage clicks on FAQViewAll
	Then user verifies on page MSMEPreLoginPage for "Deposits" text in placeholder DepositsTabField
	Given user is on page MSMEPreLoginPage clicks on GeneralTab
	Then user verifies on page MSMEPreLoginPage for "General" text in placeholder GeneralTabField
	Given user is on page MSMEPreLoginPage clicks on Loans&AdvancesTab
	Then user verifies on page MSMEPreLoginPage for "Loans and Advances" text in placeholder Loans&AdvancesTabField
	Given user is on page MSMEPreLoginPage clicks on VASTab
#	Then user verifies on page MSMEPreLoginPage for "Value Added Services" text in placeholder VASTabField
	
	
@TestCaseKey=UDB-T44593 @TestCaseKey=UDB-T44608 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify Contact Us Page Loads in pre-login page

#	Given user logins to MSME app
	Given user is on page MSMEPreLoginPage clicks on HelpIcon
	Then user verifies on page MSMEPreLoginPage for "Contact Us" text in placeholder ContactUs
	
	
@TestCaseKey=UDB-T44594 @TestCaseKey=UDB-T44609 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify Contact Information Display in pre-login page

#	Given user logins to MSME app
	Given user is on page MSMEPreLoginPage clicks on HelpIcon
	Then user verifies on page MSMEPreLoginPage for "Contact Us" text in placeholder ContactUs
	Then user verifies on page MSMEPreLoginPage for "All India Toll Free Numbers" text in placeholder TollFreeNoText
	Then user verifies on page MSMEPreLoginPage for "1800222244" text in placeholder TollFreeNo
	Then user verifies on page MSMEPreLoginPage for "Non-Toll Free Number" text in placeholder NonTollFreeNoText
	Then user verifies on page MSMEPreLoginPage for "080-61817110" text in placeholder NonTollFreeNo
	
	
@TestCaseKey=UDB-T44595 @TestCaseKey=UDB-T44610 @Automatable @RedmiNote9Pro  @Set4
Scenario: Verify Contact Us Page Loads in pre-login page.

#	Given user logins to MSME app
	Given user is on page MSMEPreLoginPage clicks on HelpIcon
	Then user verifies on page MSMEPreLoginPage for "Follow us on" text in placeholder FollowUsText
	Given user is on page MSMEPreLoginPage to check FacebookButton is Enabled
	Given user is on page MSMEPreLoginPage to check InstagramButton is Enabled
	Given user is on page MSMEPreLoginPage to check YoutubeButton is Enabled
	Given user is on page MSMEPreLoginPage to check WhatsappButton is Enabled
	Then user verifies on page MSMEPreLoginPage for "Write to us" text in placeholder EmailIdText
	Then user verifies on page MSMEPreLoginPage for "customercare@unionbankofindia.bank" text in placeholder EmailId
	
	
@TestCaseKey=UDB-T44616 @Automatable @RedmiNote9Pro  @Set4
Scenario: Validate "How to lodge grievances?" Expand/Collapse

#	Given user logins to MSME app
	Given user is on page MSMEPreLoginPage clicks on HelpIcon
	When user scrolls down to "FAQ's"
	Given user is on page MSMEPreLoginPage clicks on GrievanceRedressalField
	Then user verifies on page MSMEPreLoginPage for "How to lodge grievances?" text in placeholder LodgeGrievancesName
	Given user is on page MSMEPreLoginPage clicks on LodgeGrievancesIcon
	Given user swipe down the page
	Given user scrolls up to "Lodge Complaints"
	Given user is on page MSMEPreLoginPage clicks on LodgeGrievancesIcon
	
	
@TestCaseKey=UDB-T44613 @TestCaseKey=UDB-T44614 @Automatable @RedmiNote9Pro  @Set4
Scenario: Validate Grievance Redressal Navigation & Links in prelogin page

#	Given user logins to MSME app
	Given user is on page MSMEPreLoginPage clicks on HelpIcon
	When user scrolls down to "FAQ's"
	Given user is on page MSMEPreLoginPage clicks on GrievanceRedressalField
	Given user is on page MSMEPreLoginPage clicks on RedressalPolicyLink
	Given user is on page MSMEPreLoginPage clicks on ClosePage
	Given user is on page MSMEPreLoginPage clicks on LodgeComplaintsLink
	Given user is on page MSMEPreLoginPage clicks on ClosePage
	Given user is on page MSMEPreLoginPage clicks on ImportantContactsLink
	Given user is on page MSMEPreLoginPage clicks on ClosePage
	Given user is on page MSMEPreLoginPage clicks on LodgeGrievancesIcon