package com.ubi.cucumber.steps.api.mvp;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.ubi.testbase.AppConfig;
import com.ubi.testbase.CommonRestUtils;
import com.ubi.testbase.JSONComparator;
import com.ubi.testbase.JsonFileUpdater;
import com.ubi.testbase.TestBase;
import com.ubi.testbase.VerificationAPI;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.RestAssured;
import net.serenitybdd.annotations.Steps;

public class CommonSteps {
	public static String setEnvPath = "";
	public static String currentFolderName = "";

	@Steps
	CommonRestUtils steps;
	VerificationAPI stepsVerify;
	JSONComparator jsonComparator;

	@Given("^user set the basepath to (.*)$")
	public void setbaseurl(String service) {

		String env = AppConfig.getRestUrl(TestBase._setEnvPath);

		switch (service) {

		// Common Service
		case "customer":
			RestAssured.baseURI = env + "app/customer/api/v1";
			break;

		case "registrationMSME":

			RestAssured.baseURI = env + "app/login-registration/api/v1/";
			break;

		// Credit Card Service MSME
		case "credit-cardMSME":
			RestAssured.baseURI = env + "msme/v1/credit-card/manage-card/";
			break;

		// Lending Service
		case "Lending":
			RestAssured.baseURI = "https://row.unionbankofindia.co.in/sit/dlp/web/mpgw/api-v3/admin";
			break;

		// Login Service
		case "registration":
			RestAssured.baseURI = env + "mga/sps/apiauthsvc/policy";
			break;
			
		// LAD Service
		case "lad":
			RestAssured.baseURI = env + "lad/v1";
			break;
			
		case "prelogin":
			RestAssured.baseURI = env + "app/prelogin/api/v1";
			break;

		// FD RD Service
		case "deposits":
			RestAssured.baseURI = env + "app/deposits/api/v1";
			break;
		case "config":
			RestAssured.baseURI = env + "mpgw/config/fetchBusinessRules";
			break;

		// Assisted Portal Services as below
		case "webform":
			env = AppConfig.getRestAssistedUrl("assignment");
			RestAssured.baseURI = env + "web/form-assignment/v1";
			break;
		case "weblogin":
			env = AppConfig.getRestAssistedUrl("assignment");
			RestAssured.baseURI = env + "web/login-details/v1";
			break;
		case "consent":
			env = AppConfig.getRestAssistedUrl("consent");
			RestAssured.baseURI = env + "web/form-consent/v1";
			break;
		case "dashboard":
			env = AppConfig.getRestAssistedUrl("dashboard");
			RestAssured.baseURI = env + "dashboard";
			break;

		// Debit Card Services as below
		case "debitCard":

			RestAssured.baseURI = env + "v1/debit-card/";
			break;

		// Cheque service Services as below
		case "chequeservice":

			RestAssured.baseURI = env.trim() + "v1/cheque";
			break;
			
		case "positivepay":

			RestAssured.baseURI = env.trim() + "v1/positivepay";
			break;

		// APY Services as below
		case "apy":

			RestAssured.baseURI = "https://rmb.unionbankofindia.co.in/mpgw/app/invst/apy/api/v1/";
			break;

		// UPI Services as below
		case "UPI":

			RestAssured.baseURI = env + "app/upi/api/v1";
			break;

		// PPF Services as below
		case "invst":
			RestAssured.baseURI = env + "app/invst/ppf/api/v1";
			break;

		case "businessServicesMSME":

			RestAssured.baseURI = env + "msme/v1/businessServices/";
			break;

		case "loanserviceMSME":

			RestAssured.baseURI = env + "msme/v1/loanservice/";
			break;

		case "customerMSME":
			RestAssured.baseURI = env + "msme/app/customer/api/v1/";
			break;

		// SSA Services as below
		case "ssa":

			RestAssured.baseURI = env + "app/invst/ssa/api/v1";
			break;

		case "refmaster":
			RestAssured.baseURI = env + "refdata";
			break;
		case "masterdata":
			RestAssured.baseURI = env + "master";
			break;

		// Fund Transfer Services as below
		case "fundtransfer":

			RestAssured.baseURI = env + "v1/fund-transfer/manage-payee";
			break;
		case "standinginstruction":

			RestAssured.baseURI = env + "v1/fund-transfer";
			break;
		case "impsnameenquiry":

			RestAssured.baseURI = env + "v1/fund-transfer/imps/name-enquiry";
			break;
		case "impstransfer":

			RestAssured.baseURI = env + "v1/fund-transfer/imps/initiate";
			break;
		case "limit":

			RestAssured.baseURI = env + "v1/fund-transfer";
			break;

		// mPOS Services as below
		case "pos":

			RestAssured.baseURI = env + "pos/bff/merchantDetails/";
			break;
		case "payment":

			RestAssured.baseURI = env + "v1/fund-transfer/initiate";
			break;

		// PaymentsLink
		case "payment-linksMSME":

			RestAssured.baseURI = env + "payment-links/api/v1/";
			break;

		case "smartsearch":
			RestAssured.baseURI = env + "v1/fund-transfer/branch-details";
			break;

		// General Service Services as below
		case "generalservice":

			RestAssured.baseURI = env + "v1/generalservice/";
			break;

		// Business Service Services as below
		case "businessServices":

			RestAssured.baseURI = env + "v1/businessServices/";
			break;

		// ASBA Services as below
		case "asbaservice":

			RestAssured.baseURI = env + "asbaservice/";
			break;

		// Credit Card Services as below
		case "creditcard":

			RestAssured.baseURI = env + "v1/credit-card/manage-card/";
			break;

		// BBPS Services as below
		case "bbps":

			RestAssured.baseURI = env + "bbps-bff-mobile/api/v1";
			break;

		// Govt Scheme Services as below
		case "govt_scheme_mobile":

			RestAssured.baseURI = env + "govt-schemes/api/v1";
			break;

		case "govt_scheme_assisted":

			RestAssured.baseURI = env + "/ast/mpgw/govt-schemes/api/v1";
			break;

		// NCMC Services as below
		case "ncmc":

			RestAssured.baseURI = env + "v1/debit-card/";
			break;

		// NPS Services as below
		case "nps":

			RestAssured.baseURI = env + "app/invst/nps/api/v1/";
			break;

		// Current Account Enquiry MSME
		case "generalserviceMSME":

			RestAssured.baseURI = env + "msme/v1/generalservice/";
			break;

		// Access Rights Management (ARM) as below
		case "arm":

			RestAssured.baseURI = env + "app/arm/api/v1/users/";
			break;

		case "upiMSME":

			RestAssured.baseURI = env + "msme/app/upi/api/v1/";
			break;

		case "bs-bff-mobile-service":

			RestAssured.baseURI = env + "bs-bff-mobile-service/api/v1/";
			break;

		case "bff-service":

			RestAssured.baseURI = env + "app/bff-service/api/v1/wfo/workflow";
			break;
		
		// AccountInfo API for LAD
		case "chequeserviceOne":
			RestAssured.baseURI = "https://rmb.unionbankofindia.co.in/mpgw/v1/cheque";
			break;

		default:
			System.out.println("Service not recognized: " + service);
			break;
		}
		System.out.println("Rest base URI is " + RestAssured.baseURI);

	}

	// Below common method is use for displaying URL's
	@Then("^display url$")
	public void displayEndPoint() {
		System.out.println("Rest base url " + RestAssured.baseURI);

	}

	// Below common method of Endpoint for Every feature
	@Then("^set the endpoint (.*)$")
	public void setEndpoint(String endpoint) {
		RestAssured.baseURI = (RestAssured.baseURI + endpoint).replaceAll("		", "");
		System.out.println(RestAssured.baseURI);
	}

	// Below common method is setting environment as SIT OR UAT
	@Given("^user sets the environment of endpoint")
	public void setEnvironment() {
		// System.out.println(RestAssured.baseURI);
		setEnvPath = AppConfig.getEnvironment();
		RestAssured.baseURI = AppConfig.getRestUrl(setEnvPath);
	}

	// Below method Get request with parameter
	@Then("^user triggers a get request with parameter (.*)$")
	public void triggergetRequest(String cif) {
		steps.triggerGetRequestCommonRest(cif);

	}

	// Code for without Encryption and description
	// Verifying Status for all responses as below
	@Then("^user verifies that status is (.*)$")
	public void verifyResponseStatus(int statusCode) {

		VerificationAPI.verifyStatus(statusCode);
	}

	// Common POST method for all features Please use this
	@Then("^user triggers a post request with (.*)$")
	public void triggerPostRequest(String requestBody) {

		try {

			System.out.print("Request Body: " + requestBody);

			steps.triggerPostRequestCommonRest(requestBody);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// Common Method written by Sachin where we are taking get response from post
	// request with json logic
	@Then("^user get the response (.*) from post request (.*)$")
	public void getResponsefromTriggerPostRequest(String responseBody, String requestBody) throws IOException {
		System.out.print("Print RequestBody");
		JsonFileUpdater.getResponsefromTriggerPost(responseBody, requestBody);
		// jsonComparator.compareJsonOutput(responseBody);
	}

	// Below common method is setting up bearer token
	@Given("^user sets the bearer token (.*)$")
	public void setGlobalParameter(String bearertokenPath) throws Exception {
		System.out.println("Test Bearer SIT");
		RestAssured.baseURI = TestBase._loginURL;
		steps.settingBearerToken(bearertokenPath);
	}

	// Common POST method with local bearer token
	@Then("^user triggers post request with local bearerToken(.*)$")
	public void postRequestWithLocalBearerToken(String requestBody) throws Exception {
		steps.triggerPostRequestCommonRestLocalBearerToken(requestBody);
	}

	// Sumit and Tanvi Taken Approval from Sneha
	// Below Common steps are added for Login registration
	@Given("user enters OTP on console")
	public void enterOTPconsole() throws Exception {
		RestAssured.baseURI = TestBase._loginURL;
		steps.enterOTP();
	}

	// Sumit and Tanvi Taken Approval from Sneha
	@Then("^user triggers OTP with a post request (.*)$")
	public void triggerPostRequestwithOTP(String requestBody) {
		System.out.print(requestBody);
		steps.triggerPostRequestwithOTP(requestBody);
		// jsonComparator.compareJsonOutput(responseBody);
	}

	// Below new common method written for UPI and SSA as post request without body
	@Then("user triggers a post request without body")
	public void triggerpostRequests() throws IOException {
		steps.triggerPostRequestWithoutBody();

	}

	// Common method for get request only
	@Then("user triggers a get request")
	public void triggergetRequests() {
		steps.triggerGetRequestCommonRests();

	}

	// Below Method is common method to get the 405 response and method not allowed
	@Then("^user triggers a get request with (.+)$")
	public void triggermethodnotallowRequest(String requestBody) {
		// System.out.print(requestBody);
		steps.triggermethodnotallowRequestCommonRest(requestBody);
		// jsonComparator.compareJsonOutput(responseBody);
	}

	@Then("^User sorts key (.*) in the root node (.*) arraynode (.*) from json file (.*)$")
	public void sortKeyValueFromJson(String key, String rootnode, String arrayNode, String filePath)
			throws IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		File jsonFile = new File(filePath);

		// Read JSON file
		JsonNode rootNode = objectMapper.readTree(jsonFile);
		ArrayNode wfTasks = (ArrayNode) rootNode.get(arrayNode);

		if (wfTasks != null) {
			for (JsonNode wfTask : wfTasks) {
				ArrayNode tasks = (ArrayNode) wfTask.get(key);

				if (tasks != null) {
					// Convert to List, Sort, and Convert back to ArrayNode
					List<JsonNode> sortedTasks = StreamSupport.stream(tasks.spliterator(), false)
							.sorted(Comparator.comparing(task -> task.get(key).asText())).collect(Collectors.toList());

					// Replace old tasks array with sorted one
					((ObjectNode) wfTask).set(key, objectMapper.valueToTree(sortedTasks));
				}
			}
		}

		// Write sorted JSON back to the same file
		try (FileWriter writer = new FileWriter(filePath)) {
			objectMapper.writerWithDefaultPrettyPrinter().writeValue(writer, rootNode);
			System.out.println("###################" + rootNode.toPrettyString());
		}
	}

	@Then("^Update the request body (.*) with attributes and values from response file (.*)$")
	public void updateRequestJsonFile(String requestBodyPath, String responseFieldPath) throws IOException {

		Path configFilePath = Paths.get(TestBase._baseDir, responseFieldPath);
		String expectedContent = Files.readString(configFilePath);

		// Initialize ObjectMapper
		ObjectMapper objectMapper = new ObjectMapper();
		// Parse JSON response
		JsonNode rootNode = objectMapper.readTree(expectedContent);
		// Get appliedIpoEntityList
		JsonNode appliedIpoEntityList = rootNode.get("appliedIpoEntityList");
		if (appliedIpoEntityList.isArray()) {
			int position = 0;
			boolean found = false;
			for (Iterator<JsonNode> it = appliedIpoEntityList.elements(); it.hasNext(); position++) {
				JsonNode entity = it.next();
				// Check if "actionFlag" is "ADD"
				if ("ADD".equals(entity.get("actionFlag").asText())) {
					// Get corresponding "applicationNumber"
					String applicationNumber = entity.get("applicationNumber").asText();
					String referenceId = entity.get("referenceId").asText();
					// Get "bidId" from bidDetail array
					JsonNode bidDetail = entity.get("bidDetail");
					String bidId = bidDetail.isArray() && bidDetail.size() > 0 ? bidDetail.get(0).get("bidId").asText()
							: "N/A";
					// Print results
					System.out.println("Position of 'actionFlag' with value 'ADD': " + position);
					System.out.println("Corresponding 'applicationNumber': " + applicationNumber);
					System.out.println("Corresponding 'bidId': " + bidId);
					System.out.println("Corresponding 'bidId': " + referenceId);
					JsonFileUpdater.updateJsonFileWithValue(requestBodyPath, applicationNumber, bidId, referenceId);
					found = true;
					break;

				}
			}
			if (!found) {
				System.out.println("'actionFlag' with value 'ADD' not found in the response.");
			}
		} else {
			System.out.println("Invalid or missing 'appliedIpoEntityList' in the response.");
		}

	}

	// Below Common method for setting the fileHanlder path in commonRestUtil
	@Given("user sets the file path for this feature file for (.*)$")
	public void settingFileHandler(String path) throws Exception {
		CommonRestUtils.RequestBodyFolderName = path;
		String newBearerToken = "";
		// CommonRestUtils.BearerToken = EncryptionUtil.settingBearerToken(path);
		// Check if the Bearer token has been generated for this feature file
		if (!(path.equalsIgnoreCase(currentFolderName))) {
			// Generate a new Bearer token
			currentFolderName = path;
			newBearerToken = CommonRestUtils.settingBearerTokenByPath(path);
			CommonRestUtils.setBearerToken(newBearerToken);
			CommonRestUtils.BearerToken = newBearerToken; // Set it in CommonRestUtils
			System.out.println(
					"Generated and set a new Bearer token for this feature file." + CommonRestUtils.BearerToken);
		} else {
			// Use the already generated token
			// CommonRestUtils.BearerToken = EncryptionUtil.settingBearerToken(path);
			newBearerToken = CommonRestUtils.BearerToken;
			System.out.println("Using existing Bearer token for this feature file." + newBearerToken);
		}
	}

	// API chaining approval taken by Sumit
	@Given("^User update the JSON file (.*) with random values for the key (.*) using regex (.*)$")
	public void updateJsonFileWithRandomValue(String JSON_FILE_PATH, String key, String regex) throws IOException {

		// Call the utility method to update the JSON file with the random value
		// Convert the comma-separated fields string to a list
		List<String> keyList = key.isEmpty() ? new ArrayList<>() : Arrays.asList(key.split(","));
		List<String> regexList = regex.isEmpty() ? new ArrayList<>() : Arrays.asList(regex.split(","));
		JsonFileUpdater.updateJsonFileWithRandomValue(JSON_FILE_PATH, keyList, regexList);
	}

	// API chaining approval taken by Sumit
	@Then("^user copy file from (.*) and paste to file at location (.*)$")
	public void updateJsonResponseFileWithResponse(String sourceFilePath, String destinationFilePath)
			throws IOException {

		// final String JSON_FILE_PATH =
		// "src\\test\\resources\\testdata\\api\\request\\Drop2\\GeneralService\\Customer_getCustomerAccounts.json";
		// Call the utility method to update the JSON file with the random value
		// Convert the comma-separated fields string to a list

		JsonFileUpdater.updateJsonResponseFile(sourceFilePath, destinationFilePath);
	}

	// Approval taken by Sumit
	// Below new method code is for API chaining
	@Then("user updates the requestField (.+) of request body from (.+) with responsefield (.+) from filename (.+)$")
	public void updateRequestBody(String requestField, String requestBody, String responsefield, String filename) {

		System.out.println("Request body file path: " + requestBody);
		System.out.println("Fields to update - requestField: " + requestField);
		System.out.println("Fields to update from - responsefield  " + responsefield);
		System.out.println("Filename from where we need to take fields: " + filename);

		// Check if filename is null or empty and handle it accordingly
		if (filename == null || filename.equalsIgnoreCase("null") || filename.isEmpty()) {
			System.out.println("Filename is null or empty, skipping update.");
			return;
		}

		// Convert the comma-separated fields string to a list
		List<String> requestFieldList = requestField.isEmpty() ? new ArrayList<>()
				: Arrays.asList(requestField.split(","));
		List<String> responsefieldList = responsefield.isEmpty() ? new ArrayList<>()
				: Arrays.asList(responsefield.split(","));
		try {
			// Call the common method with the parsed fields list
			steps.updateRequestBodyCommonRests(requestFieldList, requestBody, responsefieldList, filename);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

//Taken Approval
// Below Methods use in BBPS
	@Then("^the endpoint (.*) with parameter (.*)$")
	public void theEndpointWithCif(String endpoint, String cif) {
		RestAssured.baseURI = RestAssured.baseURI + endpoint + "/" + cif;
		System.out.println("RestAssured.baseURI :" + RestAssured.baseURI);
	}

	@Then("^Update request with filepath (.*) with attribute (.*) and value (.*)$")
	public void triggerAPostRequestWithRequestBodyWithUpdatedAttributeValue(String requestBody, String attribute,
			String value) {
		// Write code here that turns the phrase above into concrete actions
		CommonRestUtils.UpdatedJsonrequest(requestBody, attribute, value);
		// throw new io.cucumber.java.PendingException();
	}

	@Then("user trigger a post request with (.*) and exclude header parameter (.*)$")
	public void userTriggerAPostRequestWithRequestBodyAndExcludeHeaderParameterMissingHeader(String requestBody,
			String missingHeader) {
		// Write code here that turns the phrase above into concrete actions
		CommonRestUtils.triggerPostRequestWithHeaderFlag(requestBody, missingHeader);
		// throw new io.cucumber.java.PendingException();
	}

	@Then("trigger a post request with (.*) and remove attribute (.*)$")
	public void triggerAPostRequestWithRequestBodyAndRemoveAttributeAttribute(String requestBody, String attribute) {
		// Write code here that turns the phrase above into concrete actions
		CommonRestUtils.triggerPostRequestwithAttributeRemovedJsonrequest(requestBody, attribute);
	}

	// Approved method is added by Sachin for GeneralService

	@Then("^user triggers a post request to get customer accounts (.*)$")
	public void triggerPostRequesttogetCustomerAccount(String requestBody) {
		try {
			System.out.print("Request Body: " + requestBody);
			steps.triggerPostRequesttogetCustomerAccount(requestBody);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// ==============Assisted Portal New Code By Shivam ==========================
	// //
	@Then("^user triggers a generic post request with parameters:$")
	public void triggerGenericPostRequest(DataTable dataTable) {
		// Convert the DataTable to a Map
		Map<String, String> parameters = dataTable.asMap(String.class, String.class);

		// Debug: print out the parameters received
		System.out.println("Triggering a generic POST request with parameters: " + parameters);

		// Call the handler with the parameters map
		triggerGenericPostRequestHandler(parameters);
	}

	public void triggerGenericPostRequestHandler(Map<String, String> parameters) {
		// Extracting parameters dynamically
		String requestId = parameters.containsKey("requestId") ? (String) parameters.get("requestId") : null;
		String consentStatus = parameters.containsKey("consentStatus") ? (String) parameters.get("consentStatus")
				: null;
		// Convert String to Double if they are not null
		Double amountFrom = parameters.containsKey("amountFrom") ? Double.parseDouble(parameters.get("amountFrom"))
				: null;
		Double amountTo = parameters.containsKey("amountTo") ? Double.parseDouble(parameters.get("amountTo")) : null;
		String solid = parameters.containsKey("solid") ? (String) parameters.get("solid") : null;
		String requestBody = parameters.containsKey("requestBody") ? (String) parameters.get("requestBody") : null;
		String requestType = parameters.containsKey("requestType") ? (String) parameters.get("requestType") : null;
		String solidOrMobileNum = parameters.containsKey("solidOrMobileNum")
				? (String) parameters.get("solidOrMobileNum")
				: null;
		String applicationNum = parameters.containsKey("applicationNum") ? (String) parameters.get("applicationNum")
				: null;

		// Implement the logic based on the parameters present
		if (requestId != null && consentStatus != null) {
			// Path parameter POST request
			steps.triggerPostRequestCommonRestwithPathParam(requestId, consentStatus);
		} else if (amountFrom != null && amountTo != null && solid != null) {
			// Query and path parameter GET request
			steps.triggerGetRequestCommonRestwithQueryAndPathParams(amountFrom, amountTo, solid);
		} else if (amountFrom != null && amountTo != null && requestBody != null) {
			// POST request with amount ranges and body
			steps.triggerPostRequestCommonRestwithParams(amountFrom, amountTo, requestBody);
//		} else if (requestType != null && solidOrMobileNum != null) {
//			// Dashboard service specific request
//			steps.triggerPostRequestCommonRestforDashboard(requestType, solidOrMobileNum);
		} else if (requestBody != null) {
			// Assisted portal specific request
			steps.triggerPostRequestCommonRestforAssistedPortal(requestBody);
		} else if (applicationNum != null) {
			steps.triggerGetRequestWithApplicationNum(applicationNum);
		} else {
			throw new IllegalArgumentException("Invalid parameters for POST request.");
		}
	}

	@Then("^user triggers a post request for dashboard service (.+) and (.+)$")
	public void triggerPostRequestforAssistedPortal(String requestType, String solidOrMobileNum) {
		System.out.println("inside common step");
		steps.triggerPostRequestCommonRestforDashboard(requestType, solidOrMobileNum);
	}

	@Then("^user triggers a get request for dashboard service")
	public void triggerGetRequestforAssistedPortal() {
		steps.triggerGetRequestCommonRestforDashboard();
	}

	@Then("^user triggers a path parameter get request (.+)$")
	public void triggerGetRequestwithPathParam(String requestId) {
		steps.triggerGetRequestCommonRestwithPathParam(requestId);
	}

	@Given("^environment of endpoint for Assisted Portal (.*)$")
	public void setAssistedPortalEnvironment(String env) {
		// setEnvPath = AppConfig.getEnvironment();
		RestAssured.baseURI = AppConfig.getRestAssistedUrl(env);
	}

	@Then("^multiple filters on dashboard page$")
	public void multipleFiltersOnDashboard(List<String> list) {
		System.out.println(list);
		steps.passMultipleFiltersOnDashboard(list);
	}

	// Method written by Sneha but modification done by Piyush with approval
	// Need to be refactor this code
	// New Code for all features to be ignore
//	@Then("user verifies json from (.*)$")
//	public void verifyJsonResponse(String responseBody) throws Exception {
//
//		// Determine fields to ignore based on the API
//		String[] fieldsToIgnore = {};
//
//		// General Service ignore the values in json response
//		Map<String, String[]> specificValuesToIgnore = new HashMap<>();
//
//		// Determine the flag based on the baseURI
//		String flag = "";
//
//		if (RestAssured.baseURI.contains("generalservice")) {
//			flag = "generalservice";
//		} else if (RestAssured.baseURI.contains("business")) {
//			flag = "business";
//		} else if (RestAssured.baseURI.contains("cheque")) {
//			flag = "cheque";
//		} else if (RestAssured.baseURI.contains("book-request")) {
//			flag = "book-request";
//		} else if (RestAssured.baseURI.contains("status-inquiry")) {
//			flag = "status-inquiry";
//		} else if (RestAssured.baseURI.contains("positive-pay-limit")) {
//			flag = "positive-pay-limit";
//		} else if (RestAssured.baseURI.contains("stop-cheque-payment")) {
//			flag = "stop-cheque-payment";
//		} else if (RestAssured.baseURI.contains("cheque-leafs")) {
//			flag = "cheque-leafs";
//		} else if (RestAssured.baseURI.contains("account-info")) {
//			flag = "account-info";
//		} else if (RestAssured.baseURI.contains("cheque")) {
//			flag = "cheque";
//		} else if (RestAssured.baseURI.contains("deRegister")) {
//			flag = "deRegister";
//		} else if (RestAssured.baseURI.contains("registration-direct")) {
//			flag = "registration-direct";
//		} else if (RestAssured.baseURI.contains("fetch-accounts")) {
//			flag = "fetch-accounts";
//		} else if (RestAssured.baseURI.contains("token")) {
//			flag = "token";
//		} else if (RestAssured.baseURI.contains("SuggestVPA")) {
//			flag = "SuggestVPA";
//		} else if (RestAssured.baseURI.contains("listkeys")) {
//			flag = "listkeys";
//		} else if (RestAssured.baseURI.contains("listbanks/cc")) {
//			flag = "listbanks/cc";
//		} else if (RestAssured.baseURI.contains("listbanks/cl")) {
//			flag = "listbanks/cl";
//		} else if (RestAssured.baseURI.contains("listbanks/all")) {
//			flag = "listbanks/all";
//		} else if (RestAssured.baseURI.contains("listbanks/account")) {
//			flag = "listbanks/account";
//		} else if (RestAssured.baseURI.contains("setvpa")) {
//			flag = "setvpa";
//		} else if (RestAssured.baseURI.contains("verelse ify/vpa")) {
//			flag = "verelse ify/vpa";
//		} else if (RestAssured.baseURI.contains("OTP")) {
//			flag = "OTP";
//		} else if (RestAssured.baseURI.contains("getlistVpa")) {
//			flag = "getlistVpa";
//		} else if (RestAssured.baseURI.contains("balance-inquiry")) {
//			flag = "balance-inquiry";
//		} else if (RestAssured.baseURI.contains("profile-vpa")) {
//			flag = "profile-vpa";
//		} else if (RestAssured.baseURI.contains("delink/vpa")) {
//			flag = "delink/vpa";
//		} else if (RestAssured.baseURI.contains("transactionid")) {
//			flag = "transactionid";
//		} else if (RestAssured.baseURI.contains("transaction/pay")) {
//			flag = "transaction/pay";
//		} else if (RestAssured.baseURI.contains("removeaccount")) {
//			flag = "removeaccount";
//		} else if (RestAssured.baseURI.contains("collect")) {
//			flag = "collect";
//		} else if (RestAssured.baseURI.contains("transaction/list")) {
//			flag = "transaction/list";
//		} else if (RestAssured.baseURI.contains("transaction/pending")) {
//			flag = "transaction/pending";
//		} else if (RestAssured.baseURI.contains("recent")) {
//			flag = "recent";
//		} else if (RestAssured.baseURI.contains("getFavouriteTransactions")) {
//			flag = "getFavouriteTransactions";
//		} else if (RestAssured.baseURI.contains("UPI")) {
//			flag = "UPI";
//		} else if (RestAssured.baseURI.contains("govt schme")) {
//			flag = "govt schme";
//		} else if (RestAssured.baseURI.contains("retrieveEnrollmentDetails")) {
//			flag = "retrieveEnrollmentDetails";
//		} else if (RestAssured.baseURI.contains("premiumDeduction")) {
//			flag = "premiumDeduction";
//		} else if (RestAssured.baseURI.contains("getPMSchemeDetails")) {
//			flag = "getPMSchemeDetails";
//		} else if (RestAssured.baseURI.contains("debit-card")) {
//			flag = "debit-card";
//		} else if (RestAssured.baseURI.contains("registration-direct")) {
//			flag = "registration-direct";
//		} else if (RestAssured.baseURI.contains("fetch-accounts")) {
//			flag = "fetch-accounts";
//		} else if (RestAssured.baseURI.contains("token")) {
//			flag = "token";
//		} else if (RestAssured.baseURI.contains("SuggestVPA")) {
//			flag = "SuggestVPA";
//		} else if (RestAssured.baseURI.contains("listkeys")) {
//			flag = "listkeys";
//		} else if (RestAssured.baseURI.contains("listbanks/cc")) {
//			flag = "listbanks/cc";
//		} else if (RestAssured.baseURI.contains("listbanks/cl")) {
//			flag = "listbanks/cl";
//		} else if (RestAssured.baseURI.contains("listbanks/all")) {
//			flag = "listbanks/all";
//		} else if (RestAssured.baseURI.contains("listbanks/account")) {
//			flag = "listbanks/account";
//		} else if (RestAssured.baseURI.contains("setvpa")) {
//			flag = "setvpa";
//		} else if (RestAssured.baseURI.contains("verelse ify/vpa")) {
//			flag = "verelse ify/vpa";
//		} else if (RestAssured.baseURI.contains("OTP")) {
//			flag = "OTP";
//		} else if (RestAssured.baseURI.contains("getlistVpa")) {
//			flag = "getlistVpa";
//		} else if (RestAssured.baseURI.contains("balance-inquiry")) {
//			flag = "balance-inquiry";
//		} else if (RestAssured.baseURI.contains("profile-vpa")) {
//			flag = "profile-vpa";
//		} else if (RestAssured.baseURI.contains("delink/vpa")) {
//			flag = "delink/vpa";
//		} else if (RestAssured.baseURI.contains("transactionid")) {
//			flag = "transactionid";
//		} else if (RestAssured.baseURI.contains("transaction/pay")) {
//			flag = "transaction/pay";
//		} else if (RestAssured.baseURI.contains("removeaccount")) {
//			flag = "removeaccount";
//		} else if (RestAssured.baseURI.contains("UPI")) {
//			flag = "UPI";
//		} else if (RestAssured.baseURI.contains("getCardProfile")) {
//			flag = "getCardProfile";
//		} else if (RestAssured.baseURI.contains("getCard")) {
//			flag = "getCard";
//		} else if (RestAssured.baseURI.contains("tempBlockUnblock")) {
//			flag = "tempBlockUnblock";
//		} else if (RestAssured.baseURI.contains("tempBlockUnblock.")) {
//			flag = "tempBlockUnblock.";
//		} else if (RestAssured.baseURI.contains("tempBlock")) {
//			flag = "tempBlock";
//		} else if (RestAssured.baseURI.contains("tempBlock.")) {
//			flag = "tempBlock.";
//		} else if (RestAssured.baseURI.contains("txnDetails")) {
//			flag = "txnDetails";
//		} else if (RestAssured.baseURI.contains("txnDet")) {
//			flag = "txnDet";
//		} else if (RestAssured.baseURI.contains("ccmsSetPin")) {
//			flag = "ccmsSetPin";
//		} else if (RestAssured.baseURI.contains("ccmsSetP")) {
//			flag = "ccmsSetP";
//		} else if (RestAssured.baseURI.contains("ccmsSet123")) {
//			flag = "ccmsSet123";
//		} else if (RestAssured.baseURI.contains("ccmsSetCardControl")) {
//			flag = "ccmsSetCardControl";
//		} else if (RestAssured.baseURI.contains("ccmsSetCardCont")) {
//			flag = "ccmsSetCardCont";
//		} else if (RestAssured.baseURI.contains("get-outstandingBill")) {
//			flag = "get-outstandingBill";
//		} else if (RestAssured.baseURI.contains("get-outstanding")) {
//			flag = "get-outstanding";
//		} else if (RestAssured.baseURI.contains("getTDDetailsToResume")) {
//			flag = "getTDDetailsToResume";
//		} else if (RestAssured.baseURI.contains("getTDStatus")) {
//			flag = "getTDStatus";
//		} else if (RestAssured.baseURI.contains("downloadTDCertelse ificate")) {
//			flag = "downloadTDCertelse ificate";
//		} else if (RestAssured.baseURI.contains("downloadStatement")) {
//			flag = "downloadStatement";
//		} else if (RestAssured.baseURI.contains("downloadInterestCertelse ificate")) {
//			flag = "downloadInterestCertelse ificate";
//		} else if (RestAssured.baseURI.contains("getTDJournyState")) {
//			flag = "getTDJournyState";
//		} else if (RestAssured.baseURI.contains("saveTermDeposit")) {
//			flag = "saveTermDeposit";
//		} else if (RestAssured.baseURI.contains("openTermDeposit")) {
//			flag = "openTermDeposit";
//		} else if (RestAssured.baseURI.contains("getCASAAccountDetails")) {
//			flag = "getCASAAccountDetails";
//		} else if (RestAssured.baseURI.contains("getCustomerByCIF")) {
//			flag = "getCustomerByCIF";
//		} else if (RestAssured.baseURI.contains("getCustomerAccounts")) {
//			flag = "getCustomerAccounts";
//		} else if (RestAssured.baseURI.contains("getCASAAccounts")) {
//			flag = "getCASAAccounts";
//		} else if (RestAssured.baseURI.contains("getMaturityDetails")) {
//			flag = "getMaturityDetails";
//		} else if (RestAssured.baseURI.contains("getTDDetails")) {
//			flag = "getTDDetails";
//		} else if (RestAssured.baseURI.contains("getTDTransactions")) {
//			flag = "getTDTransactions";
//		} else if (RestAssured.baseURI.contains("getCustKycStatus")) {
//			flag = "getCustKycStatus";
//		} else if (RestAssured.baseURI.contains("emailStatement")) {
//			flag = "emailStatement";
//		} else if (RestAssured.baseURI.contains("closeTermDeposit")) {
//			flag = "closeTermDeposit";
//		} else if (RestAssured.baseURI.contains("getCardProfile")) {
//			flag = "getCardProfile";
//		} else if (RestAssured.baseURI.contains("getCard")) {
//			flag = "getCard";
//		} else if (RestAssured.baseURI.contains("tempBlockUnblock")) {
//			flag = "tempBlockUnblock";
//		} else if (RestAssured.baseURI.contains("tempBlockUnblock.")) {
//			flag = "tempBlockUnblock.";
//		} else if (RestAssured.baseURI.contains("tempBlock")) {
//			flag = "tempBlock";
//		} else if (RestAssured.baseURI.contains("tempBlock.")) {
//			flag = "tempBlock.";
//		} else if (RestAssured.baseURI.contains("txnDetails")) {
//			flag = "txnDetails";
//		} else if (RestAssured.baseURI.contains("txnDet")) {
//			flag = "txnDet";
//		} else if (RestAssured.baseURI.contains("ccmsSetPin")) {
//			flag = "ccmsSetPin";
//		} else if (RestAssured.baseURI.contains("ccmsSetP")) {
//			flag = "ccmsSetP";
//		} else if (RestAssured.baseURI.contains("ccmsSet123")) {
//			flag = "ccmsSet123";
//		} else if (RestAssured.baseURI.contains("ccmsSetCardControl")) {
//			flag = "ccmsSetCardControl";
//		} else if (RestAssured.baseURI.contains("ccmsSetCardCont")) {
//			flag = "ccmsSetCardCont";
//		} else if (RestAssured.baseURI.contains("get-outstandingBill")) {
//			flag = "get-outstandingBill";
//		} else if (RestAssured.baseURI.contains("get-outstanding")) {
//			flag = "get-outstanding";
//		} else if (RestAssured.baseURI.contains("generateaadharotp")) {
//			flag = "generateaadharotp";
//		} else if (RestAssured.baseURI.contains("generateotp")) {
//			flag = "generateotp";
//		} else if (RestAssured.baseURI.contains("mblogin")) {
//			flag = "mblogin";
//		} else if (RestAssured.baseURI.contains("custInqByMob")) {
//			flag = "custInqByMob";
//		} else if (RestAssured.baseURI.contains("custByMobile")) {
//			flag = "custByMobile";
//		} else if (RestAssured.baseURI.contains("checkExistingAccounts")) {
//			flag = "checkExistingAccounts";
//		} else if (RestAssured.baseURI.contains("getInvestmentAccounts")) {
//			flag = "getInvestmentAccounts";
//		} else if (RestAssured.baseURI.contains("saveSsa")) {
//			flag = "saveSsa";
//		} else if (RestAssured.baseURI.contains("openSsa")) {
//			flag = "openSsa";
//		} else if (RestAssured.baseURI.contains("getSSAAccountDetails")) {
//			flag = "getSSAAccountDetails";
//		} else if (RestAssured.baseURI.contains("upload")) {
//			flag = "upload";
//		} else if (RestAssured.baseURI.contains("download")) {
//			flag = "download";
//		} else if (RestAssured.baseURI.contains("removedoc")) {
//			flag = "removedoc";
//		} else if (RestAssured.baseURI.contains("AcknowledgementLetter")) {
//			flag = "AcknowledgementLetter";
//		} else if (RestAssured.baseURI.contains("emailStatement")) {
//			flag = "emailStatement";
//		} else if (RestAssured.baseURI.contains("downloadStatement")) {
//			flag = "downloadStatement";
//		} else if (RestAssured.baseURI.contains("contribution")) {
//			flag = "contribution";
//		} else if (RestAssured.baseURI.contains("validateContribution")) {
//			flag = "validateContribution";
//		} else if (RestAssured.baseURI.contains("getPaymentStatus")) {
//			flag = "getPaymentStatus";
//		} else if (RestAssured.baseURI.contains("getSSATransactions")) {
//			flag = "getSSATransactions";
//		} else if (RestAssured.baseURI.contains("getSSATermsAndCondition")) {
//			flag = "getSSATermsAndCondition";
//		} else if (RestAssured.baseURI.contains("findBranch")) {
//			flag = "findBranch";
//		} else if (RestAssured.baseURI.contains("SSY_RELATION_WITH_MINOR")) {
//			flag = "SSY_RELATION_WITH_MINOR";
//		} else if (RestAssured.baseURI.contains("birth_type")) {
//			flag = "birth_type";
//		} else if (RestAssured.baseURI.contains("birth_order")) {
//			flag = "birth_order";
//		} else if (RestAssured.baseURI.contains("getSSADetailsToResume")) {
//			flag = "getSSADetailsToResume";
//		} else if (RestAssured.baseURI.contains("getSSAStatus")) {
//			flag = "getSSAStatus";
//		} else if (RestAssured.baseURI.contains("createLead")) {
//			flag = "createLead";
//		} else if (RestAssured.baseURI.contains("savePpf")) {
//			flag = "savePpf";
//		} else if (RestAssured.baseURI.contains("makeContribute")) {
//			flag = "makeContribute";
//		} else if (RestAssured.baseURI.contains("getPPFAccountDetails")) {
//			flag = "getPPFAccountDetails";
//		} else if (RestAssured.baseURI.contains("openPpf")) {
//			flag = "openPpf";
//		} else if (RestAssured.baseURI.contains("getPPFStatus")) {
//			flag = "getPPFStatus";
//		} else if (RestAssured.baseURI.contains("emailStatement")) {
//			flag = "emailStatement";
//		} else if (RestAssured.baseURI.contains("downloadStatement")) {
//			flag = "downloadStatement";
//		} else if (RestAssured.baseURI.contains("getTDJournyState")) {
//			flag = "getTDJournyState";
//		} else if (RestAssured.baseURI.contains("PPFCertelse ificate")) {
//			flag = "PPFCertelse ificate";
//		} else if (RestAssured.baseURI.contains("getPPFExistingAccount")) {
//			flag = "getPPFExistingAccount";
//		} else if (RestAssured.baseURI.contains("getPPFDetailsToResume")) {
//			flag = "getPPFDetailsToResume";
//		} else if (RestAssured.baseURI.contains("savePpf")) {
//			flag = "savePpf";
//		} else if (RestAssured.baseURI.contains("makeContribute")) {
//			flag = "makeContribute";
//		} else if (RestAssured.baseURI.contains("getPPFAccountDetails")) {
//			flag = "getPPFAccountDetails";
//		} else if (RestAssured.baseURI.contains("openPpf")) {
//			flag = "openPpf";
//		} else if (RestAssured.baseURI.contains("getPPFStatus")) {
//			flag = "getPPFStatus";
//		} else if (RestAssured.baseURI.contains("emailStatement")) {
//			flag = "emailStatement";
//		} else if (RestAssured.baseURI.contains("downloadStatement")) {
//			flag = "downloadStatement";
//		} else if (RestAssured.baseURI.contains("getTDJournyState")) {
//			flag = "getTDJournyState";
//		} else if (RestAssured.baseURI.contains("PPFCertelse ificate")) {
//			flag = "PPFCertelse ificate";
//		} else if (RestAssured.baseURI.contains("getPPFExistingAccount")) {
//			flag = "getPPFExistingAccount";
//		} else if (RestAssured.baseURI.contains("getPPFDetailsToResume")) {
//			flag = "getPPFDetailsToResume";
//		} else if (RestAssured.baseURI.contains("onClickUtility")) {
//			flag = "onClickUtility";
//		} else if (RestAssured.baseURI.contains("onClickRechargeFastag")) {
//			flag = "onClickRechargeFastag";
//		} else if (RestAssured.baseURI.contains("onClickProviderDetailContinueFastag")) {
//			flag = "onClickProviderDetailContinueFastag";
//		} else if (RestAssured.baseURI.contains("onClickTransactionPinContinueFastag")) {
//			flag = "onClickTransactionPinContinueFastag";
//		} else if (RestAssured.baseURI.contains("onClickProviderDetailContinueDTH")) {
//			flag = "onClickProviderDetailContinueDTH";
//		} else if (RestAssured.baseURI.contains("onClickContact")) {
//			flag = "onClickContact";
//		} else if (RestAssured.baseURI.contains("onClickTransactionPinContinue")) {
//			flag = "onClickTransactionPinContinue";
//		} else if (RestAssured.baseURI.contains("onClickUserNotEnabledAutoPay")) {
//			flag = "onClickUserNotEnabledAutoPay";
//		} else if (RestAssured.baseURI.contains("userEnabledAutoPay")) {
//			flag = "userEnabledAutoPay";
//		} else if (RestAssured.baseURI.contains("trackComplaint")) {
//			flag = "trackComplaint";
//		} else if (RestAssured.baseURI.contains("raiseComplaint")) {
//			flag = "raiseComplaint";
//		} else if (RestAssured.baseURI.contains("onClickTransactionPinContinueDTH")) {
//			flag = "onClickTransactionPinContinueDTH";
//		} else if (RestAssured.baseURI.contains("nps")) {
//			flag = "nps";
//		} else if (RestAssured.baseURI.contains("get-fev-transactions")) {
//			flag = "get-fev-transactions";
//		} else if (RestAssured.baseURI.contains("transactionHistory")) {
//			flag = "transactionHistory";
//		} else if (RestAssured.baseURI.contains("set-si")) {
//			flag = "set-si";
//		} else if (RestAssured.baseURI.contains("set-si1")) {
//			flag = "set-si1";
//		} else if (RestAssured.baseURI.contains("get-si")) {
//			flag = "get-si";
//		} else if (RestAssured.baseURI.contains("get-si1")) {
//			flag = "get-si1";
//		} else if (RestAssured.baseURI.contains("get-si-records")) {
//			flag = "get-si-records";
//		} else if (RestAssured.baseURI.contains("get-si-records1")) {
//			flag = "get-si-records1";
//		} else if (RestAssured.baseURI.contains("cancel-si")) {
//			flag = "cancel-si";
//		} else if (RestAssured.baseURI.contains("cancel-si1")) {
//			flag = "cancel-si1";
//		} else if (RestAssured.baseURI.contains("get-customer-consumed-limit")) {
//			flag = "get-customer-consumed-limit";
//		} else if (RestAssured.baseURI.contains("get-customer-consumed-limit1")) {
//			flag = "get-customer-consumed-limit1";
//		} else if (RestAssured.baseURI.contains("get-payee-consumed-limit")) {
//			flag = "get-payee-consumed-limit";
//		} else if (RestAssured.baseURI.contains("get-payee-consumed-limit1")) {
//			flag = "get-payee-consumed-limit1";
//		} else if (RestAssured.baseURI.contains("p2p")) {
//			flag = "p2p";
//		} else if (RestAssured.baseURI.contains("p2p1")) {
//			flag = "p2p1";
//		} else if (RestAssured.baseURI.contains("p2a")) {
//			flag = "p2a";
//		} else if (RestAssured.baseURI.contains("p2a1")) {
//			flag = "p2a1";
//		} else if (RestAssured.baseURI.contains("fund-transfer")) {
//			flag = "fund-transfer";
//		} else if (RestAssured.baseURI.contains("add-fav-trans")) {
//			flag = "add-fav-trans";
//		} else if (RestAssured.baseURI.contains("add")) {
//			flag = "add";
//		} else if (RestAssured.baseURI.contains("add1")) {
//			flag = "add1";
//		} else if (RestAssured.baseURI.contains("get-fev-transactions1")) {
//			flag = "get-fev-transactions1";
//		} else if (RestAssured.baseURI.contains("get-payees")) {
//			flag = "get-payees";
//		} else if (RestAssured.baseURI.contains("within-bank-transfer")) {
//			flag = "within-bank-transfer";
//		} else if (RestAssured.baseURI.contains("within-bank-transfer1")) {
//			flag = "within-bank-transfer1";
//		} else if (RestAssured.baseURI.contains("add-fav-trans")) {
//			flag = "add-fav-trans";
//		} else if (RestAssured.baseURI.contains("add-fav-trans1")) {
//			flag = "add-fav-trans1";
//		} else if (RestAssured.baseURI.contains("get-payees1")) {
//			flag = "get-payees1";
//		} else if (RestAssured.baseURI.contains("edit")) {
//			flag = "edit";
//		} else if (RestAssured.baseURI.contains("edit1")) {
//			flag = "edit1";
//		} else if (RestAssured.baseURI.contains("delete")) {
//			flag = "delete";
//		} else if (RestAssured.baseURI.contains("delete1")) {
//			flag = "delete1";
//		} else if (RestAssured.baseURI.contains("setPerTransactionLimit")) {
//			flag = "setPerTransactionLimit";
//		} else if (RestAssured.baseURI.contains("setPerTransactionLimit1")) {
//			flag = "setPerTransactionLimit1";
//		} else if (RestAssured.baseURI.contains("outside-bank-transfer")) {
//			flag = "outside-bank-transfer";
//		} else if (RestAssured.baseURI.contains("outside-bank-transfer1")) {
//			flag = "outside-bank-transfer1";
//		} else if (RestAssured.baseURI.contains("assignment-service")) {
//			flag = "assignment-service";
//		} else if (RestAssured.baseURI.contains("consent-service")) {
//			flag = "consent-service";
//		} else if (RestAssured.baseURI.contains("dashboard")) {
//			flag = "dashboard";
//		} else if (RestAssured.baseURI.contains("nps")) {
//			flag = "nps";
//		} else if (RestAssured.baseURI.contains("debitCardProfile")) {
//			flag = "debitCardProfile";
//		} else if (RestAssured.baseURI.contains("asba")) {
//			flag = "asba";
//		} else if (RestAssured.baseURI.contains("addLeiNumber")) {
//			flag = "addLeiNumber";
//		} else if (RestAssured.baseURI.contains("addUdyam")) {
//			flag = "addUdyam";
//		} else if (RestAssured.baseURI.contains("verelse ifyUdyamNumber")) {
//			flag = "verelse ifyUdyamNumber";
//		} else if (RestAssured.baseURI.contains("verelse ifyUdyamNumber.")) {
//			flag = "verelse ifyUdyamNumber.";
//		} else if (RestAssured.baseURI.contains("verelse ifyLeiNumber")) {
//			flag = "verelse ifyLeiNumber";
//		} else if (RestAssured.baseURI.contains("verelse ifyLeiNumber.")) {
//			flag = "verelse ifyLeiNumber.";
//		} else if (RestAssured.baseURI.contains("addGst")) {
//			flag = "addGst";
//		} else if (RestAssured.baseURI.contains("verelse ifyGst")) {
//			flag = "verelse ifyGst";
//		} else if (RestAssured.baseURI.contains("verelse ifyGst.")) {
//			flag = "verelse ifyGst.";
//		} else if (RestAssured.baseURI.contains("getAccountList")) {
//			flag = "getAccountList";
//		} else if (RestAssured.baseURI.contains("getAccountList.")) {
//			flag = "getAccountList.";
//		} else if (RestAssured.baseURI.contains("getGstList")) {
//			flag = "getGstList";
//		} else if (RestAssured.baseURI.contains("getGstList.")) {
//			flag = "getGstList.";
//		} else if (RestAssured.baseURI.contains("fetchGstList.")) {
//			flag = "fetchGstList.";
//		} else if (RestAssured.baseURI.contains("fetchGstList")) {
//			flag = "fetchGstList";
//		} else if (RestAssured.baseURI.contains("addUdyam")) {
//			flag = "addUdyam";
//		} else if (RestAssured.baseURI.contains("addUdyam.")) {
//			flag = "addUdyam.";
//		} else if (RestAssured.baseURI.contains("addLeiNumber.")) {
//			flag = "addLeiNumber.";
//		} else if (RestAssured.baseURI.contains("addLieNumber")) {
//			flag = "addLieNumber";
//		}
//
//		// Below are the Debit Card and NCMC ignore fields
//		else if (RestAssured.baseURI.contains("debitCardProfile")) {
//			flag = "debitCardProfile";
//		} else if (RestAssured.baseURI.contains("green-pin")) {
//			flag = "green-pin";
//		} else if (RestAssured.baseURI.contains("fhmUpdateLimit")) {
//			flag = "fhmUpdateLimit";
//		} else if (RestAssured.baseURI.contains("fhmBlockUnblock")) {
//			flag = "fhmBlockUnblock";
//		} else if (RestAssured.baseURI.contains("ncmcfullStatment")) {
//			flag = "ncmcfullStatment";
//		} else if (RestAssured.baseURI.contains("ncmc/wallet/details")) {
//			flag = "ncmc/wallet/details";
//		} else if (RestAssured.baseURI.contains("fund/transfer")) {
//			flag = "fund/transfer";
//		}
//
//		switch (flag) {
//		case "generalservice":
//			fieldsToIgnore = new String[] { "accountInfo[20].nomineeName", "nomineeName", "fileData", "kyc_reviewDt",
//					"kyc_dt", "accountInfo[7].clr_bal_amt", "accountInfo[8].clr_bal_amt", "clr_bal_amt",
//					"outstanding_Lien", "last_Tran_Date", "lastUpdated" };
//			specificValuesToIgnore.put("errorMessage", new String[] { "timestamp", "requestId" });
//			specificValuesToIgnore.put("accountInfo",
//					new String[] { "last_Tran_Date", "clr_bal_amt", "outstanding_Lien" });
//			break;
//
//		case "business":
//			fieldsToIgnore = new String[] { "fileData", "lastUpdated" };
//			specificValuesToIgnore.put("errorMessage",
//					new String[] { "nomineeName", "timestamp", "requestId", "clr_bal_amt" });
//			break;
//
//		case "book-request":
//			fieldsToIgnore = new String[] { "date", "referenceNumber", "timestamp", "requestId" };
//			specificValuesToIgnore.put("errorMessage", new String[] { "timestamp", "requestId" });
//			break;
//		case "status-inquiry":
//			fieldsToIgnore = new String[] { "date" };
//			specificValuesToIgnore.put("errorMessage", new String[] { "timestamp", "requestId" });
//			break;
//
//		case "positive-pay-limit":
//			fieldsToIgnore = new String[] { "date", "timestamp", "requestId" };
//			specificValuesToIgnore.put("errorMessage", new String[] { "timestamp", "requestId" });
//			break;
//
//		case "stop-cheque-payment":
//			fieldsToIgnore = new String[] { "date", "referenceNumber" };
//			specificValuesToIgnore.put("errorMessage", new String[] { "timestamp", "requestId" });
//			break;
//
//		case "cheque-leafs":
//			fieldsToIgnore = new String[] { "cheque-status", "chequeLeafs", "timestamp", "requestId" };
//			specificValuesToIgnore.put("errorMessage", new String[] { "timestamp", "requestId" });
//			break;
//
//		case "account-info":
//			fieldsToIgnore = new String[] { "accounts", "timestamp", "requestId" };
//			specificValuesToIgnore.put("errorMessage", new String[] { "timestamp", "requestId" });
//			break;
//
//		case "cheque":
//			fieldsToIgnore = new String[] { "date", "referenceNumber", "chequeLeafs", "acctBals" };
//			specificValuesToIgnore.put("errorMessage", new String[] { "timestamp", "requestId" });
//			break;
//
//		// UPI Ignore Fields as below
//		case "deRegister":
//			fieldsToIgnore = new String[] { "data", "result", "errorId", "errorAt", "errorDesc" };
//			break;
//		case "registration-direct":
//			fieldsToIgnore = new String[] { "data", "errorId", "errorAt" };
//			break;
//
//		case "listbanks/all":
//			fieldsToIgnore = new String[] { "listBanks" };
//			break;
//		case "listbanks/account":
//			fieldsToIgnore = new String[] { "listBanks" };
//			break;
//		case "setvpa":
//			fieldsToIgnore = new String[] { "data", "createdDateTime", "errorId", "errorAt" };
//			break;
//		case "verify/vpa":
//			fieldsToIgnore = new String[] { "errorId", "errorAt" };
//			break;
//		case "OTP":
//			fieldsToIgnore = new String[] { "data", "errorId", "errorAt" };
//			break;
//		case "getlistVpa":
//			fieldsToIgnore = new String[] { "errorId", "errorAt" };
//			break;
//		case "balance-inquiry":
//			fieldsToIgnore = new String[] { "data", "errorId", "errorAt" };
//			break;
//		case "profile-vpa":
//			fieldsToIgnore = new String[] { "data", "errorId", "errorAt" };
//			break;
//		case "delink/vpa":
//			fieldsToIgnore = new String[] { "data", "delinkDateTime", "errorId", "errorAt" };
//			break;
//		case "transactionid":
//			fieldsToIgnore = new String[] { "data" };
//			break;
//		case "transaction/pay":
//			fieldsToIgnore = new String[] { "data", "rrn", "txnDate", "txnId", "errorId", "errorAt" };
//			break;
//		case "removeaccount":
//			fieldsToIgnore = new String[] { "errorId", "errorAt" };
//			break;
//		case "collect":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "rrn", "txnDate", "txnId", "completeDateTime",
//					"expiryDateTime" };
//			break;
//		case "transaction/list":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "data" };
//			break;
//		case "transaction/pending":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "data" };
//			break;
//		case "recent":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "data", "errorDesc" };
//			break;
//		case "getFavouriteTransactions":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "data", "errorDesc" };
//			break;
//		case "UPI":
//			// Add fields to ignore for UPI API if any
//
//			// Gov schemes
//
//		case "govt schme":
//			fieldsToIgnore = new String[] { "id", "errorId", "errorAt", "requestId", "timestamp", "status",
//					"asOnDate" };
//			break;
//
//		case "retrieveEnrollmentDetails":
//			fieldsToIgnore = new String[] { "errorAt", "errorId" };
//			break;
//		case "premiumDeduction":
//			fieldsToIgnore = new String[] { "errorAt", "errorId" };
//			break;
//		case "getPMSchemeDetails":
//			fieldsToIgnore = new String[] { "errorAt", "errorId" };
//			break;
//		case "showPMGovtSchmDetails":
//			fieldsToIgnore = new String[] { "errorAt", "errorId" };
//			break;
//		case "downloadCOI":
//			fieldsToIgnore = new String[] { "errorAt", "errorId" };
//			break;
//
//		// ignore cases for debit card and NCMC
//		case "debitCardProfile":
//			fieldsToIgnore = new String[] { "data", "errorId", "errorAt", "error" };
//			break;
//
//		case "green-pin":
//			fieldsToIgnore = new String[] { "data", "errorId", "errorAt", "error" };
//			break;
//
//		case "fhmUpdateLimit":
//			fieldsToIgnore = new String[] { "data", "errorId", "errorAt", "error" };
//			break;
//
//		case "fhmBlockUnblock":
//			fieldsToIgnore = new String[] { "data", "errorId", "errorAt", "error" };
//			break;
//
//		case "ncmcfullStatment":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "error", "traceId", "totalTransaction", "txnDetails",
//					"totalPages", "page", "size", "errorDetails", "statusDescription" };
//			break;
//
//		case "ncmc/wallet/details":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "error", "data", "errorDetails", "walletNo", "cardNo",
//					"accountStatus", "walletBalance", "closureFlag", "descriptionFlag" };
//			break;
//
//		case "fund/transfer":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "error", "data", "errorDetails", "walletNo", "cardNo",
//					"accountStatus", "walletBalance", "closureFlag", "descriptionFlag" };
//			break;
//
//		case "fetch-accounts":
//			fieldsToIgnore = new String[] { "errorId", "errorAt" };
//			specificValuesToIgnore.put("data.acctlist[0]", new String[] { "vpa" });
//			break;
//		case "token":
//			fieldsToIgnore = new String[] { "data", "errorId", "errorAt" };
//			break;
//		case "SuggestVPA":
//			fieldsToIgnore = new String[] { "data", "errorId", "errorAt" };
//			break;
//		case "listkeys":
//			fieldsToIgnore = new String[] { "data", "errorId", "errorAt" };
//			break;
//		case "listbanks/cc":
//			fieldsToIgnore = new String[] { "listBanks" };
//			break;
//		case "listbanks/cl":
//			fieldsToIgnore = new String[] { "listBanks" };
//			break;
//
//		// Credit Card Ignore Fields as below
//
//		case "getCardProfile":
//			// fieldsToIgnore = new String[] {
//			// "cashLimit","cvv","errorId","errorAt","requestId"};
//			fieldsToIgnore = new String[] { "cardProfile", "errors", "errorId", "timestamp", "path", "requestId",
//					"description", "errorAt" };
//			break;
//		case "getCard":
//			fieldsToIgnore = new String[] { "cashLimit", "cvv", "errorId", "errorAt", "timestamp", "requestId" };
//			break;
//
//		case "tempBlockUnblock":
//			fieldsToIgnore = new String[] { "traceId", "errorId", "description", "timestamp", "reqRefNo", "path",
//					"errorAt" };
//			break;
//		case "tempBlockUnblock.":
//			fieldsToIgnore = new String[] { "timestamp", "path", "requestId" };
//			break;
//
//		case "tempBlock":
//			fieldsToIgnore = new String[] { "traceId", "timestamp", "path", "requestId", "errorId", "errorAt" };
//			break;
//
//		case "tempBlock.":
//			fieldsToIgnore = new String[] { "traceId", "timestamp", "path", "requestId", "errorId", "errorAt" };
//			break;
//
//		case "txnDetails":
//			fieldsToIgnore = new String[] { "traceId", "errorAt", "errorId", "timestamp" };
//			break;
//		case "txnDet":
//			fieldsToIgnore = new String[] { "traceId", "errorAt", "errorId", "requestId", "timestamp" };
//			break;
//
//		case "ccmsSetPin":
//			fieldsToIgnore = new String[] { "traceId", "errorId", "errorAt", "requestId", "timestamp", "error" };
//			break;
//
//		case "ccmsSetP":
//			fieldsToIgnore = new String[] { "traceId", "errorId", "errorAt", "requestId", "timestamp" };
//			break;
//
//		case "ccmsSet123":
//			fieldsToIgnore = new String[] { "requestId", "timestamp" };
//			break;
//
//		case "ccmsSetCardControl":
//			fieldsToIgnore = new String[] { "traceId", "errorId", "errorAt", "timestamp", "correlationId" };
//			break;
//		case "ccmsSetCardCont":
//			fieldsToIgnore = new String[] { "traceId", "errorId", "errorAt", "requestId", "timestamp" };
//			break;
//		case "get-outstandingBill":
//			fieldsToIgnore = new String[] { "paymentRefNo", "ccPaymentRefNo", "txnDate", "errorAt", "errorId",
//					"correlationId", "ledgerBalance", "availableBalance", "timestamp" };
//			break;
//
//		case "get-outstanding":
//			fieldsToIgnore = new String[] { "paymentRefNo", "ccPaymentRefNo", "txnDate", "errorAt", "errorId",
//					"requestId", "timestamp" };
//			break;
//
//		// FD RD Ignore Fields as below
//		case "getTDDetailsToResume":
//			fieldsToIgnore = new String[] { "transRefNumber", "errors", "errorId", "errorAt", "depositAmount",
//					"interestRate", "depositTerm", "maturityAmount", "applicationFrmNum", "scheme", "nominee" };
//			break;
//		case "getTDStatus":
//			fieldsToIgnore = new String[] { "applicationFrmNum", "entity", "entity", "errors", "errorId", "errorAt",
//					"transRefNumber" };
//			break;
//		case "downloadTDCertificate":
//			fieldsToIgnore = new String[] { "fileData", "errors", "errorId", "errorAt" };
//			break;
//		case "downloadStatement":
//			fieldsToIgnore = new String[] { "fileData", "errors", "errorId", "errorAt", "data" };
//			break;
//		case "downloadInterestCertificate":
//			fieldsToIgnore = new String[] { "fileData", "errors", "errorId", "errorAt" };
//			break;
//		case "getTDJournyState":
//			fieldsToIgnore = new String[] { "transactionDate", "applicationFormNumber", "journeyTaskRequestDate",
//					"errors", "errorId", "errorAt", "journeyTask", "journeyStatus", "subJourneyName" };
//			break;
//		case "saveTermDeposit":
//			fieldsToIgnore = new String[] { "entity", "errorId", "errorAt", "errors", "transRefNumber",
//					"applicationFrmNum" };
//			break;
//		case "openTermDeposit":
//			fieldsToIgnore = new String[] { "entity", "errors", "errorId", "errorAt", "transRefNumber" };
//			break;
//
//		case "getCASAAccountDetails":
//			fieldsToIgnore = new String[] { "acctBals", "errors", "errorId", "errorAt", "nominee",
//					"operatingInstruction" };
//			break;
//		case "getCustomerByCIF":
//			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt", "contactInfo", "fatherOrHusbandName",
//					"occupation" };
//			break;
//		case "getCustomerAccounts":
//			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt" };
//			break;
//		case "getCASAAccounts":
//			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt" };
//			break;
//		case "getMaturityDetails":
//			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt", "maturityAmount", "interestRate",
//					"totalInterestPayoutAmount", "depositTerm", "interestPayoutAmount" };
//			break;
//		case "getTDDetails":
//			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt", "acctBals" };
//			break;
//		case "getTDTransactions":
//			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt", "transactions" };
//			break;
//		case "getCustKycStatus":
//			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt" };
//			break;
//		case "emailStatement":
//			fieldsToIgnore = new String[] { "errors", "errorId", "errorAt" };
//			break;
//		case "closeTermDeposit":
//			fieldsToIgnore = new String[] { "transRefNumber", "errors", "errorId", "errorAt" };
//			break;
//
//		// Login Registration Ignore fields as below
//		case "generateaadharotp":
//			fieldsToIgnore = new String[] { "txn" };
//			break;
//		case "generateotp":
//			fieldsToIgnore = new String[] { "stateId", "location", "hint" };
//			break;
//		case "mblogin":
//			fieldsToIgnore = new String[] { "access_token", "expires_in", "refresh_token", "lastLoginTime" };
//			break;
//		case "custInqByMob":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "message" };
//			break;
//		case "custByMobile":
//			fieldsToIgnore = new String[] { "errorId", "errorAt" };
//			break;
//
//		// SSA Ignore Fields as below
//		case "checkExistingAccounts":
//			fieldsToIgnore = new String[] { "errorAt", "errorId", "errors" };
//			break;
//		case "getInvestmentAccounts":
//			fieldsToIgnore = new String[] { "investmentAccts", "errorId", "errorAt", "errors", "errorLocation" };
//			break;
//		case "saveSsa":
//			fieldsToIgnore = new String[] { "errorAt", "applicationFrmNum", "errorId", "errors" };
//			break;
//		case "openSsa":
//			fieldsToIgnore = new String[] { "applicationFrmNum", "errorAt", "errorId", "errors" };
//			break;
//		case "getSSAAccountDetails":
//			fieldsToIgnore = new String[] { "amount", "errorAt", "errorId", "applicationFrmNum", "errors" };
//			break;
//		case "upload":
//			fieldsToIgnore = new String[] { "uri", "docRefNo", "errorAt", "errorId", "path", "requestId", "errors",
//					"timestamp" };
//			break;
//		case "download":
//			fieldsToIgnore = new String[] { "fileData", "errorAt", "errorId", "errors" };
//			break;
//		case "removedoc":
//			fieldsToIgnore = new String[] { "applicationFrmNum", "errorAt", "errorId", "errors" };
//			break;
//		case "AcknowledgementLetter":
//			fieldsToIgnore = new String[] { "data", "errorAt", "errorId", "errors" };
//			break;
//		case "contribution":
//			fieldsToIgnore = new String[] { "applNum", "paymentTxnId", "channelTxnId", "paymentTxnDate", "errors",
//					"errorAt", "errorId", "name", "maturityDate" };
//			break;
//		case "validateContribution":
//			fieldsToIgnore = new String[] { "errors", "errorAt", "errorId" };
//			break;
//		case "getPaymentStatus":
//			fieldsToIgnore = new String[] { "channelTxnId", "applNum", "paymentTxnId", "paymentTxnDate", "errors",
//					"errorAt", "errorId", "name", "maturityDate" };
//			break;
//		case "getSSATransactions":
//			fieldsToIgnore = new String[] { "errors", "errorAt", "errorId" };
//			break;
//		case "getSSATermsAndCondition":
//			fieldsToIgnore = new String[] { "errorAt", "errorId", "errors" };
//			break;
//		case "findBranch":
//			fieldsToIgnore = new String[] { "requestId", "timestamp" };
//			break;
//		case "SSY_RELATION_WITH_MINOR":
//			fieldsToIgnore = new String[] { "requestId", "timestamp" };
//			break;
//		case "birth_type":
//			fieldsToIgnore = new String[] { "requestId", "timestamp" };
//			break;
//		case "birth_order":
//			fieldsToIgnore = new String[] { "requestId", "timestamp" };
//			break;
//		case "getSSADetailsToResume":
//			fieldsToIgnore = new String[] { "errorAt", "errorId", "errors" };
//			break;
//		case "getSSAStatus":
//			fieldsToIgnore = new String[] { "errorAt", "errorId", "errors", "applicationFrmNum", "txnId", "applNum",
//					"statusFlg" };
//			break;
//		case "createLead":
//			fieldsToIgnore = new String[] { "errorAt", "errorId", "errors" };
//			break;
//
//		// PPF Ignore Fields as below
//		case "savePpf":
//			fieldsToIgnore = new String[] { "transRefNumber", "entity", "errorId", "errorAt", "errors" };
//			break;
//		case "makeContribute":
//			fieldsToIgnore = new String[] { "transRefNumber", "entity", "errorId", "errorAt", "errors" };
//			break;
//		case "getPPFAccountDetails":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
//			break;
//		case "openPpf":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
//			break;
//		case "getPPFStatus":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors", "maturityDate" };
//			break;
//		case "PPFCertificate":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
//			break;
//		case "getPPFExistingAccount":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors", "accts" };
//			break;
//		case "getPPFDetailsToResume":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors", "accts" };
//			break;
//
//		// BBPS Ignore Fields as below
//		case "onClickUtility":
//			fieldsToIgnore = new String[] { "service_provider" };
//			break;
//		// Add fields to ignore for UPI API if any
//		case "onClickRechargeFastag":
//			fieldsToIgnore = new String[] { "service_provider" };
//			break;
//		// Add fields to ignore for UPI API if any
//		case "onClickProviderDetailContinueFastag":
//			fieldsToIgnore = new String[] { "payment_details", "errorId", "errorAt" };
//			break;
//		// Add fields to ignore for UPI API if any
//		case "onClickTransactionPinContinueFastag":
//			fieldsToIgnore = new String[] { "service_details", "payment_details", "transaction_details", "region",
//					"errorId", "errorAt" };
//			break;
//		// Add fields to ignore for UPI API if any
//		case "onClickProviderDetailContinueDTH":
//			fieldsToIgnore = new String[] { "payment_details" };
//			break;
//		// Add fields to ignore for UPI API if any
//		case "onClickContact":
//			fieldsToIgnore = new String[] { "account_details", "service_providers", "region", "plan_categories" };
//			break;
//		// Add fields to ignore for UPI API if any
//		case "onClickTransactionPinContinue":
//			fieldsToIgnore = new String[] { "service_details", "payment_details", "transaction_details", "errorId",
//					"errorAt" };
//			break;
//		// Add fields to ignore for UPI API if any
//		case "onClickUserNotEnabledAutoPay":
//			fieldsToIgnore = new String[] { "billerAccounts", "linkedBills" };
//			break;
//		// Add fields to ignore for UPI API if any
//		case "userEnabledAutoPay":
//			fieldsToIgnore = new String[] { "service_provider", "errorId", "errorAt" };
//			break;
//		case "trackComplaint":
//			fieldsToIgnore = new String[] { "service_provider", "errorId", "errorAt" };
//			break;
//		case "raiseComplaint":
//			fieldsToIgnore = new String[] { "service_provider", "errorId", "errorAt" };
//			break;
//		case "onClickTransactionPinContinueDTH":
//			fieldsToIgnore = new String[] { "account_details", "service_providers", "region", "plan_categories",
//					"errorId", "errorAt" };
//			break;
//
//		// NPS ignore fields as below
//		case "nps":
//			fieldsToIgnore = new String[] { "id", "errorId", "errorAt", "requestId", "timestamp", "status",
//					"asOnDate" };
//			break;
//
//		// Fund transfer Ignore Fields as below
//		case "get-fev-transactions":
//			fieldsToIgnore = new String[] { "data", "timestamp", "requestId", "trnxId" };
//			break;
//		case "transactionHistory":
//			fieldsToIgnore = new String[] { "paymentTxnId", "paymentTxnDate", "createdDate", "createdBy", "journey" };
//			break;
//		case "set-si":
//			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId", "trnxTimestamp" };
//			break;
//
//		// for incorrect endpoint url
//		case "set-si1":
//			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId", "trnxTimestamp" };
//			break;
//		case "get-si":
//			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId", "errorId", "errorAt", "data",
//					"trnxTimestamp" };
//			break;
//
//		// for incorrect endpoint url
//		case "get-si1":
//			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId", "errorId", "errorAt",
//					"trnxTimestamp" };
//			break;
//		case "get-si-records":
//			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId", "errorId", "errorAt",
//					"trnxTimestamp" };
//			break;
//
//		// for incorrect endpoint url
//		case "get-si-records1":
//			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId", "errorId", "errorAt",
//					"trnxTimestamp" };
//			break;
//		case "cancel-si":
//			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId", "errorId", "errorAt",
//					"trnxTimestamp" };
//			break;
//
//		// for incorrect endpoint url
//		case "cancel-si1":
//			fieldsToIgnore = new String[] { "referenceNumber", "timestamp", "requestId", "errorId", "errorAt",
//					"trnxTimestamp" };
//			break;
//		case "get-customer-consumed-limit":
//			fieldsToIgnore = new String[] { "currentDate", "withinBankBalDailyTrnLimit",
//					"withinBankConsumedDailyTrnLimit", "balanceDailyTrnLimit", "consumedDailyTrnLimit", "date",
//					"errorId", "errorAt", "requestId", "timestamp", "outsideBankBalDailyTrnLimit",
//					"outsideBankConsumedDailyTrnLimit" };
//			break;
//
//		// for incorrect endpoint url
//		case "get-customer-consumed-limit1":
//			fieldsToIgnore = new String[] { "currentDate", "withinBankBalDailyTrnLimit",
//					"withinBankConsumedDailyTrnLimit", "balanceDailyTrnLimit", "consumedDailyTrnLimit", "date",
//					"errorId", "errorAt", "requestId", "timestamp" };
//			break;
//		case "get-payee-consumed-limit":
//			fieldsToIgnore = new String[] { "currentDate", "withinBankBalDailyTrnLimit",
//					"withinBankConsumedDailyTrnLimit", "balanceDailyTrnLimit", "consumedDailyTrnLimit", "date",
//					"currentDate", "outsideBankBalDailyTrnLimit", "outsideBankConsumedDailyTrnLimit", "timestamp",
//					"requestId", "errorId", "errorAt" };
//			break;
//
//		// for incorrect endpoint url
//		case "get-payee-consumed-limit1":
//			fieldsToIgnore = new String[] { "currentDate", "withinBankBalDailyTrnLimit",
//					"withinBankConsumedDailyTrnLimit", "balanceDailyTrnLimit", "consumedDailyTrnLimit", "date",
//					"timestamp", "requestId" };
//			break;
//		case "p2p":
//			fieldsToIgnore = new String[] { "trnxTimestamp", "requestId", "transactionDate", "rrn", "txnId",
//					"timestamp" };
//			break;
//
//		// for incorrect endpoint url
//		case "p2p1":
//			fieldsToIgnore = new String[] { "trnxTimestamp", "requestId", "transactionDate", "rrn", "txnId",
//					"timestamp" };
//			break;
//		case "p2a":
//			fieldsToIgnore = new String[] { "trnxTimestamp", "requestId", "transactionDate", "rrn", "timestamp",
//					"requestId", "txnId" };
//			break;
//
//		// for incorrect endpoint url
//		case "p2a1":
//			fieldsToIgnore = new String[] { "trnxTimestamp", "requestId", "transactionDate", "rrn", "timestamp",
//					"requestId", "txnId" };
//			break;
//		case "fund-transfer":
//			fieldsToIgnore = new String[] { "coolingPeriodTime", "createdDate", "openingDate", "timestamp", "requestId",
//					"coolingPeriodTimeRemaining", "mbMaxPerTrnLimit", "modifiedDate", "referenceNumber",
//					"trnxTimestamp", "modifiedDate", "openingDate", "timestamp", "requestId", "createdDate",
//					"mobileNumber", "modifiedDate", "openingDate", "ibMaxDailyTrnLimit", "ibMaxPerTrnLimit",
//					"ibMinDailyTrnLimit", "ibMiPerTrnLimit", "referenceNumber", "remarks", "trnxTimestamp",
//					"availableBalance", "ledgerBalance", "txnDate", "availableBalance", "txnId", "debitAccountName",
//					"trnxId", "errorId", "errorAt", "selfAccount" };
//			break;
//		case "add-fav-trans":
//			fieldsToIgnore = new String[] { "createdDate", "openingDate", "trnxId" };
//			break;
//		case "add":
//			fieldsToIgnore = new String[] { "coolingPeriodTime", "createdDate", "openingDate", "errorDetails",
//					"timestamp", "requestId", "trnxId" };
//			break;
//
//		// for incorrect endpoint url
//		case "add1":
//			fieldsToIgnore = new String[] { "coolingPeriodTime", "createdDate", "openingDate", "errorDetails",
//					"timestamp", "requestId" };
//			break;
//
//		// for incorrect endpoint url
//		case "get-fev-transactions1":
//			fieldsToIgnore = new String[] { "data", "timestamp", "requestId", "selfAccount" };
//			break;
//		case "get-payees":
//			fieldsToIgnore = new String[] { "coolingPeriodTime", "createdDate", "openingDate", "timestamp", "requestId",
//					"coolingPeriodTimeRemaining", "mbMaxPerTrnLimit", "modifiedDate", "selfAccount" };
//			break;
//		case "within-bank-transfer":
//			fieldsToIgnore = new String[] { "data" };
//			break;
//
//		// for incorrect endpoint url
//		case "within-bank-transfer1":
//			fieldsToIgnore = new String[] { "availableBalance", "ledgerBalance", "txnDate", "txnId", "timestamp",
//					"requestId", "debitAccountName" };
//			break;
//
//		// for incorrect endpoint url
//		case "add-fav-trans1":
//			fieldsToIgnore = new String[] { "createdDate", "openingDate", "trnxId" };
//			break;
//
//		// for incorrect endpoint url
//		case "get-payees1":
//			fieldsToIgnore = new String[] { "coolingPeriodTime", "createdDate", "openingDate", "timestamp",
//					"coolingPeriodTimeRemaining", "requestId", "selfAccount" };
//			break;
//		case "edit":
//			fieldsToIgnore = new String[] { "modifiedDate", "openingDate", "timestamp", "requestId", "createdDate",
//					"mobileNumber", "modifiedDate", "openingDate", "ibMaxDailyTrnLimit", "ibMaxPerTrnLimit",
//					"ibMinDailyTrnLimit", "ibMiPerTrnLimit" };
//			break;
//
//		// for incorrect endpoint url
//		case "edit1":
//			fieldsToIgnore = new String[] { "modifiedDate", "openingDate", "timestamp", "requestId", "createdDate",
//					"mobileNumber", "modifiedDate", "openingDate" };
//			break;
//		case "delete":
//			fieldsToIgnore = new String[] { "createdDate", "openingDate", "errorId", "errorAt", "" };
//			break;
//
//		// for incorrect endpoint url
//		case "delete1":
//			fieldsToIgnore = new String[] { "createdDate", "openingDate", "errorId", "errorAt", "" };
//			break;
//		case "setPerTransactionLimit":
//			fieldsToIgnore = new String[] { "createdDate", "modifiedDate", "timestamp", "errorId", "errorAt",
//					"requestId" };
//			break;
//
//		// for incorrect endpoint url
//		case "setPerTransactionLimit1":
//			fieldsToIgnore = new String[] { "createdDate", "modifiedDate", "timestamp", "errorId", "errorAt",
//					"requestId" };
//			break;
//		case "outside-bank-transfer":
//			fieldsToIgnore = new String[] { "trxId", "trnxTimestamp", "txnId", "timestamp", "requestId",
//					"referenceNumber", "remarks", "trnxTimestamp" };
//			break;
//
//		// for incorrect endpoint url
//		case "outside-bank-transfer1":
//			fieldsToIgnore = new String[] { "trxId", "trnxTimestamp", "txnId", "timestamp", "requestId",
//					"referenceNumber", "remarks", "trnxTimestamp" };
//			break;
//
//		case "branch-by-ifsc":
//			fieldsToIgnore = new String[] { "id" };
//			break;
//
//		// Assisted portal ignore fields as below
//
//		case "assignment-service":
//			fieldsToIgnore = new String[] { "timestamp", "requestId" };
//			break;
//
//		case "consent-service":
//			fieldsToIgnore = new String[] { "timestamp", "requestId" };
//			break;
//		case "dashboard":
//			fieldsToIgnore = new String[] { "timestamp", "requestId", "errorId", "errorAt" };
//			break;
//
//		// ASBA
//		case "asba":
//			fieldsToIgnore = new String[] { "errorAt", "errorId" };
//			break;
//
//		// Business Services Ignore Fields as below
//		case "addLeiNumber":
//
//			fieldsToIgnore = new String[] { "referenceId", "errorId", "errorAt", "errors" };
//			break;
//		case "addUdyam":
//			fieldsToIgnore = new String[] { "referenceId", "errorAt", "errorId", "errors" };
//			break;
//
//		case "verifyUdyamNumber":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
//			break;
//		case "verifyUdyamNumber.":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
//			break;
//		case "verifyLeiNumber":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
//			break;
//
//		case "verifyLeiNumber.":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors", "timestamp", "requestId", "message" };
//			break;
//
//		case "addGst":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
//			break;
//
//		case "verifyGst":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
//			break;
//
//		case "verifyGst.":
//			fieldsToIgnore = new String[] { "timestamp", "requestId", "path", "errorId", "errorAt", "errors" };
//			break;
//
//		case "getAccountList":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
//			break;
//
//		case "getAccountList.":
//			fieldsToIgnore = new String[] { "timestamp", "requestId" };
//			break;
//
//		case "getGstList":
//			fieldsToIgnore = new String[] { "errorId", "errorAt", "errors" };
//			break;
//
//		case "getGstList.":
//			fieldsToIgnore = new String[] { "timestamp", "requestId", "path" };
//			break;
//
//		case "fetchGstList.":
//			fieldsToIgnore = new String[] { "timestamp", "message", "requestId", "errorId", "errorAt", "errors" };
//			break;
//
//		case "fetchGstList":
//			fieldsToIgnore = new String[] { "timestamp", "message", "requestId", "errorId", "errorAt", "errors" };
//			break;
//
//		case "addUdyam.":
//			fieldsToIgnore = new String[] { "timestamp", "message", "requestId" };
//			break;
//
//		case "addLeiNumber.":
//			fieldsToIgnore = new String[] { "referenceId", "errorId", "errorAt", "errors" };
//			break;
//		case "addLieNumber":
//			fieldsToIgnore = new String[] { "referenceId", "errorId", "errorAt", "errors" };
//			break;
//
//		// Continue adding additional cases as needed...
//
//		default:
//			// Handle default case if needed
//			break;
//
//		}
//		// Call the JSON comparison method with the fields to ignore and specific values
//		// to ignore
//
//		jsonComparator.compareJsonOutput(responseBody, fieldsToIgnore, specificValuesToIgnore);
//	}

	@Then("user verifies json from (.*)$")
	public void verifyJsonResponse(String expectedResponseFilePath) throws Exception {
		// Load properties from the file
		Properties properties = new Properties();
		try (FileInputStream fis = new FileInputStream("fieldsToIgnore.properties")) {
			properties.load(fis);
		}
		// Get the baseURI and split it into words
		String baseURI = RestAssured.baseURI;
		String[] uriParts = baseURI.split("[/\\.:]+"); // Split by `/`, `.` or `:`

		String flag = null;
		// Iterate over the URI parts and match with keys in the properties file
		for (String uriPart : uriParts) {
			for (String key : properties.stringPropertyNames()) {
				// Clean the key by removing '.fieldsToIgnore' suffix
				String cleanKey = key.replaceAll("\\.fieldsToIgnore", "");
				if (uriPart.equalsIgnoreCase(cleanKey)) {
					flag = cleanKey.split("\\.")[0]; // Extract the flag (e.g., "service1")
					break;
				}
			}
			if (flag != null) {
				break; // Exit loop once a match is found
			}
		}
		// If no match was found, set a default flag
		if (flag == null) {
			System.out.println("No matching key found in properties file for the baseURI: " + baseURI);
			flag = "NoKey";
		}
		// Log the resolved flag
		System.out.println("Selected Key: " + flag);
		// Fetch fieldsToIgnore
		String fieldsToIgnoreString = properties.getProperty(flag + ".fieldsToIgnore", "");
		String[] fieldsToIgnore = fieldsToIgnoreString.isEmpty() ? new String[0] : fieldsToIgnoreString.split(",");
		// Fetch specificValuesToIgnore
		Map<String, String[]> specificValuesToIgnore = new HashMap<>();
		for (String key : properties.stringPropertyNames()) {
			if (key.startsWith(flag + ".specificValuesToIgnore.")) {
				String fieldPath = key.replace(flag + ".specificValuesToIgnore.", "");
				String[] values = properties.getProperty(key, "").split(",");
				specificValuesToIgnore.put(fieldPath, values);
			}
		}
		// Debugging Logs
		// System.out.println("fieldsToIgnore: " + Arrays.toString(fieldsToIgnore));
		// System.out.println("specificValuesToIgnore: " + specificValuesToIgnore);
		// Compare JSON output
		jsonComparator.compareJsonOutput(expectedResponseFilePath, fieldsToIgnore, specificValuesToIgnore);
	}
	
	@Then("^user modifies (.+) with tag (.+) sorted by (.+) and (.+) of (.+)$")
	public void sortLADElegibleTDS(String reqfilePath,String fdAccountNo, String schemeCategory, String renewFlag, String resfilePath) throws IOException {
		steps.updateJsonFileWithFdAccountRenew(reqfilePath,fdAccountNo, schemeCategory, renewFlag, resfilePath);
	}
	
//	created by Vijay M on 26Jun2025
	@Then("^user converts (.+) to filter with (.+) and (.+)$")
	public void EligibleTdsNewFile(String resfilePath, String schemeCategory, String renewFlag) throws IOException {
		steps.EligibleTdsNewFile(resfilePath, schemeCategory, renewFlag);
	}
	
	// Added By Vijay M: to call FD open term deposit from LAD services without encryption
		@Then("^user triggers a post request for open Fixed Desposit (.*)$")
		public void triggerPostRequestforopenFixedDeposit(String requestBody) {
			try {
				System.out.print("FixedDeposit Request Body: " + requestBody);
				steps.triggerPostRequestwithoutEncryption(requestBody);
			} catch (Exception e) {
				System.out.println("Exception in triggerPostRequestforopenFixedDeposit method "+e);;
			}
		}
		
	// Added By Vijay M on 30/6/25: to call accountInfo from LAD services without encryption
		@Then("^user triggers a post request for AccountInfoAPI (.*)$")
		public void triggerPostRequesAccountAPI(String requestBody) {
			try {
				System.out.print("Account Info Request Body: " + requestBody);
				steps.triggerPostRequesAccountAPI(requestBody);
			} catch (Exception e) {
				System.out.println("Exception in triggerPostRequestforopenFixedDeposit method "+e);;
			}
		}
		
		// added by Dipesh for Credit Card
		@When("^user updates the json request body (.*) with tags (.*) and cif (.*) for generating transactionID$")
	    public void settransactionID(String requestBody,String tags,String cif) throws Exception {
	                  steps.generateTxnID(requestBody, tags, cif);
	   }
	
//		created by Vijay M on 26Jun2025
		@Then("^sort (.*) file based on (.*) and (.*)$")
		public void sortElegibleTDSResponse(String resfilePath, String sCategory, String rFlag) throws Exception {
			steps.sortEligibleTds(resfilePath, sCategory, rFlag);
		}
//		created by Vijay M on 30Jun2025	
		@Then("^user identifies (.*) account from accountInfo API$")
		public void LADAccountList(String accType) throws Exception {
			steps.LoanAgainstDepostAccountList(accType);
		}
}