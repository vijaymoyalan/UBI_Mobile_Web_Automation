package com.ubi.testbase;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDate;
import java.time.Month;
import java.time.format.DateTimeFormatter;
import java.time.format.TextStyle;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Optional;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.bidi.BiDi;
import org.openqa.selenium.bidi.BiDiSessionStatus;
import org.openqa.selenium.bidi.Connection;
import org.openqa.selenium.bidi.HasBiDi;
//import org.openqa.selenium.bidi.module.Network;
//import org.openqa.selenium.bidi.network.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.devtools.DevTools;
import org.openqa.selenium.devtools.HasDevTools;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.remote.Browser;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.ubi.base.ORPageModel;
import com.ubi.pageObject.MFAPage;

import net.serenitybdd.annotations.Managed;
import net.serenitybdd.core.pages.PageObject;
import net.thucydides.core.webdriver.ThucydidesWebDriverSupport;
import net.thucydides.core.webdriver.WebDriverFacade;

public class CommonWebMethods extends PageObject {
	
	@Managed(driver = "chrome")
	WebDriver driver;
	
	WebDriver webDriver = ThucydidesWebDriverSupport.getDriver();
	WebElement elementObject = null;
	VerificationCommonMethods verification = new VerificationCommonMethods();
	Actions action = new Actions(webDriver);
	
	   
	
	int intCountOne;
	int intCountTwo;
	int intTotalCount;
	
	
	public void launchBrowser(String webURL) {
		DesiredCapabilities caps = new DesiredCapabilities();
        caps.setCapability("browserName", Browser.CHROME.browserName());
        System.out.println("Browser Type: " + Browser.CHROME.browserName());
        webDriver.manage().window().maximize();
        webDriver.get(webURL);
        System.out.println("Page Title: " + webDriver.getTitle());
	}
	
	public void closeBrowser() {
        try {
        	if(webDriver !=null)
        		webDriver.quit();
        }catch (Exception e) {
        	System.out.println("Exception during closing browser: " + e.getMessage());
		}
	}
	
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
	}
	
	public void waitTillElementDisplayed(ORPageModel element) {
		int attempts = 0;
		while (attempts < 3) {
			try {
				WebDriverWait wait = new WebDriverWait(webDriver, Duration.ofSeconds(20));
				wait.until(ExpectedConditions.visibilityOf(findElement(element)));
				System.out.println("inside wait till elements try block");
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

	
	public void findElement(WebElement element) {
		WebDriverWait wait = new WebDriverWait(webDriver, Duration.ofSeconds(20));
		wait.until(ExpectedConditions.visibilityOf(element));
	}
	
	
	public void enterText_Web(String pageName, String name, String text) {
		enterText(findElement(TestBase._ORIntializater.get(pageName), name), text);
	}
	
	public void enterText(ORPageModel element, String text) {
		findElement(element).click();
		findElement(element).sendKeys(text);
	}
	
	public void clickButton_Web(String pageName, String name) throws InterruptedException {
		clickButton(findElement(TestBase._ORIntializater.get(pageName), name));
	}
	
	public void clickButton(ORPageModel element) throws InterruptedException {
//		Thread.sleep(3000);
		findElement(element).click();
	}
	
	public void scrollDown(int pixels) {
	    try {
	        if (webDriver == null) {
	            webDriver = ThucydidesWebDriverSupport.getDriver();
	        }
	        ((org.openqa.selenium.JavascriptExecutor) webDriver)
	                .executeScript("window.scrollBy(0, arguments[0]);", pixels);
	        System.out.println("Scrolled down by " + pixels + " pixels");
	    } catch (Exception e) {
	        System.out.println("Exception while scrolling down: " + e.getMessage());
	    }
	}
	
	public void scrollUp(int pixels) {
	    try {
	        if (webDriver == null) {
	            webDriver = ThucydidesWebDriverSupport.getDriver();
	        }
	        ((org.openqa.selenium.JavascriptExecutor) webDriver)
	                .executeScript("window.scrollBy(0, arguments[0]);", -pixels);
	        System.out.println("Scrolled up by " + pixels + " pixels");
	    } catch (Exception e) {
	        System.out.println("Exception while scrolling up: " + e.getMessage());
	    }
	}
	
	public void scrollToBottom() {
	    try {
	        if (webDriver == null) {
	            webDriver = ThucydidesWebDriverSupport.getDriver();
	        }
	        ((org.openqa.selenium.JavascriptExecutor) webDriver)
	                .executeScript("window.scrollTo(0, document.body.scrollHeight);");
	        System.out.println("Scrolled to the bottom of the page");
	    } catch (Exception e) {
	        System.out.println("Exception while scrolling to bottom: " + e.getMessage());
	    }
	}
	
	public void scrollToTop() {
	    try {
	        if (webDriver == null) {
	            webDriver = ThucydidesWebDriverSupport.getDriver();
	        }
	        ((org.openqa.selenium.JavascriptExecutor) webDriver)
	                .executeScript("window.scrollTo(0, 0);");
	        System.out.println("Scrolled to the top of the page");
	    } catch (Exception e) {
	        System.out.println("Exception while scrolling to top: " + e.getMessage());
	    }
	}
	
	public void scrollToElement(ORPageModel element) {
	    try {
	        WebElement webElem = findElement(element);
	        ((org.openqa.selenium.JavascriptExecutor) webDriver)
	                .executeScript("arguments[0].scrollIntoView({behavior: 'smooth', block: 'center'});", webElem);
	        System.out.println("Scrolled to element: " + element.getName());
	    } catch (Exception e) {
	        System.out.println("Exception while scrolling to element: " + e.getMessage());
	    }
	}
	
	
	public void scrollToElementWebPageElement(String pageName, String name) {
		waitTillElementDisplayed(findElement(TestBase._ORIntializater.get(pageName), name));
		scrollToElement(findElement(TestBase._ORIntializater.get(pageName), name));
		
	}
	
	public void actionVerification(String pageName,String action, String name) {
		System.out.println("inside actionVerification menthod");
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
			String textFetched = findElement(element).getText();
			System.out.println("getText returened "+ textFetched);
			String digitsText = textFetched.replaceAll("\\D+", "");
			int intDigit = Integer.parseInt(digitsText.trim());
			System.out.println("Count extracted from getText() is "+intDigit);
			verification.verificationConditionTrue(intDigit > 0, "No Active account found");
			break;
		default:
			break;
		}
		
	}
	
	public String getText(ORPageModel element) {
		return findElement(element).getText();
	}
	
	public void verifyToastMessage(String pageName, String expectedToastMessage, String elementname) {
		System.out.println("inside verifyToastMessage menthod");
	//finding toast msg in page
		String actualToastMessage = getText(findElement(TestBase._ORIntializater.get(pageName), elementname)).trim();
	//using assert to verify the toast msg with actual text
		int attempts = 0;
		while (attempts < 3) {
			try {
				System.out.println("Text Retrived from page "+actualToastMessage);
				System.out.println("Text passed from step "+expectedToastMessage);
				// assertion is called
				verification.verificationToastMessage(expectedToastMessage, actualToastMessage);
				return;
			} catch (NoSuchElementException e) {
				System.out.println("Exception in verifyToastMessage method: "+e);
				attempts++;
			}
		}
	}
	
	
	public void sumCalculation(String pageName, String countOne, String countTwo, String totalCount) {
		System.out.println("inside sumCalculation menthod");
		retriveCountOne(findElement(TestBase._ORIntializater.get(pageName), countOne));
		retriveCountTwo(findElement(TestBase._ORIntializater.get(pageName), countTwo));
		retriveTotalCount(findElement(TestBase._ORIntializater.get(pageName), totalCount));
	}
	

	public void retriveCountOne(ORPageModel element) {   // this code will only fetch the count
			String textFetched = findElement(element).getText();
			System.out.println("getText returened "+ textFetched);
			String digitsText = textFetched.replaceAll("\\D+", "");
			intCountOne = Integer.parseInt(digitsText.trim());
			System.out.println("Count extracted from getText() is "+intCountOne);
	}
	public void retriveCountTwo(ORPageModel element) {   // this code will only fetch the count
		String textFetched = findElement(element).getText();
		System.out.println("getText returened "+ textFetched);
		String digitsText = textFetched.replaceAll("\\D+", "");
		intCountTwo = Integer.parseInt(digitsText.trim());
		System.out.println("Count extracted from getText() is "+intCountTwo);
	}
	public void retriveTotalCount(ORPageModel element) {   // this code will only fetch the count
		String textFetched = findElement(element).getText();
		System.out.println("getText returened "+ textFetched);
		String digitsText = textFetched.replaceAll("\\D+", "");
		intTotalCount = Integer.parseInt(digitsText.trim());
		System.out.println("Count extracted from getText() is "+intTotalCount);
	}
	
	public void sumOfAssignment() {
		int totalAssigned = intCountOne + intCountTwo;
		System.out.println("Method:sumOfAssignment. Assigned+Unassigned= "+totalAssigned);
		System.out.println("Method:sumOfAssignment. Total Assigned "+intTotalCount);
		verification.verificationIntergerEquals(totalAssigned, intTotalCount, "Numbers are not equal!");
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
			try {
			boolean elementStatusNotDisplayed = findElement(element).isDisplayed();
			System.out.println("Element Status "+ elementStatusNotDisplayed);
			verification.verificationConditionFalse(elementStatusNotDisplayed, "element is displayed");
			}catch (NoSuchElementException e) {
                System.out.println("Element not found on the page (as expected).");
                verification.verificationConditionTrue(true, "Element is not displayed as expected.");
			}
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
	
	
	public void svgElementClick(String pageName, String elementname) {
		clickSVGElement(findElement(TestBase._ORIntializater.get(pageName), elementname));
	}
	
	public void clickSVGElement(ORPageModel element) {
		WebElement svg = findElement(element);
		action.moveToElement(svg).click().build().perform();
	}

	public void clickEnter() {
		action.sendKeys(Keys.ENTER).perform();
	}
	
	public void clearTextbox(String pageName, String name) {
		clearTextbox(findElement(TestBase._ORIntializater.get(pageName), name));
	}
	
	public void clearTextbox(ORPageModel element) {
		WebElement clear = findElement(element);
		clear.click();
		clear.sendKeys(Keys.chord(Keys.CONTROL,"a"));
		clear.sendKeys(Keys.DELETE);
		
	}
	
	public void waitForSomePeriod() throws InterruptedException {
		Thread.sleep(3000);
	}
	

	public String getText(String pageName, String name) {
		String actualText = getText(findElement(TestBase._ORIntializater.get(pageName), name)).trim();
		System.out.println("Text returned by getText method is "+ actualText);
		return actualText;
	}
	
	public void clickOnStartOver(String pageName, String startOver) throws InterruptedException {
		clickOnStartOver(findElement(TestBase._ORIntializater.get(pageName), startOver));
	}
	

// this method is used to handle the pop-up msg of Start Over and Resume during account creation
	public void clickOnStartOver(ORPageModel element) throws InterruptedException {
	    WebElement StartOver = null;
	    
	    try {
	    	webDriver.manage().timeouts().implicitlyWait(Duration.ofSeconds(3));
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
	
	public void selectDate(String day, String month, String year, String currentYearText) {
		WebDriver driver = (WebDriver) ((WebDriverFacade) getDriver()).getProxiedDriver();
		WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
		WebElement selectCurrentYear = wait.until(
		        ExpectedConditions.elementToBeClickable(
		                By.xpath("(//button[normalize-space()=\"" +currentYearText +"\"])[1]")));

		selectCurrentYear.click();
		int targetYear = Integer.parseInt(year);
		int currentYear = Integer.parseInt(currentYearText);
		// Navigate to correct year
		while (true) {
			try {
				if ((targetYear < currentYear) || (targetYear > currentYear)) {
					WebElement yearToBeSelected = wait.until(
					        ExpectedConditions.elementToBeClickable(
					                By.xpath("//button[normalize-space()=\"" + year + "\"]")));
					yearToBeSelected.click();
					break;
				} else {
					WebElement yearToBeSelected = wait.until(
					        ExpectedConditions.elementToBeClickable(
					                By.xpath("(//button[normalize-space()=\"" + year + "\"])[2]")));
					yearToBeSelected.click();
					break;
				}
			} catch (Exception e) {
				try {
					if (targetYear < currentYear) {
						WebElement prevButton = wait.until(ExpectedConditions.elementToBeClickable(
									By.xpath("//button[contains(text(),\"‹\")]")));
						prevButton.click();
					} else if (targetYear > currentYear) {
						WebElement nextButton = wait.until(ExpectedConditions.elementToBeClickable(
									By.xpath("//button[contains(text(),\"›\")]")));
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
					        By.xpath("//button[./abbr[text()=\"" + month + "\"]]")));
				monthElement.click();
			} 
			else {
				WebElement monthElement = wait.until(ExpectedConditions.elementToBeClickable(
				        By.xpath("//button[./abbr[text()=\"" + month + "\"]]")));
				monthElement.click();
			}
		} catch (Exception e) {
			System.out.println("Month not found: " + e.getMessage());
		}
		// Select the day
		try {
			WebElement dayElement = wait.until(ExpectedConditions.elementToBeClickable(By.xpath("(//button[contains(@class,'react-calendar__tile')]//abbr[text()=\""+day+"\"]/parent::button)[1]")));
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
	
	
	public void selectYesterday() {
		// Get yesterday's date in numeric format (e.g., "14" for the 14th)
		String yesterdayDate = LocalDate.now().minusDays(1).format(DateTimeFormatter.ofPattern("d"));

		try {
			// Locate the date element using XPath
			WebElement dateElement = webDriver
					.findElement(By.xpath("(//button[contains(@class,'react-calendar__tile')]//abbr[text()=\""+yesterdayDate+"\"]/parent::button)[1]"));

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
	
		private boolean captureResponses = false; 		
		
		public void setCaptureResponses(boolean value) {
		    System.out.println("Inside setCaptureResponse 1");
		    captureResponses = value;
//		    setUp();
		    System.out.println("Inside setCaptureResponse 2");
		}
	
//		public void setUp() {
//			
//			BiDi bidi;
//			ChromeOptions options = new ChromeOptions();
//			WebDriverFacade facade = (WebDriverFacade) webDriver;
//			ChromeDriver chrome = (ChromeDriver) facade.getProxiedDriver();
//			Network network = new Network(chrome);
//			
//		    System.out.println("Inside customerconsent");
//	
//		    options.addArguments("--incognito");
//		    options.addArguments("--ignore-certificate-errors");
//		    options.addArguments("--allow-running-insecure-content");
//		    options.addArguments("--disable-infobars");
//		    options.addArguments("--remote-allow-origins=*");
//		    options.setExperimentalOption("excludeSwitches", new String[]{"enable-automation"});
//		    options.setCapability("webSocketUrl", true);
//		    
//	
//		    System.out.println(" Inside customerconsent: Options completed");
//	
//		    String originalWindow = webDriver.getWindowHandle();
//		    
//		    bidi = chrome.getBiDi();
////		    bidi.getNetwork().enable();
//		    System.out.println(" Inside customerconsent: BiDi initialization completed");
//	
//		    // Switch back to correct window
//		    for (String handle : webDriver.getWindowHandles()) {
//		        if (!handle.equals(originalWindow)) {
//		            webDriver.switchTo().window(originalWindow);
//		            break;
//		        }
//		    }
//		    
////		    bidi.getNetwork().onResponseCompleted(event -> {
//		    network.onResponseCompleted(event -> {
//		        System.out.println(" Inside responseReceived (BiDi)");
//	
//		        if (!captureResponses) return;
//	
////		        String url = event.getResponse().getUrl();
//		        String url = event.getResponseData().getUrl();
//		        System.out.println("responseReceived URL ----> " + url);
//	
//		        if (url.contains("consent")) { 
//		        
////		        String body = event.getResponse().getText();
//		        	String body = event.getResponseData().getStatusText();
//		        if (body == null) body = "";
//	
//	            System.out.println("responseReceived Body ----> " + body);
//	
//	            // Find UUID inside JSON
//	            Matcher matcher = Pattern.compile("[a-f0-9]+-[a-f0-9]+-[a-f0-9]+-[a-f0-9]+-[a-f0-9]+")
//	                    .matcher(body);
//	
//	            if (matcher.find()) {
//	                String consentRequestID = matcher.group();
//	                System.out.println("Consent ID: " + consentRequestID);
//	
//	                try {
//	                    Thread.sleep(2000);
//	                    sendAPIRequest(consentRequestID);  
//	                    Thread.sleep(2000);
//	                    setCaptureResponses(false); 
//	                } catch (IOException | InterruptedException e) {
//	                    e.printStackTrace();
//	                }
//	            }
//	        }
//	    });
//	}
//
//	public void sendAPIRequest(String consentRequestID) throws IOException {
//	
//	    System.out.println(" Inside sendAPIRequest");
//	
//	    String apiUrl = "https://ras.unionbankofindia.bank.in/sit/dbp/ast/mpgw/app/web/customer/api/v1/consent/approve";
//	    HttpURLConnection connection = (HttpURLConnection) new URL(apiUrl).openConnection();
//	    connection.setRequestMethod("POST");
//	    connection.setRequestProperty("dbp-id", "a157e0b96952ec8028423b6fa145858a");
//	    connection.setRequestProperty("dbp-secret", "ed6af6cf78d5b232963fc308f3e965f6");
//	    connection.setRequestProperty("Content-Type", "application/json; utf-8");
//	    connection.setRequestProperty("Accept", "application/json");
//	    connection.setDoOutput(true);
//	
//	    String jsonInputString = "{\"consentRequestId\": \"" + consentRequestID + "\"}";
//	
//	    try (OutputStream os = connection.getOutputStream()) {
//	        os.write(jsonInputString.getBytes("utf-8"));
//	    }
//	    try (BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()))) {
//	        while (in.readLine() != null) {} // consume response only
//	    }
//	
//	    connection.disconnect();
//	}	
}
