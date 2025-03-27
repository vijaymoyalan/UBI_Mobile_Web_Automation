# Feature: ASBA API
# Author: Dipesh Titirmare
# Description: Regression Testing : ASBA API
# Test Environment: UAT
# Preconditions: ASBA API should be up and running

#######################################################################################
Feature: Regression of ASBA API Test
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/ASBA
#######################################################################################


############################<--getOngoingIpoList-->###########################################

@RegressionTest-UDB-T000
Scenario Outline: Verify "/getProfileDetails" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples: 
| service        | endpoint    				| requestBody 																																																										|requestField|responsefield|filename  | responseBody                                                                                           |
| generalservice | getProfileDetails  |\src\test\resources\testdata\api\request\Drop2\ASBA\GS_getProfileDetails_Regression_Mandatory_Optional_200.json|null 			 |null 				 | null 		|\src\test\resources\testdata\api\response\Expected\Drop2\ASBA\GS_getProfileDetails_Regression_Mandatory_Optional_200.json |
 


@RegressionTest-UDB-T001 
Scenario Outline: Verify that system should return the Ongoing IPO list by hitting the post getOngoingIpoList api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint              | requestBody                                                                    | requestField  | responsefield     | filename   																								  | responseBody |
| asbaservice | getOngoingIpoList     | src\test\resources\testdata\api\request\Drop2\ASBA\200_getOngoingIpoList.json  | cif           | customerId        | GS_getProfileDetails_Regression_Mandatory_Optional_200.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getOngoingIpoList.json|

@RegressionTest-UDB-T002 
Scenario Outline: Verify that system should return "401" the Ongoing IPO list by hitting the post getOngoingIpoList api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:
| service     | endpoint              | requestBody                                                                    | requestField  | responsefield     | filename    | responseBody |
| asbaservice | getOngoingIpoList     | src\test\resources\testdata\api\request\Drop2\ASBA\401_getOngoingIpoList.json  | null          | null              | null        | src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_getOngoingIpoList.json|

@RegressionTest-UDB-T003
Scenario Outline: Verify "/getOngoingIpoList" API for Status code 404 if endpoint is Invalid
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples: 
| service        | endpoint 				       | requestBody 																																	  | requestField		| responsefield		|	filename 	| responseBody                                                                           |
| asbaservice    | getOngoingIpoList123455 | src\test\resources\testdata\api\request\Drop2\ASBA\404_getOngoingIpoList.json	| null         	  | null    			 	| null      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_getOngoingIpoList.json|


@RegressionTest-UDB-T004
Scenario Outline: Verify "/getOngoingIpoList" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples: 
| service        | endpoint 				 | requestBody 																																		| requestField		| responsefield		|	filename 	| responseBody                                                                            |
| asbaservice    | getOngoingIpoList | src\test\resources\testdata\api\request\Drop2\ASBA\405_getOngoingIpoList.json	| null         	  | null    			 	| null      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_getOngoingipoList.json |


############################<--fetchDematList-->###########################################
@RegressionTest-UDB-T005
Scenario Outline: Verify that system should return the "200" for already added Demat Account list by hitting the post "/fetchDematList" api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint           | requestBody                                                                    | requestField  | responsefield     | filename   																								 | responseBody |
| asbaservice | fetchDematList     | src\test\resources\testdata\api\request\Drop2\ASBA\200_fetchDematList.json     | cif,pan       | customerId,pan    | GS_getProfileDetails_Regression_Mandatory_Optional_200.json| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_fetchDematList.json|

@RegressionTest-UDB-T006
Scenario Outline: Verify that system should return the "401" for already added Demat Account list by hitting the post "/fetchDematList" api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:
| service     | endpoint           | requestBody                                                                    | requestField  | responsefield     | filename   | responseBody |
| asbaservice | fetchDematList     | src\test\resources\testdata\api\request\Drop2\ASBA\401_fetchDematList.json     | null          | null              | null       | src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_fetchDematList.json|

@RegressionTest-UDB-T007
Scenario Outline: Verify that system should return the "400" for already added Demat Account list by hitting the post "/fetchDematList" api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
| service     | endpoint           | requestBody                                                                    | requestField  | responsefield     | filename   | responseBody |
| asbaservice | fetchDematList     | src\test\resources\testdata\api\request\Drop2\ASBA\400_fetchDematList.json     | null          | null              | null       | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_fetchDematList.json|


@RegressionTest-UDB-T008
Scenario Outline: Verify "/fetchDematList" API "POST" Method for Status code 404 if endpoint is Invalid
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples: 
| service     | endpoint 		 		      | requestBody 																													  		| requestField		 | responsefield  | filename      | responseBody |
| asbaservice | fetchDematList123455  | src\test\resources\testdata\api\request\Drop2\ASBA\404_fetchDematList.json  | null             | null     			| null          | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_fetchDematList.json|

@RegressionTest-UDB-T009
Scenario Outline: Verify "/fetchDematList" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples: 
| service        | endpoint 				 | requestBody 																															  | requestField		| responsefield		|	filename 	| responseBody                                                                         |
| asbaservice    | fetchDematList    | src\test\resources\testdata\api\request\Drop2\ASBA\405_fetchDematList.json	| null         	  | null    			 	| null      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_fetchDematList.json |


############################<--getAppliedIpoList-->###########################################

@RegressionTest-UDB-T010
Scenario Outline: Verify that system should return the "200" correct response for already applied IPO list by hitting the getAppliedIpoList api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>   
Then user verifies that status is 200
Then user copy file from <source> and paste to file at location <responseBody>
Then user verifies json from <responseBody>
			
Examples:			
| service        | endpoint          | requestBody 																																		|	requestField   |	responsefield  						| filename       																							| responseBody                   																										      |source|
| asbaservice 	 | getAppliedIpoList | src\test\resources\testdata\api\request\Drop2\ASBA\200_getAppliedIpoList.json	|	cif,pan        | customerId,kycDetails.pan  | GS_getProfileDetails_Regression_Mandatory_Optional_200.json |	src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json |src/test/resources/responseFolder/200_getAppliedIpoList.json|                      

@RegressionTest-UDB-T011
Scenario Outline: Verify that system should return the "401" response for already applied IPO list by hitting the getAppliedIpoList api.
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:			
| service        | endpoint          | requestBody 																																		|	requestField   |	responsefield 	| filename       																							| responseBody                   																										      |
| asbaservice 	 | getAppliedIpoList | src\test\resources\testdata\api\request\Drop2\ASBA\401_getAppliedIpoList.json	|	pan        		 |  kycDetails.pan  | GS_getProfileDetails_Regression_Mandatory_Optional_200.json |	src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_getAppliedIpoList.json |                      


@RegressionTest-UDB-T012
Scenario Outline: Verify that system should return the "400" for already applied IPO list by hitting the getAppliedIpoList api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
| service     | endpoint           | requestBody                                                                    | requestField  | responsefield     | filename   | responseBody |
| asbaservice | getAppliedIpoList  | src\test\resources\testdata\api\request\Drop2\ASBA\400_getAppliedIpoList.json  | null          | null              | null       | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_getAppliedIpoList.json|

@RegressionTest-UDB-T013
Scenario Outline: Verify "/getAppliedIpoList" API "POST" Method for Status code 404 if endpoint is Invalid
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples: 
| service     | endpoint 		 		       | requestBody 																															  		| requestField		 | responsefield  						| filename      																							| responseBody |
| asbaservice | getAppliedIpoList1234  | src\test\resources\testdata\api\request\Drop2\ASBA\404_getAppliedIpoList.json  | cif,pan          | customerId,kycDetails.pan  | GS_getProfileDetails_Regression_Mandatory_Optional_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_getAppliedIpoList.json|

@RegressionTest-UDB-T014
Scenario Outline: Verify "/getAppliedIpoList" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples: 
| service        | endpoint 				 | requestBody 																																	  | requestField		| responsefield							|	filename 																												 | responseBody                                                                         |
| asbaservice    | getAppliedIpoList | src\test\resources\testdata\api\request\Drop2\ASBA\405_getAppliedIpoList.json	| cif,pan      	  | customerId,kycDetails.pan	| GS_getProfileDetails_Regression_Mandatory_Optional_200.json      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_fetchDematList.json |

############################<--addNewDematAccount-->###########################################

@RegressionTest-UDB-T015
Scenario Outline: Verify that system should return the "200" response for adding the Demat account by hitting the post addNewDematAccount api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint              | requestBody                                                                         | requestField  | responsefield   								 | filename     																							 | responseBody |
| asbaservice | addNewDematAccount    | src\test\resources\testdata\api\request\Drop2\ASBA\200_addNewDematAccount_CDSL.json | cif,pan,name  | customerId,kycDetails.pan,name   | GS_getProfileDetails_Regression_Mandatory_Optional_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_addNewDematAccount_CDSL.json|

@RegressionTest-UDB-T016
Scenario Outline: Verify that system should return the "401" response for for adding the Demat account by hitting the post addNewDematAccount api.
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:			
| service        | endpoint          | requestBody 																																		|	requestField   |	responsefield  						| filename       																							| responseBody                   																										       |
| asbaservice 	 | addNewDematAccount| src\test\resources\testdata\api\request\Drop2\ASBA\401_addNewDematAccount.json	|	pan,name   		 | kycDetails.pan,name  			| GS_getProfileDetails_Regression_Mandatory_Optional_200.json |	src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_addNewDematAccount.json |                      

@RegressionTest-UDB-T017
Scenario Outline: Verify that system should return the "400" response for for adding the Demat account by entering the invalid details of post addNewDematAccount api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
| service     | endpoint           | requestBody                                                                    | requestField  | responsefield     						 | filename   																									| responseBody |
| asbaservice | addNewDematAccount | src\test\resources\testdata\api\request\Drop2\ASBA\400_addNewDematAccount.json | cif,pan,name  | customerId,kycDetails.pan,name | GS_getProfileDetails_Regression_Mandatory_Optional_200.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_addNewDematAccount.json|

@RegressionTest-UDB-T018
Scenario Outline: Verify "/addNewDematAccount" API "POST" Method for Status code 404 if endpoint is Invalid
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples: 
| service     | endpoint 		 		       | requestBody 																															  		| requestField	| responsefield  									| filename      																							| responseBody |
| asbaservice | addNewDematAccount1234 | src\test\resources\testdata\api\request\Drop2\ASBA\404_addNewDematAccount.json | cif,pan,name  | customerId,kycDetails.pan,name  | GS_getProfileDetails_Regression_Mandatory_Optional_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_addNewDematAccount.json|

@RegressionTest-UDB-T019
Scenario Outline: Verify "/addNewDematAccount" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:   
| service        | endpoint 				 | requestBody 																																	  | requestField		| responsefield						    		|	filename 																												 | responseBody                                                                             |
| asbaservice    | addNewDematAccount| src\test\resources\testdata\api\request\Drop2\ASBA\405_addNewDematAccount.json	| cif,pan,name 	  | customerId,kycDetails.pan,name	| GS_getProfileDetails_Regression_Mandatory_Optional_200.json      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_addNewDematAccount.json |


############################<--editDematAccount-->###########################################

@RegressionTest-UDB-T020
Scenario Outline: Verify that system should return the "200" response for editing the already demat account by hitting the post editDematAccount api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint            | requestBody                                                                  | requestField  | responsefield   								  | filename     																						    | responseBody |
| asbaservice | editDematAccount    | src\test\resources\testdata\api\request\Drop2\ASBA\200_editDematAccount.json | cif,pan,name  | customerId,kycDetails.pan,name   | GS_getProfileDetails_Regression_Mandatory_Optional_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_editDematAccount.json|

@RegressionTest-UDB-T021
Scenario Outline: Verify that system should return the "401" response for editing the already demat account by hitting the post editDematAccount api.
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:			
| service        | endpoint          | requestBody 																																  |	requestField   |	responsefield  						| filename       																							| responseBody                   																										     |
| asbaservice 	 | editDematAccount  | src\test\resources\testdata\api\request\Drop2\ASBA\401_editDematAccount.json	|	pan,name   		 | kycDetails.pan,name  			| GS_getProfileDetails_Regression_Mandatory_Optional_200.json |	src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_editDematAccount.json |                      

@RegressionTest-UDB-T022
Scenario Outline: Verify that system should return the "400" response for editing the already demat account by hitting the post editDematAccount api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
| service     | endpoint           | requestBody                                                                    | requestField  | responsefield     						 | filename   																									| responseBody |
| asbaservice | editDematAccount   | src\test\resources\testdata\api\request\Drop2\ASBA\400_addNewDematAccount.json | cif,pan,name  | customerId,kycDetails.pan,name | GS_getProfileDetails_Regression_Mandatory_Optional_200.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_addNewDematAccount.json|

@RegressionTest-UDB-T023
Scenario Outline: Verify "/editDematAccount" API "POST" Method for Status code 404 if endpoint is Invalid
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples: 
| service     | endpoint 		 		       | requestBody 																															  		| requestField	| responsefield  									| filename      																							| responseBody |
| asbaservice | editDematAccount12345  | src\test\resources\testdata\api\request\Drop2\ASBA\404_editDematAccount.json   | cif,pan,name  | customerId,kycDetails.pan,name  | GS_getProfileDetails_Regression_Mandatory_Optional_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_editDematAccount.json|

@RegressionTest-UDB-T024
Scenario Outline: Verify "/editDematAccount" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:   
| service        | endpoint 				 | requestBody 																																	  | requestField		| responsefield						    		|	filename 																												 | responseBody                                                                           |
| asbaservice    | editDematAccount  | src\test\resources\testdata\api\request\Drop2\ASBA\405_editDematAccount.json	  | cif,pan,name 	  | customerId,kycDetails.pan,name	| GS_getProfileDetails_Regression_Mandatory_Optional_200.json      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_editDematAccount.json |

############################<--deleteDematAccount-->###########################################

@RegressionTest-UDB-T025
Scenario Outline: Verify that system should return the "200" response for deleting the already demat account by hitting the post deleteDematAccount api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint            | requestBody                                                                 	 | requestField  | responsefield   								  | filename     																						    | responseBody |
| asbaservice | deleteDematAccount  | src\test\resources\testdata\api\request\Drop2\ASBA\200_deleteDematAccount.json | cif,pan,name  | customerId,kycDetails.pan,name   | GS_getProfileDetails_Regression_Mandatory_Optional_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_deleteDematAccount.json|

@RegressionTest-UDB-T026
Scenario Outline: Verify that system should return the "401" response for deleting the already demat account by hitting the post editDematAccount api.
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:			
| service        | endpoint          | requestBody 																																 	  |	requestField   |	responsefield  						| filename       																							| responseBody                   																										       |
| asbaservice 	 | deleteDematAccount| src\test\resources\testdata\api\request\Drop2\ASBA\401_deleteDematAccount.json	|	pan,name   		 |  kycDetails.pan,name  		  | GS_getProfileDetails_Regression_Mandatory_Optional_200.json |	src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_deleteDematAccount.json |                      

@RegressionTest-UDB-T027
Scenario Outline: Verify that system should return the "400" response for deleting the already demat account by hitting the post deleteDematAccount api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
| service     | endpoint           | requestBody                                                                    | requestField  | responsefield     						 | filename   																									| responseBody |
| asbaservice | deleteDematAccount | src\test\resources\testdata\api\request\Drop2\ASBA\400_deleteDematAccount.json | cif,pan,name  | customerId,kycDetails.pan,name | GS_getProfileDetails_Regression_Mandatory_Optional_200.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_deleteDematAccount.json|

@RegressionTest-UDB-T028
Scenario Outline: Verify "/deleteDematAccount" API "POST" Method for Status code 404 if endpoint is Invalid
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples: 
| service     | endpoint 		 		       | requestBody 																															    		| requestField	| responsefield  									| filename      																							| responseBody |
| asbaservice | deleteDematAccount12345| src\test\resources\testdata\api\request\Drop2\ASBA\404_deleteDematAccount.json   | cif,pan,name  | customerId,kycDetails.pan,name  | GS_getProfileDetails_Regression_Mandatory_Optional_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_deleteDematAccount.json|

@RegressionTest-UDB-T029
Scenario Outline: Verify "/deleteDematAccount" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:   
| service        | endpoint 				 | requestBody 																																	    | requestField		| responsefield						    		|	filename 																												 | responseBody                                                                             |
| asbaservice    | deleteDematAccount| src\test\resources\testdata\api\request\Drop2\ASBA\405_deleteDematAccount.json	  | cif,pan,name 	  | customerId,kycDetails.pan,name	| GS_getProfileDetails_Regression_Mandatory_Optional_200.json      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_deleteDematAccount.json |


@Test-UDB-T009A 
Scenario Outline: Verify that system should return the correct response for new applied ipo by hitting the applyNewIpo Api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>		
			
Examples:			
| service        | endpoint         | requestBody 																											      | requestField   | responsefield     							 | filename     																							 | responseBody |
| asbaservice    | applyNewIpo      |	src\test\resources\testdata\api\request\Drop2\ASBA\200_applyNewIpo.json	| cif,pan,name   |customerId,kycDetails.pan,name 	 | GS_getProfileDetails_Regression_Mandatory_Optional_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_applyNewIpo.json |
