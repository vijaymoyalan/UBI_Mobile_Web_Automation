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
//	
//		features = {
//				"src\\test\\resources\\features\\API\\Drop3\\ARM",
//				"src\\test\\resources\\features\\API\\Drop3\\Borrowings",
//				"src\\test\\resources\\features\\API\\Drop3\\CurrentAccountEnquiry",
//				"src\\test\\resources\\features\\API\\Drop3\\HomePage",
//				"src\\test\\resources\\features\\API\\Drop3\\mPOS"
//				})
		
		
				
//		features = {
//                "src/test/resources/features/API/Drop2/GeneralService"
//        },
//        glue = "com.ubi.cucumber.steps.api.mvp", // path to step definition classes
//        plugin = {"json:target/cucumber-report.json", "html:target/cucumber-html-report.html"} // specify reporting options
//)

//features = "src\\test\\resources\\features\\API\\Drop3\\CurrentAccountEnquiry\\SmokeCurrentAccountEnquiry.feature")//,tags="@TestCaseKey=UDB-T38599A")

//features = "src/test/resources/features/API/MVP/NPS/NPSSmoke.feature",tags="@testcasekey")
//features = "src/test/resources/features/API/MVP/FixedRecurringDeposit/FDRDSmoke.feature",tags="@TestCaseKey=UDB-T7639")
//features = "src/test/resources/features/API/MVP/FixedRecurringDeposit")
		
//features = "src\\test\\resources\\features\\API\\Drop2\\ASBA\\")
//features = "src/test/resources/features/API/MVP/Registration")
		
//Below Feature File External Dependency Services
//features = "src\\test\\resources\\features\\Mobile\\MVP\\FDFlow.feature", tags="@TestCaseKey=UDB-T2399")
		features = "src\\test\\resources\\features\\Mobile\\MVP\\FDFlow.feature")
//features = "src\\test\\resources\\features\\Mobile\\MVP\\SSA.feature")
		//features = "src\\test\\resources\\features\\Mobile\\MVP\\genAICS.feature")
//features = "src\\test\\resources\\features\\Mobile\\MVP\\PMJJBY.feature", tags="@TestCaseKey=UDB-T12807")
//features = "src\\test\\resources\\features\\Mobile\\MVP\\PMSBY.feature", tags="@TestCaseKey=UDB-T12498")
		//features = "src\\test\\resources\\features\\Mobile\\MVP\\PMJJBY.feature")
		//features = "src\\test\\resources\\features\\Mobile\\MVP\\PMSBY.feature")
//features = "src\\test\\resources\\features\\Mobile\\MVP\\Nuclei.feature", tags="@TestCaseKey=TC05")
			//features = "src\\test\\resources\\features\\Mobile\\MVP\\BBPS.feature", tags="@TestCaseKey=UDB-T28108 or @TestCaseKey=UDB-T28100 or @TestCaseKey=UDB-T28107 or @TestCaseKey=UDB-T28109 or @TestCaseKey=UDB-T28103 or @TestCaseKey=UDB-T28187")
//features = "src\\test\\resources\\features\\Mobile\\MVP\\BBPS.feature")
//features = "src\\test\\resources\\features\\Mobile\\MVP\\fisdom.feature")
		
//features = "src\\test\\resources\\features\\API\\Drop3\\ARM",tags="@TestCaseKey=UDB-T11")

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


