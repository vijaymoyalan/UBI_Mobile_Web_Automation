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
		common.enterText(mfaPage.EnterLoginPin1, "3");
		common.enterText(mfaPage.EnterLoginPin2, "6");
		common.enterText(mfaPage.EnterLoginPin3, "9");
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
		//common.clickElementByText(text.replace("\"", "").trim());
		common.KeyDown();
	}
	
	@Then("^user verifies message on page (.+) is (.+) on (.+)$")
	public void verifiesText(String pageName,String text, String elementName) {
		common.waitTillElementDisplayed(pageName,elementName);
		String actualText = common.getText(pageName, elementName);
        Assert.assertEquals(actualText,text.replace("\"", "").trim());
		//common.verifyText(null, text);)
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
	
	@Given("^user verifies on page (.+) for (.+) text in placeholder (.+)$")
	public void placeHolderCheck(String pageName,String expectedText, String elementName) {
		common.waitTillElementDisplayed(pageName,elementName);
		String actualText = common.getText(pageName,elementName);
		common.textValidation(actualText, expectedText);		
	}
	
	@Given("^user scrolls up to (.+)$")
    public void scrollsUp(String text) {
         common.scrollUp(text.replace("\"", "").trim());
    }
	@Given("^user is on page (.+) to check (.+) is disabled$")
	public void elementStatusCheck(String pageName, String elementName) {
	//common.elementStatus(pageName,elementName);
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
	@Given("^user verifies for any error message on page (.+) as (.+) for (.+)$")
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
}