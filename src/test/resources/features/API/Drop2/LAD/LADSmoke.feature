# Feature: LAD API
# Author: Vijay Moyalan
# Description: Smoke Testing : LAD API
# Test Environment: SIT
# Preconditions: LAD API should be up and running


#################################################################
Feature: Smoke Test for LAD API
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/LAD
#################################################################


@TestCaseKey=UDB-T28622 @accountInfo
  Scenario Outline: Verify that account Info API is returning list of accounts
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request for AccountInfoAPI <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service       	 | endpoint    	| requestBody 																													 |requestField |responsefield  | filename  | responseBody                                                                                           |
      | chequeserviceOne | /account-info |src/test/resources/testdata/api/request/Drop2/LAD/LAD_accountinfo.json |null					|null					 |null			 |src/test/resources/testdata/api/response/expected/Drop2/LAD/LAD_accountinfo.json|

@TestCaseKey=UDB-T7681 @OpenFD
Scenario Outline: Verify open term deposit (FD) for a customer
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for open Fixed Desposit <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

		Examples:
		
		|service |endpoint        | requestBody     																																		|requestfield |responsefield  |filename  |responseBody																																									|
		|deposits|/openTermDeposit|src/test/resources/testdata/api/request/Drop2/LAD/FD_RD_Req_openTermDeposit_VJM.json	|	null				|	null					|null			 |src/test/resources/testdata/api/response/expected/Drop2/LAD/FD_RD_Res_openTermDeposit_VJM.json|


@TestCaseKey=UDB-LAD002 @TestCaseKey=UDB-LAD007 @LAD=eligible-tds
 		Scenario Outline: Verify "eligible-tds" API "POST" Method for Status code 200 with Only Mandatory fields
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		#Then user verifies json from <responseBody>
  
  			Examples:
					|	service |	endpoint      |	requestBody																																	|  requestField | responsefield | filename	| responseBody																																										| 
					|	lad	    |	/eligible-tds	|	src/test/resources/testdata/api/request/Drop2/LAD/eligible-tds_200_VJM.json	|	 null        	| null	        | null	    | src/test/resources/testdata/api/response/expected/Drop2/LAD/eligible-tds_200_VJM.json	|

		

#@TestCaseKey=UDB-LAD008 @TestCaseKey=UDB-LAD014 @LAD=fd-auto-renew-flag
#Scenario Outline: Verify "fd-auto-renew-flag" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user modifies <requestBody> with tag <requestField> sorted by <schemeCategory> and <renewalFlg> of <filePath>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 200
#Then user verifies json from <responseBody>
#				Examples:
#				|service  |endpoint							|requestBody                                                                           		 |requestField  |responsefield  |filePath                   																			|responseBody																																													|schemeCategory |renewalFlg|
#				|lad			|/fd-auto-renew-flag	|src/test/resources/testdata/api/request/Drop2/LAD/fd_auto_renew_flag_request_200_VJM.json |fdAccountNo		|null						|src/test/resources/responseFolder/eligible-tds_request_200.json 	|src/test/resources/testdata/api/response/expected/Drop2/LAD/fd_auto_renew_flag_response_200_VJM.json	|FDSC						|N				 |			


@TestCaseKey=UDB-LAD008 @TestCaseKey=UDB-LAD014 @LAD=fd-auto-renew-flag
Scenario Outline: Verify "fd-auto-renew-flag" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then sort <eligibleTDS> file based on <schemeCategory> and <renewalFlag>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint							|requestBody                                                                       |requestField  |responsefield  									  |filename                  	|responseBody																																									| renewalFlag | schemeCategory | eligibleTDS 							 																	 |
				|lad			|/fd-auto-renew-flag	|src/test/resources/testdata/api/request/Drop2/LAD/fd_auto_renew_flag_200_VJM.json |fdAccountNo		|tdAccountInfoList[0].accountNumber	|eligible-tds_200_VJM.json 	|src/test/resources/testdata/api/response/expected/Drop2/LAD/fd_auto_renew_flag_200_VJM.json	|	N				 		| FDSC					 | src/test/resources/responseFolder/eligible-tds_200_VJM.json |



@TestCaseKey=UDB-LAD015 @TestCaseKey=UDB-LAD021 @LAD=loan-purpose
Scenario Outline: Verify "loan-purpose" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint				|requestBody                                                             							|requestField  	|responsefield  |filename |responseBody																																							 		 |
				|lad			|/loan-purpose	|src/test/resources/testdata/api/request/Drop2/LAD/loan_purpose_request_200_VJM.json 	|null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/loan_purpose_response_200_VJM.json|
				

@TestCaseKey=UDB-LAD022 @TestCaseKey=UDB-LAD028 @LAD=draft-account-detail
Scenario Outline: Verify "draft-account-detail" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user converts <filename> to filter with <schemeCategory> and <renewalFlg>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint      					|	requestBody																																										|requestField																																																																																																																															|  filename 									| responsefield																																																																																																																	| responseBody																																											 		 |schemeCategory |renewalFlg  | 	 
				|lad	    |/draft-account-detail	|	src/test/resources/testdata/api/request/Drop2/LAD/draft_account_details_request_200_VJM.json	|depositAccountDetail[0].fdAccountNumber,depositAccountDetail[0].investedAmount,depositAccountDetail[0].currentValue,depositAccountDetail[0].interestRate,depositAccountDetail[0].maturityDate,depositAccountDetail[0].schemeCode,depositAccountDetail[0].schemeCategory	|	 eligible-tds_200_VJM.json 	| tdAccountInfoList[0].accountNumber,tdAccountInfoList[0].depositAmt,tdAccountInfoList[0].curDepositAmt,tdAccountInfoList[0].interestRate,tdAccountInfoList[0].maturityDate,tdAccountInfoList[0].schemeCode,tdAccountInfoList[0].schemeCategory	| src/test/resources/testdata/api/response/expected/Drop2/LAD/draft_account_details_response_200_VJM.json|FDSC					 |U 			 		|

 
@TestCaseKey=UDB-LAD029 @TestCaseKey=UDB-LAD035 @LAD=open-account
Scenario Outline: Verify "open-account" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user converts <filename> to filter with <schemeCategory> and <renewalFlg>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint				|requestBody                                                             					|requestField  										|filename										|responsefield  										 		|responseBody																																					 |schemeCategory |renewalFlg |
				|lad			|/open-account	|src/test/resources/testdata/api/request/Drop2/LAD/open_account_req_200_VJM.json 	|depositAccounts[0].accountNumber	|eligible-tds_200_VJM.json	|tdAccountInfoList[0].accountNumber	 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/open_account_res_200.json |FDSC					 |U 			 	 |
				

@TestCaseKey=UDB-LAD043 @TestCaseKey=UDB-LAD049 @LAD=fetch-lad-acc-details
Scenario Outline: Verify "fetch-lad-acc-details" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint								|requestBody                                                             												|requestField  	|responsefield  |filename |responseBody																																														|
				|lad			|/fetch-lad-acc-details	|src/test/resources/testdata/api/request/Drop2/LAD/fetch_lad_acc_details_request_200_VJM.json 	|null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/fetch_lad_acc_details_response_200_VJM.json|
				
				
@TestCaseKey=UDB-LAD036 @LAD=interest-run-calculator
Scenario Outline: Verify "interest-run-calculator" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint									|requestBody                                                             					  						|requestField  	|responsefield  |filename |responseBody																																								 							|
				|lad			|/interest-run-calculator	|src/test/resources/testdata/api/request/Drop2/LAD/interest_run_calculator_request_200_VJM.json |null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/interest_run_calculator_response_200_VJM.json|

@TestCaseKey=UDB-LAD042 @LAD=lad-closure-with-operativeaccount
Scenario Outline: Verify "lad-closure-with-operativeaccount" API "POST" Method for Status code 200 with all fields (Mandatory and Optional).
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user identifies <accountType> account from accountInfo API
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
				Examples:
				|service  |endpoint														|requestBody                                                             					  					 |requestField  											|responsefield  													|filename 										|responseBody																																								 						| accountType 					|
				|lad			|/lad-closure-with-operativeaccount	|src/test/resources/testdata/api/request/Drop2/LAD/lad_closure_with_operative_account_200.json |ladAccountNumber,transactionAmount	|accounts[0].acctNum,accounts[0].amount		|LAD_accountinfo_output.json  |src/test/resources/testdata/api/response/expected/Drop2/LAD/lad_closure_with_operative_account_200.json| Loan Against Deposit |
				

#@TestCaseKey=UDB-LAD044 @LAD=lad-closure-with-td
#Scenario Outline: Verify Business Validation For "lad-closure-with-td" API.
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 200
#Then user verifies json from <responseBody>
#				Examples:
#				|service  |endpoint														|requestBody                                                             					  										|requestField  	|responsefield  |filename |responseBody																																								 											|
#				|lad			|/lad-closure-with-td	|src/test/resources/testdata/api/request/Drop2/LAD/lad_closure_with_td_resquest_200.json |null						|null						|null 		|src/test/resources/testdata/api/response/expected/Drop2/LAD/lad_closure_with_td__response_200.json|
#				