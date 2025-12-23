package com.ubi.testbase;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDate;
import java.time.Month;
import java.time.format.DateTimeFormatter;
import java.time.format.TextStyle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.PointerInput;
import org.openqa.selenium.interactions.Sequence;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.google.common.collect.ImmutableMap;
import com.ubi.base.ORPageModel;
import com.ubi.pageObject.MFAPage;

import io.appium.java_client.AppiumBy;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.nativekey.AndroidKey;
import io.appium.java_client.android.nativekey.KeyEvent;
import io.appium.java_client.touch.offset.ElementOption;
import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementFacade;
import net.serenitybdd.model.environment.EnvironmentSpecificConfiguration;
import net.thucydides.core.webdriver.WebDriverFacade;
import net.thucydides.model.environment.SystemEnvironmentVariables;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CommonMethods extends PageObject {

	
	AndroidDriver androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());
	WebElement elementObject = null;
	String accountNumber = "407101234541662";
	String maskedAccountNumber;
	VerificationCommonMethods verification = new VerificationCommonMethods();
	GenerateRandomString randomStringUtil = new GenerateRandomString();

	String APP_PACKAGE = EnvironmentSpecificConfiguration.from(SystemEnvironmentVariables.createEnvironmentVariables()).getProperty("appium.appPackage");

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
		WebDriverWait wait = new WebDriverWait(androidDriver, Duration.ofSeconds(20));
		wait.until(ExpectedConditions.visibilityOf(element));
	}

	public void clickObject(ORPageModel element) {
		// element.isEnabled();
			
		findElement(element).click();
//		handleAlertPopup();		

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
	
	public void verifyText(String actualText, String expectedText) {
		int attempts = 0;
		while (attempts < 3) {
			try {
				//assertion is being done
				verification.verificationTextAssertion(actualText, expectedText);
				break;
			} catch (StaleElementReferenceException | NoSuchElementException e) {
				attempts++;
			}
		}

	}

	public void verifyToastMessage(String pageName, String expectedToastMessage, String elementname) {
		System.out.println("inside verifyToastMessage menthod");
	//finding toast msg in page
		String actualToastMessage = getText(findElement(TestBase._ORIntializater.get(pageName), elementname)).trim();
	//using assert to verify the toast msg with actual text
		int attempts = 0;
		while (attempts < 3) {
			try {
				// assertion is called
				verification.verificationToastMessage(expectedToastMessage, actualToastMessage);
				break;
			} catch (NoSuchElementException e) {
				System.out.println("Exception in verifyToastMessage method: "+e);
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
				WebDriverWait wait = new WebDriverWait(androidDriver, Duration.ofSeconds(20));
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
	
	public String getText(ORPageModel element) {
		// element.isEnabled();
		return findElement(element).getText();

		// element.click();
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
		System.out.println("Inside clickElementByText method");
		WebElement element = androidDriver.findElement(By.xpath("//android.widget.TextView[@resource-id=\"textId\" and @text=\"" + text + "\"]"));
        
		WebDriverWait wait = new WebDriverWait(androidDriver, Duration.ofSeconds(20));
		wait.until(ExpectedConditions.visibilityOf(element));
        // Click the element
        if (element != null) {
        	System.out.println("Inside IF clause to click on element");
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
		androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());
		boolean elementFound = false;
		int maxScrolls = 10;
		int scrollCount = 0;
		while (!elementFound && scrollCount < maxScrolls) {
			try {
				// Try to find the element
				WebElement element = androidDriver.findElement(AppiumBy.androidUIAutomator("new UiSelector().textContains(\"" + elementText + "\")"));
				if(element.isDisplayed()) {
					elementFound = true; // Element found
					System.out.println("Element found, exiting loop.");					
				}
			} catch (NoSuchElementException e) {
				// If element is not found, scroll down
				androidDriver.findElement(AppiumBy.androidUIAutomator("new UiScrollable(new UiSelector().scrollable(true)).scrollForward();"));
				System.out.println("Element not found, scrolling down");
				scrollCount++;
			}//elementFound = true;
		}
		if (!elementFound) {
		    System.out.println("Element '" + elementText + "' not found after max scrolls.");
		}
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

	public void swipeLeft(String elementText) {
        androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());
        int maxSwipes = 2;
        int attempts = 0;
        while (attempts < maxSwipes) {
              try {
                      WebElement mobileElement = androidDriver.findElement(AppiumBy.androidUIAutomator("new UiSelector().text(\"" + elementText + "\")"));
                      if (mobileElement.isDisplayed()) {
                          System.out.println("Element is displayed!");
                          return;
                      }
                   } catch (NoSuchElementException e) {
                       swipeLeft(androidDriver);
                       attempts++;
               }
        } 
        System.out.println("Element '" + elementText + "' not found after " + maxSwipes + " swipes.");
	}

//	private static void swipeLeft(AndroidDriver androidDriver) {
//        int screenHeight = androidDriver.manage().window().getSize().height;
//        int screenWidth = androidDriver.manage().window().getSize().width;
//        int startX = (int) (screenWidth * 0.8);
//        int startY = screenHeight / 2;
//        int endX = (int) (screenWidth * 0.2);
//        int endY = screenHeight / 2;
//        PointerInput finger = new PointerInput(PointerInput.Kind.TOUCH, "finger");
//        Sequence swipe = new Sequence(finger, 1)
//            .addAction(finger.createPointerMove(Duration.ZERO, PointerInput.Origin.viewport(), startX, startY))
//        .addAction(finger.createPointerDown(PointerInput.MouseButton.LEFT.asArg()))
//	.addAction(finger.createPointerMove(Duration.ofMillis(500), 		PointerInput.Origin.viewport(), endX, endY))
//	.addAction(finger.createPointerUp(PointerInput.MouseButton.LEFT.asArg()));
//        androidDriver.perform(Arrays.asList(swipe));
//}
	
	private static void swipeLeft(AndroidDriver androidDriver) {
	    int height = androidDriver.manage().window().getSize().height;
	    int width = androidDriver.manage().window().getSize().width;
	    int startX = (int) (width * 0.8);
	    int endX = (int) (width * 0.2);
	    int y = height / 2;

	    PointerInput finger = new PointerInput(PointerInput.Kind.TOUCH, "finger");
	    Sequence swipe = new Sequence(finger, 1)
	        .addAction(finger.createPointerMove(Duration.ZERO, PointerInput.Origin.viewport(), startX, y))
	        .addAction(finger.createPointerDown(PointerInput.MouseButton.LEFT.asArg()))
	        .addAction(finger.createPointerMove(Duration.ofMillis(500), PointerInput.Origin.viewport(), endX, y))
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
		//assertion is called and checked
		verification.verificationAssertEquals(actualText, expectedText);	
	}
	
	public void verifyAccountBalance(String accountBalance, String payableAmount) {
		String AmountText = accountBalance.replace("₹", "").replace(",", "").trim();
		double accBalance = Double.parseDouble(AmountText.trim());
		System.out.println("Bank Account Balance "+ accBalance);
		
		String PayText = payableAmount.replace("₹", "").replace(",", "").trim();
		double payAmount = Double.parseDouble(PayText.trim());
		System.out.println("Recharge Amount selected "+ payAmount);
		// assertion is called
		verification.verificationConditionTrue(accBalance > payAmount, "Account Balance is Low");
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
                verification.verificationFailTest(actualText);
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
            	verification.verificationFailTest("Sorry, your transaction is not completed");
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
			verification.verificationConditionTrue(intAmount > 0, "Amount should be greater than 0");
			break;
		
		case "count":
			String cnt = findElement(element).getText();
			System.out.println("getText returened "+ cnt);
			int intcnt = Integer.parseInt(cnt.trim());
			verification.verificationConditionTrue(intcnt > 0, "No Active account found");
			break;
		default:
			break;
		}
		
	}
	
	public void elementStatus(String pageName, String elementname, String action) {
		System.out.println("inside verification find element menthod");
		elementStatus(findElement(TestBase._ORIntializater.get(pageName), elementname), action);
	}
	
	
	public void elementStatus(ORPageModel element, String status) {   
// this method verifies based on the status of element pass.
	// for Button: Enabled or Disabled
	// for checkbox: Checked or UnChecked
	// for field: clickable or Notclickable
	// for radioButton: select or notselected
	// for element: displayed or notdisplayed
	// for text field: NotNull
		androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());
		switch (status) {
		case "Disabled":
			boolean elementStatusFalse = findElement(element).isEnabled();
			System.out.println("Element Status "+ elementStatusFalse);
			verification.verificationConditionFalse(elementStatusFalse, "Element selected should be Disbaled");
			break;
		
		case "Enabled":
			boolean elementStatusTrue = findElement(element).isEnabled();
			System.out.println("Element Status "+ elementStatusTrue);
			verification.verificationConditionTrue(elementStatusTrue, "Element selected should be Enabled");
			break;
			
		case "Checked":
			String elementStatusChecked = findElement(element).getAttribute("clickable");
			System.out.println("Element Status "+ elementStatusChecked);
			verification.verificationConditionFalse(elementStatusChecked.equals("false"), "Checkbox is not selected");
			break;
		
		case "UnChecked":
			String elementStatusUnChecked = findElement(element).getAttribute("clickable");
			System.out.println("Element Status "+ elementStatusUnChecked);	
			verification.verificationConditionTrue(elementStatusUnChecked.equals("true"), "Checkbox is selected");
			break;
			
		case "NotSelected":
			boolean elementStatusNotSelected = findElement(element).isSelected();
			System.out.println("Element Status "+ elementStatusNotSelected);
			verification.verificationConditionFalse(elementStatusNotSelected, "Checkbox is not selected");
			break;
		
		case "Selected":
			boolean elementStatusSelected = findElement(element).isSelected();
			System.out.println("Element Status "+ elementStatusSelected);	
			verification.verificationConditionTrue(elementStatusSelected, "Checkbox is selected");
			break;
			
		case "NotClickable":
			String NotClickable = findElement(element).getAttribute("clickable");
			System.out.println("Element is clickable "+NotClickable);
			verification.verificationEquals(NotClickable, "false",  "Text box is Clickable");
			break;
		
		case "Clickable":	
			String Clickable = findElement(element).getAttribute("clickable");
			System.out.println("Element is clickable "+Clickable);	
			verification.verificationEquals(Clickable, "true",  "Text box is Not Clickable");
			break;
			
		case "NotDisplayed":
			boolean elementStatusNotDisplayed = findElement(element).isDisplayed();
			System.out.println("Element Status "+ elementStatusNotDisplayed);
			verification.verificationConditionFalse(elementStatusNotDisplayed, "element is displayed");
			break;
		
		case "Displayed":
			boolean elementStatusDisplayed = findElement(element).isDisplayed();
			System.out.println("Element Status "+ elementStatusDisplayed);	
			verification.verificationConditionTrue(elementStatusDisplayed, "element is not displayed");
			break;
			
		case "NotNull":
			String elementText = findElement(element).getText();
			System.out.println("Text Present in element is "+ elementText);
			// Check not null
			verification.verificationNotNull(elementText, "Text should not be null");
			// Check does not contain hyphen
			if (elementText != null) {
			    verification.verificationConditionFalse(elementText.contains("-"), "Text should not contain hyphen");
			}
			break;
		default:
			break;
		}
	}
	
	
	public void selectDate(String day, String month, String year, String currentYearText) {
		AndroidDriver androidDriver = (AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver();
		WebDriverWait wait = new WebDriverWait(androidDriver, Duration.ofSeconds(10));
		WebElement selectCurrentYear = wait.until(ExpectedConditions.elementToBeClickable(
				AppiumBy.androidUIAutomator("new UiSelector().text(\"" + currentYearText + "\")")));
		selectCurrentYear.click();
		int targetYear = Integer.parseInt(year);
		int currentYear = Integer.parseInt(currentYearText);
		// Navigate to correct year
		while (true) {
			try {
				if ((targetYear < currentYear) || (targetYear > currentYear)) {
					WebElement yearToBeSelected = wait.until(ExpectedConditions.elementToBeClickable(
							AppiumBy.androidUIAutomator("new UiSelector().text(\"" + year + "\")")));
					yearToBeSelected.click();
					break;
				} else {
					WebElement yearToBeSelected = wait.until(ExpectedConditions.elementToBeClickable(
							AppiumBy.androidUIAutomator("new UiSelector().text(\"" + year + "\").instance(1)")));
					yearToBeSelected.click();
					break;
				}
			} catch (Exception e) {
				try {
					if (targetYear < currentYear) {
						WebElement prevButton = wait.until(ExpectedConditions.elementToBeClickable(AppiumBy
								.androidUIAutomator("new UiSelector().className(\"com.horcrux.svg.d0\").instance(2)")));
						prevButton.click();
					} else if (targetYear > currentYear) {
						WebElement nextButton = wait
								.until(ExpectedConditions.elementToBeClickable(AppiumBy.androidUIAutomator(
										"new UiSelector().className(\"com.horcrux.svg.SvgView\").instance(2)")));
						nextButton.click();
					}
				} catch (Exception ex) {
					System.out.println("Failed to navigate to year: " + ex.getMessage());
					break;
				}
			}
		}
		// Select the month
		try {
			String currentMonth = new SimpleDateFormat("MMM", Locale.ENGLISH).format(new Date());
			String getFullMonthNameOnCalender = getFullMonthName(currentMonth);
			if (getFullMonthNameOnCalender.equalsIgnoreCase(month)) {
				WebElement monthElement = wait.until(ExpectedConditions.elementToBeClickable(
						AppiumBy.androidUIAutomator("new UiSelector().text(\"" + month + "\").instance(1)")));
				monthElement.click();
			} else {
				WebElement monthElement = wait.until(ExpectedConditions
						.elementToBeClickable(AppiumBy.androidUIAutomator("new UiSelector().text(\"" + month + "\")")));
				monthElement.click();
			}
		} catch (Exception e) {
			System.out.println("Month not found: " + e.getMessage());
		}
		// Select the day
		try {
			WebElement dayElement = wait.until(ExpectedConditions
					.elementToBeClickable(AppiumBy.androidUIAutomator("new UiSelector().text(\"" + day + "\")")));
			dayElement.click();
		} catch (Exception e) {
			System.out.println("Day not found: " + e.getMessage());
		}
	}
	
	
	public String getFullMonthName(String shortMonth) {
		if (shortMonth == null || shortMonth.length() < 3) {
			return "Invalid input";
		}
		try {
			Month month = Month.valueOf(shortMonth.toUpperCase(Locale.ENGLISH));
			return month.getDisplayName(TextStyle.FULL, Locale.ENGLISH);
		} catch (IllegalArgumentException e) {
			// Handle case where input is not a valid month abbreviation
			for (Month m : Month.values()) {
				if (m.getDisplayName(TextStyle.SHORT, Locale.ENGLISH).equalsIgnoreCase(shortMonth)) {
					return m.getDisplayName(TextStyle.FULL, Locale.ENGLISH);
				}
			}
			return "Invalid month abbreviation";
		}
	}
	
	
	public void toggleSwitchStatus(String pageName, String elementname, String status) {
		System.out.println("inside toggle find element menthod");
		elementStatus(findElement(TestBase._ORIntializater.get(pageName), elementname), status);
	}
	
	
	public void toggleSwitchStatus(ORPageModel element, String status) {
		System.out.println("inside toggleSwitchStatus menthod");  // this code will only verify if the element is enabled or disabled 
		
		String contentDesc = findElement(element).getAttribute("content-desc");
		System.out.println("content desc text: "+ contentDesc);
				switch (status) {
				case "Off":
					String toggleOff = "off switch button";
					verification.verificationConditionTrue(contentDesc.contains(toggleOff),"Toggle Switch in On mode");
					break;
				
				case "On":
					String toggleOn = "on switch button";
					verification.verificationConditionTrue(contentDesc.contains(toggleOn),"Toggle Switch in Off mode");
					break;
				default:
					break;
				}
	}
	
	
	public void moveSlider(int sliderNumber, int sliderValue) {
		System.out.println("Inside slider method");
		
        // Locate all sliders
        List<WebElement> sliders = androidDriver.findElements(By.xpath("//android.widget.SeekBar"));
        if (sliderNumber < 0 || sliderNumber > sliders.size()) {
            System.out.println("Invalid slider number: " + sliderNumber);
            return;
        }
        
        // Get the target slider based on index (1-based index)
        System.out.println("Get the target slider based on index");
        WebElement slider = sliders.get(sliderNumber);
        
        // Get slider's position and size
        int startX = slider.getLocation().getX();
        int width = slider.getSize().getWidth();
        int yAxis = slider.getLocation().getY() + (slider.getSize().getHeight() / 2);
        
        // Calculate new X position based on the given sliderValue (move by given points)
        int newX = startX + sliderValue;
        
        // Ensure newX is within the slider's width
        if (newX > (startX + width)) {
            newX = startX + width;
        } else if (newX < startX) {
            newX = startX;
        }
        
        // Create PointerInput instance for finger touch
        PointerInput finger = new PointerInput(PointerInput.Kind.TOUCH, "finger");
        Sequence swipe = new Sequence(finger, 1);
        
        // Press on the slider
        swipe.addAction(finger.createPointerMove(Duration.ofMillis(0), PointerInput.Origin.viewport(), startX, yAxis));
        swipe.addAction(finger.createPointerDown(PointerInput.MouseButton.LEFT.asArg()));
        
        // Move to new position
        swipe.addAction(finger.createPointerMove(Duration.ofMillis(500), PointerInput.Origin.viewport(), newX, yAxis));
        
        // Release touch
        swipe.addAction(finger.createPointerUp(PointerInput.MouseButton.LEFT.asArg()));
        
        // Perform the sequence
        androidDriver.perform(Collections.singletonList(swipe));
        System.out.println("Moved slider #" + sliderNumber + " by " + sliderValue + " points.");
    }
	
	
	public void traverseDate(String year) {
		// this method will select Day, Month and Year from calendar picker where input
		// will be integer entered in feature step .i.e. moving 5 year before today.(
		// e.g 5 year from from 22May2025)
		int YearDeduction = Integer.parseInt(year);
		// Current date
		LocalDate currentDate = LocalDate.now();
		// Subtract years inputed from method
		LocalDate pastDate = currentDate.minusYears(YearDeduction);
		System.out.println("Subtracted Date is " + pastDate);
		String pastDate1 = pastDate.format(DateTimeFormatter.ofPattern("yyyy-MMM-dd", Locale.ENGLISH));
		System.out.println("Subtracted Date is " + pastDate1);
		// Retrieving current year from today
		int currentYear = LocalDate.now().getYear();
		String currentYearText = String.valueOf(currentYear);
		AndroidDriver androidDriver = (AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver();
		WebDriverWait wait = new WebDriverWait(androidDriver, Duration.ofSeconds(10));
		WebElement selectCurrentYear = wait.until(ExpectedConditions.elementToBeClickable(
				AppiumBy.androidUIAutomator("new UiSelector().text(\"" + currentYearText + "\")")));
		selectCurrentYear.click();
		int targetYear = currentYear - YearDeduction;
		System.out.println("Target Year is " + targetYear);
		// Navigate to correct year
		while (true) {
			try {
				if ((targetYear < currentYear) || (targetYear > currentYear)) {
					WebElement yearToBeSelected = wait.until(ExpectedConditions.elementToBeClickable(
							AppiumBy.androidUIAutomator("new UiSelector().text(\"" + targetYear + "\")")));
					yearToBeSelected.click();
					break;
				} else {
					WebElement yearToBeSelected = wait.until(ExpectedConditions.elementToBeClickable(
							AppiumBy.androidUIAutomator("new UiSelector().text(\"" + targetYear + "\").instance(1)")));
					yearToBeSelected.click();
					break;
				}
			} catch (Exception e) {
				try {
					if (targetYear < currentYear) {
						WebElement prevButton = wait.until(ExpectedConditions.elementToBeClickable(AppiumBy
								.androidUIAutomator("new UiSelector().className(\"com.horcrux.svg.d0\").instance(2)")));
						prevButton.click();
					} else if (targetYear > currentYear) {
						WebElement nextButton = wait
								.until(ExpectedConditions.elementToBeClickable(AppiumBy.androidUIAutomator(
										"new UiSelector().className(\"com.horcrux.svg.SvgView\").instance(2)")));
						nextButton.click();
					}
				} catch (Exception ex) {
					System.out.println("Failed to navigate to year: " + ex.getMessage());
					break;
				}
			}
		}
		// Select the month
		try {
			// month in MMM
			String monthName = currentDate.getMonth().toString();
			System.out.println("Month passed is " + monthName);
			String formattedMonth = monthName.charAt(0) + monthName.substring(1).toLowerCase();
			System.out.println("Month passed is " + formattedMonth);
			String currentMonth = new SimpleDateFormat("MMM", Locale.ENGLISH).format(new Date());
			
			if (formattedMonth.equalsIgnoreCase(currentMonth)) {
				WebElement monthElement = wait.until(ExpectedConditions.elementToBeClickable(
						AppiumBy.androidUIAutomator("new UiSelector().text(\"" + currentMonth + "\").instance(1)")));
				monthElement.click();
			} else {
				WebElement monthElement = wait.until(ExpectedConditions
						.elementToBeClickable(AppiumBy.androidUIAutomator("new UiSelector().text(\"" + currentMonth + "\")")));
				monthElement.click();
			}
		} catch (Exception e) {
			System.out.println("Month not found: " + e.getMessage());
		}
		// Select the day
		int day = currentDate.getDayOfMonth() + 1;
		System.out.println("Date passed is " + day);
		try {
			WebElement dayElement = wait.until(ExpectedConditions
					.elementToBeClickable(AppiumBy.androidUIAutomator("new UiSelector().text(\"" + day + "\")")));
			dayElement.click();
		} catch (Exception e) {
			System.out.println("Day not found: " + e.getMessage());
		}
	}
	
	
	public void selectTextToClick(String TextToClick) {

		androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());
			try {
				// Locate and select the desired option
				WebElement option = androidDriver
						.findElement(AppiumBy.androidUIAutomator("new UiSelector().text(\"" + TextToClick + "\")"));
				option.click();

			} catch (StaleElementReferenceException | NoSuchElementException e) {
				System.out.println("Exeception Occured in selectTextToClick method "+e);
			}
	}
	
	
	public void clickForcefully(String pageName, String name) { // This method is to click an object forcefully if object is displayed on UI
		clickForcefully(findElement(TestBase._ORIntializater.get(pageName), name));
	}
	
	
	public void clickForcefully(ORPageModel element) {
	    try {
	        androidDriver = (AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver();

	        // Get WebElementFacade from Serenity
	        WebElementFacade facadeElement = (WebElementFacade) findElement(element);

	        // Unwrap to native WebElement (RemoteWebElement)
	        WebElement rawElement = facadeElement.getWrappedElement();

	        // Use TouchAction to tap
	        TouchAction<?> touch = new TouchAction<>(androidDriver);
	        touch.tap(ElementOption.element(rawElement)).perform();

	        System.out.println("Tapped on element");

	    } catch (Exception e) {
	        System.out.println("Failed to tap on element: "+ e);
	    }
	}
	
//	added by Vijay M on 10/7/2025
	// this method will help in capturing the account no# created, store it to a global variable and reuse the same in different page.
	// convert 407103060031783 to XXXXX XXXXX 31783
	// String maskedAccountNumber; this is a globally declared variable in CommonMethods
	public String capturAccountNo(String pageName, String accNum){  
		accountNumber = getText(findElement(TestBase._ORIntializater.get(pageName), accNum)).trim();
		String lastSet = accountNumber.substring(accountNumber.length()-5);
		System.out.println("last five digit of account no#: "+lastSet);
		maskedAccountNumber = "XXXXX XXXXX "+lastSet;
		System.out.println("Masked account number: "+maskedAccountNumber);
		return(maskedAccountNumber);
	}
	
	
//	added by Vijay M on 10/7/2025
	//this method will click after the scrolling identifies the account no# stored in maskedAccountNumber
	public void callingMaskedAccountNum() throws InterruptedException {
			androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());
			boolean elementFound = false;
			int maxScrolls = 15;
			int scrollCount = 0;
			while (!elementFound && scrollCount < maxScrolls) {
				try {
					// Try to find the element
					WebElement element = androidDriver.findElement(AppiumBy.androidUIAutomator("new UiSelector().text(\"" + maskedAccountNumber + "\")"));
//					element = androidDriver.findElement(By.xpath("//android.widget.TextView[@resource-id=\"textId\" and contains(@text,"XXXXX XXXXX 41669"]"));
					if(element.isDisplayed()) {
						elementFound = true; // Element found
						element.click();
						System.out.println("Element found and clicked, exiting loop.");					
					}
				} catch (NoSuchElementException e) {
					// If element is not found, scroll down
					androidDriver.findElement(AppiumBy.androidUIAutomator("new UiScrollable(new UiSelector().scrollable(true)).scrollForward();"));
					System.out.println("Element not found, scrolling down");
					scrollCount++;
				}//elementFound = true;
			}
			if (!elementFound) {
			    System.out.println("Element '" + maskedAccountNumber + "' not found after max scrolls.");
			}
		}
	
	public void clickOnStartOver(String pageName, String startOver) throws InterruptedException {
		clickOnStartOver(findElement(TestBase._ORIntializater.get(pageName), startOver));
	}
	

// this method is used to handle the pop-up msg of Start Over and Resume during account creation
	public void clickOnStartOver(ORPageModel element) throws InterruptedException {
	    WebElement StartOver = null;
	    androidDriver.manage().timeouts().implicitlyWait(Duration.ofSeconds(3));
	    try {
	        //find element
	        StartOver = findElement(element);

	        // Check if displayed and click on element
	        if (StartOver != null && StartOver.isDisplayed()) {
	            System.out.println("Element found and is displayed");
	            StartOver.click();
	        }
	    } catch (NoSuchElementException ignored) {
	    }
	}
	
	
//Added by Vijay M on 22Jul2025
// handling the pop-up based on error msg text
	public void handleAlertPopup() {
	    try {
	    	ErrorPopupPage popup = new ErrorPopupPage();
	    	boolean elementDisplayed = popup.isErrorPopupVisible();
	    	System.out.println("Error Pop-up displayed: "+elementDisplayed);
	        	if(popup.isErrorPopupVisible() == true) {
	        		String errorTXT = popup.getErrorMessageText();
	        		System.out.println("Error Msg: "+ errorTXT);
	        		switch (errorTXT) {
		        	case "Technical Error!": 
		        		System.out.println("Error Message Displayed: " + errorTXT);
		        		popup.clickOkayButton();
			            break;        
			            
		        	case "Location Disabled!":
		        		System.out.println("Error Message Displayed: " + errorTXT);
		        		popup.clickOkayButton();
			            break;
			            
		        	 default:
		        		 System.out.println("Unknown error: " + errorTXT);
		        		 break;
		        	}
	    	}
	    } catch (NoSuchElementException ignored) {
	        System.out.println("No alert present.");
	    }
	}
	
	public void enterOTP(String OTPMode, String pageName, String name, String OTPtext) {
		System.out.println("inside enterOTP method");
		// element.isEnabled();
		String otp = OTPtext;
		
		switch (OTPMode) {
    	case "SMS": 
		otp = readOTPFromSMS();
		System.out.println("OTP found! " + otp);
		if (otp != null) {
			System.out.println("OTP found! " + otp);
			enterText(findElement(TestBase._ORIntializater.get(pageName), name), otp);
		} else {
			System.out.println("OTP not found!");
		}
		break;
		
    	case "Email": 
    		otp = readOTPFromEmail();
    		System.out.println("OTP found! " + otp);
    		if (otp != null) {
    			System.out.println("OTP found! " + otp);
    			enterText(findElement(TestBase._ORIntializater.get(pageName), name), otp);
    		} else {
    			System.out.println("OTP not found!");
    		}
    		break;
    	default:
   		 System.out.println("Switch Case of reading OTP");
   		 break;
		}
	}
	
	public String readOTPFromSMS() {
		try {
			Thread.sleep(7000); // Give time for notification to arrive
			
//			((AndroidDriver) androidDriver).openNotifications();
//			Thread.sleep(3000); // Allow notifications to be fully opened
			
			Runtime.getRuntime().exec("adb shell cmd statusbar expand-notifications");
	        Thread.sleep(3000); 
			System.out.println("Notification panel opened!");
			
			String[] possibleIds = { 
					"android:id/message_text", // Alternative ID
					"com.android.systemui:id/notification_panel", // Common ID
					"com.android.systemui:id/notification_container_parent",
					"android:id/notification_messaging",
			};
			
			List<WebElement> messages = null;
			for (String id : possibleIds) {
				messages = androidDriver.findElements(By.id(id));
				if (!messages.isEmpty()) {
					System.out.println("Found messages using ID: " + id);
					break; // If messages are found, exit the loop
				}
			}
			if (messages == null || messages.isEmpty()) {
				System.out.println("No SMS notifications found!");
				return null;
			}
			// Regex pattern to extract 4-6 digit OTP
			Pattern pattern = Pattern.compile("\\b\\d{4,6}\\b");
			for (WebElement message : messages) {
				String smsText = message.getText();
				System.out.println("SMS Found: " + smsText);
				Matcher matcher = pattern.matcher(smsText);
				if (matcher.find()) {
					String otp = matcher.group();
					System.out.println("Extracted OTP: " + otp);
					
					
					// ---- Try clicking Mark as Read ----
	                try {
	                    List<String> markAsReadIds = Arrays.asList(
	                        "android:id/action0"
	                    );

	                    boolean clicked = false;
	                    for (String btnId : markAsReadIds) {
	                        List<WebElement> buttons = androidDriver.findElements(By.id(btnId));
	                        if (!buttons.isEmpty()) {
	                            buttons.get(0).click();
	                            System.out.println("Clicked Mark as read" + btnId);
	                            clicked = true;
	                            break;
	                        }
	                    }

	                    if (!clicked) {
	                        System.out.println("Mark as read button not found in notifications!");
	                    }

	                } catch (Exception e) {
	                    System.out.println("Error clicking Mark as Read: " + e.getMessage());
	                }	
					
			// Close notification shade -- if clear all notification is moving back to mobile screen then comment below back() method
//					androidDriver.pressKey(new KeyEvent(AndroidKey.BACK));
//					androidDriver.navigate().back();
					return otp;
				}
			}
			System.out.println("OTP not found in notifications!");
		} catch (Exception e) {
			System.out.println("Error reading SMS: " + e.getMessage());
		}
		
		// Click Clear All notification
		androidDriver.findElement(By.id("com.android.systemui:id/dismiss_view")).click();
		return null;
	}
	
	public String readOTPFromEmail() {
	    try {
	        Thread.sleep(7000); // Wait for notification to arrive

	        // Expand notification shade
	        Runtime.getRuntime().exec("adb shell cmd statusbar expand-notifications");
	        Thread.sleep(3000);
	        System.out.println("Notification panel opened!");

	        try {
	            // Try to expand grouped notification if present
	            try {
	                WebElement textElement = androidDriver.findElement(
	                    AppiumBy.androidUIAutomator(
	                        "new UiSelector().resourceId(\"android:id/expand_button_touch_container\").instance(0)"
	                    )
	                );
	                textElement.click();
	            } catch (NoSuchElementException nse) {
	                System.out.println("Expand button not found, continuing...");
	            }

	            // Possible IDs where OTP might appear
	            String[] possibleIds = {
	                "android:id/big_text",
	                "com.android.systemui:id/notification_panel",
	                "com.android.systemui:id/notification_container_parent",
	                "android:id/notification_messaging",
	            };

	            List<WebElement> messages = new ArrayList<>();
	            for (String id : possibleIds) {
	                try {
	                    messages = androidDriver.findElements(By.id(id));
	                    if (!messages.isEmpty()) {
	                        System.out.println("Found messages using ID: " + id);
	                        break;
	                    }
	                } catch (NoSuchElementException nse) {
	                    continue;
	                }
	            }

	            if (messages == null || messages.isEmpty()) {
	                System.out.println("No SMS notifications found!");
	                return null;
	            }

	            // Regex pattern to extract 4–6 digit OTP
	            Pattern pattern = Pattern.compile("\\b\\d{4,6}\\b");
	            for (WebElement message : messages) {
	                String smsText = message.getText();
	                System.out.println("SMS Found: " + smsText);

	                Matcher matcher = pattern.matcher(smsText);
	                if (matcher.find()) {
	                    String otp = matcher.group();
	                    System.out.println("Extracted OTP: " + otp);

	                    // Try clicking "Mark as read"
	                    try {
	                        List<WebElement> markAsReadButtons = androidDriver.findElements(
	                            By.xpath("//android.widget.Button[@content-desc=\"Mark as read\"]")
	                        );
	                        if (!markAsReadButtons.isEmpty()) {
	                            markAsReadButtons.get(0).click();
	                            System.out.println("Clicked 'Mark as read'");
	                        } else {
	                            System.out.println("Mark as read button not found!");
	                        }
	                    } catch (NoSuchElementException nse) {
	                        System.out.println("No 'Mark as read' button available.");
	                    }

	                    // Close notification
	                    try {
	                        androidDriver.findElement(By.id("com.android.systemui:id/dismiss_view")).click();
	                    } catch (NoSuchElementException nse) {
	                        System.out.println("No dismiss/clear button found.");
	                    }
	                    androidDriver.pressKey(new KeyEvent(AndroidKey.BACK));

	                    return otp;
	                }
	            }
	            System.out.println("OTP not found in notifications!");
	        } catch (Exception e) {
	            System.out.println("Error while processing notifications: " + e.getMessage());
	        }

	        // Close notification
	        try {
	            androidDriver.findElement(By.id("com.android.systemui:id/dismiss_view")).click();
	        } catch (NoSuchElementException nse) {
	            System.out.println("No dismiss button found at cleanup.");
	        }
	        androidDriver.pressKey(new KeyEvent(AndroidKey.BACK));

	    } catch (Exception e) {
	        System.out.println("Fatal error in readOTPFromEmail(): " + e.getMessage());
	        try {
	            androidDriver.findElement(By.id("com.android.systemui:id/dismiss_view")).click();
	            androidDriver.navigate().back();
	        } catch (NoSuchElementException nse) {
	            System.out.println("No dismiss button found in fallback cleanup.");
	        }
	    }
	    return null;
	}
	
	
	
	public String readOTPFromNotification() {
	    try {
	        Thread.sleep(6000); // Wait for notification to arrive
//	        androidDriver.openNotifications();
//	        Thread.sleep(3000); // Ensure notification shade is open

	        Runtime.getRuntime().exec("adb shell cmd statusbar expand-notifications");
	        Thread.sleep(3000); 
	        
	        String[] possibleOtpIds = {
	            "com.android.systemui:id/text",
	            "com.android.systemui:id/notification_text",
	            "android:id/message",
	            "android:id/big_text",
	            "com.android.systemui:id/big_text",
	            "com.miui.securitycenter:id/message",
	            "com.google.android.gms:id/message",
	            "com.android.systemui:id/notification_main_column"
	        };

	        List<WebElement> messages = null;
			for (String id : possibleOtpIds) {
				messages = androidDriver.findElements(By.id(id));
				if (!messages.isEmpty()) {
					System.out.println("Found messages using ID: " + id);
					break; // If messages are found, exit the loop
				}
			}
			if (messages == null || messages.isEmpty()) {
				System.out.println("No SMS notifications found!");
				return null;
			}
			// Regex pattern to extract 4-6 digit OTP
			Pattern pattern = Pattern.compile("\\b\\d{4,6}\\b");
			for (WebElement message : messages) {
				String smsText = message.getText();
				System.out.println("SMS Found: " + smsText);
				Matcher matcher = pattern.matcher(smsText);
				if (matcher.find()) {
					String otp = matcher.group();
					System.out.println("Extracted OTP: " + otp);
					// Close notification shade
					androidDriver.pressKey(new KeyEvent(AndroidKey.BACK));
					return otp;
				}
			}
			System.out.println("OTP not found in notifications!");
		} catch (Exception e) {
			System.out.println("Error reading SMS: " + e.getMessage());
		}
		return null;
	}
	
	public void selectYesterday() {
		// Get yesterday's date in numeric format (e.g., "14" for the 14th)
		String yesterdayDate = LocalDate.now().minusDays(1).format(DateTimeFormatter.ofPattern("d"));

		try {
			// Locate the date element using XPath
			WebElement dateElement = androidDriver
					.findElement(By.xpath("//android.widget.TextView[@text='" + yesterdayDate + "']"));

			// Check if the element is enabled before clicking
			if (dateElement.isEnabled()) {
				dateElement.click();
				System.out.println("Successfully clicked on yesterday's date: " + yesterdayDate);
			} else {
				System.out.println("Yesterday's date (" + yesterdayDate + ") is disabled and cannot be selected.");
			}
		} catch (Exception e) {
			System.out.println("Could not find yesterday's date element: " + e.getMessage());
		}
	}
	
	
	public void selectTodayDate() {
	    // Get today's date in numeric format (e.g., "15" for the 15th)
	    String todayDate = LocalDate.now().format(DateTimeFormatter.ofPattern("d"));

	    try {
	        // Locate the date element using XPath
	        WebElement dateElement = androidDriver.findElement(By.xpath("//android.widget.TextView[@text='" + todayDate + "']"));

	        // Check if the element is enabled before clicking
	        if (dateElement.isEnabled()) {
	            dateElement.click();
	            System.out.println("Successfully clicked on today's date: " + todayDate);
	        } else {
	            System.out.println("Today's date (" + todayDate + ") is disabled and cannot be selected.");
	        }
	    } catch (Exception e) {
	        System.out.println("Could not find today's date element: " + e.getMessage());
	    }
	}

	
	public void clickObjectifdisabled(ORPageModel element) {
		String checkedAttribute = findElement(element).getAttribute("checked");
		// If the checked attribute is "false", click the element
		if (!"true".equals(checkedAttribute)) {
			findElement(element).click(); // Click the element if it is not checked (checked = "false")
		}
		// If checked is "true", do nothing (ignore)
	}
	
	public void clickObjectifdisabled(String pageName, String name) {
		clickObjectifdisabled(findElement(TestBase._ORIntializater.get(pageName), name));
	}
	
	public void clickWithCoordinate(int x, int y) {
        // Perform click action using PointerInput
        PointerInput finger = new PointerInput(PointerInput.Kind.TOUCH, "finger");
        Sequence clickSequence = new Sequence(finger, 1)
                      .addAction(finger.createPointerMove(Duration.ofMillis(0), PointerInput.Origin.viewport(), x, y))
                      .addAction(finger.createPointerDown(PointerInput.MouseButton.LEFT.asArg()))
                      .addAction(finger.createPointerUp(PointerInput.MouseButton.LEFT.asArg()));
     androidDriver.perform(Collections.singletonList(clickSequence));
	}
	
	
	public void clickObjectNtimes(String pageName,String name,int n) {
	
		clickObjectNtimes(findElement(TestBase._ORIntializater.get(pageName),name),n);
		}
	
	private void clickObjectNtimes(ORPageModel element, int n) {
		for(int i=0; i<n;i++)
		{
			findElement(element).click();
		}
	}
	
	
	// added by Sachin
	public void pressBackbuttonOnMobile()
	{
		
		androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());
		
			// Press Back button on mobile
		androidDriver.pressKey(new KeyEvent(AndroidKey.BACK));
	}
	
//	Added by Vijay (25Sep) for hooks implementation
	public void launchAPP() {
        if (androidDriver != null) {  
        	androidDriver.activateApp(APP_PACKAGE); // Launch app 
        }
    }
	
//	Added by Vijay (25Sep) for hooks implementation
	 public void closeAPP() {
	        if (androidDriver != null) {
	        	androidDriver.terminateApp(APP_PACKAGE); // Close app
	        }
	    }
	 

//		Added by Vijay (29Sep) for text search in UI
	 public void noTextDisplayed(String textName) {
		  try {
			  WebElement textElement = androidDriver.findElement(AppiumBy.androidUIAutomator("new UiSelector().text(\"" + textName + "\")"));
             boolean elementStatusDisplayedFalse = textElement.isDisplayed();
             System.out.println("Element Status " + elementStatusDisplayedFalse);
             verification.verificationNotDisplayed(elementStatusDisplayedFalse, "Element should not be Displayed");
         } catch (NoSuchElementException e) {
             System.out.println("Element not found on the page (as expected).");
             verification.verificationConditionTrue(true, "Element is not displayed as expected");
         }
	}
		

}