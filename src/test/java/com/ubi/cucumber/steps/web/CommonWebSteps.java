package com.ubi.cucumber.steps.web;

import org.junit.Assert;

import com.ubi.testbase.CommonWebMethods;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;


public class CommonWebSteps{

	CommonWebMethods webCom = new CommonWebMethods();
	
	
	@Given("^Browser is launched")
	public void example() {
		System.out.println("browser example test");

	}
	@Given("^user is on page (.+) and types (.+) on (.+)$")
	public void user_entersText(String pageName, String text, String elementName) {
		webCom.waitTillElementDisplayed(pageName, elementName);
		webCom.clearTextbox(pageName, elementName);
		webCom.enterText_Web(pageName, elementName, text);
	}
		
	@Given("^user is on page (.+) and clicks on (.+)$")
	public void webElementClick(String pageName, String elementName) throws InterruptedException {
		webCom.waitTillElementDisplayed(pageName, elementName);
		webCom.clickButton_Web(pageName, elementName);
	}
	
	@Given("^user scrolls down by pixel (.+)$")
	public void scrollsDown(int pixels) {
		webCom.scrollDown(pixels);
	}
	
	@Given("^user scrolls up by pixel (.+)$")
	public void scrollsUp(int pixels) {
		webCom.scrollUp(pixels);
	}
	@Given("^user scrolls at bottom of webpage$")
	public void scrollsToBottom() {
		webCom.scrollToBottom();
	}
	
	@Given("^user scrolls at top of webpage$")
	public void scrollsToTop() {
		webCom.scrollToTop();
	}
	
	@Then("^user is on page (.+) scroll to webpage element (.+)$")
	public void scrollsToElement(String pageName, String name) {
		webCom.waitTillElementDisplayed(pageName, name);
		webCom.scrollToElementWebPageElement(pageName, name);
	}
	
	@Then("^user is on page (.+) verifies (.+) in (.+)$")  // this will verify amount >0 or count >0
	public void payoutAmount(String pageName, String action, String elementName) {
		webCom.waitTillElementDisplayed(pageName,elementName);
		webCom.actionVerification(pageName,action, elementName);	
	}
	
	@Then("^user verifies for toast message on page (.+) as (.+) text in placeholder (.+)$")
	public void toastmsgVerification(String pageName, String toastMsg, String elementName) {
		webCom.waitTillElementDisplayed(pageName,elementName);
		webCom.verifyToastMessage(pageName, toastMsg, elementName);
	}
	
	@Then("^user is on page (.+) verifies sum of (.+) and (.+) equals (.+)$")
	public void totalApplicationCount(String pageName, String countOne, String countTwo, String totalCount) {
		webCom.waitTillElementDisplayed(pageName,countOne);
		webCom.sumCalculation(pageName, countOne, countTwo,totalCount);
		webCom.sumOfAssignment();
	}
	
	@Then("^user is on page (.+) to verify (.+) is (.+)$")
	// Then user is on page <ModulePage> to check <xpathName> is <Disabled/Enabled/Checked/UnChecked/Selected/NotSelected/NotNull>
	public void elementStatusCheck(String pageName, String elementName, String status) {
		webCom.waitTillElementDisplayed(pageName,elementName);
		webCom.elementStatus(pageName,elementName, status);
	}
	
	@Given("^user is on page (.+) and clicks on hyperlink (.+)$")
	public void svgElement(String pageName, String elementName) {
		webCom.waitTillElementDisplayed(pageName, elementName);
		webCom.svgElementClick(pageName, elementName);
	}
	
	@Then("^user clicks on Enter$")
	public void enterClick() {
		webCom.clickEnter();
	}
	
	@Then("^user is on page (.+) clears the (.+)$")
	public void enterClick(String pageName, String elementName) {
		webCom.waitTillElementDisplayed(pageName, elementName);
		webCom.clearTextbox(pageName, elementName);
	}
	
	@Then("^user waits for sometime$")
	public void waitPeriod() throws InterruptedException {
		webCom.waitForSomePeriod();
	}
	

	@Then("^user verifies message on page (.+) is (.+) on (.+)$")
	public void verifiesText(String pageName,String text, String elementName) {
		webCom.waitTillElementDisplayed(pageName,elementName);
		String actualText = webCom.getText(pageName, elementName);
        Assert.assertEquals(actualText,text.replace("\"", "").trim());
	}
	
	@Given("^user is on (.+) to check for pending application option and clicks on (.+)$")  
	public void clickOnStartOverOption(String pageName, String StartOver) throws InterruptedException {
		webCom.clickOnStartOver(pageName, StartOver);
	}
	
	@Given("^user selects day (.+) month (.+) year (.+) and current year is (.+)$")
    public void selectDayofMOnthYear(String day,String month,String year,String CurrentYear) {
		webCom.selectDate(day,month,year,CurrentYear);
    }
	
	@Then("^user selects yesterday's date$")
	public void selectDate() {
		webCom.selectYesterday();
		
	}
	
	@And("^user waits for customer consent to be accepted$")
    public void user_clicks_on_send_consent() throws InterruptedException {
		System.out.println("Inside consent method step");
		webCom.setCaptureResponses(true);
        Thread.sleep(30000);
    }
	
	
}
