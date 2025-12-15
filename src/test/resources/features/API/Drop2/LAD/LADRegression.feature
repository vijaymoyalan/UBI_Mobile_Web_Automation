# Feature: LAD API
# Author: Vijay Moyalan
# Description: Regression Testing : LAD API
# Test Environment: SIT
# Preconditions: LAD API should be up and running


Feature: Regression Test for LAD API
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/LAD


@TestCaseKey=UDB-LAD001 @LAD=eligible-tds
 		Scenario Outline: Verify "eligible-tds" API "GET" Method for Status code 405 with Only Mandatory fields
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a get request with <requestBody>
  		Then user verifies that status is 405
  		Then user verifies json from <responseBody>
  
  			Examples:
					|	service |	endpoint      |	requestBody																																			|  requestField | responsefield | filename  | responseBody																																								| 
					|	lad	    |	/eligible-tds	|	src/test/resources/testdata/api/request/Drop2/LAD/eligible-tds_request_405.json	|	 null         | null          | null	    | src/test/resources/testdata/api/response/expected/Drop2/LAD/eligible-tds_response_405.json	|
	
	
@TestCaseKey=UDB-LAD006 @LAD=eligible-tds
 		Scenario Outline: Verify "eligible-tds" API "POST" Method for Status code 401 if invalid CIF is provided in request body
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 401
  		Then user verifies json from <responseBody>
  
  			Examples:
					|	service |	endpoint      |	requestBody																																			|  requestField | responsefield | filename  | responseBody																																								| 
					|	lad	    |	/eligible-tds	|	src/test/resources/testdata/api/request/Drop2/LAD/eligible-tds_request_401.json	|	 null         | null          | null	    | src/test/resources/testdata/api/response/expected/Drop2/LAD/eligible-tds_response_401.json	|


@TestCaseKey=UDB-LAD013 @LAD=fd-auto-renew-flag
 		Scenario Outline: Verify "fd-auto-renew-flag" API "POST" Method for Status code 500 Internal server Error
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 500
  		Then user verifies json from <responseBody>
  
  			Examples:
					|	service |	endpoint      			|	requestBody																																						|  requestField | responsefield | filename  | responseBody																																								| 
					|	lad	    |	/fd-auto-renew-flag	|	src/test/resources/testdata/api/request/Drop2/LAD/fd_auto_renew_flag_request_500.json	|	 null         | null          | null	    | src/test/resources/testdata/api/response/expected/Drop2/LAD/fd_auto_renew_flag_response_500.json	|
				
@TestCaseKey=UDB-LAD045 @LAD=fd-auto-renew-flag
 		Scenario Outline: Verify "fd-auto-renew-flag" API "GET" Method for Status code 405 with only mandetory fields
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a get request with <requestBody>
  		Then user verifies that status is 405
  		Then user verifies json from <responseBody>
  
  			Examples:
					|	service |	endpoint      			|	requestBody																																						|  requestField | responsefield | filename  | responseBody																																								| 
					|	lad	    |	/fd-auto-renew-flag	|	src/test/resources/testdata/api/request/Drop2/LAD/fd_auto_renew_flag_request_405.json	|	 null         | null          | null	    | src/test/resources/testdata/api/response/expected/Drop2/LAD/fd_auto_renew_flag_response_405.json	|
					
	
@TestCaseKey=UDB-LAD012 @LAD=fd-auto-renew-flag
 		Scenario Outline: Verify "fd-auto-renew-flag" API "POST" Method for Status code 401 Error
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 401
  		Then user verifies json from <responseBody>
  
  			Examples:
					|	service |	endpoint      			|	requestBody																																						|  requestField | responsefield | filename  | responseBody																																											| 
					|	lad	    |	/fd-auto-renew-flag	|	src/test/resources/testdata/api/request/Drop2/LAD/fd_auto_renew_flag_request_401.json	|	 null         | null          | null	    | src/test/resources/testdata/api/response/expected/Drop2/LAD/fd_auto_renew_flag_response_401.json	|
					

@TestCaseKey=UDB-LAD017 @LAD=loan-purpose
Scenario Outline: Verify "loan-purpose" API "POST" Method for Status code 401 with if the input is not available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint				|requestBody                                                             					|requestField  	|responsefield  |filename |responseBody																																								|
				|lad			|/loan-purpose	|src/test/resources/testdata/api/request/Drop2/LAD/loan_purpose_request_401.json 	|null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/loan_purpose_response_401.json|
				
@TestCaseKey=UDB-LAD019 @LAD=loan-purpose
Scenario Outline: Verify "loan-purpose" API "POST" Method for Status code 401 with missing Mandatory field
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint				|requestBody                                                             					|requestField  	|responsefield  |filename |responseBody																																								|
				|lad			|/loan-purpose	|src/test/resources/testdata/api/request/Drop2/LAD/loan_purpose_request_401_1.json 	|null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/loan_purpose_response_401_1.json|

@TestCaseKey=UDB-LAD020 @LAD=loan-purpose
Scenario Outline: Verify "loan-purpose" API "GET" Method for Status code 405 with all fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint				|requestBody                                                             					|requestField  	|responsefield  |filename |responseBody																																							|
				|lad			|/loan-purpose	|src/test/resources/testdata/api/request/Drop2/LAD/loan_purpose_request_405.json 	|null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/loan_purpose_response_405.json|

				
@TestCaseKey=UDB-LAD031 @LAD=open-account
Scenario Outline: Verify "open-account" API "POST" Method for Status code 400 with if the input is not available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint				|requestBody                                                             					|requestField  	|responsefield  |filename |responseBody																																							|
				|lad			|/open-account	|src/test/resources/testdata/api/request/Drop2/LAD/open_account_request_400.json 	|null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/open_account_response_400.json|
			
@TestCaseKey=UDB-LAD046 @LAD=open-account
Scenario Outline: Verify "open-account" API "GET" Method for Status code 405 with all fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint				|requestBody                                                             					|requestField  	|responsefield  |filename |responseBody																																							 |
				|lad			|/open-account	|src/test/resources/testdata/api/request/Drop2/LAD/open_account_request_405.json 	|null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/open_account_response_405.json|
			
				
@TestCaseKey=UDB-LAD033 @LAD=open-account
Scenario Outline: Verify "open-account" API "POST" Method for Status code 400 with missing Mandatory field
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint				|requestBody                                                             					  |requestField  	|responsefield  |filename |responseBody																																								 |
				|lad			|/open-account	|src/test/resources/testdata/api/request/Drop2/LAD/open_account_request_400_1.json 	|null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/open_account_response_400_1.json|

@TestCaseKey=UDB-LAD034 @LAD=open-account
Scenario Outline: Verify "open-account" API "POST" Method for Status code 400 Internal server Error
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint				|requestBody                                                             					  |requestField  	|responsefield  |filename |responseBody																																								 |
				|lad			|/open-account	|src/test/resources/testdata/api/request/Drop2/LAD/open_account_request_400_1.json 	|null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/open_account_response_400_1.json|

				
@TestCaseKey=UDB-LAD040 @LAD=interest-run-calculator
Scenario Outline: Verify "interest-run-calculator" API "POST" Method for Status code 400 with missing Mandatory field
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint									|requestBody                                                             					  					|requestField  	|responsefield  |filename |responseBody																																								 					|
				|lad			|/interest-run-calculator	|src/test/resources/testdata/api/request/Drop2/LAD/interest_run_calculator_request_400.json 	|null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/interest_run_calculator_response_400.json|
		
@TestCaseKey=UDB-LAD037 @LAD=interest-run-calculator
Scenario Outline: Verify "interest-run-calculator" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint									|requestBody                                                             					  					|requestField  	|responsefield  |filename |responseBody																																								 								|
				|lad			|/interest-run-calculator	|src/test/resources/testdata/api/request/Drop2/LAD/interest_run_calculator_request_200_1.json |null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/interest_run_calculator_response_200_1.json|

@TestCaseKey=UDB-LAD038 @LAD=interest-run-calculator
Scenario Outline: Verify "interest-run-calculator" API "POST" Method for Status code 401 with no input in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint									|requestBody                                                             					  					|requestField  	|responsefield  |filename |responseBody																																								 								|
				|lad			|/interest-run-calculator	|src/test/resources/testdata/api/request/Drop2/LAD/interest_run_calculator_request_400_1.json |null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/interest_run_calculator_response_401_1.json|


@TestCaseKey=UDB-LAD042 @LAD=interest-run-calculator
Scenario Outline: Verify Business Validation For "interest-run-calculator" API, when LAD account is closed.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint									|requestBody                                                             					  					|requestField  	|responsefield  |filename |responseBody																																								 								|
				|lad			|/interest-run-calculator	|src/test/resources/testdata/api/request/Drop2/LAD/interest_run_calculator_request_200_2.json |null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/interest_run_calculator_response_200_2.json|

		
@TestCaseKey=UDB-LAD041 @LAD=interest-run-calculator
Scenario Outline: Verify "interest-run-calculator" API "POST" Method for Status code 200 if only CIF is passed.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint									|requestBody                                                             					  				|requestField  	|responsefield  |filename |responseBody																																								 					|
				|lad			|/interest-run-calculator	|src/test/resources/testdata/api/request/Drop2/LAD/interest_run_calculator_request_200_4.json |null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/interest_run_calculator_response_200_4.json|

				
@TestCaseKey=UDB-LAD058 @LAD=lad-closure-with-td
Scenario Outline: Verify "lad-closure-with-td" API "POST" Method for Status code 400
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint							|requestBody                                                             					  				|requestField  	|responsefield  |filename |responseBody																																								 					|
				|lad			|/lad-closure-with-td	|src/test/resources/testdata/api/request/Drop2/LAD/interest_run_calculator_request_400.json |null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/interest_run_calculator_response_400.json|
				
				
@TestCaseKey=UDB-LAD023 @LAD=draft-account-detail
Scenario Outline: Verify "draft-account-detail" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint								|requestBody                                                             											|requestField  	|responsefield  |filename |responseBody																																													|
				|lad			|/draft-account-detail	|src/test/resources/testdata/api/request/Drop2/LAD/draft_account_details_request_200_1.json 	|null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/draft_account_details_response_200_1.json|


@TestCaseKey=UDB-LAD027 @LAD=draft-account-detail
Scenario Outline: Verify "draft-account-detail" API "POST" Method for Status code 500 Internal server Error
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint								|requestBody                                                             										|requestField  	|responsefield  |filename |responseBody																																												|
				|lad			|/draft-account-detail	|src/test/resources/testdata/api/request/Drop2/LAD/draft_account_details_request_500.json 	|null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/draft_account_details_response_500.json|
				
				
@TestCaseKey=UDB-LAD048 @LAD=fetch-lad-acc-details
Scenario Outline: Verify "fetch-lad-acc-details" API "POST" Method for Status code 500 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint								|requestBody                                                             										|requestField  	|responsefield  |filename |responseBody																																												|
				|lad			|/fetch-lad-acc-details	|src/test/resources/testdata/api/request/Drop2/LAD/fetch_lad_acc_details_request_500.json 	|null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/fetch_lad_acc_details_response_500.json|

				
@TestCaseKey=UDB-LAD044 @LAD=fetch-lad-acc-details
Scenario Outline: Verify "fetch-lad-acc-details" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint								|requestBody                                                             											|requestField  	|responsefield  |filename |responseBody																																												|
				|lad			|/fetch-lad-acc-details	|src/test/resources/testdata/api/request/Drop2/LAD/fetch_lad_acc_details_request_200_1.json 	|null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/fetch_lad_acc_details_response_200_1.json|

@TestCaseKey=UDB-LAD049 @LAD=lad-closure-with-operativeaccount
Scenario Outline: Verify "lad-closure-with-operativeaccount" API "POST" Method for Status code 200 with Optional fields.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user identifies <accountType> account from accountInfo API
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint														|requestBody                                                             					  					 	 |requestField  											|responsefield  													|filename 										|responseBody																																								 							| accountType 					|
				|lad			|/lad-closure-with-operativeaccount	|src/test/resources/testdata/api/request/Drop2/LAD/lad_closure_with_operative_account_200_1.json |ladAccountNumber,transactionAmount	|accounts[0].acctNum,accounts[0].amount		|LAD_accountinfo_output.json  |src/test/resources/testdata/api/response/expected/Drop2/LAD/lad_closure_with_operative_account_200_1.json| Loan Against Deposit |

@TestCaseKey=UDB-LAD050 @LAD=lad-closure-with-operativeaccount
Scenario Outline: Verify "lad-closure-with-operativeaccount" API "GET" Method for Status code 405 with Optional fields.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user identifies <accountType> account from accountInfo API
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint														|requestBody                                                             					  					 |requestField  											|responsefield  													|filename 										|responseBody																																								 					  | accountType 					|
				|lad			|/lad-closure-with-operativeaccount	|src/test/resources/testdata/api/request/Drop2/LAD/lad_closure_with_operative_account_405.json |ladAccountNumber,transactionAmount	|accounts[0].acctNum,accounts[0].amount		|LAD_accountinfo_output.json  |src/test/resources/testdata/api/response/expected/Drop2/LAD/lad_closure_with_operative_account_405.json| Loan Against Deposit |

				
@TestCaseKey=UDB-LAD051 @LAD=lad-closure-with-operativeaccount
Scenario Outline: Verify "lad-closure-with-operativeaccount" API "POST" Method for Status code 500.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user identifies <accountType> account from accountInfo API
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint														|requestBody                                                             					  					 |requestField  											|responsefield  													|filename 										|responseBody																																								 					  | accountType 				|
				|lad			|/lad-closure-with-operativeaccount	|src/test/resources/testdata/api/request/Drop2/LAD/lad_closure_with_operative_account_500.json |ladAccountNumber,transactionAmount	|accounts[0].acctNum,accounts[0].amount		|LAD_accountinfo_output.json  |src/test/resources/testdata/api/response/expected/Drop2/LAD/lad_closure_with_operative_account_500.json| Loan Against Deposit |
				