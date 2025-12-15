package com.ubi.testbase;

//created by Vijay M on 22Jul2025

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.annotations.findby.By;
import net.serenitybdd.core.pages.WebElementFacade;
import net.thucydides.core.webdriver.WebDriverFacade;

import java.time.Duration;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.appium.java_client.android.AndroidDriver;

public class ErrorPopupPage extends PageObject {
	
	AndroidDriver androidDriver = ((AndroidDriver) ((WebDriverFacade) getDriver()).getProxiedDriver());	
	WebDriverWait wait = new WebDriverWait(androidDriver, Duration.ofSeconds(60));
	
	WebElement errorMessage; // xpath of  alert pop-up message
	WebElement errorClickBtn; // xpath of  alert pop-up Okay button
	public boolean isErrorPopupVisible() {
		boolean errorDisplyed = false;
		try {
			boolean btnDisplayed = androidDriver.findElement(By.xpath("//android.widget.Button[@content-desc='Okay']")).isDisplayed();
			if (btnDisplayed == true) {
			errorMessage = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("(//android.widget.TextView[@resource-id=\"textId\"])[1]")));
	        if (errorMessage.isDisplayed() && errorMessage.isEnabled()) {
	        	errorDisplyed = true ; 
	        	System.out.println("Inside isErrorPopupVisible try block and element present as "+errorDisplyed );
	            return errorDisplyed;
	        }
	      }
	    } catch (Exception e) {
	        System.out.println("XPath not found for error pop-up alert");
	        errorDisplyed = false ; 
	        return errorDisplyed;
	    }
		return errorDisplyed;
      }
	
	// getting the text from the alert pop-up
	 public String getErrorMessageText() {
		 System.out.println("Inside getErrorMessageText method");
	    return errorMessage.getText().trim();
	    }
	 
	 //identifying the okay button of alert box and clicking on button
	 public void clickOkayButton() {
		 androidDriver.findElement(By.xpath("//android.widget.Button[@content-desc='Okay']")).click();
	    }

}
