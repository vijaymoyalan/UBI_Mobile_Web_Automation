package com.ubi.pageObject;

import java.util.List;
import org.openqa.selenium.WebElement;
import com.ubi.base.ORPageModel;
import com.ubi.testbase.CommonMethods;
import com.ubi.testbase.TestBase;
import io.appium.java_client.pagefactory.AndroidBy;

public class MFAPage {
	
	List<ORPageModel> listofElements = TestBase._ORIntializater.get(MFAPage.class.getSimpleName());
	CommonMethods common = new CommonMethods();
	public ORPageModel SelectEnglish = common.findElement(listofElements,"SelectEnglish"); 
	public ORPageModel ContinueButton = common.findElement(listofElements,"ContinueButton"); 
	public ORPageModel Symbol = common.findElement(listofElements,"Symbol"); 
	public ORPageModel AllowPermission = common.findElement(listofElements,"AllowPermission"); 
	public ORPageModel AllowPermissionAgain = common.findElement(listofElements,"AllowPermissionAgain"); 
	public ORPageModel Symbol2 = common.findElement(listofElements,"Symbol2"); 
	public ORPageModel DownloadTC = common.findElement(listofElements,"DownloadTC"); 
	public ORPageModel PermissionAllowDTC = common.findElement(listofElements,"PermissionAllowDTC"); 
	public ORPageModel AllowDTC = common.findElement(listofElements,"AllowDTC"); 
	public ORPageModel LetsGetStarted = common.findElement(listofElements,"LetsGetStarted"); 
	public ORPageModel ChooseSim1 = common.findElement(listofElements,"ChooseSim1"); 
	public ORPageModel ContinueSim = common.findElement(listofElements,"ContinueSim"); 
	public ORPageModel Icon = common.findElement(listofElements,"Icon"); 
	public ORPageModel EnterLoginPin1 = common.findElement(listofElements,"EnterLoginPin1"); 
	public ORPageModel EnterLoginPin2 = common.findElement(listofElements,"EnterLoginPin2"); 
	public ORPageModel EnterLoginPin3 = common.findElement(listofElements,"EnterLoginPin3"); 
	public ORPageModel EnterLoginPin4 = common.findElement(listofElements,"EnterLoginPin4"); 
	
//	MSME Login Added
	public ORPageModel MSMELoginPin1 = common.findElement(listofElements,"MSMELoginPin1"); 
	public ORPageModel MSMELoginPin2 = common.findElement(listofElements,"MSMELoginPin2"); 
	public ORPageModel MSMELoginPin3 = common.findElement(listofElements,"MSMELoginPin3"); 
	public ORPageModel MSMELoginPin4 = common.findElement(listofElements,"MSMELoginPin4");
	public ORPageModel MSMELoginButton = common.findElement(listofElements,"MSMELoginButton");
	public ORPageModel MSMEAllowPhone = common.findElement(listofElements,"MSMEAllowPhone");
	public ORPageModel MSMEAllowSMS = common.findElement(listofElements,"MSMEAllowSMS");
	public ORPageModel MSMEAllowLocation = common.findElement(listofElements,"MSMEAllowLocation");
	public ORPageModel MSMETnCAgree = common.findElement(listofElements,"MSMETnCAgree");
}
