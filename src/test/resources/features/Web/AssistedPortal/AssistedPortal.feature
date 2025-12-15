Feature: Assisted Portal

@TestCaseKey=UDB-T9130 @web
Scenario: Verify the Total number of applications assigned by the branch should visible to the BM

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard verifies count in AssignedApplicationCount
 
 
@TestCaseKey=UDB-T9131 @web
Scenario: Verify The total number of applications initiated by the branch should visible to the BM

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard scroll to webpage element MyApplication
 Then user is on page AssistedPortalDashboard verifies count in MyApplicationCount
 

@TestCaseKey=UDB-T9137 @web
Scenario: Verify The sum of both assigned & unassigned applications should visible to the BM.

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard verifies count in TotalApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in UnassignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in AssignedApplicationCount
  Then user is on page AssistedPortalDashboard verifies sum of AssignedApplicationCount and UnassignedApplicationCount equals TotalApplicationCount
 
 
 @TestCaseKey=UDB-T9145 @web
Scenario: Verify the source should visible to the BM.

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Given user is on page AssistedPortalDashboard and clicks on GovtScheme
 Then user verifies for toast message on page AssistedPortalDashboard as Branch text in placeholder SourceText
 
 
@TestCaseKey=UDB-T9149 @web
Scenario: Verify the current application stage should visible to the BM.

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Given user is on page AssistedPortalDashboard and clicks on GovtScheme
 #Then user verifies for toast message on page AssistedPortalDashboard as Funding text in placeholder ApplicationStatus
 Then user is on page AssistedPortalDashboard to verify ApplicationStatus is Displayed
 
@TestCaseKey=UDB-T9173 @web
Scenario: Verify that Regional Officer to be able to  view the dashboard that comprises of digital applications that are assigned to the Bank Manager or Branches reporting to him/her

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBW on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify RepoteeRitesh is Displayed
 Then user is on page AssistedPortalDashboard to verify RepoteeMonica is Displayed
 Then user is on page AssistedPortalDashboard to verify RepoteeMayur is Displayed
 
 
@TestCaseKey=UDB-T8416 @web
Scenario: Verify that Global search functionality to be available at the top of the Dashboard for the Operations Officer(DBM).

 Given user is on page AssistedPortalLogin and types DITDIGIBM004QCX on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 

@TestCaseKey=UDB-T9180 @web
Scenario: Verify that Zonal Officer to be able to reallocate applications within the same branch if BM is not available.

 Given user is on page AssistedPortalLogin and types DITDIGIBM004Q9D on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify ApplicationNumber is Displayed
 Given user is on page AssistedPortalDashboard and clicks on ApplicationNumber
 Then user is on page GovtSchemePage to verify NPSApplication is Displayed
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Medisetty Harshita on SelectBO
 Given user is on page GovtSchemePage and clicks on BODisplayed
 Then user verifies for toast message on page GovtSchemePage as successfully text in placeholder SuccessText
 Then user is on page GovtSchemePage clears the SelectBO
 Given user is on page GovtSchemePage and clicks on OkayButton
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Nalagatla Anu on SelectBO
 Given user is on page GovtSchemePage and clicks on BODisplayed
 Then user verifies for toast message on page GovtSchemePage as successfully text in placeholder SuccessText
 
 
@TestCaseKey=UDB-T8453 @web
Scenario: Verify that Operations Officer(DBM) to have the functionality for the assignment

 Given user is on page AssistedPortalLogin and types DITIBM001A6E on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 442952631387 on GlobalSerachBox
 Then user clicks on Enter
 Then user is on page AssistedPortalDashboard to verify GovtSchemeTab is Displayed
 #Given user is on page AssistedPortalDashboard and clicks on GovtSchemeTab
 #Given user is on page GovtSchemePage and clicks on FilterOption
 #Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 #Given user is on page GovtSchemePage and clicks on OpenStatus
 #Given user is on page GovtSchemePage and clicks on hyperlink OpenStatus
 #Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Medisetty Harshita on SelectBO
 Given user is on page GovtSchemePage and clicks on BODisplayed
 Then user verifies for toast message on page GovtSchemePage as successfully text in placeholder SuccessText
 Then user is on page GovtSchemePage clears the SelectBO
 Given user is on page GovtSchemePage and clicks on OkayButton
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Nalagatla Anu on SelectBO
 Given user is on page GovtSchemePage and clicks on BODisplayed
 Then user verifies for toast message on page GovtSchemePage as successfully text in placeholder SuccessText
 
 
 @TestCaseKey=UDB-T8485 @web
Scenario: Verify that Global search functionality to be available at the top of the Dashboard for the Operations Officer(DBM).

 Given user is on page AssistedPortalLogin and types DITIBM001A6E on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 
 
@TestCaseKey=UDB-T9443 @web
Scenario: Verify that Officer ZO is able to successfully log into DBP assisted portal

 Given user is on page AssistedPortalLogin and types DITDIGIBM004Q9D on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify TotalApplicationCount is Displayed
 Then user is on page AssistedPortalDashboard to verify UnassignedApplicationCount is Displayed
 Then user is on page AssistedPortalDashboard to verify AssignedApplicationCount is Displayed
  
  
@TestCaseKey=UDB-T9475 @web
Scenario: Verify that Officer BM is able to successfully log into DBP assisted portal

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify TotalApplicationCount is Displayed
 Then user is on page AssistedPortalDashboard to verify UnassignedApplicationCount is Displayed
 Then user is on page AssistedPortalDashboard to verify AssignedApplicationCount is Displayed
 

@TestCaseKey=UDB-T9141 @web
Scenario: Verify the date of assignment to the branch to be visible to the BM

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard verifies count in TotalApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in UnassignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in AssignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies sum of AssignedApplicationCount and UnassignedApplicationCount equals TotalApplicationCount
 Then user is on page AssistedPortalDashboard to verify DateOfAssignment is Displayed
 
 
@TestCaseKey=UDB-T9172 @web
Scenario: Verify that Zonal Officer to be able to view the dashboard that comprises of digital applications that are assigned to the Bank Manager or Branches reporting to him/her

 Given user is on page AssistedPortalLogin and types DITDIGIBM004Q9D on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard verifies count in TotalApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in UnassignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in AssignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies sum of AssignedApplicationCount and UnassignedApplicationCount equals TotalApplicationCount
 
 
@TestCaseKey=UDB-T9283 @web
Scenario: Verify that TPP dashboard should open.

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Given user is on page AssistedPortalDashboard and clicks on AccessOverInternet
 Then user verifies for toast message on page AccessOverInternet as Access Over Internet text in placeholder AccessOverInternetHeader


@TestCaseKey=UDB-T9115 @web
Scenario: Verify that Login must work for bank employees -Branch

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify TotalApplicationCount is Displayed
 Then user is on page AssistedPortalDashboard to verify UnassignedApplicationCount is Displayed
 Then user is on page AssistedPortalDashboard to verify AssignedApplicationCount is Displayed
 
 
@TestCaseKey=UDB-T9233 @web
Scenario: Verify that Lending dashboard should open

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Given user is on page AssistedPortalDashboard and clicks on LendingTab
 Then user verifies for toast message on page AssistedPortalDashboard as List of all lending applications text in placeholder TabHeaderName
 
@TestCaseKey=UDB-T9252 @web
Scenario: Verify that Liability dashboard should open

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Given user is on page AssistedPortalDashboard and clicks on LiabilitiesTab
 Then user verifies for toast message on page AssistedPortalDashboard as List of all liability applications text in placeholder TabHeaderName
 
 
@TestCaseKey=UDB-T9154 @web
Scenario: Verify that clickable fields leads to specific product sections.

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard verifies count in TotalApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in UnassignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in AssignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies sum of AssignedApplicationCount and UnassignedApplicationCount equals TotalApplicationCount
 Given user is on page AssistedPortalDashboard and clicks on GovtScheme
 Then user is on page GovtSchemePage to verify ApplicationDate is Displayed
 Then user is on page GovtSchemePage to verify ApplicationSource is Displayed
 Then user is on page GovtSchemePage to verify ApplicationStage is Displayed
 
 
@TestCaseKey=UDB-T9161 @web
Scenario: Verify that clickable fields leads to specific product sections.

 Given user is on page AssistedPortalLogin and types DITDIGIBM003VVX on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard verifies count in TotalApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in UnassignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in AssignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies sum of AssignedApplicationCount and UnassignedApplicationCount equals TotalApplicationCount
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 463489817739 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Given user is on page GovtSchemePage and clicks on ApplicationNumber
 Then user is on page GovtSchemePage to verify ResumeButton is Displayed
 Given user is on page GovtSchemePage and clicks on ResumeButton 
 
 
@TestCaseKey=UDB-T9168 @web
Scenario: Verify that Clerk to be able to  view all applications of their branch in any status.

 Given user is on page AssistedPortalLogin and types DITIBM004SBV on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard verifies count in TotalApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in UnassignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in AssignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies sum of AssignedApplicationCount and UnassignedApplicationCount equals TotalApplicationCount
 Given user is on page AssistedPortalDashboard and clicks on LiabilitiesTab
 Then user is on page GovtSchemePage to verify ApplicationDate is Displayed
 Then user is on page GovtSchemePage to verify ApplicationSource is Displayed
 Then user is on page GovtSchemePage to verify ApplicationStage is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtScheme
 Then user is on page GovtSchemePage to verify ApplicationDate is Displayed
 Then user is on page GovtSchemePage to verify ApplicationSource is Displayed
 Then user is on page GovtSchemePage to verify ApplicationStage is Displayed
 
 
@TestCaseKey=UDB-T9407 @web
Scenario: Verify that BM/DBM is able to search application in assigned application module by entering mobile number

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 9920853777 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Given user is on page AssistedPortalDashboard and clicks on LiabilitiesSubTab
 Then user is on page GovtSchemePage to verify ApplicationDate is Displayed
 Then user is on page GovtSchemePage to verify ApplicationSource is Displayed
 Then user is on page GovtSchemePage to verify ApplicationStage is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Then user is on page GovtSchemePage to verify ApplicationDate is Displayed
 Then user is on page GovtSchemePage to verify ApplicationSource is Displayed
 Then user is on page GovtSchemePage to verify ApplicationStage is Displayed
 
 
@TestCaseKey=UDB-T9409 @web
Scenario: Verify that BM/DBM is able to search application in assigned application module by entering PAN

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types DGNPG3435F on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Given user is on page AssistedPortalDashboard and clicks on LiabilitiesSubTab
 Then user is on page GovtSchemePage to verify ApplicationDate is Displayed
 Then user is on page GovtSchemePage to verify ApplicationSource is Displayed
 Then user is on page GovtSchemePage to verify ApplicationStage is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Then user is on page GovtSchemePage to verify ApplicationDate is Displayed
 Then user is on page GovtSchemePage to verify ApplicationSource is Displayed
 Then user is on page GovtSchemePage to verify ApplicationStage is Displayed
 
 
@TestCaseKey=UDB-T9416 @web
Scenario: Verify that BM/DBM to select the desired form as per the customers input and click on the form to open and view details.

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 9920853777 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Given user is on page AssistedPortalDashboard and clicks on LiabilitiesSubTab
 Given user is on page LiabilitiesPage and clicks on ApplicationNumber
 Given user is on page LiabilitiesPage and clicks on ResumeButton
 Then user verifies message on page LiabilitiesPage is Recurring Deposit Details on RDDetailsText
 
 
@TestCaseKey=UDB-T9125 @web
Scenario: Verify that Age to be dislayed in each digital application for latest status

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GovtScheme is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtScheme
 Then user is on page GovtSchemePage to verify ApplicationAge is Displayed
 
 
 
@TestCaseKey=UDB-T9126 @web
Scenario: Verify that Application that are in "Open Status" to have "Allocate" action buttons on the right side.

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 634919447 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeSubTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Then user is on page GovtSchemePage to verify FilterApplyButton is Displayed
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Navaja on SelectBO
 Then user is on page GovtSchemePage to verify BODisplayed is Displayed
 
 
@TestCaseKey=UDB-T9199 @web
Scenario: Verify that BM should Re-assign the Digital Form  to another staff

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify AssigneHarshita is Displayed
 Then user is on page AssistedPortalDashboard to verify AssigneBharadwaj is Displayed
 Then user is on page AssistedPortalDashboard to verify AssigneNalagatla is Displayed
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 357773764676 on GlobalSerachBox
 Then user clicks on Enter
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Medisetty Harshita on SelectBO
 Given user is on page GovtSchemePage and clicks on BODisplayed
 Then user verifies for toast message on page GovtSchemePage as successfully text in placeholder SuccessText
 Then user is on page GovtSchemePage clears the SelectBO
 Given user is on page GovtSchemePage and clicks on OkayButton
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Bharadwaj on SelectBO
 Given user is on page GovtSchemePage and clicks on BODisplayed
 Then user verifies for toast message on page GovtSchemePage as successfully text in placeholder SuccessText
 
 
@TestCaseKey=UDB-T9200 @web
Scenario: Verify that BM should Re-assign the Digital Form  to himself/herself

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 357773764676 on GlobalSerachBox
 Then user clicks on Enter
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Nalagatla on SelectBO
 Given user is on page GovtSchemePage and clicks on BODisplayed
 Then user verifies for toast message on page GovtSchemePage as successfully text in placeholder SuccessText
 Then user is on page GovtSchemePage clears the SelectBO
 Given user is on page GovtSchemePage and clicks on OkayButton
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Bharadwaj on SelectBO
 Given user is on page GovtSchemePage and clicks on BODisplayed
 Then user verifies for toast message on page GovtSchemePage as successfully text in placeholder SuccessText
 
 
@TestCaseKey=UDB-T9205 @web
Scenario: Verify  that BM should  view the preferred branch  selected by the customer on the Discontinued journey

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 889737264513 on GlobalSerachBox
 Then user clicks on Enter
 Then user is on page LiabilitiesPage to verify CustomerBranch is Displayed
 Then user verifies for toast message on page LiabilitiesPage as COLLEGE SQUARE text in placeholder CustomerBranch
 
 
@TestCaseKey=UDB-T9206 @web
Scenario: Verify  that BM should  allocate Application to himself

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify AssignNowButton is Displayed
 Given user is on page AssistedPortalDashboard and clicks on AssignNowButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeSubTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Then user waits for sometime
 Given user is on page GovtSchemePage and clicks on CheckBoxSelection
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Nalagatla on SelectBO
 Then user is on page GovtSchemePage to verify BODisplayed is Displayed
 #Given user is on page GovtSchemePage and clicks on BODisplayed
 #Then user verifies for toast message on page GovtSchemePage as successfully text in placeholder SuccessText
 
 
@TestCaseKey=UDB-T9207 @TestCaseKey=UDB-T9229 @web
Scenario: Verify  that BM should allocate Application to his staff

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 357773764676 on GlobalSerachBox
 Then user clicks on Enter
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Nalagatla on SelectBO
 Given user is on page GovtSchemePage and clicks on BODisplayed
 Then user verifies for toast message on page GovtSchemePage as successfully text in placeholder SuccessText
 Then user is on page GovtSchemePage clears the SelectBO
 Given user is on page GovtSchemePage and clicks on OkayButton
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Bharadwaj on SelectBO
 Given user is on page GovtSchemePage and clicks on BODisplayed
 Then user verifies for toast message on page GovtSchemePage as successfully text in placeholder SuccessText
 
 
@TestCaseKey=UDB-T9380 @web
Scenario: To verify that Open Status should present

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 634919447 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeSubTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Then user is on page GovtSchemePage to verify FilterApplyButton is Displayed
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 
 
@TestCaseKey=UDB-T9381 @web
Scenario: To verify that In-progress Status should present

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 634919447 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeSubTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on InprogressStatus
 Then user is on page GovtSchemePage to verify FilterApplyButton is Displayed
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 
 
@TestCaseKey=UDB-T9405 @web
Scenario: Verify that BM/DBM is abe to view assigned application in the assigned application module

 Given user is on page AssistedPortalLogin and types DITIBM001A6E on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify AssignNowButton is Displayed
 Given user is on page AssistedPortalDashboard and clicks on AssignNowButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeSubTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Then user waits for sometime
 Given user is on page GovtSchemePage and clicks on CheckBoxSelection
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Nalagatla on SelectBO
 Then user is on page GovtSchemePage to verify BODisplayed is Displayed
 
 
@TestCaseKey=UDB-T9406 @web
Scenario: Verify that BM/DBM is abe to view assigned application to themselves in the assigned application module

 Given user is on page AssistedPortalLogin and types DITIBM001A6E on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify AssignNowButton is Displayed
 Given user is on page AssistedPortalDashboard and clicks on AssignNowButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeSubTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Then user waits for sometime
 Given user is on page GovtSchemePage and clicks on CheckBoxSelection
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Medisetty on SelectBO
 Then user is on page GovtSchemePage to verify BODisplayed is Displayed
 
 
@TestCaseKey=UDB-T9408 @web
Scenario: Verify that BM/DBM is able to search application in assigned application module by entering application id

 Given user is on page AssistedPortalLogin and types DITIBM001A6E on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 357773764676 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeSubTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Then user is on page GovtSchemePage to verify ApplicationDate is Displayed
 Then user is on page GovtSchemePage to verify ApplicationSource is Displayed
 Then user is on page GovtSchemePage to verify ApplicationStage is Displayed
 
 
@TestCaseKey=UDB-T9507 @web
Scenario: Verify that all applications that are completed that is either the disbursement has occurred, or the account has credited with the required amount will have 'Completed' status

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 8605405600 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify LiabilitiesSubTab is Displayed
 Given user is on page LiabilitiesPage and clicks on FilterOption
 Given user is on page LiabilitiesPage and clicks on FilterApplicationStatus
 Given user is on page LiabilitiesPage and clicks on CompletedStatus
 Then user is on page LiabilitiesPage to verify FilterApplyButton is Displayed
 Given user is on page LiabilitiesPage and clicks on FilterApplyButton
 Then user verifies for toast message on page LiabilitiesPage as Completed text in placeholder ApplicationStatus
 Then user verifies for toast message on page LiabilitiesPage as Account creation text in placeholder ApplicationStage
 

@TestCaseKey=UDB-T9631 @web
Scenario: Verify that all applications (lending and non-lending) under Open status can be picked up & self-assigned by anyone in the branch - DITIBM001A6E

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify AssignNowButton is Displayed
 Given user is on page AssistedPortalDashboard and clicks on AssignNowButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeSubTab is Displayed 
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Then user waits for sometime
 Given user is on page GovtSchemePage and clicks on CheckBoxSelection
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Nalagatla on SelectBO
 Then user is on page GovtSchemePage to verify BODisplayed is Displayed
 
 
@TestCaseKey=UDB-T9631 @web
Scenario: Verify that all applications (lending and non-lending) under Open status can be picked up & self-assigned by anyone in the branch

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify AssignNowButton is Displayed
 Given user is on page AssistedPortalDashboard and clicks on AssignNowButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeSubTab is Displayed 
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Then user waits for sometime
 Given user is on page GovtSchemePage and clicks on CheckBoxSelection
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Medisetty Harshita on SelectBO
 Then user is on page GovtSchemePage to verify BODisplayed is Displayed
 
 
@TestCaseKey=UDB-T9632 @web
Scenario: Verify that all applications (lending and non-lending) under Open status can be self-assigned by Branch manager to themselves

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify AssignNowButton is Displayed
 Given user is on page AssistedPortalDashboard and clicks on AssignNowButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeSubTab is Displayed 
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Then user waits for sometime
 Given user is on page GovtSchemePage and clicks on CheckBoxSelection
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Nalagatla on SelectBO
 Then user is on page GovtSchemePage to verify BODisplayed is Displayed
 
 
@TestCaseKey=UDB-T9633 @web
Scenario: Verify that all applications (lending and non-lending) under Open status can be assigned by BM to anyone else in the same branch

 Given user is on page AssistedPortalLogin and types DITIBM001A6E on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify AssignNowButton is Displayed
 Given user is on page AssistedPortalDashboard and clicks on AssignNowButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeSubTab is Displayed 
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Then user waits for sometime
 Given user is on page GovtSchemePage and clicks on CheckBoxSelection
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Nalagatla on SelectBO
 Then user is on page GovtSchemePage to verify BODisplayed is Displayed
 
 
@TestCaseKey=UDB-T9634 @web
Scenario: Verify that assigned applications to any branch user , can be reassigned only by BM to others within the branch

 
 Given user is on page AssistedPortalLogin and types DITIBM001A6E on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 442952631387 on GlobalSerachBox
 Then user clicks on Enter
 Then user is on page AssistedPortalDashboard to verify GovtSchemeTab is Displayed
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Medisetty Harshita on SelectBO
 Given user is on page GovtSchemePage and clicks on BODisplayed
 Then user verifies for toast message on page GovtSchemePage as successfully text in placeholder SuccessText
 Then user is on page GovtSchemePage clears the SelectBO
 Given user is on page GovtSchemePage and clicks on OkayButton
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Nalagatla Anu on SelectBO
 Given user is on page GovtSchemePage and clicks on BODisplayed
 Then user verifies for toast message on page GovtSchemePage as successfully text in placeholder SuccessText
 
 
@TestCaseKey=UDB-T9637 @web
Scenario: Verify that BM is able to use global search feature

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 
 
@TestCaseKey=UDB-T9638 @web
Scenario: Verify that BM is able to select the journey feature

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Given user is on page AssistedPortalDashboard and clicks on NewApplicationButton
 Given user is on page AssistedPortalDashboard and clicks on ApplicationLiabilitiesTab
 Then user is on page AssistedPortalDashboard to verify NewRecurringDeposit is Displayed
 Given user is on page AssistedPortalDashboard and clicks on NewRecurringDeposit
 
 
@TestCaseKey=UDB-T9639 @web
Scenario: Verify that BM is able to trigger a CTA to which will send a link to the customer for authentication

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Given user is on page AssistedPortalDashboard and clicks on NewApplicationButton
 Given user is on page AssistedPortalDashboard and clicks on ApplicationLiabilitiesTab
 Then user is on page AssistedPortalDashboard to verify NewRecurringDeposit is Displayed
 Given user is on page AssistedPortalDashboard and clicks on NewRecurringDeposit
 Given user is on page AssistedPortalDashboard and types 8605405600 on CustomerContactNumber
 Then user is on page AssistedPortalDashboard to verify ContinueButton is Displayed
 Given user is on page AssistedPortalDashboard and clicks on ContinueButton
 
 
@TestCaseKey=UDB-T9641 @web
Scenario: Verify that application with 'In Progress' status cannot be reassigned to any  other branch by BM

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton  
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 951855705998 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Then user verifies for toast message on page LiabilitiesPage as In-progress text in placeholder ApplicationStatus
 Then user is on page LiabilitiesPage to verify DisabledRadioButton is Disabled
 
 
@TestCaseKey=UDB-T8468 @web
Scenario: Verify that New Application to be assiigned by Operations Officer(DBM).

 Given user is on page AssistedPortalLogin and types DITIBM001A6E on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton  
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 704745491551 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Medisetty Harshita on SelectBO
 Then user is on page GovtSchemePage to verify BODisplayed is Displayed
 
 
@TestCaseKey=UDB-T9122 @web
Scenario: Verify that Branch user to view Open status digital applications that are mapped to BM's branch in List View.

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Given user is on page AssistedPortalDashboard and clicks on LiabilitiesTab
 Then user verifies for toast message on page AssistedPortalDashboard as List of all liability applications text in placeholder TabHeaderName
 Given user is on page LiabilitiesPage and clicks on FilterOption
 Given user is on page LiabilitiesPage and clicks on FilterApplicationStatus
 Given user is on page LiabilitiesPage and clicks on OpenStatus
 Given user is on page LiabilitiesPage and clicks on FilterApplyButton
 Given user is on page LiabilitiesPage and clicks on ApplicationNumber
 Given user is on page LiabilitiesPage and clicks on ResumeButton
 Then user verifies message on page LiabilitiesPage is Recurring Deposit Details on RDDetailsText
 
 
@TestCaseKey=UDB-T9201 @web
Scenario: Verify that BM should able to select BO from Drop-down

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify AssignNowButton is Displayed
 Given user is on page AssistedPortalDashboard and clicks on AssignNowButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeSubTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Then user waits for sometime
 Given user is on page GovtSchemePage and clicks on CheckBoxSelection
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Nalagatla on SelectBO
 Then user is on page GovtSchemePage to verify BODisplayed is Displayed
 
 
@TestCaseKey=UDB-T9158 @web
Scenario: Verify that BO Officer able to view and process the applications that is assigned to him for action in respective dashboard.

 Given user is on page AssistedPortalLogin and types DITIBMSVPWDG on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 518981190203 on GlobalSerachBox
 Then user clicks on Enter
 Given user is on page LiabilitiesPage and clicks on ApplicationNumber
 Given user is on page LiabilitiesPage and clicks on ResumeButton
 Then user verifies message on page LiabilitiesPage is Recurring Deposit Details on RDDetailsText 
 
@TestCaseKey=UDB-T9127 @web
Scenario: Verify that Application that are not assigned to anyone to have "Allocate" action button on the right side.

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 634919447 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeSubTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Then user is on page GovtSchemePage to verify FilterApplyButton is Displayed
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Navaja on SelectBO
 Then user is on page GovtSchemePage to verify BODisplayed is Displayed
 
@TestCaseKey=UDB-T9197 @TestCaseKey=UDB-T9198 @web
Scenario: Verify that BM should self-assign the Digital Form  when BS is not present, Verify that BM should self-assign the Digital Form  when  it's on Priority

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 634919447 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeSubTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeSubTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Then user is on page GovtSchemePage to verify FilterApplyButton is Displayed
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Given user is on page GovtSchemePage and clicks on SelectApplication
 Given user is on page GovtSchemePage and clicks on SelectBO
 Given user is on page GovtSchemePage and types Bangaru on SelectBO
 Then user is on page GovtSchemePage to verify BODisplayed is Displayed
 
 
@TestCaseKey=UDB-T9504 @web
Scenario: Verify that all applications that are mapped to the branch manager will have 'Open' status

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 226786724 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Then user is on page GovtSchemePage to verify FilterApplyButton is Displayed
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Then user verifies for toast message on page GovtSchemePage as Open text in placeholder ApplicationStatus
 
 
@TestCaseKey=UDB-T8573 @web
Scenario: Verify that a Branch to be mapped directly to RO.

 Given user is on page AssistedPortalLogin and types DITIBMSVPULW on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Given user is on page AssistedPortalDashboard and clicks on OkayButton
 Given user is on page AssistedPortalDashboard and clicks on ProfileIcon
 Given user is on page AssistedPortalDashboard and clicks on ProfileOption
 Then user verifies for toast message on page AssistedPortalDashboard as R.O.MUMBAI SOUTH text in placeholder Branch
 
 
@TestCaseKey=UDB-T9349 @web
Scenario: Verify that Branch staff should view correct error message for Invalid Username(BS)

 Given user is on page AssistedPortalLogin and types VijayMoyalan on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user verifies for toast message on page AssistedPortalLogin as Authentication Error text in placeholder AuthenticationErrorAlert
 Given user is on page AssistedPortalLogin and clicks on AlertOkayButton
 
 
@TestCaseKey=UDB-T9350 @web
Scenario: Verify that Branch staff should view correct error message for Invalid Password(BS)

 Given user is on page AssistedPortalLogin and types DITIBMSVPULW on Username
 Given user is on page AssistedPortalLogin and types Ubi1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user verifies for toast message on page AssistedPortalLogin as Authentication Error text in placeholder AuthenticationErrorAlert
 Given user is on page AssistedPortalLogin and clicks on AlertOkayButton
 
 
@TestCaseKey=UDB-T9351 @web
Scenario: Verify that Branch staff should view correct error message for Invalid User & Invalid Password Fields(BS)

 Given user is on page AssistedPortalLogin and types VijayMoyalan on Username
 Given user is on page AssistedPortalLogin and types Ubi1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user verifies for toast message on page AssistedPortalLogin as Authentication Error text in placeholder AuthenticationErrorAlert
 Given user is on page AssistedPortalLogin and clicks on AlertOkayButton
 
 
@TestCaseKey=UDB-T9354 @web
Scenario: Verify that Branch staff should view the correct Result for switching on Filter from Govt Shemes to TPP and back to Govt. Schemes

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GovtSchemeTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Given user is on page GovtSchemePage and clicks on InprogressStatus
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Then user is on page GovtSchemePage to verify ApplicationNumber is Displayed
 Given user is on page AssistedPortalDashboard and clicks on LiabilitiesTab
 Given user is on page LiabilitiesPage and clicks on FilterOption
 Given user is on page LiabilitiesPage and clicks on FilterApplicationStatus
 Given user is on page LiabilitiesPage and clicks on OpenStatus
 Given user is on page LiabilitiesPage and clicks on FilterApplyButton
 Then user is on page LiabilitiesPage to verify ApplicationNumber is Displayed
 
 
@TestCaseKey=UDB-T9356 @web
Scenario: Verify that BS user should not view the Liability  application & Cards application present within Govt.Schemes Application

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GovtSchemeTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Given user is on page GovtSchemePage and clicks on InprogressStatus
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 
 
@TestCaseKey=UDB-T9357 @web
Scenario: Verify that BS should view the +New Application blue button with white text below the red ribbon on the Right side( for Govt. Shceme Dashboard user)

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GovtSchemeTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeTab
 Then user is on page AssistedPortalDashboard to verify NewApplicationButton is Displayed
 Given user is on page AssistedPortalDashboard and clicks on NewApplicationButton
 
 
@TestCaseKey=UDB-T9358 @web
Scenario: Verify that BS should view the Total count of Applications below Welcome Text(for Govt.Scheme Dashboard user)

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GovtSchemeTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeTab
 Then user is on page GovtSchemePage to verify ShowingApplicationCount is Displayed
 
 
@TestCaseKey=UDB-T9359 @web
Scenario: Verify that BS should view text bleow the redribbon on left side as Welcome ,Pankaj Sharma,There are a total of 350 applications assigned to your branch! 

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user verifies for toast message on page AssistedPortalDashboard as Welcome, Rohit text in placeholder LoginUserName
 Then user is on page AssistedPortalDashboard to verify TotalAssignedApplication is Displayed
 Then user is on page AssistedPortalDashboard verifies count in TotalApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in UnassignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in AssignedApplicationCount
  Then user is on page AssistedPortalDashboard verifies sum of AssignedApplicationCount and UnassignedApplicationCount equals TotalApplicationCount
  
  
@TestCaseKey=UDB-T9363 @web
Scenario: Verify that BS should view the Assign Now blue button with white text for Unassigned Application with Count

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify AssignNowButton is Displayed
 Given user is on page AssistedPortalDashboard and clicks on AssignNowButton
 
 
@TestCaseKey=UDB-T9364 @web
Scenario: Verify that BS should view the 100 Assigned Applications card with details as Application Assigned To, Open(Count),In-progress(Count),Last Login 

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard verifies count in TotalApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in UnassignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in AssignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies sum of AssignedApplicationCount and UnassignedApplicationCount equals TotalApplicationCount
 Then user is on page AssistedPortalDashboard to verify ApplicationAssignedHeader is Displayed
 Then user is on page AssistedPortalDashboard to verify OpenStatusHeader is Displayed
 Then user is on page AssistedPortalDashboard to verify InprogressStatusHeader is Displayed
 Then user is on page AssistedPortalDashboard to verify LastLoginHeader is Displayed
 
 
@TestCaseKey=UDB-T9509 @web
Scenario: Verify that all applications that are assigned to a branch user will have 'Assigned'  status

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify AssignedApplicationCount is Displayed
 
 
 
@TestCaseKey=UDB-T9510 @web
Scenario: Verify that all applications that are not assigned to a branch user will have 'Unassigned' status

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify UnassignedApplicationCount is Displayed
Then user is on page AssistedPortalDashboard to verify AssignNowButton is Displayed


@TestCaseKey=UDB-T9601 @web
Scenario: Verify that Application review stage is present for FD journey

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 8605405600 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify LiabilitiesSubTab is Displayed
 Given user is on page LiabilitiesPage and clicks on FilterOption
 Given user is on page LiabilitiesPage and clicks on FilterApplicationStatus
 Given user is on page LiabilitiesPage and clicks on OpenStatus
 Given user is on page LiabilitiesPage and clicks on InprogressStatus
 Then user is on page LiabilitiesPage to verify FilterApplyButton is Displayed
 Given user is on page LiabilitiesPage and clicks on FilterApplyButton
 Then user is on page LiabilitiesPage to verify ApplicationStatus is Displayed
 Then user is on page LiabilitiesPage to verify ApplicationStage is Displayed
 
 
@TestCaseKey=UDB-T9604 @web
Scenario: Verify that Account Creation stage is present for FD journey

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 8605405600 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify LiabilitiesSubTab is Displayed
 Given user is on page LiabilitiesPage and clicks on FilterOption
 Given user is on page LiabilitiesPage and clicks on FilterApplicationStatus
 Given user is on page LiabilitiesPage and clicks on CompletedStatus
 Then user is on page LiabilitiesPage to verify FilterApplyButton is Displayed
 Given user is on page LiabilitiesPage and clicks on FilterApplyButton
 Then user verifies for toast message on page LiabilitiesPage as Completed text in placeholder ApplicationStatus
 Then user verifies for toast message on page LiabilitiesPage as Account creation text in placeholder ApplicationStage
 
 
@TestCaseKey=UDB-T9365 @TestCaseKey=UDB-T9274 @web
Scenario: Verify that BS should view My application card

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard scroll to webpage element MyApplication
 Then user is on page AssistedPortalDashboard to verify MyApplicationSection is Displayed
 
 
@TestCaseKey=UDB-T9366 @TestCaseKey=UDB-T9275 @web
Scenario: Verify that BS should view My application card with Category

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard scroll to webpage element MyApplication
 Then user is on page AssistedPortalDashboard to verify MyApplicationSection is Displayed
 Then user verifies for toast message on page AssistedPortalDashboard as Government Schemes text in placeholder AssignedApplicationCategory
 
 
@TestCaseKey=UDB-T9367  @TestCaseKey=UDB-T9276 @web
Scenario: Verify that BS should view My application card with Open(count)

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard scroll to webpage element MyApplication
 Then user verifies for toast message on page AssistedPortalDashboard as Open text in placeholder MyApplicationOpenStatus

 
 
@TestCaseKey=UDB-T9368 @TestCaseKey=UDB-UDB-T9277 @web
Scenario: Verify that BS should view My application card with In-progress(count)

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard scroll to webpage element MyApplication
 Then user verifies for toast message on page AssistedPortalDashboard as In-progress text in placeholder MyApplicationInprogressStatus
 
 
@TestCaseKey=UDB-T9369 @TestCaseKey=UDB-T9278 @web
Scenario: Verify that BS should view My application card with Completed(count)

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard scroll to webpage element MyApplication
 Then user verifies for toast message on page AssistedPortalDashboard as In-progress text in placeholder MyApplicationInprogressStatus
 
@TestCaseKey=UDB-T9121 @web
Scenario: Verify that An appropriate message will be displayed if Branch user doesn't have access to DBP Assited Portal.

 Given user is on page AssistedPortalLogin and types BranchPerson on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user verifies for toast message on page AssistedPortalLogin as Authentication Error text in placeholder AuthenticationErrorAlert
 Given user is on page AssistedPortalLogin and clicks on AlertOkayButton
 
 
@TestCaseKey=UDB-T9157 @web
Scenario: Verify that all open applications to be visible to branch users.

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard verifies count in TotalApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in UnassignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in AssignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies sum of AssignedApplicationCount and UnassignedApplicationCount equals TotalApplicationCount
  
  
@TestCaseKey=UDB-T9208 @web
Scenario: Verify  that Branch Staff locates the customer's application through Global Search with valid Mobile Number

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 9892296729 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Then user is on page LiabilitiesPage to verify ApplicationNumber is Displayed
 
 
@TestCaseKey=UDB-T9209 @web
Scenario: Verify  that Branch Staff locates the customer's application through Global search with valid Application Number

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 194157838881 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Then user is on page LiabilitiesPage to verify ApplicationNumber is Displayed
 
 
@TestCaseKey=UDB-T9505 @web
Scenario: Verify that all applications on which the branch user has started working and there is a stage change of the application will have 'In Progress' status

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on InprogressStatus
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Then user waits for sometime
 Then user is on page GovtSchemePage to verify ApplicationNumber is Displayed
 Then user is on page GovtSchemePage to verify ApplicationDate is Displayed
 Then user is on page GovtSchemePage to verify ApplicationSource is Displayed
 Then user is on page GovtSchemePage to verify ApplicationStage is Displayed
 
 
 
@TestCaseKey=UDB-T9506 @web
Scenario: Verify that all applications on which the branch user has started working and there is no stage change of the application will have 'Open' status

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GovtSchemeTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeTab
 Given user is on page GovtSchemePage and clicks on FilterOption
 Given user is on page GovtSchemePage and clicks on FilterApplicationStatus
 Given user is on page GovtSchemePage and clicks on OpenStatus
 Given user is on page GovtSchemePage and clicks on FilterApplyButton
 Then user is on page GovtSchemePage to verify ApplicationNumber is Displayed
 Then user is on page GovtSchemePage to verify ApplicationDate is Displayed
 Then user is on page GovtSchemePage to verify ApplicationSource is Displayed
 Then user is on page GovtSchemePage to verify ApplicationStage is Displayed
 
 
@TestCaseKey=UDB-T9611 @TestCaseKey=UDB-T9620 @web
Scenario: Verify that Application review page Stage is present for SSA

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 102691523923 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Then user verifies for toast message on page LiabilitiesPage as Application review text in placeholder ApplicationStage
 
 
@TestCaseKey=UDB-T9609 @TestCaseKey=UDB-T9618 @web
Scenario: Verify that Application review page Stage is present for PPF

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 211938022745 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Then user verifies for toast message on page LiabilitiesPage as Account Details text in placeholder ApplicationStage
 
 
@TestCaseKey=UDB-T9610 @TestCaseKey=UDB-T9619 @web
Scenario: Verify that Application review page Stage is present for NPS

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GlobalSerachBox is Displayed
 Given user is on page AssistedPortalDashboard and types 871203616422 on GlobalSerachBox
 Then user clicks on Enter
 Then user waits for sometime
 Then user verifies for toast message on page LiabilitiesPage as Customer details text in placeholder ApplicationStage
 
 
@TestCaseKey=UDB-T9190 @web
Scenario: Verify that BM to get an alert if any sub-ordinate has initiated a digital journey on behalf of a customer.

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify DateOfAssignment is Displayed
 
 @TestCaseKey=UDB-T9269 @web
Scenario: Verify that BS should view the Total count of Application card

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard verifies count in TotalApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in UnassignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies count in AssignedApplicationCount
 Then user is on page AssistedPortalDashboard verifies sum of AssignedApplicationCount and UnassignedApplicationCount equals TotalApplicationCount
 
 
@TestCaseKey=UDB-T9270 @web
Scenario: Verify that BS should view round card for Assigned Application  with count

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify AssignedApplications is Displayed
 
 
@TestCaseKey=UDB-T9271 @web
Scenario: Verify that BS should view the round card for the Unassigned Application with Count

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify UnAssignedApplications is Displayed
 
 
@TestCaseKey=UDB-T9272 @web
Scenario: Verify that BS should view the Assign Now blue button with white text for Unassigned Application with Count

 Given user is on page AssistedPortalLogin and types DITDIGIBM004MBT on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify AssignNowButton is Displayed
 Then user is on page AssistedPortalDashboard to verify UnassignedApplicationCount is Displayed
 
 
@TestCaseKey=UDB-T9273 @web
Scenario: Verify that BS should view the 100 Assigned Applications card with details as Application Assigned To, Open(Count),In-progress(Count),Last Login

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeTab
 Then user is on page GovtSchemePage to verify ApplicationAssignedTo is Displayed
 Then user is on page GovtSchemePage to verify ApplicationDate is Displayed
 Then user is on page GovtSchemePage to verify ApplicationSource is Displayed
 Then user is on page GovtSchemePage to verify ApplicationStatus is Displayed
 Then user is on page GovtSchemePage to verify ApplicationStage is Displayed

 
@TestCaseKey=UDB-T9281 @TestCaseKey=UDB-T9299 @TestCaseKey=UDB-T9301 @web
Scenario: Verify that Branch staff lands on the Assisted Portal Landing Page.

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify TotalApplicationCount is Displayed
 Then user is on page AssistedPortalDashboard to verify UnassignedApplicationCount is Displayed
 Then user is on page AssistedPortalDashboard to verify AssignedApplicationCount is Displayed
 
@TestCaseKey=UDB-T9305 @TestCaseKey=UDB-T9306 @web
Scenario: Verify that Branch staff  should sort applications for up arrow, Verify that Branch staff  should sort applications for down arrow


 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user waits for sometime
 Then user is on page AssistedPortalDashboard to verify GovtSchemeTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeTab
 Then user is on page GovtSchemePage to verify ApplicationDateSortingIcon is Displayed
 Given user is on page GovtSchemePage and clicks on ApplicationDateSortingIcon
 Then user is on page GovtSchemePage to verify ApplicationNumberSortingIcon is Displayed
 Given user is on page GovtSchemePage and clicks on ApplicationNumberSortingIcon
 
 
 
@TestCaseKey=UDB-T9348 @web
Scenario: Verify that Branch staff should choose the product on New Application from Govt. Schemes Application screen

 Given user is on page AssistedPortalLogin and types DITDIGIBM004SBZ on Username
 Given user is on page AssistedPortalLogin and types Ubi@1234 on Password
 Given user is on page AssistedPortalLogin and clicks on LoginButton
 Then user is on page AssistedPortalDashboard to verify GovtSchemeTab is Displayed
 Given user is on page AssistedPortalDashboard and clicks on GovtSchemeTab
 Then user is on page GovtSchemePage to verify NewApplicationButton is Displayed
 Given user is on page GovtSchemePage and clicks on NewApplicationButton
 Given user is on page GovtSchemePage and clicks on SSANewApplication