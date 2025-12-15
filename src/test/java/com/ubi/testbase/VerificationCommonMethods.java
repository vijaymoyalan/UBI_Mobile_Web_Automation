package com.ubi.testbase;

import org.assertj.core.api.SoftAssertions;
import org.testng.Assert;
import org.testng.asserts.SoftAssert;

public class VerificationCommonMethods {
	
	SoftAssertions softAssertions = new SoftAssertions();
	SoftAssert softAssert = new SoftAssert();
	
	
	public void verificationTextAssertion(String actualText, String expectedText) {
		System.out.println("inside verificationTextAssertion method");
		try {
		softAssertions.assertThat(actualText)
				.as("Check if expected text contains in the actual text. Expected Text:" + expectedText + " Actual Text: " + actualText)
				.contains(expectedText);
		softAssertions.assertAll();
		} catch (AssertionError e) {
			System.out.println("Assertion failed with reason as "+e);
		}
	}
	
	public void verificationAssertEquals(String actualText, String expectedText) {
		System.out.println("inside verificationAssertEquals method");
		try {
			softAssert.assertEquals(actualText, expectedText, "Text passed in step is matching");
		} catch (AssertionError e) {
			System.out.println("Assertion failed with reason as "+e);
		}
	}
	
	public void verificationToastMessage(String expectedToastMessage, String actualToastMessage) {
		System.out.println("inside verificationToastMessage method");
		try {
			Assert.assertTrue(actualToastMessage.contains(expectedToastMessage),
				    "Toast message mismatch! Expected: \"" + expectedToastMessage + "\", but found: \"" + actualToastMessage + "\"");
		}catch (AssertionError e) {
			System.out.println("Assertion failed with reason as "+e);
			throw e;
		}
	}
		
	public void verificationFailTest(String message) {
        System.out.println("Failing Test: " + message);
        Assert.fail(message);
    }
	
	public void verificationConditionTrue(boolean trueCondition, String message) {
		try {
			Assert.assertTrue(trueCondition, message);			
		}catch (Exception e) {
			System.out.println("Exception in verificationConditionTrue method: "+e);
		} 
    }
	
	public void verificationConditionFalse(boolean falseCondition, String message) {
		try {
			Assert.assertFalse(falseCondition, message);			
		} catch (Exception e) {
			System.out.println("Exception in verificationConditionFalse method: "+e);
		}
    }
	
	public void verificationNotNull(String actual, String message) {
		try {
			Assert.assertNotNull(actual, message);			
		} catch (Exception e) {
			System.out.println("Exception in verificationNotNull method: "+e);
		}
    }
	
	public void verificationEquals(String actual, String expected, String message) {
        Assert.assertEquals(actual, expected, message);
    }
	
	public void verificationNotDisplayed(boolean falseCondition, String message) {
		Assert.assertFalse(falseCondition, "Element should not be Displayed");
	}
	
	public void verificationIntergerEquals(int actual, int expected, String message) {
        Assert.assertEquals(actual, expected, message);
    }
}
