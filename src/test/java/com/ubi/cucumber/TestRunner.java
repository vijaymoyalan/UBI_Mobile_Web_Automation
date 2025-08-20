package com.ubi.cucumber;

import org.junit.runner.RunWith;
import org.openqa.selenium.WebDriver;

import com.ubi.testbase.TestBase;

import io.cucumber.junit.CucumberOptions;
import net.serenitybdd.annotations.Managed;
import net.serenitybdd.cucumber.CucumberWithSerenity;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
		
//For running combine features as below
//features = { 
//"src/test/resources/features/API/MVP/FixedRecurringDeposit",
//"src/test/resources/features/API/MVP/PPF",
//"src/test/resources/features/API/MVP/Registration",
//"src/test/resources/features/API/MVP/SSA",
//"src/test/resources/features/API/MVP/NPS"})

//features ="src/test/resources/features/API/MVP/NPS")

//		"src/test/resources/features/API/MVP/AssistedPortal/AssistedPortalRegression.feature",
//        "src/test/resources/features/API/MVP/AssistedPortal/AssignmentService.feature",
//        "src/test/resources/features/API/MVP/AssistedPortal/ConsentService.feature",
//        "src/test/resources/features/API/MVP/AssistedPortal/DashboardService.feature"})
//-UPI
//features = "src\\test\\resources\\features\\API\\MVP\\PPF\\PPFRegression.feature",tags="@TestCaseKey=UDB-T7627 or @TestCaseKey=UDB-T7632")
//features = "src\\test\\resources\\features\\API\\MVP\\PPF\\PPFRegression.feature")
//		features = {
//				"src\\test\\resources\\features\\API\\Drop2\\BBPS",
//				"src\\test\\resources\\features\\API\\Drop2\\ChequeService",
//				"src\\test\\resources\\features\\API\\Drop2\\CreditCard",
//				"src\\test\\resources\\features\\API\\Drop2\\DebitCard",
//				"src\\test\\resources\\features\\API\\Drop2\\FundTransfer",
//				"src\\test\\resources\\features\\API\\Drop2\\GeneralService",
//				"src\\test\\resources\\features\\API\\Drop2\\ASBA",
//				//"src\\test\\resources\\features\\API\\Drop2\\GovtScheme",
//				"src\\test\\resources\\features\\API\\Drop2\\NCMC",
//			     "src\\test\\resources\\features\\API\\Drop2\\UPI"})
		
				
//		features = {
//                "src/test/resources/features/API/Drop2/GeneralService"
//        },
//        glue = "com.ubi.cucumber.steps.api.mvp", // path to step definition classes
//        plugin = {"json:target/cucumber-report.json", "html:target/cucumber-html-report.html"} // specify reporting options
//)

//		features = {
//				"src\\test\\resources\\features\\Mobile\\MVP\\Turtlemint.feature",
//				"src\\test\\resources\\features\\Mobile\\MVP\\Nuclei.feature",
//				"src\\test\\resources\\features\\Mobile\\MVP\\LAD.feature",
//				"src\\test\\resources\\features\\Mobile\\MVP\\PMJJBY.feature",
//				"src\\test\\resources\\features\\Mobile\\MVP\\PMSBY.feature"
//				}, tags = "@PilotRun")
//        features = "src\\test\\resources\\features\\Mobile\\MVP\\FDFlow.feature", tags="@TestCaseKey=UDB-T9654")
//features = "src\\test\\resources\\features\\Mobile\\MVP\\PMSBY.feature", tags="@TestCaseKey=UDB-T12485")

//features = "src\\test\\resources\\features\\Mobile\\MVP\\SSA_P2.feature", tags="@TestCaseKey=UDB-T1171")
		//features = "src\\test\\resources\\features\\Mobile\\MVP\\genAICS.feature")
//features = "src\\test\\resources\\features\\Mobile\\MVP\\PMJJBY.feature", tags="@TestCaseKey=UDB-T12785")
//features = "src\\test\\resources\\features\\Mobile\\MVP\\RecurringDeposit.feature", tags="@TestCaseKey=UDB-T9560")
//features = "src\\test\\resources\\features\\Mobile\\MVP\\PMJJBY.feature")
//		features = "src\\test\\resources\\features\\Mobile\\MVP\\PMJJBY.feature", tags="@TestCaseKey=UDB-T12784")
//		features = "src\\test\\resources\\features\\Mobile\\MVP\\PMSBY.feature")
//features = "src\\test\\resources\\features\\Mobile\\MVP\\Nuclei.feature", tags="@TestCaseKey=TC05")
//			features = "src\\test\\resources\\features\\Mobile\\MVP\\BBPS.feature", tags="@Set3 or @Set4")
//  features = "src\\test\\resources\\features\\Mobile\\MVP\\LAD.feature", tags="@TestCaseKey=UDB-T028 or @TestCaseKey=UDB-T008 or @TestCaseKey=UDB-T020 or @TestCaseKey=UDB-T066 or @TestCaseKey=UDB-T036 or @TestCaseKey=UDB-T058 or @TestCaseKey=UDB-T026 or @TestCaseKey=UDB-T005 or @TestCaseKey=UDB-T019 or @TestCaseKey=UDB-T023 or  @TestCaseKey=UDB-T025" )
//features = "src\\test\\resources\\features\\Mobile\\MVP\\LAD.feature")
//features = "src\\test\\resources\\features\\Mobile\\MVP\\Login&Registration_FailedCases.feature", tags="@TestCaseKey=UDB-T1131")
//features = "src\\test\\resources\\features\\Mobile\\MVP\\ASBA.feature")
//features = "src\\test\\resources\\features\\Mobile\\MSME\\Test.feature")
//		features = "src\\test\\resources\\features\\Mobile\\MSME\\Help&Support.feature", tags="@TestCaseKey=UDB-T44559 or @TestCaseKey=UDB-T44598 or @TestCaseKey=UDB-T44540 or @TestCaseKey=UDB-T44599 or @TestCaseKey=UDB-T44594 or @TestCaseKey=UDB-T44570 or @TestCaseKey=UDB-T44531")
//		features = "src\\test\\resources\\features\\Mobile\\MSME\\FundTransfer.feature", tags="@TestCaseKey=UDB-T47761")
//features = "src\\test\\resources\\features\\Mobile\\MSME\\FundTransfer.feature", tags="@Set1")
		features = "src\\test\\resources\\features\\Mobile\\MSME\\MSME_BQR_Mobile.feature", tags="@TestCaseKey=UDB-T59297")
//		features = "src\\test\\resources\\features\\Mobile\\MVP\\ASBA.feature", tags="@Test-T0082")
		
//		features = "src\\test\\resources\\features\\Mobile\\MVP\\Turtlemint.feature")
//		features = "src\\test\\resources\\features\\Mobile\\MVP\\Nuclei.feature")
//		features = "src\\test\\resources\\features\\Mobile\\MVP\\fisdom.feature")
//		features = "src\\test\\resources\\features\\Mobile\\MVP\\PMSBY.feature")
//		features = "src\\test\\resources\\features\\Mobile\\MVP\\PMJJBY.feature")
//		features = "src\\test\\resources\\features\\Mobile\\MVP\\LAD.feature")

//Below feature link for Feature FD-RD		
//features = "src\\test\\resources\\features\\API\\MVP\\FixedRecurringDeposit\\FDRDSmoke.feature",tags="@TestCaseKey=UDB-T7639")
//features = "src\\test\\resources\\features\\API\\MVP\\FixedRecurringDeposit\\FDRDRegression.feature")
//features = "src/test/resources/features/API/MVP/FixedRecurringDeposit")
//features = "src/test/resources/features/API/MVP/PPF/PPFRegression.feature")

//Below feature link for Feature Login Registration	
//features = "src/test/resources/features/API/MVP/Registration/RegistrationSmokeBranchToken.feature")
//features = "src/test/resources/features/API/MVP/Registration/RegistrationSmokeAadhar.feature")
//features = "src/test/resources/features/API/MVP/Registration/RegistrationSmokeDebitCard.feature")
//features = "src/test/resources/features/API/MVP/Registration/")

//Below feature link for Feature SSA
//features = "src\\test\\resources\\features\\API\\MVP\\FixedRecurringDeposit\\FDRDRegression.feature",tags="@TestCaseKey=UDB-T34205")
		
//features="src\\test\\resources\\features\\API\\MVP\\AssistedPortal\\ConsentService.feature")
//features="C:\\Users\\004QAI744\\UBIAutomation\\automationubi\\ubiAutomation\\src\\test\\resources\\features\\API\\MVP\\AssistedPortal\\DashboardService.feature")

//Below Feature File is for Govt Scheme
//features = "src\\test\\resources\\features\\API\\Drop2\\GovtScheme\\GovtSchemeMobileRegression.feature")

//Below Feature File is for NCMC
//features = {"src/test/resources/features/API/Drop2/FundTransfer",
//"src/test/resources/features/API/Drop2/ExternalServices"})

//Mobile 
//features = "src/test/resources/features/Mobile/MVP")
		
public class TestRunner extends TestBase{
	//@Managed(driver="Appium")
	//WebDriver appium;
}


