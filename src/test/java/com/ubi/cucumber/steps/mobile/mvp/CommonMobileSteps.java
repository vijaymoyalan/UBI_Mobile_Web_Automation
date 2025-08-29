package com.ubi.cucumber.steps.mobile.mvp;

import com.ubi.base.ORPageModel;
import com.ubi.pageObject.DashboardPage;
import com.ubi.pageObject.DepositPage;
import com.ubi.pageObject.MFAPage;
import com.ubi.testbase.AppConfig;
import com.ubi.testbase.CommonMethods;
import com.ubi.testbase.CommonRestUtils;
import com.ubi.testbase.JSONComparator;
import com.ubi.testbase.TestBase;
import com.ubi.testbase.VerificationAPI;
import com.ubi.testbase.*;

import io.appium.java_client.android.AndroidDriver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.RestAssured;
import net.serenitybdd.annotations.Managed;
import net.serenitybdd.annotations.Steps;
import net.serenitybdd.core.pages.PageObject;
import net.thucydides.core.webdriver.WebDriverFacade;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


public class CommonMobileSteps extends PageObject {
public static String setEnvPath = "";
	
	/*@Steps
	CommonRestUtils steps;
	VerificationAPI stepsVerify;
	JSONComparator jsonComparator;*/

	@Managed(driver="appium")
	WebDriver appium;
	MFAPage mfaPage = new MFAPage();
	CommonMethods common = new CommonMethods();
	DepositPage depositPage = new DepositPage();
	DashboardPage dashboardPage = new DashboardPage();
	
	@Given("^user logins to app$")
	public void test() throws InterruptedException
	{
		
		   //find(By.xpath("//android.widget.TextView[@resource-id=\"textId\" and @text=\"English\"]")).click();
		   //find(By.xpath("//android.widget.Button[@content-desc=\"Continue\"]")).click();
	      Thread.sleep(4000);      	

		/*common.clickObject(mfaPage.SelectEnglish);
		common.clickObject(mfaPage.ContinueButton);
		common.clickObject(mfaPage.Symbol);
		common.clickObject(mfaPage.AllowPermission);
		common.clickObject(mfaPage.AllowPermissionAgain);
		common.clickObject(mfaPage.AllowPermissionAgain);
		common.clickObject(mfaPage.AllowPermissionAgain);
		common.clickObject(mfaPage.Symbol2);
		//common.clickObject(mfaPage.DownloadTC);
		//common.clickObject(mfaPage.AllowPermissionAgain);
		common.clickObject(mfaPage.AllowDTC);
		//common.clickObject(mfaPage.Icon);

		
		common.clickObject(mfaPage.LetsGetStarted);
		Thread.sleep(7000);      
		common.waitTillElementDisplayed(mfaPage.ChooseSim1);
    	common.clickObject(mfaPage.ChooseSim1);
		common.clickObject(mfaPage.ContinueSim);
		
		common.waitTillElementDisplayed(mfaPage.EnterLoginPin1);

		common.clickObject(mfaPage.EnterLoginPin1);
		//common.clickObject(mfaPage.EnterLoginPin1);
        common.enterText(mfaPage.EnterLoginPin1, "2");
        common.enterText(mfaPage.EnterLoginPin2, "5");
        common.enterText(mfaPage.EnterLoginPin3, "8");
        common.enterText(mfaPage.EnterLoginPin4, "0");
        common.waitTillElementDisplayed(dashboardPage.Accounts);
        common.clickObject(dashboardPage.Accounts);
        common.waitTillElementDisplayed(dashboardPage.Home);
        common.clickObject(dashboardPage.Home);
       
        common.scrollDown("Account Services");
        common.scrollUp("Deposits");
		//common.clickObject(mfaPage.ChooseSim1);
		//common.clickObject(mfaPage.ContinueSim);
	     Thread.sleep(7000);      

*/
			common.waitTillElementDisplayed("MFAPage","AllowPermissionBefore");
			common.clickObject("MFAPage","AllowPermissionBefore");

			common.clickObject("MFAPage","SelectEnglish");
			common.clickObject("MFAPage","ContinueButton");
			common.clickObject("MFAPage","Symbol");
			common.clickObject("MFAPage","AllowPermission");
			common.clickObject("MFAPage","AllowPermissionAgain");
			//common.clickObject("MFAPage","AllowPermissionAgain");
			common.clickObject("MFAPage","Symbol2");
			common.clickObject("MFAPage","AllowDTC");
			common.clickObject("MFAPage","LetsGetStarted");
			common.waitTillElementDisplayed("MFAPage","ChooseSim1");
			common.clickObject("MFAPage","ChooseSim1");
			common.clickObject("MFAPage","ContinueSimButton");

  		//CommonMethods.clickObject(mfaPage.ContinueButton);
 
	}
  	
	@Given("^user logins to app entering Login PIN$")
	public void enterTpin() throws InterruptedException {
		common.waitTillElementDisplayed(mfaPage.EnterLoginPin1);
		common.clickObject(mfaPage.EnterLoginPin1);
		common.enterText(mfaPage.EnterLoginPin1, "2");
		common.enterText(mfaPage.EnterLoginPin2, "5");
		common.enterText(mfaPage.EnterLoginPin3, "8");
		common.enterText(mfaPage.EnterLoginPin4, "0");
		//common.waitTillElementDisplayed(generalService.CustomerName);
		//common.clickObject(dashboardPage.Home);
	}

	@Given("^user is on page (.+) clicks on (.+)$")
	public void user_clicks(String pageName, String elementName) {
		common.waitTillElementDisplayed(pageName,elementName);
		common.clickObject(pageName,elementName);
		//common.digitKeyPadClick();
	}
	
//	@Given("^user is on page (.+) click on (.+) to upload (.+)$")   // to upload a file
//	public void upload_document(String pageName, String elementName, String fileName) throws IOException {
//		common.waitTillElementDisplayed(pageName,elementName);
//		common.fileToUpload(pageName,elementName, fileName);
//	}
	
	@When("^user uploads (.+)$")   // to upload a file
	public void upload_document(String fileName) throws IOException {
		common.fileToUpload(fileName);
	}
	
	
	@Given("^user is on page (.+) and types (.+) on (.+)$")
	public void user_entersText(String pageName, String text, String elementName) {
		common.waitTillElementDisplayed(pageName,elementName);
		common.enterText(pageName,elementName,text);
		common.keyboardNext();
	}
	

	@Given("^user scrolls down to (.+)$")
	public void scrollsDown(String text) throws InterruptedException {
		common.scrollDown(text.replace("\"", "").trim());
	}
	
	@Given("^user scrolls down and clicks on (.+)$")
	public void scrollsDownandClicks(String text) {
		common.clickElementByText(text.replace("\"", "").trim());
		common.KeyDown();
	}
	
	@Then("^user verifies message on page (.+) is (.+) on (.+)$")
	public void verifiesText(String pageName,String text, String elementName) {
		common.waitTillElementDisplayed(pageName,elementName);
		String actualText = common.getText(pageName, elementName);
        Assert.assertEquals(actualText,text.replace("\"", "").trim());
		//common.clickElementByText(text.replace("\"", "").trim());
	}
	@When("^user capture image from handset camera option$")
	public void takesImages() {
		common.takePictureFromCamera();
	}
	
	@Given("^user is on page (.+) and gives (.+) for first time$")
	public void giveThirdPartyConsent(String pageName, String elementName) {
		common.waitTillElementDisplayed(pageName,elementName);
		common.giveThirdPartyConsent(pageName, elementName); 
	}
	
	@When("^user verifies on page (.+) for (.+) text in placeholder (.+)$")
	public void placeHolderCheck(String pageName,String expectedText, String elementName) {
		common.waitTillElementDisplayed(pageName,elementName);
		String actualText = common.getText(pageName,elementName);
		common.textValidation(actualText, expectedText);		
	}
	
//	@When("^user verifies on page (.+) for (.+) text in placeholder (.+)$")
//	public void textHolderCheck(String pageName,String expectedText, String elementName) {
//		common.waitTillElementDisplayed(pageName,elementName);
//		String actualText = common.getText(pageName,elementName);
//		common.textValidation(actualText, expectedText);		
//	}
	
	@Given("^user scrolls up to (.+)$")
    public void scrollsUp(String text) {
         common.scrollUp(text.replace("\"", "").trim());
    }
	@When("^user is on page (.+) to check (.+) is (.+)$")  
	// Given user is on page <ModulePage> to check <xpathName> is <Disabled/Enabled/Checked/UnChecked/Selected/NotSelected/NotNull>
	public void elementStatusCheck(String pageName, String elementName, String status) {
		common.waitTillElementDisplayed(pageName,elementName);
		common.elementStatus(pageName,elementName, status);
	}
	
	@When("^user is on page (.+) for (.+) and (.+)$")
	public void verifyAccountBalance(String pageName, String elementAccount, String elementPay) {
		common.waitTillElementDisplayed(pageName,elementAccount);
		String accountBalance = common.getText(pageName, elementAccount);
		String payableAmount = common.getText(pageName, elementPay);
		common.verifyAccountBalance(accountBalance, payableAmount);
	}
	@When("^When user enters values in Enter TextBox$")
	public void enterAmountByKeyPad() {
		//common.digitKeyPadClick();
	}
	@When("^user verifies for any error message on page (.+) as (.+) for (.+)$")
	public void textErrorMsg(String pageName,String text, String elementName) {
		common.waitTillElementDisplayed(pageName,elementName);
		String actualText = common.getText(pageName, elementName);
		common.stopExecutionOnTextMatch(actualText, text);
	}
	@When("^user is on page (.+) and verifies for (.+) (.+)$")
	public void successTranx(String pageName,String expectedText, String elementName) {
		common.waitTillElementDisplayed(pageName,elementName);
		String actualText = common.getText(pageName, elementName);
		common.TransactionSuccessOnTextMatch(actualText, expectedText);
	}
	@Given("^user is on page (.+) and enters (.+) as (.+)$")
	public void enterAmout(String pageName,String amount, String elementName) {
		common.waitTillElementDisplayed(pageName,elementName);
		common.enterAmountClear(pageName,elementName, amount);
	}
	@Given("^user is on page (.+) selects (.+)$")
	public void datePickerYearSelection(String pageName, String elementName) {
		common.waitTillElementDisplayed(pageName,elementName);
		common.dateYearSelection(pageName,elementName);
	}
	@Given("^user swipe down the page$")
	public void swipeDown() {
		// this will navigate to bottom of the page(applicable where scroll to text is not applicable)
		common.swipeDownPage();
	}
	@Then("^user is on page (.+) verifies (.+) in (.+)$")  // this will verify amount >0 or count >0
	public void payoutAmount(String pageName, String action, String elementName) {
		common.waitTillElementDisplayed(pageName,elementName);
		common.actionVerification(pageName,action, elementName);	
	}
	
	@Given("^user selects day (.+) month (.+) year (.+) and current year is (.+)$")
    public void selectDayofMOnthYear(String day,String month,String year,String CurrentYear) {
		common.selectDate(day,month,year,CurrentYear);
    }
	@Then("^user verifies for toast message on page (.+) as (.+) text in placeholder (.+)$")
	public void toastmsgVerification(String pageName, String toastMsg, String elementName) {
		common.waitTillElementDisplayed(pageName,elementName);
		common.verifyToastMessage(pageName, toastMsg, elementName);
	}
	
	@When("^user is on page (.+) to check (.+) toggle switch is (.+)$")
	public void toggleSwitch(String pageName, String elementName, String status) {
		//common.waitTillElementDisplayed(pageName,elementName);
		common.toggleSwitchStatus(pageName, elementName, status);
		
	}
	
	@Given("^user moves slider number (.+) to (.+)$")
	public void moveSliders(int SliderNumber,int Slidervalue) {
		common.moveSlider(SliderNumber, Slidervalue);
    }
	@Given("^user selects a date (.+) years before today$")
	public void traverseDate(String year) {
		common.traverseDate(year);
	}
	@When("^user on page (.+) compares text (.+) with (.+)$")  // this method will compare text with partial text matching
	public void compareText(String pageName,String expectedText, String elementName) {
		common.waitTillElementDisplayed(pageName,elementName);
		String actualText = common.getText(pageName, elementName);
		common.verifyText(actualText, expectedText);
		//common.clickElementByText(text.replace("\"", "").trim());
	}

// added by Vijay M on 20/6/2025
	@Given("^user logins to MSME app$")
	public void MSMEAPP() throws InterruptedException
	{
		  common.waitTillElementDisplayed("MFAPage","MSMEAllowPhone");
	      common.clickObject("MFAPage","MSMEAllowPhone");
	      common.swipeLeft("Merchant Collection Product");
	      common.swipeLeft("Comprehensive Payment");
	      
	      common.clickObject("MFAPage","SelectEnglish");
	      common.clickObject("MFAPage","ContinueButton");
	      common.clickObject("MFAPage","Symbol");
	      common.clickObject("MFAPage","MSMEAllowSMS");
	      common.clickObject("MFAPage","MSMEAllowLocation");
//	      common.clickObject("MFAPage","MSMEAllowPhone");
	      common.clickObject("MFAPage","Symbol1");
	      common.swipeDownPage();
	      common.clickObject("MFAPage","MSMETnCAgree");
	      
	      common.clickObject("MFAPage","LetsGetStarted");
	      common.waitTillElementDisplayed("MFAPage","ChooseSim2");
	      common.clickObject("MFAPage","ChooseSim2");
	      common.clickObject("MFAPage","ContinueSimButton"); 
	}
	
	
//	added by Vijay M on 20/6/2025
	@Given("^user logins to MSME app entering Login PIN$")
	public void enterMSMETpin() throws InterruptedException {
		
		common.waitTillElementDisplayed(mfaPage.MSMELoginPin1);
		common.clickObject(mfaPage.MSMELoginPin1);
		common.enterText(mfaPage.MSMELoginPin1, "3");
		common.enterText(mfaPage.MSMELoginPin2, "6");
		common.enterText(mfaPage.MSMELoginPin3, "9");
		common.enterText(mfaPage.MSMELoginPin4, "0");

		common.clickObject(mfaPage.MSMELoginButton);
	}
	
	@Given("^user clicks on text (.+)$")   // this method
	public void TextToClick(String TextName) {
		common.selectTextToClick(TextName);
	}
	
//	added by Vijay M on 10/7/2025
	@Given("^user is on page (.+) to capture (.+)$")
	public void accountNumPassing(String pageName, String accNum) {
		common.capturAccountNo(pageName, accNum);
	}
//	added by Vijay M on 10/7/2025	
	@Given("^user scrolls to clicks on Masked Account Number$")
	public void clickMaskedAccNumber() throws InterruptedException {
		common.callingMaskedAccountNum();		
	}
	
//	added by Vijay M on 14/7/2025
	@Given("^user is on (.+) to check for pending application option and clicks on (.+)$")  
	public void clickOnStartOverOption(String pageName, String StartOver) throws InterruptedException {
		common.clickOnStartOver(pageName, StartOver);
		
	}
	
	@Given("^user enters OTP on page (.+) and types (.+) on (.+)$")
    public void user_entersOTP(String pageName, String OTP, String elementName) {
                  common.waitTillElementDisplayed(pageName,elementName);
                   common.enterOTP(pageName,elementName,OTP);
    }
	
	@Given("^user swipes left to (.+)$")
    public void swipesLeft(String text) {
		common.swipeLeft(text.replace("\"", "").trim());
    }
	
	@Given("^user is at page (.+) if element is disabled clicks on (.+)$")
	public void user_clicks_isdisabled(String pageName, String elementName) {
	common.waitTillElementDisplayed(pageName,elementName);
	common.clickObjectifdisabled(pageName,elementName);
	}
	
	@Given("^user selects yesterday's date$")
	public void selectDate() {
		common.selectYesterday();
	}
	
	// Added by Rohit G
	@Given("^user waits to click apply now button")
    public void user_waits() throws InterruptedException {
                   Thread.sleep(8000);
    }
	
	// Added by Rohit G
	@Given("user clicks with cordinate {int} {int}")
	public void user_clicks_with_cordinate(int int1, int int2) {
		common.clickWithCoordinate(int1, int2);
	}
	
	// added by Dipesh
	@Given("^user is on page (.+) clicks to element (.+) (.+) times$")
	public void user_clicks(String pageName,String elementName, int n ) {
		common.waitTillElementDisplayed(pageName,elementName);
		common.clickObjectNtimes(pageName,elementName,n);
	}
	
}