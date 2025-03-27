package com.ubi.testbase;
import io.cucumber.java.en.Then;
import io.restassured.response.Response;
import junit.framework.Assert;
import net.serenitybdd.annotations.Step;
import net.serenitybdd.core.Serenity;

@SuppressWarnings("unused")
public class VerificationAPI {
	
	@SuppressWarnings("deprecation")
	@Step ("user verifies that status is (.*)$")
	public static void verifyStatus(int statusCode) {
		
		Response response = Serenity.sessionVariableCalled("response");
		String responseBody = response.then().extract()
	            .body()
	            .asString();
	    System.out.println("Response status code: " + response.getStatusCode());
		Assert.assertEquals(statusCode,response.getStatusCode());
		
	}
}