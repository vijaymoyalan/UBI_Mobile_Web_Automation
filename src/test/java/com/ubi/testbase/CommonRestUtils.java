package com.ubi.testbase;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.core.exc.StreamWriteException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DatabindException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;
import com.ubi.utils.FetchOTPTest;

import net.serenitybdd.rest.SerenityRest;
import net.serenitybdd.core.Serenity;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;


import com.google.gson.JsonObject;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;


public class CommonRestUtils {

	static String stringdbpID = formatStringforHeaders(AppConfig.getdbpId().trim());
	static String stringdbpSecret = formatStringforHeaders(AppConfig.getdbpSecret().trim());

	public static String bearerTokenLocal;
	public static String cookie ="";
	public static String RequestBodyFolderName;
	public static String BearerToken;
	public static String bearerToken = "";
	private static boolean isBearerTokenGenerated = false;
	private static final Logger LOGGER = LoggerFactory.getLogger(CommonRestUtils.class);
	FileHandler fileHandlerToResponseFolder = new FileHandler("responseFolder");
	FileHandler fileHandlerToRequestBodies = new FileHandler("/testdata/api/request/" + RequestBodyFolderName);

	public static String otpRMN = "";

	// Below method Get request with parameter
	@Then("^user triggers a get request with parameter (.*)$")
	public void triggerGetRequestCommonRest(String parameter) {
		Response response = SerenityRest.given().header("Content-Type", "application/json")
				.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
				.header("Authorization", "Bearer " + bearerToken).when().get(RestAssured.baseURI + "/" + parameter);

		String responseBody = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);

		System.out.println("Response Body: " + responseBody);

		// return response;
	}

	// Common POST method for all features Please use this
	@Then("user triggers a post request with (.*)$")
	public void triggerPostRequestCommonRest(String requestBody) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		String fileName = fileHandlerToResponseFolder.extractFilename(requestBody);
		String environment = AppConfig.getRestUrl(TestBase._setEnvPath);

		if ((StringUtils.containsIgnoreCase(requestBody, "Drop2") || (StringUtils.containsIgnoreCase(requestBody, "mvp")
				&& StringUtils.containsIgnoreCase(environment, "uat")))) {
			String xapikey = "";
			String encryptdecryptKey = AppConfig.xapikey();

//			||(StringUtils.containsIgnoreCase(requestBody, "GeneralService")
//					&& StringUtils.containsIgnoreCase(environment, "sit"))||(StringUtils.containsIgnoreCase(requestBody, "ChequeService")
//							&& StringUtils.containsIgnoreCase(environment, "sit"))

			if ((StringUtils.containsIgnoreCase(requestBody, "mvp")
					&& StringUtils.containsIgnoreCase(environment, "uat"))
					|| (StringUtils.containsIgnoreCase(requestBody, "Drop2")
							&& StringUtils.containsIgnoreCase(environment, "uat"))) {
				xapikey = AppConfig.rsaToken();
			} else {
				xapikey = AppConfig.xapikey();
			}
			try {
				// Append other paths to the base directory
				Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
				String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
				System.out.println("Request Body before encryption: " + jsonString);
				// String bearerToken=BearerToken;

				System.out.println("Request Body: " + requestBody);
				// Encrypt the request body
				String encryptedRequestBodywithoutdata = EncryptionUtil.encrypt(jsonString, encryptdecryptKey);
				String encryptedRequestBody = "{\"data\":\"" + encryptedRequestBodywithoutdata + "\"}";
				System.out.println("Encrypted Request Body: " + encryptedRequestBody);
				// Log the encrypted request in Serenity report
				Serenity.recordReportData().withTitle("Decrypted Request Body").andContents(jsonString);

				Response response = SerenityRest.given().header("Content-Type", "application/json")
						.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
						.header("x-api-key", xapikey).header("Authorization", "Bearer " + BearerToken) // Add any other
																										// headers as
																										// needed
						.body(encryptedRequestBody).post(RestAssured.baseURI);

				String responseBody = response.then().extract().body().asString();
				cookie = response.getHeader("Set-Cookie");
				Serenity.setSessionVariable("response").to(response);
				System.out.println("Response Body triggerPostRequestCommonRest: " + responseBody);

				objectMapper = new ObjectMapper();
				// Parse JSON string to JsonNode
				JsonNode rootNode = objectMapper.readTree(responseBody);
				// Extract the value of the "data" field
				String dataValue = rootNode.path("data").asText();
				// Print the extracted value
				System.out.println("Modified response: " + dataValue);
				// Decrypt the response body
				String decryptedResponseBody;

				decryptedResponseBody = EncryptionUtil.decrypt(dataValue, encryptdecryptKey);
				System.out.println("Decrypted Response Body: " + decryptedResponseBody);
				Serenity.setSessionVariable("decryptedResponseBody").to(decryptedResponseBody);

				// Log the decrypted response in Serenity report
				Serenity.recordReportData().withTitle("Decrypted Response").andContents(decryptedResponseBody);

				// Parse the decrypted response body string into a JsonNode
				JsonNode jsonNode = objectMapper.readTree(decryptedResponseBody);
				// Save the response body to a file using FileHandler
				fileHandlerToResponseFolder.writeJsonToFile(fileName, jsonNode);
			} catch (IOException e) {
				System.err.println("IOException occurred: " + e.getMessage());
				e.printStackTrace();
			} catch (Exception e) {
				System.err.println("Error during encryption/decryption or API request: " + e.getMessage());
				e.printStackTrace();
			}
		} else if (StringUtils.containsIgnoreCase(requestBody, "Drop3")
				&& StringUtils.containsIgnoreCase(environment, "sitcmb")) {
			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Request Body: " + jsonString);

			Serenity.recordReportData().withTitle("Request Body").andContents(jsonString);

			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
					.header("Authorization", "Bearer " + BearerToken).body(jsonString).post(RestAssured.baseURI);

			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			System.out.println("Response Body" + responseBody);
			Serenity.recordReportData().withTitle("Response Body").andContents(responseBody);
			// Parse the decrypted response body string into a JsonNode
			JsonNode jsonNode = objectMapper.readTree(responseBody);
			// Save the response body to a file using FileHandler
			fileHandlerToResponseFolder.writeJsonToFile(fileName, jsonNode);
		}

		else {
			// Append other paths to the base directory
			// Append other paths to the base directory
			// String xapikey="zLiJyowJ3SV6LBMlcwz5pYN6pnfLEXZl";
			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String requestFilePath = configFilePath.toString().replaceAll(" ", "");
			String jsonString = objectMapper.readTree(new File(requestFilePath)).toString();
			// String bearerToken=BearerToken;

			System.out.println("Request Body: " + jsonString);
			// Encrypt the request body
			// String encryptedRequestBodywithoutdata = EncryptionUtil.encrypt(jsonString,
			// xapikey);
			// String encryptedRequestBody =
			// "{\"data\":\""+encryptedRequestBodywithoutdata+"\"}";
			// System.out.println("Encrypted Request Body: " + encryptedRequestBody);
			// Log the encrypted request in Serenity report
			Serenity.recordReportData().withTitle("Request Body").andContents(jsonString);
			// String
			String xapikeyRequestHeader = "RvkjaDkgJoxNzngOddAwd5XEWpYkDKDxz6X/3mgIon0ataS2uIFsWHK9GZSRfWTfGil28jkCe/xvV0PBV7JMrATCpzFMYNdRbcc2Iz7nquh7aTj72i+qoetiBIN0OZSfOcdnvWqKYnop/IWPHtRR2ryXUgOgEHZ8dC0gQQWRV0s=";

			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
					.header("x-api-key", xapikeyRequestHeader).header("Authorization", "Bearer " + BearerToken) // Add
																												// any
																												// other
																												// headers
																												// as
																												// needed
					.body(jsonString).post(RestAssured.baseURI);

			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			System.out.println("Response Body triggerPostRequestCommonRest: " + responseBody);

			objectMapper = new ObjectMapper();
			// Parse JSON string to JsonNode
			// JsonNode rootNode = objectMapper.readTree(responseBody);
			// Extract the value of the "data" field
			// String dataValue = rootNode.path("data").asText();
			// Print the extracted value
			// System.out.println("Modified response: " + dataValue);
			// Decrypt the response body
			// String decryptedResponseBody;

			// decryptedResponseBody = EncryptionUtil.decrypt(dataValue, xapikey);
			// System.out.println("Decrypted Response Body: " + decryptedResponseBody);
			Serenity.setSessionVariable("ResponseBody").to(responseBody);

			// Log the decrypted response in Serenity report
			Serenity.recordReportData().withTitle("ResponseBody").andContents(responseBody);

			// Parse the decrypted response body string into a JsonNode
			JsonNode jsonNode = objectMapper.readTree(responseBody);
			// Save the response body to a file using FileHandler
			fileHandlerToResponseFolder.writeJsonToFile(fileName, jsonNode);

		}

	}

	// Below common method is setting up bearer token feature wise
	@Given("^user sets the bearer token(.*)$")
	public static void settingBearerToken(String bearertokenPath) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		String environment = AppConfig.getRestUrl(TestBase._setEnvPath);
		String MBLoginURL = AppConfig.getRestUrl(TestBase._setEnvPath).trim() + "mga/sps/apiauthsvc/policy/mblogin";

		if (StringUtils.containsIgnoreCase(environment, "sit")) {
			try {
				// Load JSON file
				Path configFilePath = Paths.get(TestBase._baseDir.trim(), bearertokenPath.trim()); // Replace
																									// "filePath.json"
																									// with your file
				// path
				objectMapper = new ObjectMapper();
				JsonNode jsonNode = objectMapper.readTree(new File(configFilePath.toString()));
				// Convert JSON node to string
				String jsonString = jsonNode.toString();
				LOGGER.info("Request Body: " + jsonString);
				// Get the PIN from the JSON and check if it's null
				JsonNode pinNode = jsonNode.get("loginpin");
				if (pinNode != null && !pinNode.isNull()) {
					String pin = pinNode.asText();
					String hashedPin = hashString(pin, "SHA-256");
					if (hashedPin != null) {
						// Update the PIN field in the JSON
						((ObjectNode) jsonNode).put("loginpin", hashedPin);
						jsonString = jsonNode.toString(); // Convert updated JSON back to string
						// Print the updated JSON
						LOGGER.info("Updated Request Body: " + jsonString);
						// Log the encrypted request in Serenity report
						Serenity.recordReportData().withTitle("Request Body").andContents(jsonString);
						// Prepare headers
						LOGGER.info("id: " + AppConfig.getdbpId().toString().trim());
						LOGGER.info("secret: " + AppConfig.getdbpSecret());
						String stringdbpID = formatStringforHeaders(AppConfig.getdbpId().trim());
						String stringdbpSecret = formatStringforHeaders(AppConfig.getdbpSecret().trim());

						// Send the POST request using SerenityRest
						Response response = SerenityRest.given().header("Content-Type", "application/json")
								.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret).when()
								.body(jsonString).post(MBLoginURL); // Replace MBLoginURL with your actual URL
						// Print the response
						LOGGER.info("Response: " + response.getBody().asString());
						if (response.statusCode() == 200) {
							ObjectMapper objectMapperBearer = new ObjectMapper();
							// String responseBody = response.then().extract().body().asString();
							jsonNode = objectMapperBearer.readTree(response.getBody().asString());
							JsonNode tokenNode = jsonNode.path("response").path("access_token");
							bearerTokenLocal = tokenNode.asText();
							LOGGER.info("Bearer Token Local: " + bearerTokenLocal);
						} else {
							LOGGER.info("Failed to retrieve the token. HTTP error code: " + response.statusCode());
						}
						LOGGER.info("Decrypted Response Body: " + response);
						Serenity.setSessionVariable("response").to(response);
						// Log the decrypted response in Serenity report
						Serenity.recordReportData().withTitle("Response").andContents(response.getBody().asString());
					} else {
						LOGGER.info("Failed to hash the PIN.");
					}
				} else {
					LOGGER.info("The 'pin' field is not found or is null in the JSON.");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				String xapikeyReqHeader = AppConfig.rsaToken();
				String xapikey = AppConfig.xapikey();
				Path configFilePath = Paths.get(TestBase._baseDir.trim(), bearertokenPath.trim());
				String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
				LOGGER.info("Request Body: " + jsonString);
				// Encrypt the request body
				String encryptedRequestBodywithoutdata = EncryptionUtil.encrypt(jsonString, xapikey);
				String encryptedRequestBody = "{\"data\":\"" + encryptedRequestBodywithoutdata + "\"}";
				LOGGER.info("Encrypted Request Body: " + encryptedRequestBody);
				// Log the encrypted request in Serenity report
				Serenity.recordReportData().withTitle("Decrypted Request Body").andContents(jsonString);
				LOGGER.info("id: " + AppConfig.getdbpId().toString().trim());
				LOGGER.info("secret: " + AppConfig.getdbpSecret());
				String stringdbpID = formatStringforHeaders(AppConfig.getdbpId().trim());
				String stringdbpSecret = formatStringforHeaders(AppConfig.getdbpSecret().trim());
				Response response = SerenityRest.given().header("Content-Type", "application/json")
						.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
						.header("x-api-key", xapikeyReqHeader).body(encryptedRequestBody).post(MBLoginURL);
				String responseBody = response.then().extract().body().asString();
				Serenity.setSessionVariable("response").to(response);
				LOGGER.info("Response Body : " + responseBody);
				objectMapper = new ObjectMapper();
				// Parse JSON string to JsonNode
				JsonNode rootNode = objectMapper.readTree(responseBody);
				// Extract the value of the "data" field
				String dataValue = rootNode.path("data").asText();
				// Print the extracted value
				LOGGER.info("Modified response: " + dataValue);
				// Decrypt the response body
				String decryptedResponseBody;
				decryptedResponseBody = EncryptionUtil.decrypt(dataValue, xapikey);
				// Log the decrypted response in Serenity report
				Serenity.recordReportData().withTitle("Decrypted Response").andContents(decryptedResponseBody);
				if (response.statusCode() == 200) {
					ObjectMapper objectMapperBearer = new ObjectMapper();
					// String responseBody = response.then().extract().body().asString();
					JsonNode jsonNode = objectMapperBearer.readTree(decryptedResponseBody);
					JsonNode tokenNode = jsonNode.path("response").path("access_token");
					bearerTokenLocal = tokenNode.asText();
					LOGGER.info("Bearer Token Local: " + bearerTokenLocal);
				} else {
					LOGGER.info("Failed to retrieve the token. HTTP error code: " + response.statusCode());
				}
				LOGGER.info("Decrypted Response Body: " + decryptedResponseBody);
				Serenity.setSessionVariable("decryptedResponseBody").to(decryptedResponseBody);
				// String responseBody = response.then().extract().body().asString();
				// Serenity.setSessionVariable("response").to(response);
				// LOGGER.info("Response Body: " + responseBody);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	// below Common POST method with local bearer token
	@Then("user triggers post request with local bearerToken(.*)$")
	public void triggerPostRequestCommonRestLocalBearerToken(String requestBody) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		String fileName = fileHandlerToResponseFolder.extractFilename(requestBody);
		String environment = AppConfig.getRestUrl(TestBase._setEnvPath);

		if (StringUtils.containsIgnoreCase(requestBody, "Drop2") || StringUtils.containsIgnoreCase(requestBody, "Drop3")
				|| (StringUtils.containsIgnoreCase(requestBody, "mvp")
						&& StringUtils.containsIgnoreCase(environment, "uat"))) {
			String xapikey = "";
			String encryptdecryptKey = AppConfig.xapikey();

			if ((StringUtils.containsIgnoreCase(requestBody, "mvp")
					&& StringUtils.containsIgnoreCase(environment, "uat"))) {
				xapikey = AppConfig.rsaToken();
			} else {
				xapikey = AppConfig.xapikey();
			}
			try {
				// Append other paths to the base directory
				Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
				String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
				LOGGER.info("Request Body before encryption: " + jsonString);
				// String bearerToken=BearerToken;

				LOGGER.info("Request Body: " + requestBody);
				// Encrypt the request body
				String encryptedRequestBodywithoutdata = EncryptionUtil.encrypt(jsonString, encryptdecryptKey);
				String encryptedRequestBody = "{\"data\":\"" + encryptedRequestBodywithoutdata + "\"}";
				LOGGER.info("Encrypted Request Body: " + encryptedRequestBody);
				// Log the encrypted request in Serenity report
				Serenity.recordReportData().withTitle("Decrypted Request Body").andContents(jsonString);

				Response response = SerenityRest.given().header("Content-Type", "application/json")
						.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
						.header("x-api-key", xapikey).header("Authorization", "Bearer " + bearerTokenLocal) // Add any
																											// other
						// headers as
						// needed
						.body(encryptedRequestBody).post(RestAssured.baseURI);

				String responseBody = response.then().extract().body().asString();
				Serenity.setSessionVariable("response").to(response);
				LOGGER.info("Response Body triggerPostRequestCommonRest: " + responseBody);

				objectMapper = new ObjectMapper();
				// Parse JSON string to JsonNode
				JsonNode rootNode = objectMapper.readTree(responseBody);
				// Extract the value of the "data" field
				String dataValue = rootNode.path("data").asText();
				// Print the extracted value
				LOGGER.info("Modified response: " + dataValue);
				// Decrypt the response body
				String decryptedResponseBody;

				decryptedResponseBody = EncryptionUtil.decrypt(dataValue, encryptdecryptKey);
				LOGGER.info("Decrypted Response Body: " + decryptedResponseBody);
				Serenity.setSessionVariable("decryptedResponseBody").to(decryptedResponseBody);

				// Log the decrypted response in Serenity report
				Serenity.recordReportData().withTitle("Decrypted Response").andContents(decryptedResponseBody);

				// Parse the decrypted response body string into a JsonNode
				JsonNode jsonNode = objectMapper.readTree(decryptedResponseBody);
				// Save the response body to a file using FileHandler
				fileHandlerToResponseFolder.writeJsonToFile(fileName, jsonNode);
			} catch (IOException e) {
				System.err.println("IOException occurred: " + e.getMessage());
				e.printStackTrace();
			} catch (Exception e) {
				System.err.println("Error during encryption/decryption or API request: " + e.getMessage());
				e.printStackTrace();
			}
		} else {
			// Append other paths to the base directory

			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString().replaceAll(" ", ""))).toString();
			LOGGER.info("Request Body before encryption: " + jsonString);
			// String bearerToken=BearerToken;

			LOGGER.info("Request Body: " + requestBody);
			// Encrypt the request body
			// String encryptedRequestBodywithoutdata = EncryptionUtil.encrypt(jsonString,
			// xapikey);
			// String encryptedRequestBody =
			// "{\"data\":\""+encryptedRequestBodywithoutdata+"\"}";
			// LOGGER.info("Encrypted Request Body: " + encryptedRequestBody);
			// Log the encrypted request in Serenity report
			Serenity.recordReportData().withTitle("Request Body").andContents(jsonString);
			// String
			// xapikeyRequestHeader="RvkjaDkgJoxNzngOddAwd5XEWpYkDKDxz6X/3mgIon0ataS2uIFsWHK9GZSRfWTfGil28jkCe/xvV0PBV7JMrATCpzFMYNdRbcc2Iz7nquh7aTj72i+qoetiBIN0OZSfOcdnvWqKYnop/IWPHtRR2ryXUgOgEHZ8dC0gQQWRV0s=";

			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
					// .header("x-api-key", xapikeyRequestHeader)
					.header("Authorization", "Bearer " + bearerTokenLocal) // Add any other headers as needed
					.body(jsonString).post(RestAssured.baseURI);

			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			LOGGER.info("Response Body triggerPostRequestCommonRest: " + responseBody);

			objectMapper = new ObjectMapper();
			// Parse JSON string to JsonNode
			// JsonNode rootNode = objectMapper.readTree(responseBody);
			// Extract the value of the "data" field
			// String dataValue = rootNode.path("data").asText();
			// Print the extracted value
			// LOGGER.info("Modified response: " + dataValue);
			// Decrypt the response body
			// String decryptedResponseBody;

			// decryptedResponseBody = EncryptionUtil.decrypt(dataValue, xapikey);
			// LOGGER.info("Decrypted Response Body: " + decryptedResponseBody);
			Serenity.setSessionVariable("ResponseBody").to(responseBody);

			// Log the decrypted response in Serenity report
			Serenity.recordReportData().withTitle("ResponseBody").andContents(responseBody);

			// Parse the decrypted response body string into a JsonNode
			JsonNode jsonNode = objectMapper.readTree(responseBody);
			// Save the response body to a file using FileHandler
			fileHandlerToResponseFolder.writeJsonToFile(fileName, jsonNode);

		}

	}

	// This method is for response compare
	public static void displayDetailedDifferences(String str1, String str2) {
		int maxLength = Math.max(str1.length(), str2.length());
		StringBuilder differences = new StringBuilder();

		for (int i = 0; i < maxLength; i++) {
			char char1 = i < str1.length() ? str1.charAt(i) : '\0';
			char char2 = i < str2.length() ? str2.charAt(i) : '\0';

			if (char1 != char2) {
				differences.append("Difference at index ").append(i).append(": '").append(char1).append("' vs '")
						.append(char2).append("'\n");
			}
		}

		if (differences.length() > 0) {
			System.out.println("Differences found:\n" + differences);
		} else {
			System.out.println("The strings are identical.");
		}
	}

	public static String formatStringforHeaders(String formatString) {
		if (formatString.length() > 1) {
			// Remove the first and last characters
			formatString = formatString.substring(1, formatString.length() - 1);
		} else {
			// Handle the case where the string is too short
			formatString = ""; // Or handle according to your needs
		}
		return formatString;
	}

	// Below new common method written for UPI and SSA
	@Then("user triggers a post request without body")
	public void triggerPostRequestWithoutBody() throws IOException {
		String bearerToken = BearerToken;
		ObjectMapper objectMapper = new ObjectMapper();
		Response response = SerenityRest.given().header("Content-Type", "application/json")
				.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
				.header("Authorization", "Bearer " + bearerToken).header("x-api-key", AppConfig.xapikey())// Add
				// any
				// other
				// headers
				// as
				// needed
				.when()
				// .body(jsonString)
				.post(RestAssured.baseURI);
		String responseBody = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("Response Body: " + responseBody);
	}

	// Below common method code is for SSA that Get request without CIF
	@Then("user triggers a get request")
	public void triggerGetRequestCommonRests() {
		String bearerToken = BearerToken;
		Response response = SerenityRest.given().header("Content-Type", "application/json")
				.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
				.header("Authorization", "Bearer " + bearerToken)// Add any other headers as needed
				.when().get(RestAssured.baseURI);
		System.out.print(RestAssured.baseURI);
		String responseBody = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("Response Body: " + responseBody);

		// return response;
	}

	// Below Method is common method to get the 405 response and method not allowed
	@Then("^user triggers a get request with (.+)$")
	public void triggermethodnotallowRequestCommonRest(String requestBody) {
	    String environment = AppConfig.getRestUrl(TestBase._setEnvPath);
	    String xapikey = "";
	    boolean isDrop3 = StringUtils.containsIgnoreCase(requestBody, "Drop3");

	    if (!isDrop3) {
	        if ((StringUtils.containsIgnoreCase(requestBody, "mvp") && StringUtils.containsIgnoreCase(environment, "uat"))
	                || (StringUtils.containsIgnoreCase(requestBody, "Drop2") && StringUtils.containsIgnoreCase(environment, "uat"))) {
	            xapikey = AppConfig.rsaToken();
	        } else {
	            xapikey = AppConfig.xapikey();
	        }
	    }

	    ObjectMapper objectMapper = new ObjectMapper();
	    String fileName = fileHandlerToResponseFolder.extractFilename(requestBody);

	    try {
	        Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
	        String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
	        System.out.println("Request Body before encryption: " + jsonString);
	        String bearerToken = BearerToken;

	        RequestSpecification requestSpec = SerenityRest.given()
	                .header("Content-Type", "application/json")
	                .header("dbp-id", stringdbpID)
	                .header("dbp-secret", stringdbpSecret)
	                .header("Authorization", "Bearer " + bearerToken);

	        if (!isDrop3) {
	            String encryptedRequestBody = EncryptionUtil.encrypt(jsonString, xapikey);
	            requestSpec.queryParam("data", encryptedRequestBody);
	            requestSpec.header("x-api-key", xapikey);
	            System.out.println("Encrypted Request QueryParam: " + encryptedRequestBody);
	        } else {
	            // For Drop3, add each field as a query param
	            JsonNode drop3Node = objectMapper.readTree(jsonString);
	            drop3Node.fields().forEachRemaining(field -> {
	                requestSpec.queryParam(field.getKey(), field.getValue().asText());
	            });
	            System.out.println("Drop3 Request QueryParams: " + jsonString);
	        }

	        Serenity.recordReportData().withTitle("Decrypted Request Body").andContents(jsonString);

	        Response response = requestSpec.get(RestAssured.baseURI);
	        String responseBody = response.then().extract().body().asString();
	        Serenity.setSessionVariable("response").to(response);
	        System.out.println("Response Body: " + responseBody);

	        JsonNode jsonNode;
	        if (!isDrop3) {
	            String encryptedData = objectMapper.readTree(responseBody).path("data").asText();
	            String decryptedResponseBody = EncryptionUtil.decrypt(encryptedData, xapikey);
	            Serenity.setSessionVariable("decryptedResponseBody").to(decryptedResponseBody);
	            Serenity.recordReportData().withTitle("Decrypted Response").andContents(decryptedResponseBody);
	            jsonNode = objectMapper.readTree(decryptedResponseBody);
	        } else {
	            jsonNode = objectMapper.readTree(responseBody);
	        }

	        fileHandlerToResponseFolder.writeJsonToFile(fileName, jsonNode);

	    } catch (IOException e) {
	        System.err.println("IOException occurred: " + e.getMessage());
	        e.printStackTrace();
	    } catch (Exception e) {
	        System.err.println("Error during encryption/decryption or API request: " + e.getMessage());
	        e.printStackTrace();
	    }
	}



	// Approved method is added by Sachin for GeneralService
	@Then("user triggers a post request to get customer accounts (.*)$")
	public void triggerPostRequesttogetCustomerAccount(String requestBody) throws IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		String fileName = fileHandlerToResponseFolder.extractFilename(requestBody);
		String environment = AppConfig.getRestUrl(TestBase._setEnvPath);
		if (StringUtils.containsIgnoreCase(environment, "uat")) {
			String xapikey = "";
			String encryptdecryptKey = AppConfig.xapikey();

			xapikey = AppConfig.rsaToken();

			try {
				// Append other paths to the base directory
				Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
				String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
				LOGGER.info("Request Body before encryption: " + jsonString);
				// String bearerToken=BearerToken;
				LOGGER.info("Request Body: " + requestBody);
				// Encrypt the request body
				String encryptedRequestBodywithoutdata = EncryptionUtil.encrypt(jsonString, encryptdecryptKey);
				String encryptedRequestBody = "{\"data\":\"" + encryptedRequestBodywithoutdata + "\"}";
				LOGGER.info("Encrypted Request Body: " + encryptedRequestBody);
				// Log the encrypted request in Serenity report
				Serenity.recordReportData().withTitle("Decrypted Request Body").andContents(jsonString);
				Response response = SerenityRest.given().header("Content-Type", "application/json")
						.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
						.header("x-api-key", xapikey).header("Authorization", "Bearer " + BearerToken) // Add any other
																										// headers as
																										// needed
						.body(encryptedRequestBody).post(RestAssured.baseURI);
				String responseBody = response.then().extract().body().asString();
				Serenity.setSessionVariable("response").to(response);
				LOGGER.info("Response Body triggerPostRequestCommonRest: " + responseBody);
				objectMapper = new ObjectMapper();
				// Parse JSON string to JsonNode
				JsonNode rootNode = objectMapper.readTree(responseBody);
				// Extract the value of the "data" field
				String dataValue = rootNode.path("data").asText();
				// Print the extracted value
				LOGGER.info("Modified response: " + dataValue);
				// Decrypt the response body
				String decryptedResponseBody;
				decryptedResponseBody = EncryptionUtil.decrypt(dataValue, encryptdecryptKey);
				LOGGER.info("Decrypted Response Body: " + decryptedResponseBody);
				Serenity.setSessionVariable("decryptedResponseBody").to(decryptedResponseBody);
				// Log the decrypted response in Serenity report
				Serenity.recordReportData().withTitle("Decrypted Response").andContents(decryptedResponseBody);
				// Parse the decrypted response body string into a JsonNode
				JsonNode jsonNode = objectMapper.readTree(decryptedResponseBody);
				// Save the response body to a file using FileHandler
				fileHandlerToResponseFolder.writeJsonToFile(fileName, jsonNode);
			} catch (IOException e) {
				System.err.println("IOException occurred: " + e.getMessage());
				e.printStackTrace();
			} catch (Exception e) {
				System.err.println("Error during encryption/decryption or API request: " + e.getMessage());
				e.printStackTrace();
			}
		} else {
			// Append other paths to the base directory
			objectMapper = new ObjectMapper();
			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			LOGGER.info("Request Body before encryption: " + jsonString);
			// String bearerToken=BearerToken;
			LOGGER.info("Request Body: " + requestBody);
			// Encrypt the request body
			// String encryptedRequestBodywithoutdata = EncryptionUtil.encrypt(jsonString,
			// xapikey);
			// String encryptedRequestBody =
			// "{\"data\":\""+encryptedRequestBodywithoutdata+"\"}";
			// LOGGER.info("Encrypted Request Body: " + encryptedRequestBody);
			// Log the encrypted request in Serenity report
			Serenity.recordReportData().withTitle("Request Body").andContents(jsonString);
			// String
			// xapikeyRequestHeader="RvkjaDkgJoxNzngOddAwd5XEWpYkDKDxz6X/3mgIon0ataS2uIFsWHK9GZSRfWTfGil28jkCe/xvV0PBV7JMrATCpzFMYNdRbcc2Iz7nquh7aTj72i+qoetiBIN0OZSfOcdnvWqKYnop/IWPHtRR2ryXUgOgEHZ8dC0gQQWRV0s=";
			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
					// .header("x-api-key", xapikeyRequestHeader)
					.header("Authorization", "Bearer " + BearerToken) // Add any other headers as needed
					.body(jsonString).post(RestAssured.baseURI);
			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			LOGGER.info("Response Body triggerPostRequestCommonRest: " + responseBody);
			objectMapper = new ObjectMapper();
			// Parse JSON string to JsonNode
			// JsonNode rootNode = objectMapper.readTree(responseBody);
			// Extract the value of the "data" field
			// String dataValue = rootNode.path("data").asText();
			// Print the extracted value
			// LOGGER.info("Modified response: " + dataValue);
			// Decrypt the response body
			// String decryptedResponseBody;
			// decryptedResponseBody = EncryptionUtil.decrypt(dataValue, xapikey);
			// LOGGER.info("Decrypted Response Body: " + decryptedResponseBody);
			Serenity.setSessionVariable("ResponseBody").to(responseBody);
			// Log the decrypted response in Serenity report
			Serenity.recordReportData().withTitle("ResponseBody").andContents(responseBody);
			// Parse the decrypted response body string into a JsonNode
			JsonNode jsonNode = objectMapper.readTree(responseBody);
			// Save the response body to a file using FileHandler
			fileHandlerToResponseFolder.writeJsonToFile(fileName, jsonNode);
		}
	}

	// Below code is for login registration
	public void enterOTP() throws Exception {
		// TODO Auto-generated method stub
		FetchOTPTest fetchOTPTest = new FetchOTPTest();
		otpRMN = fetchOTPTest.testFetchOTP();
	}

	// @Then("user triggers OTP with a post request (.*)$)")
	public void triggerPostRequestwithOTP(String requestBody) {
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			// String baseDir = System.getProperty("user.dir");
			// Print the base directory
			// System.out.println("Base Directory: " + baseDir);
			// Append other paths to the base directory
			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Request Body: " + jsonString);
			jsonString = jsonString.replace("{{otpRMN}}", otpRMN);
			System.out.println("Request Body with OTP: " + jsonString);
			System.out.println(RestAssured.baseURI);

			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret).header("Cookie",cookie)
					// .header("Authorization","Bearer "+bearerToken)// Add any other headers as
					// needed
					.when().body(jsonString).post(RestAssured.baseURI);
			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			System.out.println("Response Body: " + responseBody);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// Approval taken by Sumit // Below new method code is for API chaining
	@Then("user updates the requestField (.+) of request body from (.+) with responsefield (.+) from filename (.+)$")
	public void updateRequestBodyCommonRests(List<String> requestFieldList, String requestBodyPath,
			List<String> responsefieldList, String fileNameOfSavedResponseData) {
		try {
			String fileNameOfRequestBody = fileHandlerToRequestBodies.extractFilename(requestBodyPath);
			System.out.println("Extracted filename from request body path: " + fileNameOfRequestBody);

			// Read the request body JSON
			JsonNode requestBodyJson = fileHandlerToRequestBodies.readJson(fileNameOfRequestBody);
			System.out.println("Original request body: " + requestBodyJson);

			// Read the data to be used for updates
			JsonNode updateDataJson = fileHandlerToResponseFolder.readJson(fileNameOfSavedResponseData); // Adjust the path as needed
			System.out.println("Data for updates: " + updateDataJson);

			// Iterate over the responsefieldList and requestFieldList
			for (int i = 0; i < responsefieldList.size(); i++) {
				String responseFieldPath = responsefieldList.get(i);
				String requestFieldPath = requestFieldList.get(i);

				// Get the value from the response data using the path
				JsonNode newValue = getValueFromPath(updateDataJson, responseFieldPath);

				if (newValue != null) {
					// Update the request body with the new value using the path
					requestBodyJson = updateValueAtPath(requestBodyJson, requestFieldPath, newValue);
					System.out.println("Updated '" + requestFieldPath + "' with value from '" + responseFieldPath
							+ "': " + newValue);
				} else {
					System.out.println("Field '" + responseFieldPath + "' not found in update data.");
				}
			}

			// Save the updated request body
			fileHandlerToRequestBodies.writeJsonToFile(fileNameOfRequestBody, requestBodyJson);
			System.out.println("Updated request body saved to file.");
		} catch (IOException e) {
			System.err.println("IOException occurred: " + e.getMessage());
			e.printStackTrace();
		}
	}

	// Helper method to get a value from a nested path
	private JsonNode getValueFromPath(JsonNode rootNode, String path) {
		String[] pathParts = path.split("\\.");
		JsonNode currentNode = rootNode;

		for (String part : pathParts) {
			// Check if the root node is an array
			if (currentNode.isArray() && part.matches("\\[\\d+\\]")) {
				int index = Integer.parseInt(part.substring(1, part.length() - 1));
				currentNode = currentNode.get(index);
			} else if (part.matches(".*\\[\\d+\\]")) {
				// Extract the array name and index
				String arrayName = part.substring(0, part.indexOf("["));
				int index = Integer.parseInt(part.substring(part.indexOf("[") + 1, part.indexOf("]")));

				// Navigate to the array and then the specific element
				currentNode = currentNode.get(arrayName);
				if (currentNode != null && currentNode.isArray()) {
					currentNode = currentNode.get(index);
				} else {
					return null; // Array or element not found
				}
			} else {
				// Standard object key
				currentNode = currentNode.get(part);
			}

			if (currentNode == null) {
				return null; // Path not found
			}
		}

		return currentNode; // Return the final value found
	}

	// Helper method to update a value at a nested path
	private JsonNode updateValueAtPath(JsonNode rootNode, String path, JsonNode newValue) {
		String[] pathParts = path.split("\\.");
		JsonNode currentNode = rootNode;

		for (int i = 0; i < pathParts.length - 1; i++) {
			String part = pathParts[i];

			if (currentNode.isArray() && part.matches("\\[\\d+\\]")) {
				int index = Integer.parseInt(part.substring(1, part.length() - 1));
				currentNode = currentNode.get(index);
			} else if (part.matches(".*\\[\\d+\\]")) {
				String arrayName = part.substring(0, part.indexOf("["));
				int index = Integer.parseInt(part.substring(part.indexOf("[") + 1, part.indexOf("]")));

				currentNode = currentNode.get(arrayName).get(index);
			} else {
				currentNode = currentNode.get(part);
			}

			if (currentNode == null) {
				return rootNode; // Path not found, return original rootNode
			}
		}

		String lastPart = pathParts[pathParts.length - 1];
		if (currentNode.isArray()) {
			int index = Integer.parseInt(lastPart.substring(1, lastPart.length() - 1));
			((ArrayNode) currentNode).set(index, newValue);
		} else {
			((ObjectNode) currentNode).set(lastPart, newValue);
		}

		return rootNode;
	}

	public static void UpdatedJsonrequest(String filePath, String attributeName, String attributeValue) {
		// ObjectMapper objectMapper = new ObjectMapper();

		System.out.println("filePath " + filePath);
		System.out.println("attributeName " + attributeName);
		System.out.println("attributeValue " + attributeValue);
		try {
			String updatedJson = JsonUpdater.updateJsonAttribute(filePath, attributeName, attributeValue);
			System.out.println(" updatedJson --------:" + updatedJson);
			if (updatedJson.startsWith("Error") || updatedJson.equals("Attribute not found in the JSON file.")) {
				System.out.println(updatedJson);
				return;
			}

//	            Response response =SerenityRest.given()
//	    			    .header("Content-Type", "application/json")
//	    			    .header("dbp-id",stringdbpID)
//	    			    .header("dbp-secret",stringdbpSecret)
//	    			    .header("x-auth-dbp",bearerToken)// Add any other headers as needed
//	    				.when()
//	    				.body(updatedJson)
//	    				.post(RestAssured.baseURI);
//
//	    	   String responseBody = response.then().extract()
//	    	            .body()
//	    	            .asString();		
//	    	    Serenity.setSessionVariable("response").to(response);
//
//
//	            System.out.println("Actual Response Body: " + responseBody);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static boolean validateJsonResponseFor400(String jsonResponse) {
		// com.google.gson.Gson gson = new Gson();
		com.google.gson.JsonObject jsonObject = com.google.gson.JsonParser.parseString(jsonResponse).getAsJsonObject();

		// Validate the root attributes
		if (!jsonObject.has("errorId") || !jsonObject.has("errorAt") || !jsonObject.has("errors")) {
			System.out.println("Required attributes are missing in the root JSON object.");
			return false;
		}

		// Validate the "errors" array
		com.google.gson.JsonArray errorsArray = jsonObject.getAsJsonArray("errors");
		if (errorsArray.size() == 0) {
			System.out.println("The errors array is empty.");
			return false;
		}

		// Validate the first error object
		JsonObject firstErrorObject = errorsArray.get(0).getAsJsonObject();
		if (!firstErrorObject.has("code") || !firstErrorObject.has("message")) {
			System.out.println("Required attributes are missing in the first error object.");
			return false;
		}

		// Validate the values of "code" and "message"
		String code = firstErrorObject.get("code").getAsString();
		String message = firstErrorObject.get("message").getAsString();
		if (!"400".equals(code) || !message.contains("400 Bad Request")) {
			System.out.println("The values of 'code' or 'message' are incorrect.");
			return false;
		}

		return true;
	}

	public static void triggerPostRequestWithHeaderFlag(String requestBody, String headerFlag) {
		ObjectMapper objectMapper = new ObjectMapper();

		try {
			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();

			Map<String, String> headers = new HashMap<>();
			headers.put("Content-Type", "application/json");
			headers.put("dbp-id", "stringdbpID");
			headers.put("dbp-secret", "stringdbpSecret");
			headers.put("x-auth-dbp", "bearerToken");

			// Split headerFlag by '_&_'
			String[] headerFlags = headerFlag.split("_&_");

			// Remove headers that match any of the headerFlags
			for (String flag : headerFlags) {
				flag = flag.trim();
				if (headers.containsKey(flag)) {
					headers.remove(flag);
				}
			}

			// Build the request with the remaining headers
			Response response = SerenityRest.given().headers(headers).body(jsonString).post(RestAssured.baseURI);

			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);

			System.out.println("Actual Response Body: " + responseBody);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void triggerPostRequestwithAttributeRemovedJsonrequest(String filePath, String attributeName) {
		// ObjectMapper objectMapper = new ObjectMapper();

		System.out.println("filePath " + filePath);
		System.out.println("attributeName " + attributeName);
		// System.out.println("attributeValue " +attributeValue);
		try {
			String updatedJson = JsonUpdater.removeJsonAttribute(filePath, attributeName);
			System.out.println(" updatedJson --------:" + updatedJson);
			if (updatedJson.startsWith("Error") || updatedJson.equals("Attribute not found in the JSON file.")) {
				System.out.println(updatedJson);
				return;
			}

			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
					.header("x-auth-dbp", bearerToken)// Add any other headers as needed
					.when().body(updatedJson).post(RestAssured.baseURI);

			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);

			System.out.println("Actual Response Body: " + responseBody);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static boolean isBearerTokenGenerated() {
		return isBearerTokenGenerated;
	}

	public static void setBearerToken(String token) {
		bearerToken = token;
		isBearerTokenGenerated = true;
	}

	public static void resetBearerToken() {
		bearerToken = null;
		isBearerTokenGenerated = false;
	}

	// Method to hash a string using the specified algorithm (e.g., SHA-256)
	public static String hashString(String input, String algorithm) {
		try {
			MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
			byte[] hashBytes = messageDigest.digest(input.getBytes());
			// Convert the hash bytes to a hexadecimal string
			StringBuilder hexString = new StringBuilder();
			for (byte b : hashBytes) {
				String hex = Integer.toHexString(0xff & b);
				if (hex.length() == 1) {
					hexString.append('0');
				}
				hexString.append(hex);
			}
			return hexString.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		}
	}

	public static String getMbLoginPath(String Path) {

		String filePath;
		String environment = AppConfig.getRestUrl(TestBase._setEnvPath);

		if ((StringUtils.containsIgnoreCase(environment, "sit"))
				|| (StringUtils.containsIgnoreCase(environment, "sitcmb"))) {
			// Drop2 SIT Mblogin URL's are below
			if ("Drop2/FundTransfer".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_fundtransfer.json";
			} else if ("Drop2/ASBA".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_ASBA.json";
			} else if ("Drop2/APY".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "APY.json";
			} else if ("Drop2/ChequeService".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_ChequeService.json";
			} else if ("Drop2/bbps".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_BBPS.json";
			} else if ("Drop2/CreditCard".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_CreditCard.json";
			} else if ("Drop2/DebitCard".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_debitcard.json";
			} else if ("drop2/GeneralService".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_BusinessService.json";
			} else if ("drop2/GovtScheme".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_GovtScheme.json";		
			} else if ("drop2/LAD".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_LAD.json";
			} else if ("Drop2/UPI".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_upi.json";
			} else if ("Drop2/NCMC".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_NCMC.json";
				// Drop3 SIT Mblogin URL's are below
			} else if ("Drop3/BusinessServices".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_BusinessServicesMSME.json";
			} else if ("Drop3/HomePage".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_HomePageMSME.json";
			} else if ("Drop3/CurrentAccountEnquiry".equalsIgnoreCase(Path)) {
                filePath = AppConfig.getmbloginFolder() + "SIT_CurrentAccountEnquiryMSME.json";
			} else if ("Drop3/ARM".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_ARM_MSME.json";
			}else if ("Drop3/Profile".equalsIgnoreCase(Path)) {
					filePath = AppConfig.getmbloginFolder()+ "SIT_Profile_MSME.json";
			} else if ("Drop3/mPOS".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "mPOS-SIT.json";
			} else if ("Drop3/Borrowings".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_BorrowingsMSME.json";
			} else if ("Drop3/LoginAndRegistration".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_mbloginMSME.json";
			} else if ("Drop3/PaymentLink".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "SIT_PaymentLinkMSME.json";

				// Drop1 SIT Mblogin URL's are below
			} else if ("mvp/fdrd".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "mblogin-fdrd-sit.json";
			} else if ("mvp/nps".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "mbloginnps.json";
			} else if ("mvp/ssa".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "mbloginssa.json";
			} else if ("mvp/ppf".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "mbloginppf.json";
			} else {
				filePath = AppConfig.getmbloginFolder() + "mblogin.json";
			}
		} else {
			// Drop2 UAT Mblogin URL's are below
			if ("Drop2/FundTransfer".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "UAT_fundtransfer.json";
			} else if ("Drop2/ASBA".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "UAT_ASBA.json";
			} else if ("Drop2/APY".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "APY.json";
			} else if ("Drop2/ChequeService".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "UAT_ChequeService.json";
			} else if ("Drop2/bbps".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "BBPS.json";
			} else if ("Drop2/CreditCard".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "UAT_CreditCard.json";
			} else if ("Drop2/DebitCard".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "UAT_debitcard.json";
			} else if ("drop2/GeneralService".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "UAT_BusinessService.json";
			} else if ("drop2/POCService".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "UAT_BusinessService.json";
			} else if ("drop2/GovtScheme".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "GovtScheme_UAT.json";
			} else if ("Drop2/UPI".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "UAT_upi.json";
			} else if ("Drop2/NCMC".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "UAT_NCMC.json";
			}
			// Drop3 UAT Mblogin URL's are below
			else if ("Drop3/HomePage".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "UAT_HomePageMSME.json";

				// Drop1 UAT Mblogin URL's are below
			} else if ("mvp/fdrd".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "UAT-FDRD-mblogin.json";
			} else if ("mvp/nps".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "mbloginnps.json";
			} else if ("mvp/ssa".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "UAT_mbloginssa.json";
			} else if ("mvp/ppf".equalsIgnoreCase(Path)) {
				filePath = AppConfig.getmbloginFolder() + "mbloginppf.json";
			} else {
				filePath = AppConfig.getmbloginFolder() + "mblogin.json";
			}

		}

		return filePath;
	}

	public static String settingBearerTokenByPath(String Path) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		String MBLoginURL = "";

		String environment = AppConfig.getRestUrl(TestBase._setEnvPath);

		if ((StringUtils.containsIgnoreCase(environment, "cmbnp"))
				&& (StringUtils.containsIgnoreCase(environment, "sit"))) {
			MBLoginURL = environment.trim() + "app/login-registration/api/v1/cbLogin ";
		} else {
			MBLoginURL = environment.trim() + "mga/sps/apiauthsvc/policy/mblogin";
		}

		String filePath = getMbLoginPath(Path);

		if (StringUtils.containsIgnoreCase(environment, "uat")) {
			try {
				// Load JSON file
				Path configFilePath = Paths.get(TestBase._baseDir, filePath); // Replace "filePath.json" with your file
																				// path
				objectMapper = new ObjectMapper();
				JsonNode jsonNode = objectMapper.readTree(new File(configFilePath.toString()));
				// Convert JSON node to string
				String jsonString = jsonNode.toString();
				LOGGER.info("Request Body: " + jsonString);
				// Get the PIN from the JSON and check if it's null
				JsonNode pinNode = jsonNode.get("loginpin");
				if (pinNode != null && !pinNode.isNull()) {
					String pin = pinNode.asText();
					String hashedPin = hashString(pin, "SHA-256");
					if (hashedPin != null) {
						// Update the PIN field in the JSON
						((ObjectNode) jsonNode).put("loginpin", hashedPin);
						jsonString = jsonNode.toString(); // Convert updated JSON back to string
						// Print the updated JSON
						LOGGER.info("Updated Request Body: " + jsonString);
						Serenity.recordReportData().withTitle("Decrypted Request Body").andContents(jsonString);
						String encryptedRequestBodywithoutdata = EncryptionUtil.encrypt(jsonString,
								AppConfig.xapikey());
						String encryptedRequestBody = "{\"data\":\"" + encryptedRequestBodywithoutdata + "\"}";
						System.out.println("Encrypted Request Body: " + encryptedRequestBody);
						Serenity.recordReportData().withTitle("Request Body").andContents(encryptedRequestBody);
						// Prepare headers
						LOGGER.info("id: " + AppConfig.getdbpId().toString().trim());
						LOGGER.info("secret: " + AppConfig.getdbpSecret());
						String stringdbpID = formatStringforHeaders(AppConfig.getdbpId().trim());
						String stringdbpSecret = formatStringforHeaders(AppConfig.getdbpSecret().trim());
						String xapikey = AppConfig.rsaToken();

						// Send the POST request using SerenityRest
						Response response = SerenityRest.given().header("Content-Type", "application/json")
								.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
								.header("x-api-key", xapikey).when().body(encryptedRequestBody).post(MBLoginURL); // Replace
																													// MBLoginURL
																													// with
																													// your
																													// actual
																													// URL
						// Print the response
						LOGGER.info("Response: " + response.getBody().asString());

						String responseBody = response.then().extract().body().asString();
						Serenity.setSessionVariable("response").to(response);
						System.out.println("Response Body triggerPostRequestCommonRest: " + responseBody);

						objectMapper = new ObjectMapper();
						// Parse JSON string to JsonNode
						JsonNode rootNode = objectMapper.readTree(responseBody);
						// Extract the value of the "data" field
						String dataValue = rootNode.path("data").asText();
						// Print the extracted value
						System.out.println("Modified response: " + dataValue);
						// Decrypt the response body
						String decryptedResponseBody;

						decryptedResponseBody = EncryptionUtil.decrypt(dataValue, AppConfig.xapikey());
						System.out.println("Decrypted Response Body: " + decryptedResponseBody);
						Serenity.setSessionVariable("decryptedResponseBody").to(decryptedResponseBody);

						// Log the decrypted response in Serenity report
						Serenity.recordReportData().withTitle("Decrypted Response").andContents(decryptedResponseBody);

						if (response.statusCode() == 200) {
							ObjectMapper objectMapperBearer = new ObjectMapper();
							// String responseBody = response.then().extract().body().asString();
							jsonNode = objectMapperBearer.readTree(decryptedResponseBody);
							JsonNode tokenNode = jsonNode.path("response").path("access_token");
							bearerToken = tokenNode.asText();
							LOGGER.info("Bearer Token: " + bearerToken);
						} else {
							LOGGER.info("Failed to retrieve the token. HTTP error code: " + response.statusCode());
						}
						LOGGER.info("Decrypted Response Body: " + response);
						Serenity.setSessionVariable("response").to(response);
						// Log the decrypted response in Serenity report
						Serenity.recordReportData().withTitle("Response").andContents(response.getBody().asString());
					} else {
						LOGGER.info("Failed to hash the PIN.");
					}
				} else {
					LOGGER.info("The 'pin' field is not found or is null in the JSON.");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (StringUtils.containsIgnoreCase(environment, "cmbnp")) {
			try {
				// Load JSON file
				Path configFilePath = Paths.get(TestBase._baseDir, filePath); // Replace "filePath.json" with your file
																				// path
				objectMapper = new ObjectMapper();
				JsonNode jsonNode = objectMapper.readTree(new File(configFilePath.toString()));
				// Convert JSON node to string
				String jsonString = jsonNode.toString();
				LOGGER.info("Request Body: " + jsonString);
				LOGGER.info("id: " + AppConfig.getdbpId().toString().trim());
				LOGGER.info("secret: " + AppConfig.getdbpSecret());
				String stringdbpID = formatStringforHeaders(AppConfig.getdbpId().trim());
				String stringdbpSecret = formatStringforHeaders(AppConfig.getdbpSecret().trim());
				// Send the POST request using SerenityRest
				Response response = SerenityRest.given().header("Content-Type", "application/json")
						.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret).when().body(jsonString)
						.post(MBLoginURL);
				// Print the response
				LOGGER.info("Response: " + response.getBody().asString());

				String responseBody = response.then().extract().body().asString();
				Serenity.setSessionVariable("response").to(response);
				System.out.println("Response Body" + responseBody);

				// Log the decrypted response in Serenity report
				Serenity.recordReportData().withTitle("Response").andContents(responseBody);
				if (response.statusCode() == 200) {
					ObjectMapper objectMapperBearer = new ObjectMapper();
					// String responseBody = response.then().extract().body().asString();
					jsonNode = objectMapperBearer.readTree(responseBody);
					JsonNode tokenNode = jsonNode.path("response").path("access_token");
					bearerToken = tokenNode.asText();
					LOGGER.info("Bearer Token: " + bearerToken);
				} else {
					LOGGER.info("Failed to retrieve the token. HTTP error code: " + response.statusCode());
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} else if (StringUtils.containsIgnoreCase(environment, "sit")) {
			try {
				String xapikeyReqHeader = AppConfig.rsaToken();
				Path configFilePath = Paths.get(TestBase._baseDir, filePath);
				String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
				LOGGER.info("Request Body: " + jsonString);
				// Load JSON file

				objectMapper = new ObjectMapper();
				JsonNode jsonNode = objectMapper.readTree(new File(configFilePath.toString()));

				LOGGER.info("Request Body: " + jsonString);
				// Get the PIN from the JSON and check if it's null
				JsonNode pinNode = jsonNode.get("loginpin");
				if (pinNode != null && !pinNode.isNull()) {
					String pin = pinNode.asText();
					String hashedPin = hashString(pin, "SHA-256");
					if (hashedPin != null) {
						// Update the PIN field in the JSON
						((ObjectNode) jsonNode).put("loginpin", hashedPin);
						jsonString = jsonNode.toString(); // Convert updated JSON back to string
						// Print the updated JSON
						LOGGER.info("Updated Request Body: " + jsonString);

						// Log the encrypted request in Serenity report
						Serenity.recordReportData().withTitle("Request Body").andContents(jsonString);
						// Prepare headers
						LOGGER.info("id: " + AppConfig.getdbpId().toString().trim());
						LOGGER.info("secret: " + AppConfig.getdbpSecret());
						String stringdbpID = formatStringforHeaders(AppConfig.getdbpId().trim());
						String stringdbpSecret = formatStringforHeaders(AppConfig.getdbpSecret().trim());
						String xapikey = AppConfig.rsaToken();

						// Send the POST request using SerenityRest
						Response response = SerenityRest.given().header("Content-Type", "application/json")
								.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
								.header("x-api-key", xapikey).when().body(jsonString).post(MBLoginURL); // Replace
																										// MBLoginURL
																										// with your
																										// actual URL
						// Print the response
						LOGGER.info("Response: " + response.getBody().asString());

						String responseBody = response.then().extract().body().asString();
						Serenity.setSessionVariable("response").to(response);
						System.out.println("Response Body triggerPostRequestCommonRest: " + responseBody);

						objectMapper = new ObjectMapper();
						// Parse JSON string to JsonNode
						JsonNode rootNode = objectMapper.readTree(responseBody);

						System.out.println("Decrypted Response Body: " + responseBody);
						Serenity.setSessionVariable("decryptedResponseBody").to(responseBody);

						// Log the decrypted response in Serenity report
						Serenity.recordReportData().withTitle("Decrypted Response").andContents(responseBody);

						if (response.statusCode() == 200) {
							ObjectMapper objectMapperBearer = new ObjectMapper();
							// String responseBody = response.then().extract().body().asString();
							jsonNode = objectMapperBearer.readTree(responseBody);
							JsonNode tokenNode = jsonNode.path("response").path("access_token");
							bearerToken = tokenNode.asText();
							LOGGER.info("Bearer Token: " + bearerToken);
						} else {
							LOGGER.info("Failed to retrieve the token. HTTP error code: " + response.statusCode());
						}
						LOGGER.info("Decrypted Response Body: " + response);
						Serenity.setSessionVariable("response").to(response);
						// Log the decrypted response in Serenity report
						Serenity.recordReportData().withTitle("Response").andContents(response.getBody().asString());
					} else {
						LOGGER.info("Failed to hash the PIN.");
					}

				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return bearerToken;
	}
//		public static boolean isResponseEncrypted(String response) {
//		    try {
//		        JsonNode rootNode = new ObjectMapper().readTree(response);
//		        String dataValue = rootNode.path("data").asText();
//		        // Check if dataValue matches encryption pattern or is base64-encoded
//		        return !dataValue.isEmpty() && dataValue.matches("[A-Za-z0-9+/=]+");
//		    } catch (Exception e) {
//		        return false;
//		    }
//		}

	public static boolean isResponseEncrypted(String response) {
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			JsonNode rootNode = objectMapper.readTree(response);

			// Ensure there is only one field, and it is "data"
			if (rootNode.size() == 1 && rootNode.has("data")) {
				String dataValue = rootNode.path("data").asText();
				// Check if dataValue matches encryption pattern or is base64-encoded
				return !dataValue.isEmpty() && dataValue.matches("[A-Za-z0-9+/=]+");
			}
			return false;
		} catch (Exception e) {
			return false;
		}
	}

	// ==============Assisted Portal New Code By Shivam ==========================
	// //
	// Used in CS1, CS2, CS7
	@Then("^user triggers a path parameter post request (.+) and (.+)$")
	public void triggerPostRequestCommonRestwithPathParam(String requestId, String consentStatus) {
		System.out.println("inside common rest utils method");
		System.out.println(RestAssured.baseURI + "/" + requestId + "/" + consentStatus);
		Response response = SerenityRest.given().header("Content-Type", "application/json").when()
				.post(RestAssured.baseURI + "/" + requestId + "/" + consentStatus);
		System.out.println(response);
		String responseBody1 = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("Response Body: " + responseBody1);

		// return response;
	}

	// Used in AS6, CS3, CS4, CS5
	@Then("^user triggers a path parameter get request (.+)$")
	public void triggerGetRequestCommonRestwithPathParam(String requestId) {
		System.out.println(RestAssured.baseURI + "/" + requestId);
		Response response = SerenityRest.given().header("Content-Type", "application/json").when()
				.get(RestAssured.baseURI + "/" + requestId);
		String responseBody1 = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("Response Body: " + responseBody1);

		// return response;
	}

	// Used in AS1
	@Then("^user sends a post request with parameters (.+) and (.+) and (.+)$")
	public void triggerPostRequestCommonRestwithParams(Double param1, Double param2, String requestBody) {
		System.out.println(param1);
		System.out.println(param2);
		System.out.println(requestBody);
		ObjectMapper objectMapper = new ObjectMapper();
		try {

			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Request Body: " + jsonString);
			Response response = SerenityRest.given().header("Content-Type", "application/json")
					.queryParam("amountFrom", param1).queryParam("amountTo", param2)// Add any other params as needed
					.when().body(jsonString).post(RestAssured.baseURI);
			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			System.out.println("Response Body: " + responseBody);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	// Used in AS3
	@Then("^user sends a post request with query and path parameters (.+) and (.+) and (.+)$")
	public void triggerGetRequestCommonRestwithQueryAndPathParams(Double param1, Double param2, String solid) {
		System.out.println("prasaaad===456");
		System.out.println(param1);
		System.out.println(param2);
		System.out.println(solid);

		Response response = SerenityRest.given().header("Content-Type", "application/json")
				.queryParam("amountFrom", param1).queryParam("amountTo", param2)// Add any other params as needed
				.when().get(RestAssured.baseURI + "/" + solid);

		String responseBody = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("Response Body: " + responseBody);

	}

	// New
	// Used in AS2, AS4, AS5, CS6
	@Then("^user triggers a post request for assisted portal (.+)$")
	public void triggerPostRequestCommonRestforAssistedPortal(String requestBody) {
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
			System.out.println("Request Body: " + jsonString);
			Response response = SerenityRest.given().header("Content-Type", "application/json")// Add any other headers
					// as needed
					.when().body(jsonString).post(RestAssured.baseURI);
			String responseBody = response.then().extract().body().asString();
			Serenity.setSessionVariable("response").to(response);
			System.out.println("Response Body: " + responseBody);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// Used in DS1, DS2, DS3, DS4, DS7, DS8, DS9
	// Used in DS1, DS2, DS3, DS4, DS7, DS8, DS9
	@Then("^user triggers a post request for dashboard service (.+) and (.+)$")
	public void triggerPostRequestCommonRestforDashboard(String requestType, String solIdOrMobileNum) {
		ObjectMapper objectMapper = new ObjectMapper();
		String bearerToken = "eyJhbGciOiJSUzI1NiIsImtpZCI6Imh0dHBzZXJ2ZXJrZXkiLCJ0eXAiOiJhdCtqd3QifQ.eyJhY3RpdmVGbGFnIjp0cnVlLCJhdWQiOlsiY2xpZW50X3JvcGMiXSwiYXV0aG9yaXRpZXMiOlsiR0xPQkFMX1NFQVJDSCIsIklOVFJBX0JSX0FTU0lHTk1FTlQiLCJJTlRSQV9CUl9SRUFTU0lHTk1FTlRfT1BFTiIsIk5FV19BUFBMSUNBVElPTiIsIk5PVElGSUNBVElPTlMiLCJQUk9EVUNUX0NBVF9DQVJEUyIsIlBST0RVQ1RfQ0FUX0dPVlRTQ0hFTUUiLCJQUk9EVUNUX0NBVF9MRU5ESU5HIiwiUFJPRFVDVF9DQVRfTElBQklMSVRJRVMiLCJQUk9EVUNUX0NBVF9UUFAiLCJSRVBPUlRTIiwiUk9MRV9URU5BTlRfRFNBIiwiU0VMRl9BU1NJR05NRU5UIiwiU1VNTUFSWV9EQVNIQk9BUkQiXSwiY2xpZW50X2lkIjoiY2xpZW50X3JvcGMiLCJkZXNpZ25hdGlvbiI6Ik1hbmFnZXIiLCJleHAiOjE3MTMzNTgwMDIsImdpdmVuTmFtZSI6IkhhcmlvbSIsImdyYW50X2lkIjoiZGI5NjVmMTEtNmM5Zi00NGUyLTlhZTktOWY1N2Y2NTY5MzI5IiwiaWF0IjoxNzEzMzU3NzAxLCJpc0VtcGxveWVlRmxhZyI6dHJ1ZSwiaXNzIjoiaHR0cHM6Ly9pYW1sYWIuYXBwcy5ucHJkLnViaWRwLmxvY2FsIiwianRpIjoiMWJjY2Q5ZGMtYmQ2My00NGFlLTk3YTMtZDJiZTQyOTc4NGI3IiwibmJmIjoxNzEzMzU3NzAxLCJvZmZpY2VUeXBlIjoiQk8iLCJyb2xlRGVzY3JpcHRpb24iOiJEZXB1dHkgQnJhbmNoIEhlYWQiLCJyb2xlSWQiOiJCUl9PTyIsInNjb3BlIjoib3BlbmlkLGdpdmVuTmFtZT1IYXJpb20sc249TmVtYSx1c2VyVHlwZT1zdGFmZiIsInNvbElEIjoiMzE4ODAiLCJzdWIiOiI1NTIwNDEiLCJzdXJuYW1lIjoiTmVtYSIsInVzZXJfbmFtZSI6IjU1MjA0MSJ9.ZPd1x0Y29zZaYvHaFTMHBf7pwRMnIRmgCPnR57B9u2uiHlfkYWp0kXgNO_1u1LuX9jY0pdsOXk0sJ_0VGG_Xzr9tOGzPkFycfpPgL6DztdhtpU3B_XCHNTRuGYTxZW-iNs5Um4Dc2fd3f3n0iNoOVrFDpiD1zBU_u2TMBLU5SQM8lH7RDpcszmezV8KkHvfKqFzB8iM9Nd1T2Nq-s3C2LdSeks0f7RglBmAvs1hLzbgJJwVALpxSzJeGHUOxSbMLrGuDqKvj44IsQbhmyC9C_ps1vfnFrWldq7ApNTkceRJpU_BemWfdttEfPr0z6b1nP50n-h1NbJbtxylQ-RWI0w";
		Response response = null;
		if (requestType.equals("basic")) {
			response = SerenityRest.given().header("Authorization", "Bearer " + bearerToken)// Add any other headers as
					// needed
					.when().post(RestAssured.baseURI);
		} else if (requestType.equals("pathparam")) {
			response = SerenityRest.given().header("Authorization", "Bearer " + bearerToken)// Add any other headers as
					// needed
					.when().post(RestAssured.baseURI + "/" + solIdOrMobileNum);
		} else if (requestType.equals("basicerror")) {
			response = SerenityRest.given().header("Authorization", "Bearer " + bearerToken)// Add any other headers as
					// needed
					.when().get(RestAssured.baseURI);
		} else if (requestType.equals("pathparamerror")) {
			response = SerenityRest.given().header("Authorization", "Bearer " + bearerToken)// Add any other headers as
					// needed
					.when().get(RestAssured.baseURI + "/" + solIdOrMobileNum);
		}

		String responseBody = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("rieooe");
		System.out.println("Response Body: " + responseBody);
	}

	// Used in DS10, DS11, DS12
	@Then("^user triggers a get request for dashboard service")
	public void triggerGetRequestCommonRestforDashboard() {
		String bearerToken = "eyJhbGciOiJSUzI1NiIsImtpZCI6Imh0dHBzZXJ2ZXJrZXkiLCJ0eXAiOiJhdCtqd3QifQ.eyJhY3RpdmVGbGFnIjp0cnVlLCJhdWQiOlsiY2xpZW50X3JvcGMiXSwiYXV0aG9yaXRpZXMiOlsiQVNTSUdOTUVOVF9WSUVXIiwiR0xPQkFMX1NFQVJDSCIsIklOVFJBX0JSX0FTU0lHTk1FTlQiLCJJTlRSQV9CUl9SRUFTU0lHTk1FTlRfT1BFTiIsIk5FV19BUFBMSUNBVElPTiIsIk5PVElGSUNBVElPTlMiLCJQUk9EVUNUX0NBVF9DQVJEUyIsIlBST0RVQ1RfQ0FUX0dPVlRTQ0hFTUUiLCJQUk9EVUNUX0NBVF9MRU5ESU5HIiwiUFJPRFVDVF9DQVRfTElBQklMSVRJRVMiLCJQUk9EVUNUX0NBVF9UUFAiLCJSRVBPUlRTIiwiUk9MRV9URU5BTlRfRFNBIiwiU0VMRl9BU1NJR05NRU5UIl0sImNsaWVudF9pZCI6ImNsaWVudF9yb3BjIiwiZGVzaWduYXRpb24iOiJDbGVyayIsImV4cCI6MTcxNTYwNjY3OSwiZ2l2ZW5OYW1lIjoiTWF5dXJpIiwiZ3JhbnRfaWQiOiI1Y2Y4NDk5OS0xOGEzLTQ0YTgtOTdlOS0xNzBmYTI1OTI0NWMiLCJpYXQiOjE3MTU2MDMwNzgsImlzRW1wbG95ZWVGbGFnIjp0cnVlLCJpc3MiOiJodHRwczovL2lhbWxhYi5hcHBzLm5wcmQudWJpZHAubG9jYWwiLCJqdGkiOiJlY2VjYTc5OC02NzA3LTQ0MzEtOTZmYy0xMTg5ZDNlNmU5ZjQiLCJuYmYiOjE3MTU2MDMwNzgsIm9mZmljZVR5cGUiOiJCTyIsInJvbGVEZXNjcmlwdGlvbiI6IkNsZXJrIiwicm9sZUlkIjoiQlJfT08iLCJzY29wZSI6Im9wZW5pZCxnaXZlbk5hbWU9TWF5dXJpLHNuPUdhcmFkLHVzZXJUeXBlPXN0YWZmIiwic29sSUQiOiIxNDc1MiIsInN1YiI6ImRpdGlibXN2cHZ6OCIsInN1cm5hbWUiOiJHYXJhZCIsInVzZXJfbmFtZSI6IkRJVElCTVNWUFZaOCJ9.ygy-T3i9NilC__8V7oJTwE8FcIfZNC6gjWZCzT16aMGLc33knKwImM5fi5bmZClujM3pZK0xsBZyHGiaQj4aDqgLrFSR4r8AU5qGPiwdkkihWSrwPtxEPlrUa_ObHOnbVgtRNljvEzqr8xQejvyknQNI9D8zoYt9hQeIguDpj2_Ia52_LGS2FMgEq0gR5GgXuG7IWOl0mAPLAlCXfZORwPPIwg_Vc1JlHRdRPduodK6eTh3xcA-uIhEw9DH6MfYCJXJi7FJSdLgyrdSud8GBRFytcpiZQmoilt95mmV0y6R4QZ4LXC7jho4bGq49CDqNdd3Ni1M2g0TW5EWPETy4CA";
		System.out.println("uuuuuuuuuuu");
		Response response = SerenityRest.given().header("Content-Type", "application/json")
				.header("Authorization", "Bearer " + bearerToken).when().get(RestAssured.baseURI);

		String responseBody = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("Response Body: " + responseBody);
	}

	// Used in DS6
	@Then("^multiple filters on dashboard page$")
	public void passMultipleFiltersOnDashboard(List<String> filters) {
		String bearerToken = "eyJhbGciOiJSUzI1NiIsImtpZCI6Imh0dHBzZXJ2ZXJrZXkiLCJ0eXAiOiJhdCtqd3QifQ.eyJhY3RpdmVGbGFnIjp0cnVlLCJhdWQiOlsiY2xpZW50X3JvcGMiXSwiYXV0aG9yaXRpZXMiOlsiR0xPQkFMX1NFQVJDSCIsIklOVFJBX0JSX0FTU0lHTk1FTlQiLCJJTlRSQV9CUl9SRUFTU0lHTk1FTlRfT1BFTiIsIk5FV19BUFBMSUNBVElPTiIsIk5PVElGSUNBVElPTlMiLCJQUk9EVUNUX0NBVF9DQVJEUyIsIlBST0RVQ1RfQ0FUX0dPVlRTQ0hFTUUiLCJQUk9EVUNUX0NBVF9MRU5ESU5HIiwiUFJPRFVDVF9DQVRfTElBQklMSVRJRVMiLCJQUk9EVUNUX0NBVF9UUFAiLCJSRVBPUlRTIiwiUk9MRV9URU5BTlRfRFNBIiwiU0VMRl9BU1NJR05NRU5UIiwiU1VNTUFSWV9EQVNIQk9BUkQiXSwiY2xpZW50X2lkIjoiY2xpZW50X3JvcGMiLCJkZXNpZ25hdGlvbiI6Ik1hbmFnZXIiLCJleHAiOjE3MTMzNTgwMDIsImdpdmVuTmFtZSI6IkhhcmlvbSIsImdyYW50X2lkIjoiZGI5NjVmMTEtNmM5Zi00NGUyLTlhZTktOWY1N2Y2NTY5MzI5IiwiaWF0IjoxNzEzMzU3NzAxLCJpc0VtcGxveWVlRmxhZyI6dHJ1ZSwiaXNzIjoiaHR0cHM6Ly9pYW1sYWIuYXBwcy5ucHJkLnViaWRwLmxvY2FsIiwianRpIjoiMWJjY2Q5ZGMtYmQ2My00NGFlLTk3YTMtZDJiZTQyOTc4NGI3IiwibmJmIjoxNzEzMzU3NzAxLCJvZmZpY2VUeXBlIjoiQk8iLCJyb2xlRGVzY3JpcHRpb24iOiJEZXB1dHkgQnJhbmNoIEhlYWQiLCJyb2xlSWQiOiJCUl9PTyIsInNjb3BlIjoib3BlbmlkLGdpdmVuTmFtZT1IYXJpb20sc249TmVtYSx1c2VyVHlwZT1zdGFmZiIsInNvbElEIjoiMzE4ODAiLCJzdWIiOiI1NTIwNDEiLCJzdXJuYW1lIjoiTmVtYSIsInVzZXJfbmFtZSI6IjU1MjA0MSJ9.ZPd1x0Y29zZaYvHaFTMHBf7pwRMnIRmgCPnR57B9u2uiHlfkYWp0kXgNO_1u1LuX9jY0pdsOXk0sJ_0VGG_Xzr9tOGzPkFycfpPgL6DztdhtpU3B_XCHNTRuGYTxZW-iNs5Um4Dc2fd3f3n0iNoOVrFDpiD1zBU_u2TMBLU5SQM8lH7RDpcszmezV8KkHvfKqFzB8iM9Nd1T2Nq-s3C2LdSeks0f7RglBmAvs1hLzbgJJwVALpxSzJeGHUOxSbMLrGuDqKvj44IsQbhmyC9C_ps1vfnFrWldq7ApNTkceRJpU_BemWfdttEfPr0z6b1nP50n-h1NbJbtxylQ-RWI0w";
		Response response = SerenityRest.given().header("Content-Type", "application/json")
				.queryParam("overallStatus", filters.get(0)).queryParam("subJourney", filters.get(1))
				.queryParam("journey", filters.get(2)).queryParam("page", Integer.parseInt(filters.get(3)))
				.queryParam("amountRangefrom", Integer.parseInt(filters.get(4)))
				.queryParam("size", Integer.parseInt(filters.get(5))).queryParam("assignedTo", filters.get(6))
				.queryParam("amountRangeTo", Integer.parseInt(filters.get(7)))
				.queryParam("applicationStage", Integer.parseInt(filters.get(8)))
				.queryParam("assignmentStatus", filters.get(9)).queryParam("applicationStatus", filters.get(10))
				.header("Content-Type", "application/json").header("Authorization", "Bearer " + bearerToken)// Add any
				// other
				// params as
				// needed
				.when().post(RestAssured.baseURI);

		String responseBody = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("Response Body: " + responseBody);

	}

	@Then("^user triggers a path parameter get request for application number (.+)$")
	public void triggerGetRequestWithApplicationNum(String applicationNum) {
		String endpoint = RestAssured.baseURI + "/" + applicationNum;
		System.out.println("Triggering GET request for Application Number: " + applicationNum);
		System.out.println("Full Endpoint: " + endpoint);

		Response response = SerenityRest.given().header("Content-Type", "application/json").when().get(endpoint);

		String responseBody = response.then().extract().body().asString();
		Serenity.setSessionVariable("response").to(response);
		System.out.println("Response Body: " + responseBody);
	}
	
	public static class TdAccountInfo {
	    public String accountNumber;
	    public String schemeCategory;
	    public String renewalFlg;
	    public String maturityDate;
	    public String tdName;
	    public String schemeCode;
	    public String depOpnDate;
	    public String curDepositAmt;
	    public String depositAmt;
	    public String interestRate;
	    public String branchFlg;
	    public String ladPossibleTenure;
	    public String solId;

	    @Override
	    public String toString() {
	        return "Account: " + accountNumber + ", Maturity Date: " + maturityDate;
	    }
	}
	
	public class TdAccount{
	public String sortEligibleTds1(String resfilePath, String Category, String Flag) {
		String firstAccountNumber="";
		String sCategory=Category;
        String rFlag=Flag;
        System.out.println("Scheme category: "+sCategory);
        System.out.println("Renewal Flag: "+rFlag );
        
		try {
			File file = Paths.get(resfilePath).toFile();
            System.out.println("Filepath for elegible tds "+file);
            ObjectMapper mapper = new ObjectMapper();
            JsonNode root = mapper.readTree(file);
            JsonNode tdList = root.path("tdAccountInfoList");

            List<TdAccountInfo> accountList = mapper.readValue(tdList.traverse(),new TypeReference<List<TdAccountInfo>>() {});

            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            
            List<TdAccountInfo> filteredSortedList = accountList.stream()
            	    .filter(a -> sCategory.equals(a.schemeCategory) && rFlag.equals(a.renewalFlg))
            	    .sorted(Comparator.comparing((TdAccountInfo a) -> 
            	        LocalDate.parse(a.maturityDate, formatter)).reversed())
            	    .collect(Collectors.toList());

            System.out.println("Filtered and Sorted Accounts:");
            filteredSortedList.forEach(System.out::println);
            
            if (!filteredSortedList.isEmpty()) {
                firstAccountNumber = filteredSortedList.get(0).accountNumber;
                System.out.println("Latest Account Number: " + firstAccountNumber);
            }

        } catch (Exception e) {
           System.out.println("Exception occured "+e);
        }
		
		return firstAccountNumber;
	}
	
	}
	
	// Method to update JSON file with fdaccountno# fetch from eligibletds response 
    public void updateJsonFileWithFdAccountRenew(String reqfilePath, String jsonKeyToUpdate, String schemeCategory, String renewFlag, String resfilePath) throws IOException {
                
    	TdAccount td = new TdAccount();
        String AccountNumber= td.sortEligibleTds1(resfilePath, schemeCategory, renewFlag);
    	
        // Create an ObjectMapper to read and write JSON
        ObjectMapper mapper = new ObjectMapper();
        
        // Load the JSON file into an ObjectNode
        File jsonFile = new File(reqfilePath);
        System.out.println("inside update json file with fdaccount");
        ObjectNode jsonObject = (ObjectNode) mapper.readTree(jsonFile);
       
        // Update the JSON with the generated value for the specified key
        jsonObject.put(jsonKeyToUpdate, AccountNumber);
        
        // Write the updated JSON back to the file
        mapper.writerWithDefaultPrettyPrinter().writeValue(jsonFile, jsonObject);
        
        System.out.println("Updated JSON Request: " + jsonObject.toString());
    }
    
    // method to sort as per FD number and overwrite LAD eligible-tds file which will have Scheme category as FDSC and RenewFlag as U 
    public void EligibleTdsNewFile(String filePath, String Category, String Flag) throws IOException {
    	String inputFilePath = "src/test/resources/responseFolder/"+filePath;
        String outputFilePath = "src/test/resources/responseFolder/"+filePath;
        String sCategory=Category;
        String rFlag=Flag;
        System.out.println("Inside EligibleTdsNewFile method");
        System.out.println("Scheme category: "+sCategory);
        System.out.println("Renewal Flag: "+rFlag );

        try {
        	 
             // Reading eligible tds response JSON.
        	File file = Paths.get(inputFilePath).toFile();
        	System.out.println("Filepath for elegible tds: "+inputFilePath);
        	System.out.println("Current directory: " + new File(".").getAbsolutePath());
        	ObjectMapper mapper = new ObjectMapper();
            JsonNode rootNode = mapper.readTree(new File(inputFilePath));
            JsonNode tdListNode = rootNode.get("tdAccountInfoList");

            // Converting tdAccountInfoList to List<TdAccountInfo>
            List<TdAccountInfo> tdAccountList = mapper.convertValue(tdListNode, new TypeReference<List<TdAccountInfo>>() {
            });
              
           // Filter and sorting the list by accountNumber in descending order
            List<TdAccountInfo> filteredSortedList = tdAccountList.stream()
                      .filter(td -> "FDSC".equals(td.schemeCategory) && "U".equals(td.renewalFlg))
                      .sorted(Comparator.comparing((TdAccountInfo td) -> td.accountNumber).reversed())
                      .collect(Collectors.toList());

              // Replacing the tdAccountInfo List with the filtered values
              ((ObjectNode) rootNode).replace("tdAccountInfoList", mapper.valueToTree(filteredSortedList));

              // Storing to a new JSON file
              mapper.writerWithDefaultPrettyPrinter().writeValue(new File(outputFilePath), rootNode);
              System.out.println("tdAccountInfoList with renew flag as U is stored in " + outputFilePath);
			
		} catch (Exception e) {
			System.out.println("Exception in EligibleTdsNewFile method: "+e);
		}
       
    }
    
 // method is added by Vijay for LAD
 	@Then("user triggers a post request to get customer accounts (.*)$")
 	public void triggerPostRequestwithoutEncryption(String requestBody) throws IOException {
 		ObjectMapper objectMapper = new ObjectMapper();
 		String fileName = fileHandlerToResponseFolder.extractFilename(requestBody);
 		String environment = AppConfig.getRestUrl(TestBase._setEnvPath);
 		if (StringUtils.containsIgnoreCase(environment, "uat")) {
 			String xapikey = "";
 			String encryptdecryptKey = AppConfig.xapikey();

 			xapikey = AppConfig.rsaToken();

 			try {
 				// Append other paths to the base directory
 				Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
 				String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
 				LOGGER.info("Request Body before encryption: " + jsonString);
 				// String bearerToken=BearerToken;
 				LOGGER.info("Request Body: " + requestBody);
 				// Encrypt the request body
 				String encryptedRequestBodywithoutdata = EncryptionUtil.encrypt(jsonString, encryptdecryptKey);
 				String encryptedRequestBody = "{\"data\":\"" + encryptedRequestBodywithoutdata + "\"}";
 				LOGGER.info("Encrypted Request Body: " + encryptedRequestBody);
 				// Log the encrypted request in Serenity report
 				Serenity.recordReportData().withTitle("Decrypted Request Body").andContents(jsonString);
 				Response response = SerenityRest.given().header("Content-Type", "application/json")
 						.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
 						.header("x-api-key", xapikey).header("Authorization", "Bearer " + BearerToken) // Add any other headers as needed
 						.body(encryptedRequestBody).post(RestAssured.baseURI);
 				String responseBody = response.then().extract().body().asString();
 				Serenity.setSessionVariable("response").to(response);
 				LOGGER.info("Response Body triggerPostRequestCommonRest: " + responseBody);
 				objectMapper = new ObjectMapper();
 				// Parse JSON string to JsonNode
 				JsonNode rootNode = objectMapper.readTree(responseBody);
 				// Extract the value of the "data" field
 				String dataValue = rootNode.path("data").asText();
 				// Print the extracted value
 				LOGGER.info("Modified response: " + dataValue);
 				// Decrypt the response body
 				String decryptedResponseBody;
 				decryptedResponseBody = EncryptionUtil.decrypt(dataValue, encryptdecryptKey);
 				LOGGER.info("Decrypted Response Body: " + decryptedResponseBody);
 				Serenity.setSessionVariable("decryptedResponseBody").to(decryptedResponseBody);
 				// Log the decrypted response in Serenity report
 				Serenity.recordReportData().withTitle("Decrypted Response").andContents(decryptedResponseBody);
 				// Parse the decrypted response body string into a JsonNode
 				JsonNode jsonNode = objectMapper.readTree(decryptedResponseBody);
 				// Save the response body to a file using FileHandler
 				fileHandlerToResponseFolder.writeJsonToFile(fileName, jsonNode);
 			} catch (IOException e) {
 				System.err.println("IOException occurred: " + e.getMessage());
 				e.printStackTrace();
 			} catch (Exception e) {
 				System.err.println("Error during encryption/decryption or API request: " + e.getMessage());
 				e.printStackTrace();
 			}
 		} else {
 			// Append other paths to the base directory
 			objectMapper = new ObjectMapper();
 			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
 			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
 			LOGGER.info("Request Body before encryption: " + jsonString);
 			// String bearerToken=BearerToken;
 			LOGGER.info("Request Body: " + requestBody);
 			// Encrypt the request body
 			// String encryptedRequestBodywithoutdata = EncryptionUtil.encrypt(jsonString,
 			// xapikey);
 			// String encryptedRequestBody =
 			// "{\"data\":\""+encryptedRequestBodywithoutdata+"\"}";
 			// LOGGER.info("Encrypted Request Body: " + encryptedRequestBody);
 			// Log the encrypted request in Serenity report
 			Serenity.recordReportData().withTitle("Request Body").andContents(jsonString);
 			// String
 			// xapikeyRequestHeader="RvkjaDkgJoxNzngOddAwd5XEWpYkDKDxz6X/3mgIon0ataS2uIFsWHK9GZSRfWTfGil28jkCe/xvV0PBV7JMrATCpzFMYNdRbcc2Iz7nquh7aTj72i+qoetiBIN0OZSfOcdnvWqKYnop/IWPHtRR2ryXUgOgEHZ8dC0gQQWRV0s=";
 			Response response = SerenityRest.given().header("Content-Type", "application/json")
 					.header("dbp-id", stringdbpID).header("dbp-secret", stringdbpSecret)
 					// .header("x-api-key", xapikeyRequestHeader)
 					.header("Authorization", "Bearer " + BearerToken) // Add any other headers as needed
 					.body(jsonString).post(RestAssured.baseURI);
 			String responseBody = response.then().extract().body().asString();
 			Serenity.setSessionVariable("response").to(response);
 			LOGGER.info("Response Body triggerPostRequestCommonRest: " + responseBody);
 			objectMapper = new ObjectMapper();
 			// Parse JSON string to JsonNode
 			// JsonNode rootNode = objectMapper.readTree(responseBody);
 			// Extract the value of the "data" field
 			// String dataValue = rootNode.path("data").asText();
 			// Print the extracted value
 			// LOGGER.info("Modified response: " + dataValue);
 			// Decrypt the response body
 			// String decryptedResponseBody;
 			// decryptedResponseBody = EncryptionUtil.decrypt(dataValue, xapikey);
 			// LOGGER.info("Decrypted Response Body: " + decryptedResponseBody);
 			Serenity.setSessionVariable("ResponseBody").to(responseBody);
 			// Log the decrypted response in Serenity report
 			Serenity.recordReportData().withTitle("ResponseBody").andContents(responseBody);
 			// Parse the decrypted response body string into a JsonNode
 			JsonNode jsonNode = objectMapper.readTree(responseBody);
 			// Save the response body to a file using FileHandler
 			fileHandlerToResponseFolder.writeJsonToFile(fileName, jsonNode);
 		}
 	}
 	
 	
 // method is added by Vijay for account info API in LAD
  	@Then("user triggers a post request to get customer accounts (.*)$")
  	public void triggerPostRequesAccountAPI(String requestBody) throws IOException {
  		ObjectMapper objectMapper = new ObjectMapper();
  		String fileName = fileHandlerToResponseFolder.extractFilename(requestBody);
  		String environment = AppConfig.getRestUrl(TestBase._setEnvPath);
  		if (StringUtils.containsIgnoreCase(environment, "uat")) {
  			String xapikey = "";
  			String encryptdecryptKey = AppConfig.xapikey();

  			xapikey = AppConfig.rsaToken();

  			try {
  				// Append other paths to the base directory
  				Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
  				String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
  				LOGGER.info("Request Body before encryption: " + jsonString);
  				// String bearerToken=BearerToken;
  				LOGGER.info("Request Body: " + requestBody);
  				// Encrypt the request body
  				String encryptedRequestBodywithoutdata = EncryptionUtil.encrypt(jsonString, encryptdecryptKey);
  				String encryptedRequestBody = "{\"data\":\"" + encryptedRequestBodywithoutdata + "\"}";
  				LOGGER.info("Encrypted Request Body: " + encryptedRequestBody);
  				// Log the encrypted request in Serenity report
  				Serenity.recordReportData().withTitle("Decrypted Request Body").andContents(jsonString);
  				Response response = SerenityRest.given().header("Content-Type", "application/json")
  						.header("dbp-id", "018d83a55a507e6a978008b03ca1485d").header("dbp-secret", "018d84783a537d2d9a85d9342ca769d7")
  						.header("x-api-key", xapikey).header("Authorization", "Bearer " + BearerToken) // Add any other headers as needed
  						.body(encryptedRequestBody).post(RestAssured.baseURI);
  				String responseBody = response.then().extract().body().asString();
  				Serenity.setSessionVariable("response").to(response);
  				LOGGER.info("Response Body triggerPostRequestCommonRest: " + responseBody);
  				objectMapper = new ObjectMapper();
  				// Parse JSON string to JsonNode
  				JsonNode rootNode = objectMapper.readTree(responseBody);
  				// Extract the value of the "data" field
  				String dataValue = rootNode.path("data").asText();
  				// Print the extracted value
  				LOGGER.info("Modified response: " + dataValue);
  				// Decrypt the response body
  				String decryptedResponseBody;
  				decryptedResponseBody = EncryptionUtil.decrypt(dataValue, encryptdecryptKey);
  				LOGGER.info("Decrypted Response Body: " + decryptedResponseBody);
  				Serenity.setSessionVariable("decryptedResponseBody").to(decryptedResponseBody);
  				// Log the decrypted response in Serenity report
  				Serenity.recordReportData().withTitle("Decrypted Response").andContents(decryptedResponseBody);
  				// Parse the decrypted response body string into a JsonNode
  				JsonNode jsonNode = objectMapper.readTree(decryptedResponseBody);
  				// Save the response body to a file using FileHandler
  				fileHandlerToResponseFolder.writeJsonToFile(fileName, jsonNode);
  			} catch (IOException e) {
  				System.err.println("IOException occurred: " + e.getMessage());
  				e.printStackTrace();
  			} catch (Exception e) {
  				System.err.println("Error during encryption/decryption or API request: " + e.getMessage());
  				e.printStackTrace();
  			}
  		} else {
  			// Append other paths to the base directory
  			objectMapper = new ObjectMapper();
  			Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
  			String jsonString = objectMapper.readTree(new File(configFilePath.toString())).toString();
  			LOGGER.info("Request Body before encryption: " + jsonString);
  			// String bearerToken=BearerToken;
  			LOGGER.info("Request Body: " + requestBody);
  			// Encrypt the request body
  			// String encryptedRequestBodywithoutdata = EncryptionUtil.encrypt(jsonString,
  			// xapikey);
  			// String encryptedRequestBody =
  			// "{\"data\":\""+encryptedRequestBodywithoutdata+"\"}";
  			// LOGGER.info("Encrypted Request Body: " + encryptedRequestBody);
  			// Log the encrypted request in Serenity report
  			Serenity.recordReportData().withTitle("Request Body").andContents(jsonString);
  			// String
  			// xapikeyRequestHeader="RvkjaDkgJoxNzngOddAwd5XEWpYkDKDxz6X/3mgIon0ataS2uIFsWHK9GZSRfWTfGil28jkCe/xvV0PBV7JMrATCpzFMYNdRbcc2Iz7nquh7aTj72i+qoetiBIN0OZSfOcdnvWqKYnop/IWPHtRR2ryXUgOgEHZ8dC0gQQWRV0s=";
  			Response response = SerenityRest.given().header("Content-Type", "application/json")
  					.header("dbp-id", "018d83a55a507e6a978008b03ca1485d").header("dbp-secret", "018d84783a537d2d9a85d9342ca769d7")
  					// .header("x-api-key", xapikeyRequestHeader)
  					.header("Authorization", "Bearer " + BearerToken) // Add any other headers as needed
  					.body(jsonString).post(RestAssured.baseURI);
  			String responseBody = response.then().extract().body().asString();
  			Serenity.setSessionVariable("response").to(response);
  			LOGGER.info("Response Body triggerPostRequestCommonRest: " + responseBody);
  			objectMapper = new ObjectMapper();
  			// Parse JSON string to JsonNode
  			// JsonNode rootNode = objectMapper.readTree(responseBody);
  			// Extract the value of the "data" field
  			// String dataValue = rootNode.path("data").asText();
  			// Print the extracted value
  			// LOGGER.info("Modified response: " + dataValue);
  			// Decrypt the response body
  			// String decryptedResponseBody;
  			// decryptedResponseBody = EncryptionUtil.decrypt(dataValue, xapikey);
  			// LOGGER.info("Decrypted Response Body: " + decryptedResponseBody);
  			Serenity.setSessionVariable("ResponseBody").to(responseBody);
  			// Log the decrypted response in Serenity report
  			Serenity.recordReportData().withTitle("ResponseBody").andContents(responseBody);
  			// Parse the decrypted response body string into a JsonNode
  			JsonNode jsonNode = objectMapper.readTree(responseBody);
  			// Save the response body to a file using FileHandler
  			fileHandlerToResponseFolder.writeJsonToFile(fileName, jsonNode);
  		}
  	}
 	
 	@When("^user updates the json request body (.*) with tags (.*) and cif (.*) for generating transactionID$")
 	public void generateTxnID(String requestBody,String tag,String cif) throws Exception
 	{
 	   // Generate current timestamp in required format
 	   String timestamp = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.nnnnnnnnn'Z'")
 	           .withZone(ZoneOffset.UTC)
 	           .format(Instant.now());
 	   // Build full path to input file
 	   Path configFilePath = Paths.get(TestBase._baseDir, requestBody);
 	   // Load JSON file
 	   ObjectMapper mapper = new ObjectMapper();
 	   JsonNode rootNode = mapper.readTree(configFilePath.toFile());
 	   // Create updated transactionId
 	   String updatedTransactionId = cif + "|" + timestamp;
 	   // Update the tag in JSON
 	    if (rootNode instanceof ObjectNode) {
 	       ((ObjectNode) rootNode).put(tag, updatedTransactionId);
 	   }
 	   // Convert to pretty JSON string
 	   String updatedJson = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(rootNode);
 	   System.out.println("Updated JSON:\n" + updatedJson);
 	   // Define output file path (same as input or custom, as needed)
 	   Path outputFilePath = configFilePath; // You can modify this if you want to write to a new file
 	   // Write updated JSON back to file
 	   mapper.writerWithDefaultPrettyPrinter().writeValue(outputFilePath.toFile(), rootNode);
 	   System.out.println("Updated request body saved to file: " + outputFilePath);
 	}
 
 // method is added by Vijay for account info API in LAD
 	@Then("^sort (.*) file based on (.*) and (.*)$")
 	public void sortEligibleTds(String resfilePath, String Category, String Flag) throws Exception {
        
        String filePath = resfilePath;
        String sCategory = Category;
        String rFlag = Flag;

        ObjectMapper mapper = new ObjectMapper();

     // Reading JSON file      
        Map<String, Object> jsonData = mapper.readValue(new File(filePath), new TypeReference<>() {});
        
     // Extract the tdAccountInfoList
        List<Map<String, Object>> tdAccountInfoList = (List<Map<String, Object>>) jsonData.get("tdAccountInfoList");


     // Sort using schemecategory and renew Flag
        tdAccountInfoList.sort(Comparator.comparing(entry -> {
            boolean isTarget = "FDSC".equals(entry.get("schemeCategory")) && "N".equals(entry.get("renewalFlg"));
            return !isTarget; // false (comes first) if target
        }));
  
     // Adding the sorted list
        jsonData.put("tdAccountInfoList", tdAccountInfoList);

    // Print sorted list
        for (Map<String, Object> entry : tdAccountInfoList) {
            System.out.println(entry.get("accountNumber") + " - " + entry.get("renewalFlg"));
        }
     
      // Overwrite the JSON to a new file
        mapper.writeValue(new File(filePath), jsonData);
    }

// method is added by Vijay for account info API in LAD
 	@Then("^user identifies (.*) account from accountInfo API$")
 	// below method written to fetch LAD account from account info and store it to a new file.
 	public void LoanAgainstDepostAccountList(String accType) throws StreamWriteException, DatabindException, IOException {
 	
 		// input array file and output array file
        String inputFilePath = "src/test/resources/responseFolder/LAD_accountinfo.json";
        String outputFilePath = "src/test/resources/responseFolder/LAD_accountinfo_output.json";
        String accountType = accType;

        ObjectMapper mapper = new ObjectMapper();

        // Reading input file
        JsonNode root = mapper.readTree(new File(inputFilePath));
        ArrayNode accounts = (ArrayNode) root.path("accounts");

        List<ObjectNode> ladAccounts = new ArrayList<>();
        
        // Sort by accountOpenDate
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        
        for (JsonNode account : accounts) {
            String acctType = account.path("acctType").asText();
            String acctNum = account.path("acctNum").asText();
            
         // Filter for Loan Against Deposit accounts only
            if (!"Loan Against Deposit".equals(acctType)) continue;
            
            String openDateStr = account.path("accountOpenDate").asText();
            if (openDateStr == null || openDateStr.isEmpty()) continue;
            
         // Extract amount from acctBals with balTypeCode
            String amount = null;
            for (JsonNode bal : account.path("acctBals")) {
                if ("SUMMATION".equals(bal.path("balTypeCode").asText())) {
                    amount = bal.path("amount").asText();
                    break;
                }
            }
            if (amount == null) continue;
            
         // Build simplified node
            ObjectNode simplified = mapper.createObjectNode();
            simplified.put("acctNum", acctNum);
            simplified.put("amount", amount);
            simplified.put("acctType", acctType);
            simplified.put("accountOpenDate", openDateStr);

            ladAccounts.add(simplified);
        }


        ladAccounts.sort((a1, a2) -> {
            String dateStr1 = a1.path("accountOpenDate").asText("");
            String dateStr2 = a2.path("accountOpenDate").asText("");
            if (dateStr1.isEmpty() || dateStr2.isEmpty()) return 0;

            LocalDateTime date1 = LocalDateTime.parse(dateStr1, formatter);
            LocalDateTime date2 = LocalDateTime.parse(dateStr2, formatter);
            return date2.compareTo(date1);
        });
        
     // Remove accountOpenDate and add to output array
        ArrayNode resultArray = mapper.createArrayNode();
        for (ObjectNode node : ladAccounts) {
//            node.remove("accountOpenDate");
            resultArray.add(node);
        }

        // Wrap into a new root object with accounts array
        ObjectNode newRoot = mapper.createObjectNode();
        newRoot.set("accounts", resultArray);

        // Write to file
        mapper.writerWithDefaultPrettyPrinter().writeValue(new File(outputFilePath), newRoot);

        System.out.println("Filtered and sorted JSON written to " + outputFilePath);
    }

}