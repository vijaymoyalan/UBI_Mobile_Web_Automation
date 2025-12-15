package com.ubi.hooks.web;

import org.openqa.selenium.WebDriver;

import com.ubi.testbase.CommonWebMethods;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import net.serenitybdd.model.environment.EnvironmentSpecificConfiguration;
import net.thucydides.model.ThucydidesSystemProperty;
import net.thucydides.model.util.EnvironmentVariables;


public class Hooks {
	
	CommonWebMethods comWeb = new CommonWebMethods();
	private EnvironmentVariables environmentVariables;
	
    @Before()
    public void beforeInitiateWeb() {
    	System.out.println("Launching Chrome browser");
    	String websiteURL = EnvironmentSpecificConfiguration.from(environmentVariables).getProperty("webdriver.base.url");
    	comWeb.launchBrowser(websiteURL);    	
    }
    
    @After()
    public void closeBrowser() {
        System.out.println("Closing web browser");
        comWeb.closeBrowser();
   
    }

}
