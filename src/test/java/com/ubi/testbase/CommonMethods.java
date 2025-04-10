package com.ubi.testbase;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.time.Duration;
import java.time.LocalDate;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import org.assertj.core.api.SoftAssertions;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Interaction;
import org.openqa.selenium.interactions.PointerInput;
import org.openqa.selenium.interactions.Sequence;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.asserts.SoftAssert;

import com.google.common.collect.ImmutableMap;
import org.testng.Assert;
import com.ubi.base.ORPageModel;
import com.ubi.pageObject.MFAPage;

import io.appium.java_client.AppiumBy;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.nativekey.AndroidKey;
import io.appium.java_client.android.nativekey.KeyEvent;
import io.appium.java_client.pagefactory.AndroidBy;
import io.appium.java_client.touch.WaitOptions;
import io.appium.java_client.touch.offset.PointOption;
import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.actions.SendKeys;
import net.serenitybdd.screenplay.events.ActorPerforms;
import net.thucydides.core.pages.components.FileToUpload;
import net.thucydides.core.webdriver.WebDriverFacade;
import java.util.Map;

public class CommonMethods extends PageObject {

   AndroidDriver androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());
	WebElement elementObject = null;

	public ORPageModel getElementFromObject(List<ORPageModel> listofElements, String name) {
		ORPageModel element = new ORPageModel();
	
		for (ORPageModel item : listofElements) {
			if (item.getName().equals(name)) {
				element = item;
				break; // Exit loop once found
				// elementObject = findElement(element.locator, element.value);
			}
		}
	
		return element;
	}
	
	public void findElementsForPage(String pageName) {
		List<ORPageModel> listofElements = TestBase._ORIntializater.get(MFAPage.class.getSimpleName());

	}

	public ORPageModel findElement(List<ORPageModel> listofElements, String name) {
		if (listofElements.isEmpty() == false )
		{
		return getElementFromObject(listofElements, name);
		}
		else
		{
			return null; 
		}
			
	}

	public WebElement findElement(ORPageModel element) {
		
		switch (element.locator) {
		case "id":
			elementObject = find(By.id(element.value));
			break;
		case "xpath":
			elementObject = find(By.xpath(element.value));
			break;
		}
		return elementObject;
		// code block
	}

	public void findElement(WebElement element) {
		WebDriverWait wait = new WebDriverWait(androidDriver, Duration.ofSeconds(15));
		wait.until(ExpectedConditions.visibilityOf(element));
	}

	public void clickObject(ORPageModel element) {
		// element.isEnabled();
         		
		findElement(element).click();

		// element.click();
	}

	public void clickWithCoordinate(String x, String y) {

		// Perform click action using PointerInput
		int xCoord = Integer.parseInt(x);
        int yCoord = Integer.parseInt(y);
		PointerInput finger = new PointerInput(PointerInput.Kind.TOUCH, "finger");
		Sequence clickSequence = new Sequence(finger, 1)
				.addAction(finger.createPointerMove(Duration.ofMillis(0), PointerInput.Origin.viewport(), xCoord, yCoord))
				.addAction(finger.createPointerDown(PointerInput.MouseButton.LEFT.asArg()))
				.addAction(finger.createPointerUp(PointerInput.MouseButton.LEFT.asArg()));
		androidDriver.perform(Collections.singletonList(clickSequence));

	}

	public void enterText(ORPageModel element, String text) {
		findElement(element).clear();
		findElement(element).sendKeys(text);

		// element.click();
	}
	
	public String getText(ORPageModel element) {
		// element.isEnabled();
		return findElement(element).getText();

		// element.click();
	}

	
public void verifyText(ORPageModel element, String expectedText) {
		int attempts = 0;
		while (attempts < 3) {
			try {
				String actualText = findElement(element).getText();
			
				// Create a SoftAssertions instance
				SoftAssertions softAssertions = new SoftAssertions();

				// Perform various assertions
				softAssertions.assertThat(actualText)
						.as("Check if expected text contains in the actual text. Expected Text:" + expectedText + " Actual Text: " + actualText)
						.contains(expectedText);
				softAssertions.assertAll();
				break;
			} catch (StaleElementReferenceException | NoSuchElementException e) {
				attempts++;
			}
		}

	}

	
	public void verifyToastMessage(ORPageModel toastMessageElement, String expectedToastMessage) {
		int attempts = 0;
		while (attempts < 3) {
			try {

				SoftAssertions softAssertions = new SoftAssertions();

				// Wait for the toast message and verify it
				waitTillElementDisplayed(toastMessageElement);

				String actualToastMessage = findElement(toastMessageElement).getText();
				// Perform various assertions
				softAssertions
						.assertThat(actualToastMessage).as("Check if Texts are equals. Expected Text:"
								+ expectedToastMessage + " Actual Text: " + actualToastMessage)
						.isEqualTo(expectedToastMessage);
				softAssertions.assertAll();
				break;
			} catch (StaleElementReferenceException | NoSuchElementException e) {
				attempts++;
			}
		}

	}

	public void selectDropdown(ORPageModel element, String optionText) {

		androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());

		int attempts = 0;
		while (attempts < 3) {
			try {

				// Locate the dropdown element
				WebElement dropdown = findElement(element);

				// Click the dropdown to open it
				dropdown.click();

				// Locate and select the desired option
				WebElement option = androidDriver
						.findElement(AppiumBy.androidUIAutomator("new UiSelector().text(\"" + optionText + "\")"));
				option.click();
				break;

			} catch (StaleElementReferenceException | NoSuchElementException e) {
				attempts++;
			}
		}
	}

	public void waitTillElementDisplayed(ORPageModel element) {
		// element.isEnabled();
		androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());

		int attempts = 0;
		while (attempts < 3) {
			try {
				WebDriverWait wait = new WebDriverWait(androidDriver, Duration.ofSeconds(60));
				wait.until(ExpectedConditions.visibilityOf(findElement(element)));
				break;
			} catch (StaleElementReferenceException | NoSuchElementException e) {
				attempts++;
			}
		}

	}
	
	public void waitTillElementDisplayed(String pageName, String name)
	{
		waitTillElementDisplayed(findElement(TestBase._ORIntializater.get(pageName), name));

	}

	public void clickObject(String pageName, String name) {
		
		// element.isEnabled();
		clickObject(findElement(TestBase._ORIntializater.get(pageName), name));

	}
	

	public String getText(String pageName, String name) {
		// element.isEnabled();
		String actualText = getText(findElement(TestBase._ORIntializater.get(pageName), name)).trim();
		System.out.println("Text returned by getText method is "+ actualText);
		return actualText;
		// element.click();
	}
	
	public void clickElementByText(String text) {
        // Locate the element using XPath and the text provided
		androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());
		
		WebElement element = androidDriver.findElement(By.xpath("//android.widget.TextView[@resource-id=\"textId\" and @text=\"" + text + "\"]"));
        
		WebDriverWait wait = new WebDriverWait(androidDriver, Duration.ofSeconds(60));
		wait.until(ExpectedConditions.visibilityOf(element));
        // Click the element
        if (element != null) {
            element.click();
        } else {
            System.out.println("Element with text '" + text + "' not found.");
        }
	}

	public void enterText(String pageName, String name, String text) {
		// element.isEnabled();
		enterText(findElement(TestBase._ORIntializater.get(pageName), name), text);
		// element.click();
	}
	
	public void keyboardNext() {
		androidDriver.hideKeyboard();

	}
	
	

	public void scrollToElement(String pageName, String name) {

		WebElement element = findElement(findElement(TestBase._ORIntializater.get(pageName), name));

		// AndroidDriver<WebElement> driver = (AndroidDriver<WebElement>) getDriver();
		// Map<String, String> scrollOptions = Map.of("strategy", "UiSelector", "text",
		// text);
		// driver.executeScript("mobile: scroll", scrollOptions);
	}
	

	public void scrollDown(String elementText) throws InterruptedException {
		WebDriverWait wait;
		androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());
		wait = new WebDriverWait(getDriver(), Duration.ofSeconds(10));
		boolean elementFound = false;
		Thread.sleep(3000);
		do {
			try {
				// Try to find the element
				WebElement element = androidDriver.findElement(AppiumBy.androidUIAutomator("new UiSelector().text(\"" + elementText + "\")"));
				if(element.isDisplayed()) {
					elementFound = true; // Element found
					System.out.println("Element found, exiting loop.");					
				}
			} catch (NoSuchElementException e) {
				// If element is not found, scroll down
				androidDriver.findElement(AppiumBy.androidUIAutomator("new UiScrollable(new UiSelector().scrollable(true)).scrollForward();"));
				System.out.println("Element not found, scrolling down");
			}//elementFound = true;
		} while (!elementFound);
	}
	

	public void scrollUp(String elementText) {
		androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());
		boolean elementFound = false;
		do {
			try {
				// Try to find the element
		        WebElement element = androidDriver.findElement(AppiumBy.androidUIAutomator("new UiSelector().text(\"" + elementText + "\")"));
				if(element.isDisplayed()) {
				elementFound = true; // Element found
				}
	        	} catch (NoSuchElementException e) {
	         		// If element is not found, scroll down
	          		androidDriver.findElement(AppiumBy.androidUIAutomator("new UiScrollable(new UiSelector().scrollable(true)).scrollBackward();"));
	        	}
	        } while (!elementFound);
	}

	public void swipeLeft(ORPageModel element) {

		androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());

		do {
			try {
				WebElement mobileElement = findElement(element);
				if (mobileElement.isDisplayed()) {
					System.out.println("Element is displayed!");
					break;
				}
			} catch (NoSuchElementException e) {
				swipeLeft(androidDriver);
			}
		} while (true);

	}
	

	private static void swipeLeft(AndroidDriver androidDriver) {
		int screenHeight = androidDriver.manage().window().getSize().height;
		int screenWidth = androidDriver.manage().window().getSize().width;

		int startX = (int) (screenWidth * 0.8);
		int startY = screenHeight / 2;
		int endX = (int) (screenWidth * 0.2);
		int endY = screenHeight / 2;

		PointerInput finger = new PointerInput(PointerInput.Kind.TOUCH, "finger");
		Sequence swipe = new Sequence(finger, 1)
				.addAction(finger.createPointerMove(Duration.ZERO, PointerInput.Origin.viewport(), startX, startY))
				.addAction(finger.createPointerDown(PointerInput.MouseButton.LEFT.asArg()))
				.addAction(
						finger.createPointerMove(Duration.ofMillis(500), PointerInput.Origin.viewport(), endX, endY))
				.addAction(finger.createPointerUp(PointerInput.MouseButton.LEFT.asArg()));

		androidDriver.perform(Arrays.asList(swipe));

	}

	public void swipeRight(ORPageModel element) {

		androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());

		do {
			try {
				WebElement mobileElement = findElement(element);
				if (mobileElement.isDisplayed()) {
					System.out.println("Element is displayed!");
					break;
				}
			} catch (NoSuchElementException e) {
				swipeRight(androidDriver);
			}
		} while (true);

	}

	private static void swipeRight(AndroidDriver androidDriver) {
		int screenHeight = androidDriver.manage().window().getSize().height;
		int screenWidth = androidDriver.manage().window().getSize().width;

		int startX = (int) (screenWidth * 0.2);
		int startY = screenHeight / 2;
		int endX = (int) (screenWidth * 0.8);
		int endY = screenHeight / 2;

		PointerInput finger = new PointerInput(PointerInput.Kind.TOUCH, "finger");
		Sequence swipe = new Sequence(finger, 1)
				.addAction(finger.createPointerMove(Duration.ZERO, PointerInput.Origin.viewport(), startX, startY))
				.addAction(finger.createPointerDown(PointerInput.MouseButton.LEFT.asArg()))
				.addAction(
						finger.createPointerMove(Duration.ofMillis(500), PointerInput.Origin.viewport(), endX, endY))
				.addAction(finger.createPointerUp(PointerInput.MouseButton.LEFT.asArg()));

		androidDriver.perform(Arrays.asList(swipe));

	}
	
	public void KeyDown() {
		androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());
		androidDriver.pressKey(new KeyEvent(AndroidKey.DPAD_DOWN));
		androidDriver.pressKey(new KeyEvent(AndroidKey.ENTER));

	}
	
	public void takePictureFromCamera() {
	    WebDriverWait wait;
	    
	 // Waiting for camera button to be visible
	    wait = new WebDriverWait(getDriver(), Duration.ofSeconds(10));
	    WebElement shutterButton = wait.until(ExpectedConditions.presenceOfElementLocated(
	        By.id("com.android.camera:id/shutter_button")));
	 // Click to capture the image
	    shutterButton.click(); 
	 
	 // Locate the confirmation button
	    wait = new WebDriverWait(getDriver(), Duration.ofSeconds(10));
	    WebElement confirmButton = wait.until(ExpectedConditions.presenceOfElementLocated(
	        By.id("com.android.camera:id/done_button"))); 
	    confirmButton.click();
}
	
	public void textValidation(String expectedText, String actualText) {
			System.out.println("Expected text: "+expectedText);
			System.out.println("Actual text: "+actualText);
		 // Create a SoftAssert instance
		    try {
		    	SoftAssert softAssert = new SoftAssert();
				softAssert.assertEquals(actualText, expectedText, "Text passed in step is matching");
				
			} catch (AssertionError e) {
				System.out.println("Assertion failed with reason as "+e);
			}
			
	}
	public void verifyAccountBalance(String accountBalance, String payableAmount) {
		String AmountText = accountBalance.replace("₹", "").replace(",", "").trim();
		double accBalance = Double.parseDouble(AmountText.trim());
		System.out.println("Bank Account Balance "+ accBalance);
		
		String PayText = payableAmount.replace("₹", "").replace(",", "").trim();
		double payAmount = Double.parseDouble(PayText.trim());
		System.out.println("Recharge Amount selected "+ payAmount);
	    Assert.assertTrue(accBalance > payAmount, "Account Balance is Low");	
	}
	public void digitKeyPadClick() {
		/*
		 * androidDriver.pressKey(new KeyEvent(AndroidKey.DIGIT_1));
		 * androidDriver.pressKey(new KeyEvent(AndroidKey.DIGIT_0));
		 * androidDriver.pressKey(new KeyEvent(AndroidKey.DIGIT_0));
		 * androidDriver.pressKey(new KeyEvent(AndroidKey.DIGIT_0));
		 */
		androidDriver.executeScript("mobile: pressKey", ImmutableMap.of("keycode", 8));
	}
	public void stopExecutionOnTextMatch(String actualText, String expectedText) {
		System.out.println("Actual Text: "+actualText);
		System.out.println("Expected Text: "+expectedText);
		try {
			if (actualText.equalsIgnoreCase(expectedText)) {
                System.out.println("Text matched. Stopping execution.");
                Assert.fail(actualText);
            } 			
		} catch (Exception e) {
			System.out.println("Exception occured in stopExecutionOnTextMatch "+e);
		}
	}
	public void TransactionSuccessOnTextMatch(String actualText, String expectedText) {
		System.out.println("Actual Text: "+actualText);
		System.out.println("Expected Text: "+expectedText);
		try {
			if (actualText.equalsIgnoreCase(expectedText)) {
                System.out.println("Transaction Successful.");
            } else {
            	Assert.fail("Sorry, your transaction is not completed");
                System.out.println("Text did not match. Execution Stopped.");
            }
			
		} catch (Exception e) {
			System.out.println("Exception occured in stopExecutionOnTextMatch "+e);
		}
	}
	
	public void giveThirdPartyConsent(ORPageModel element) {			
		try {
			//WebElement checkBox = findElement(element);
			if (findElement(element).isDisplayed()) {
				System.out.println("Check-box consent is displayed");
				findElement(element).click();
				System.out.println("Check-box consent is clicked");
			}else {
				System.out.println("Consent already provided");
			}
		} catch (NoSuchElementException e) {
			System.out.println("Exception in give Third Party Consent method "+e);
		}
	}

	public void giveThirdPartyConsent(String pageName, String name) {
		giveThirdPartyConsent(findElement(TestBase._ORIntializater.get(pageName), name));
	}
	
	public void enterAmountClear(String pageName, String name, String amount) {
		enterAmountClear(findElement(TestBase._ORIntializater.get(pageName), name),amount);
		
	}
	
	public void enterAmountClear(ORPageModel element, String amount) {
		findElement(element).clear(); // to clear text from the selected check-box	
		findElement(element).sendKeys(amount); // amount provided in step is passed here
	}
	
	
	public void fileToUpload(String fileName) throws IOException {
	    try {
	    	System.out.println("inside fileUpload method");
	    	String devicePath = "/sdcard/Pictures/"+fileName+".png"; // mobile device path
	        File localFile = new File("src/test/resources/files/"+fileName+".png"); // path of PNG file on project structure to be uploaded
	        if (!localFile.exists()) {
	            throw new FileNotFoundException("File not found: " + localFile);
	        }	        
	        androidDriver.pushFile(devicePath, localFile);
	        System.out.println("file is pushed");
		} catch (Exception e) {
			System.out.println("Exception occured "+e);
		}
	}
	
//	public void dateYearSelection(String pageName, String elementName) {
//		dateYearSelection(findElement(TestBase._ORIntializater.get(pageName),elementName), elementName);	
//	}
//	
//	public void dateYearSelection(ORPageModel element, String name) {		
//        //for (int i=0; i<3 ; i++)
//        	findElement(element).click();
//	}
	
	
	public void dateYearSelection(String pageName, String name) {
		dateYearSelection(findElement(TestBase._ORIntializater.get(pageName), name));

	}
	public void dateYearSelection(ORPageModel element) {  
		for (int i=0; i<2; i++) // loop to go to previous year for meeting >18 years conditions
		findElement(element).click();
	}
	
	public void swipeDownPage() {
		androidDriver.findElement(AppiumBy.androidUIAutomator(
			    "new UiScrollable(new UiSelector().scrollable(true)).flingToEnd(10)"));
	}
	

	
	public void actionVerification(String pageName,String action, String name) {
		System.out.println("inside amount verification find element menthod");
		actionVerification(findElement(TestBase._ORIntializater.get(pageName), name), action);
	}
	public void actionVerification(ORPageModel element, String action) {   // this code will only verify if the amount is having a value > 0
		switch (action) {
		case "amount":
			String amt = findElement(element).getText();
			System.out.println("getText returened "+ amt);
			String AmountText = amt.replace("₹", "").replace(",", "").trim();
			System.out.println("replace & trim returened "+ AmountText);
			double intAmount = Double.parseDouble(AmountText.trim());
			System.out.println("Interest amount is "+ intAmount);
			Assert.assertTrue(intAmount > 0, "Amount should be greater than 0");	
			break;
		
		case "count":
			String cnt = findElement(element).getText();
			System.out.println("getText returened "+ cnt);
			int intcnt = Integer.parseInt(cnt.trim());
			Assert.assertTrue(intcnt > 0, "No Active account found");
			break;
		default:
			break;
		}
		
	}
}
