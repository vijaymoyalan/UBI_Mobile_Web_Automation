package com.ubi.cucumber;

import org.junit.runner.RunWith;
import org.openqa.selenium.WebDriver;

import com.ubi.testbase.TestBase;

import io.cucumber.junit.CucumberOptions;
import net.serenitybdd.annotations.Managed;
import net.serenitybdd.cucumber.CucumberWithSerenity;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
				
//		features = "src\\test\\resources\\features\\Mobile\\MVP\\Turtlemint.feature",
//		glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks.mobile"})
		
//		features = "src\\test\\resources\\features\\Mobile\\MVP\\Nuclei.feature",
//		glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks.mobile"})
		
//		features = "src\\test\\resources\\features\\Mobile\\MVP\\fisdom.feature",
//		glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks.mobile"})
		
//		features = "src\\test\\resources\\features\\Mobile\\MVP\\PMSBY.feature",
//		glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks.mobile"})

//		features = "src\\test\\resources\\features\\Mobile\\MVP\\PMJJBY.feature",
//		glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks.mobile"})

//		features = "src\\test\\resources\\features\\Mobile\\MVP\\LAD.feature",
//		glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks.mobile"})

//		features = "src\\test\\resources\\features\\Mobile\\MVP\\BBPS.feature", tags="@TestCaseKey=UDB-T28227 or @TestCaseKey=UDB-T28212 or @TestCaseKey=UDB-T28186 or @TestCaseKey=UDB-T28107 or @TestCaseKey=UDB-T28268 or @TestCaseKey=UDB-T28091",
//		glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks.mobile"})
		
//		features = "src\\test\\resources\\features\\Mobile\\MSME\\Help&Support.feature",
//		glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks.mobile"})
		
//		features = "src\\test\\resources\\features\\Mobile\\MSME\\FundTransfer.feature",
//		glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks.mobile"})
		
//		features = "src\\test\\resources\\features\\Mobile\\MSME\\MSME_BQR_Mobile.feature",
//		glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks.mobile"})
		
		
//		features = "src\\test\\resources\\features\\Mobile\\MVP\\FDFlow.feature", tags="@TestCaseKey=UDB-T9654",
//		glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks.mobile"})



		
		
		
//		features = "src\\test\\resources\\features\\Mobile\\MSME\\MSME_BQR_Mobile.feature", tags="@TestCaseKey=UDB-T59442 or @TestCaseKey=UDB-T59467 or @TestCaseKey=UDB-T59482 or @TestCaseKey=UDB-T59485 or @TestCaseKey=UDB-T59535 or @TestCaseKey=UDB-T59542 or @TestCaseKey=UDB-T59835 or @TestCaseKey=UDB-T59836",
//		glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks.mobile"})
//features = "src\\test\\resources\\features\\Mobile\\MSME\\MSME_Login.feature", tags="@TestCaseKey=UDB-T44105 or @TestCaseKey=UDB-T45879 or @TestCaseKey=UDB-T45835 or @TestCaseKey=UDB-T45881 or @TestCaseKey=UDB-T45817 or @TestCaseKey=UDB-T45756 or @TestCaseKey=UDB-T45761 or @TestCaseKey=UDB-T45713 or @TestCaseKey=UDB-T45834 or @TestCaseKey=UDB-T45878 or @TestCaseKey=UDB-T458149",
//glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks.mobile"})
//features = "src\\test\\resources\\features\\Mobile\\MSME\\FundTransfer.feature", tags="@TestCaseKey=UDB-T47816 or @TestCaseKey=UDB-T47714 or @TestCaseKey=UDB-T47715 or @TestCaseKey=UDB-T47726 or @TestCaseKey=UDB-T47729 or @TestCaseKey=UDB-T47845 or @TestCaseKey=UDB-T47818 or @TestCaseKey=UDB-T47813 or @TestCaseKey=UDB-T47759 or @TestCaseKey=UDB-T47757 or @TestCaseKey=UDB-T47754 or @TestCaseKey=UDB-T47758 or @TestCaseKey=UDB-T47760 or @TestCaseKey=UDB-T47809 or @TestCaseKey=UDB-T47799 or @TestCaseKey=UDB-T47733 or @TestCaseKey=UDB-T47708 or @TestCaseKey=UDB-T47718 or @TestCaseKey=UDB-T47721 or @TestCaseKey=UDB-T47712",
//glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks.mobile"})
//features = "src\\test\\resources\\features\\Mobile\\MSME\\MSME_BQR_Mobile.feature",
	
//		features = "src\\test\\resources\\features\\Mobile\\MSME\\Help&Support.feature", tags="@TestCaseKey=UDB-T44594 or @TestCaseKey=UDB-T44526 or @TestCaseKey=UDB-T44603")
//features = "src\\test\\resources\\features\\Mobile\\MSME\\FundTransfer.feature", tags="@TestCaseKey=UDB-T47716 or @TestCaseKey=UDB-T47753 or @TestCaseKey=UDB-T47817 or @TestCaseKey=UDB-T47816 or @TestCaseKey=UDB-T47729 or @TestCaseKey=UDB-T47733 or @TestCaseKey=UDB-T47692 or @TestCaseKey=UDB-T47708 or @TestCaseKey=UDB-T47738 or @TestCaseKey=UDB-T47721 or @TestCaseKey=UDB-T47712 or @TestCaseKey=UDB-T47852 or @TestCaseKey=UDB-T47849 or @TestCaseKey=UDB-T47845 or @TestCaseKey=UDB-T47861 or @TestCaseKey=UDB-T47859 or @TestCaseKey=UDB-T47860 or @TestCaseKey=UDB-T47862 or @TestCaseKey=UDB-T47656" )
//		features = "src\\test\\resources\\features\\Mobile\\MSME\\MSME_HomePage.feature", tags="@TestCaseKey=UDB-T52200 or @TestCaseKey=UDB-T52194 or @TestCaseKey=UDB-T52201")
////
//		features = "src/test/resources/features/Web/AssistedPortal/AssistedPortal.feature",
//		        		   glue = {"com.ubi.cucumber.steps.web","com.ubi.hooks.web"})

//
//features = "src/test/resources/features/Web/AssistedPortal/Consent.feature",
//glue = {"com.ubi.cucumber.steps.web","com.ubi.hooks.web"})

//features = "src/test/resources/features/Web/RIB/RIB_SSA_New.feature",tags="@TestCaseKey=UDB-T71884",
//glue = {"com.ubi.cucumber.steps.web","com.ubi.hooks.web"})

//features = "src/test/resources/features/Web/RIB/RIB_PPF_New.feature", tags="@TestCaseKey=UDB-T72034 or @TestCaseKey=UDB-T72035",
//glue = {"com.ubi.cucumber.steps.web","com.ubi.hooks.web"})
		
//		features = "src/test/resources/features/Web/RIB/RIB_PPF_Existing.feature", tags="@TestCaseKey=UDB-T72062",
//		glue = {"com.ubi.cucumber.steps.web","com.ubi.hooks.web"})
		
//		features = "src/test/resources/features/Web/RIB/RIB_RD.feature", tags="@TestCaseKey=UDB-T76007",
//		glue = {"com.ubi.cucumber.steps.web","com.ubi.hooks.web"})
		
		features = "src/test/resources/features/Web/RIB/RIB_FundTransfer.feature", tags="@TestCaseKey=UDB-T76008",
		glue = {"com.ubi.cucumber.steps.web","com.ubi.hooks.web"})


//features = "src/test/resources/features/Web/RIB/RIB_PMSBY.feature",
//glue = {"com.ubi.cucumber.steps.web","com.ubi.hooks.web"})
		
//		features = "src/test/resources/features/Web/RIB/RIB_PMJJBY.feature",
//		glue = {"com.ubi.cucumber.steps.web","com.ubi.hooks.web"})
		

//features = "src\\test\\resources\\features\\Mobile\\MSME\\MSME_HomePage.feature", tags="@TestCaseKey=UDB-T78895",
//glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks.mobile"})	
		
//		features = "src\\test\\resources\\features\\Mobile\\MSME\\MSME_HomePage.feature")
		
//		features = "src\\test\\resources\\features\\Mobile\\MSME\\FundTransfer.feature",
//		glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks"})

//		features = "src\\test\\resources\\features\\Mobile\\MSME\\MSME_Login.feature")
		
//		features = "src\\test\\resources\\features\\Mobile\\MSME\\MSME_BQR_Mobile.feature",
//		glue = {"com.ubi.cucumber.steps.mobile.mvp","com.ubi.hooks"})
		
	
// API Features
//		features =  "src\\test\\resources\\features\\API\\Drop2\\NCMC",
//		glue = {"com.ubi.cucumber.steps.api.mvp"})


//features = {
//"src\\test\\resources\\features\\API\\Drop2\\ChequeService",
//"src\\test\\resources\\features\\API\\Drop2\\GeneralService",
//"src\\test\\resources\\features\\API\\Drop2\\CreditCard",
//"src\\test\\resources\\features\\API\\Drop2\\FundTransfer",
//"src\\test\\resources\\features\\API\\Drop2\\GovtScheme",
//"src\\test\\resources\\features\\API\\Drop2\\UPI",
//"src\\test\\resources\\features\\API\\Drop2\\DebitCard",
//"src\\test\\resources\\features\\API\\Drop2\\NCMC",
//"src\\test\\resources\\features\\API\\Drop2\\BBPS"
//})										//				"src\\test\\resources\\features\\API\\Drop2\\ASBA",

//features = {
//"src\\test\\resources\\features\\API\\Drop3\\ARM",
//"src\\test\\resources\\features\\API\\Drop3\\Borrowings",
//"src\\test\\resources\\features\\API\\Drop3\\BSCollectionDashboard",
//"src\\test\\resources\\features\\API\\Drop3\\CurrentAccountEnquiry",
//"src\\test\\resources\\features\\API\\Drop3\\HomePage",
//"src\\test\\resources\\features\\API\\Drop3\\mPOS",
//"src\\test\\resources\\features\\API\\Drop3\\LoginAndRegistration",
//"src\\test\\resources\\features\\API\\Drop3\\BusinessServices",
//"src\\test\\resources\\features\\API\\Drop3\\PaymentLink",
//"src\\test\\resources\\features\\API\\Drop3\\Profile"
//})
		
public class TestRunner extends TestBase{
	//@Managed(driver="Appium")
	//WebDriver appium;
}


