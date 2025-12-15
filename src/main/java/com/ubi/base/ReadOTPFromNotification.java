//package com.ubi.base;
//
//import io.appium.java_client.AppiumBy;
//import io.appium.java_client.android.AndroidDriver;
//
//import org.openqa.selenium.WebElement;
//import org.openqa.selenium.remote.DesiredCapabilities;
//import java.net.MalformedURLException;
//import java.net.URL;
//import java.util.regex.Matcher;
//import java.util.regex.Pattern;
//
//public class ReadOTPFromNotification {
//    public static void main(String[] args) throws MalformedURLException, InterruptedException {
//        DesiredCapabilities caps = new DesiredCapabilities();
//        caps.setCapability("platformName", "Android");
//        caps.setCapability("appium:deviceName", "b0b1c169"); // Change to your device
//        caps.setCapability("appium:automationName", "UiAutomator2");
//        caps.setCapability("appium:appPackage", "com.android.settings"); 
//        caps.setCapability("appium:appActivity", ".Settings");
//
//        AndroidDriver driver = new AndroidDriver(new URL("http://127.0.0.1:4723/wd/hub"), caps);
//
//        // Open notification panel
//        driver.openNotifications();
//        Thread.sleep(2000); // Wait for notifications to load
//   
//        // Open latest SMS
//        WebElement latestSMS = driver.findElement(AppiumBy.id("android:id/text1"));
//        String smsText = latestSMS.getText();
//        System.out.println("SMS Content: " + smsText);
//
//        // Extract OTP using regex (assuming OTP is a 6-digit number)
//        Pattern otpPattern = Pattern.compile("\\b\\d{6}\\b");
//        Matcher matcher = otpPattern.matcher(smsText);
//        if (matcher.find()) {
//            String otp = matcher.group();
//            System.out.println("Extracted OTP: " + otp);
//        } else {
//            System.out.println("OTP not found in SMS.");
//        }
//
//        driver.quit();
//    }
//}