# Feature: ASBA API
# Author: Dipesh Titirmare
# Description: Regression Testing : ASBA API
# Test Environment: SIT
# Preconditions: ASBA API should be up and running

#######################################################################################
Feature: Regression of ASBA API Test
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/ASBA
#######################################################################################


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
| generalservice | getProfileDetails  |\src\test\resources\testdata\api\request\Drop2\ASBA\GS_getProfileDetails_Mandatory_200.json|null 			 |null 				 | null 		|\src\test\resources\testdata\api\response\expected\Drop2\ASBA\GS_getProfileDetails_Mandatory_200.json |
 
############################<--getOngoingIpoList-->###########################################

@RegressionTest-UDB-T001 
Scenario Outline: Verify that system should return the "200" responce for Ongoing IPO list by hitting the post getOngoingIpoList api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint              | requestBody                                                                    | requestField  | responsefield     | filename   														  | responseBody |
| asbaservice | getOngoingIpoList     | src\test\resources\testdata\api\request\Drop2\ASBA\200_getOngoingIpoList.json  | cif           | customerId        | GS_getProfileDetails_Mandatory_200.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getOngoingIpoList.json|


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

@RegressionTest-UDB-T005
Scenario Outline: Verify "/getOngoingIpoList" API for Status code 500 Error "Internal Server Error" 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples: 
| service    		| endpoint   				  | requestBody 																																	|requestField|responsefield|filename  | responseBody                                                                          |
| asbaservice1  | getOngoingIpoList   | src\test\resources\testdata\api\request\Drop2\ASBA\500_getOngoingIpoList.json	|null				 |null         |null 			| src\test\resources\testdata\api\response\expected\Drop2\ASBA\500_getOngoingIpoList.xml|


############################<--fetchDematList-->###########################################
@RegressionTest-UDB-T006
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
| asbaservice | fetchDematList     | src\test\resources\testdata\api\request\Drop2\ASBA\200_fetchDematList.json     | cif,pan       | customerId,pan    | GS_getProfileDetails_Mandatory_200.json| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_fetchDematList.json|

@RegressionTest-UDB-T007
Scenario Outline: Verify "/fetchDematList" API "POST" Method for Status code 400 with Mandatory fields are Blank in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
| service     | endpoint           | requestBody                                                                   													| requestField  | responsefield     | filename   | responseBody |
| asbaservice | fetchDematList     | src\test\resources\testdata\api\request\Drop2\ASBA\400_fetchDematList_Invalid_Mandatory_Fields.json    | null          | null              | null       | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_fetchDematList_Invalid_Mandatory_Fields.json|

@RegressionTest-UDB-T008
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

@RegressionTest-UDB-T009
Scenario Outline: Verify "/fetchDematList" API "POST" Method for Status code 400 with Mandatory fields are Invalid in request body
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


@RegressionTest-UDB-T010
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

@RegressionTest-UDB-T011
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

@RegressionTest-UDB-T012
Scenario Outline: Verify "/fetchDematList" API for Status code 500 Error "Internal Server Error" 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples: 
| service    		| endpoint   		   | requestBody 																															  |requestField	|responsefield	|filename  	| responseBody                                                                       |
| asbaservice1  | fetchDematList   | src\test\resources\testdata\api\request\Drop2\ASBA\500_fetchDematList.json	|null				 	|null        		 |null 			| src\test\resources\testdata\api\response\expected\Drop2\ASBA\500_fetchDematList.xml|


############################<--getAppliedIpoList-->###########################################

@RegressionTest-UDB-T013
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
| asbaservice 	 | getAppliedIpoList | src\test\resources\testdata\api\request\Drop2\ASBA\200_getAppliedIpoList.json	|	cif,pan        | customerId,kycDetails.pan  | GS_getProfileDetails_Mandatory_200.json |	src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json |src/test/resources/responseFolder/200_getAppliedIpoList.json|                      

@RegressionTest-UDB-T014
Scenario Outline: Verify that system should return the "401" response for already applied IPO list by hitting the getAppliedIpoList api.
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:			
| service        | endpoint          | requestBody 																																		|	requestField   |	responsefield 	| filename       																							| responseBody                   																										      |
| asbaservice 	 | getAppliedIpoList | src\test\resources\testdata\api\request\Drop2\ASBA\401_getAppliedIpoList.json	|	pan        		 |  kycDetails.pan  | GS_getProfileDetails_Mandatory_200.json |	src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_getAppliedIpoList.json |                      


@RegressionTest-UDB-T015
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

@RegressionTest-UDB-T016
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
| asbaservice | getAppliedIpoList1234  | src\test\resources\testdata\api\request\Drop2\ASBA\404_getAppliedIpoList.json  | cif,pan          | customerId,kycDetails.pan  | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_getAppliedIpoList.json|

@RegressionTest-UDB-T017
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
| asbaservice    | getAppliedIpoList | src\test\resources\testdata\api\request\Drop2\ASBA\405_getAppliedIpoList.json	| cif,pan      	  | customerId,kycDetails.pan	| GS_getProfileDetails_Mandatory_200.json      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_fetchDematList.json |

@RegressionTest-UDB-T018
Scenario Outline: Verify "/getAppliedIpoList" API for Status code 500 Error "Internal Server Error" 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples: 
| service    		| endpoint   		  	  | requestBody 																																  |requestField	|responsefield	|filename  	| responseBody                                                                      	  |
| asbaservice1  | getAppliedIpoList   | src\test\resources\testdata\api\request\Drop2\ASBA\500_getAppliedIpoList.json	|null				 	|null        	  |null 			| src\test\resources\testdata\api\response\expected\Drop2\ASBA\500_getAppliedIpoList.xml|

############################<--addNewDematAccount-->###########################################

@RegressionTest-UDB-T019
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
| asbaservice | addNewDematAccount    | src\test\resources\testdata\api\request\Drop2\ASBA\200_addNewDematAccount_CDSL.json | cif,pan,name  | customerId,kycDetails.pan,name   | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_addNewDematAccount_CDSL.json|

@RegressionTest-UDB-T020
Scenario Outline: Verify that system should return the "401" response for for adding the Demat account by hitting the post addNewDematAccount api.
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:			
| service        | endpoint          | requestBody 																																		|	requestField   |	responsefield  						| filename       																							| responseBody                   																										       |
| asbaservice 	 | addNewDematAccount| src\test\resources\testdata\api\request\Drop2\ASBA\401_addNewDematAccount.json	|	pan,name   		 | kycDetails.pan,name  			| GS_getProfileDetails_Mandatory_200.json |	src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_addNewDematAccount.json |                      

@RegressionTest-UDB-T021
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
| asbaservice | addNewDematAccount | src\test\resources\testdata\api\request\Drop2\ASBA\400_addNewDematAccount.json | cif,pan,name  | customerId,kycDetails.pan,name | GS_getProfileDetails_Mandatory_200.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_addNewDematAccount.json|

@RegressionTest-UDB-T022
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
| asbaservice | addNewDematAccount1234 | src\test\resources\testdata\api\request\Drop2\ASBA\404_addNewDematAccount.json | cif,pan,name  | customerId,kycDetails.pan,name  | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_addNewDematAccount.json|

@RegressionTest-UDB-T023
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
| asbaservice    | addNewDematAccount| src\test\resources\testdata\api\request\Drop2\ASBA\405_addNewDematAccount.json	| cif,pan,name 	  | customerId,kycDetails.pan,name	| GS_getProfileDetails_Mandatory_200.json      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_addNewDematAccount.json |

@RegressionTest-UDB-T024
Scenario Outline: Verify "/addNewDematAccount" API for Status code 500 Error "Internal Server Error" 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples: 
| service    		| endpoint   		  	  | requestBody 																																 	  |requestField	|responsefield	|filename  	| responseBody                                                                      	   |
| asbaservice1  | addNewDematAccount  | src\test\resources\testdata\api\request\Drop2\ASBA\500_addNewDematAccount.json	|null				 	|null        	  |null 			| src\test\resources\testdata\api\response\expected\Drop2\ASBA\500_addNewDematAccount.xml|


############################<--editDematAccount-->###########################################

@RegressionTest-UDB-T025
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
| asbaservice | editDematAccount    | src\test\resources\testdata\api\request\Drop2\ASBA\200_editDematAccount.json | cif,pan,name  | customerId,kycDetails.pan,name   | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_editDematAccount.json|

@RegressionTest-UDB-T026
Scenario Outline: Verify that system should return the "401" response for editing the already demat account by hitting the post editDematAccount api.
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:			
| service        | endpoint          | requestBody 																																  |	requestField   |	responsefield  						| filename       																							| responseBody                   																										     |
| asbaservice 	 | editDematAccount  | src\test\resources\testdata\api\request\Drop2\ASBA\401_editDematAccount.json	|	pan,name   		 | kycDetails.pan,name  			| GS_getProfileDetails_Mandatory_200.json |	src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_editDematAccount.json |                      

@RegressionTest-UDB-T027
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
| asbaservice | editDematAccount   | src\test\resources\testdata\api\request\Drop2\ASBA\400_editDematAccount.json | cif,pan,name  | customerId,kycDetails.pan,name | GS_getProfileDetails_Mandatory_200.json  	| src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_editDematAccount.json|

@RegressionTest-UDB-T028
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
| asbaservice | editDematAccount12345  | src\test\resources\testdata\api\request\Drop2\ASBA\404_editDematAccount.json   | cif,pan,name  | customerId,kycDetails.pan,name  | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_editDematAccount.json|

@RegressionTest-UDB-T029
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
| asbaservice    | editDematAccount  | src\test\resources\testdata\api\request\Drop2\ASBA\405_editDematAccount.json	  | cif,pan,name 	  | customerId,kycDetails.pan,name	| GS_getProfileDetails_Mandatory_200.json      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_editDematAccount.json |

@RegressionTest-UDB-T030
Scenario Outline: Verify "/editDematAccount" API for Status code 500 Error "Internal Server Error" 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples: 
| service    		| endpoint   		    | requestBody 																																  |requestField	|responsefield	|filename  	| responseBody                                                                     	   |
| asbaservice1  | editDematAccount  | src\test\resources\testdata\api\request\Drop2\ASBA\500_editDematAccount.json	|null				 	|null        	  |null 			| src\test\resources\testdata\api\response\expected\Drop2\ASBA\500_editDematAccount.xml|

############################<--deleteDematAccount-->###########################################

@RegressionTest-UDB-T031
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
| asbaservice | deleteDematAccount  | src\test\resources\testdata\api\request\Drop2\ASBA\200_deleteDematAccount.json | cif,pan,name  | customerId,kycDetails.pan,name   | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_deleteDematAccount.json|

@RegressionTest-UDB-T032
Scenario Outline: Verify that system should return the "401" response for deleting the already demat account by hitting the post editDematAccount api.
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:			
| service        | endpoint          | requestBody 																																 	  |	requestField   |	responsefield  						| filename       																							| responseBody                   																										       |
| asbaservice 	 | deleteDematAccount| src\test\resources\testdata\api\request\Drop2\ASBA\401_deleteDematAccount.json	|	pan,name   		 |  kycDetails.pan,name  		  | GS_getProfileDetails_Mandatory_200.json |	src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_deleteDematAccount.json |                      

@RegressionTest-UDB-T033
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
| asbaservice | deleteDematAccount | src\test\resources\testdata\api\request\Drop2\ASBA\400_deleteDematAccount.json | cif,pan,name  | customerId,kycDetails.pan,name | GS_getProfileDetails_Mandatory_200.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_deleteDematAccount.json|

@RegressionTest-UDB-T034
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
| asbaservice | deleteDematAccount12345| src\test\resources\testdata\api\request\Drop2\ASBA\404_deleteDematAccount.json   | cif,pan,name  | customerId,kycDetails.pan,name  | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_deleteDematAccount.json|

@RegressionTest-UDB-T035
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
| asbaservice    | deleteDematAccount| src\test\resources\testdata\api\request\Drop2\ASBA\405_deleteDematAccount.json	  | cif,pan,name 	  | customerId,kycDetails.pan,name	| GS_getProfileDetails_Mandatory_200.json      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_deleteDematAccount.json |

@RegressionTest-UDB-T036
Scenario Outline: Verify "/deleteDematAccount" API for Status code 500 Error "Internal Server Error" 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples: 
| service    		| endpoint   		  	  | requestBody 																																  	|requestField	|responsefield	|filename  	| responseBody                                                                     	 		 |
| asbaservice1  | deleteDematAccount  | src\test\resources\testdata\api\request\Drop2\ASBA\500_deleteDematAccount.json	|null				 	|null        	  |null 			| src\test\resources\testdata\api\response\expected\Drop2\ASBA\500_deleteDematAccount.xml|

############################<--getSubscriptionRate-->###########################################

@RegressionTest-UDB-T037
Scenario Outline: Verify that system should return "200"  correct response for Ipo subscription rate stage by hitting the post getSubscriptionRate api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint                  | requestBody                                                                              | requestField   | responsefield    | filename     																							 | responseBody |                                                                  
| asbaservice | getSubscriptionRate       | src\test\resources\testdata\api\request\Drop2\ASBA\200_getSubscriptionRate.json          | cif  				  | customerId   		 | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getSubscriptionRate.json |

@RegressionTest-UDB-T038
Scenario Outline: Verify that system should return the "401" response for subscription by hitting the post getSubscriptionRate api.
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:			
| service        | endpoint        	  | requestBody 																																 	  |	requestField   |	responsefield | filename 										| responseBody                   																										     	  |
| asbaservice 	 | getSubscriptionRate| src\test\resources\testdata\api\request\Drop2\ASBA\401_getSubscriptionRate.json	|	symbol 		 		 |  symbol 		  	| 200_getOngoingIpoList.json 	|	src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_getSubscriptionRate.json |                      

@RegressionTest-UDB-T039
Scenario Outline: Verify that system should return the "400" response for subscription rate by hitting the post getSubscriptionRate api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
| service     | endpoint           	| requestBody                                                                    	| requestField  | responsefield     						 | filename   																									| responseBody 																																						 | 
| asbaservice | getSubscriptionRate | src\test\resources\testdata\api\request\Drop2\ASBA\400_getSubscriptionRate.json | cif,pan,name  | customerId,kycDetails.pan,name | GS_getProfileDetails_Mandatory_200.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_getSubscriptionRate.json|

@RegressionTest-UDB-T040
Scenario Outline: Verify "/getSubscriptionRate" API "POST" Method for Status code 404 if endpoint is Invalid
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples: 
| service     | endpoint 		 		   	    | requestBody 																															    		| requestField	| responsefield  									| filename      																							| responseBody |
| asbaservice | getSubscriptionRate12345| src\test\resources\testdata\api\request\Drop2\ASBA\404_getSubscriptionRate.json   | cif,pan,name  | customerId,kycDetails.pan,name  | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_getSubscriptionRate.json|

@RegressionTest-UDB-T041
Scenario Outline: Verify "/getSubscriptionRate" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:   
| service        | endpoint 					  | requestBody 																																	    | requestField		| responsefield						    		|	filename 																												 | responseBody                                                                         	   |
| asbaservice    | getSubscriptionRate	| src\test\resources\testdata\api\request\Drop2\ASBA\405_getSubscriptionRate.json	  | cif,pan,name 	  | customerId,kycDetails.pan,name	| GS_getProfileDetails_Mandatory_200.json      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_getSubscriptionRate.json |

@RegressionTest-UDB-T042
Scenario Outline: Verify "/getSubscriptionRate" API for Status code 500 Error "Internal Server Error" 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples: 
| service    		| endpoint   		  	  | requestBody 																																  	|requestField	|responsefield	|filename  	| responseBody                                                                     	 		  |
| asbaservice1  | getSubscriptionRate | src\test\resources\testdata\api\request\Drop2\ASBA\500_getSubscriptionRate.json	|null				 	|null        	  |null 			| src\test\resources\testdata\api\response\expected\Drop2\ASBA\500_getSubscriptionRate.xml|

############################<--applyNewIpo-->###########################################

#POL Category --> Apply--> Check-->modify-->Withdrawn
# Apply for New Ipo of POL category
@E2E  @RegressionTest-UDB-T043
Scenario Outline: Verify that system should return the correct response for new applied ipo by hitting the applyNewIpo Api.-POL category
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
When user updates the json request body <requestBody> with tags <tag> and cif <cif> for generating transactionID
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>		
			
Examples:
| service     | endpoint		| requestBody																														 | requestField	| responsefield | filename																| responseBody  																																	 | tag					 |cif|
| asbaservice | applyNewIpo	| src\test\resources\testdata\api\request\Drop2\ASBA\200_applyNewIpo.json| cif 					| customerId 		| GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_applyNewIpo.json| transactionId |258459119|

# Check Status of applied IPO for category POL
@E2E  @RegressionTest-UDB-T044
Scenario Outline: Verify that system should return the "200" response to check the status of already applied ipo by hitting the post checkAlreadyAppliedIpo api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:		
| service     | endpoint                   | requestBody                                                                         | requestField  | responsefield     					| filename    																								| responseBody |
| asbaservice | checkAlreadyAppliedIpo     | src\test\resources\testdata\api\request\Drop2\ASBA\200_checkAlreadyAppliedIpo.json  | cif,pan       | customerId,kycDetails.pan  | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_checkAlreadyAppliedIpo.json|

#Get Allotment stage status  Responce for Category POL
@E2E @RegressionTest-UDB-T045
Scenario Outline: Verify that system should return the correct "200" response for POL Category allotment stage by hitting the post getAllotmentStageResponse api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then Update the request body <requestBody> with attributes and values from response file <responseFile>
Then user triggers a post request with <requestBody>   
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint                  | requestBody                                                                              | requestField   								| responsefield    																																| filename     												| responseBody 																																										| responseFile																																					 |                                                                 
| asbaservice | getAllotmentStageResponse | src\test\resources\testdata\api\request\Drop2\ASBA\200_getAllotmentStageResponse.json    | applicationNumber,referenceNum | appliedIpoEntityList[0].applicationNumber,appliedIpoEntityList[0].referenceId	  | 200_getAppliedIpoList.json 					| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAllotmentStageResponse.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json|

# Modify the ipo bid for category POL
@E2E  @RegressionTest-UDB-T046
Scenario Outline: Verify that system should return the correct response for modified IPO list by hitting the modifyAppliedIpoBid api.POL
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then Update the request body <requestBody> with attributes and values from response file <responseFile>
When user updates the json request body <requestBody> with tags <tag> and cif <cif> for generating transactionID
Then user triggers a post request with <requestBody>   
Then user verifies that status is 200
Then user verifies json from <responseBody>
			
Examples:
| service     | endpoint						| requestBody																																		 | requestField															| responsefield 																																																							| filename									 | responseBody  																																	 					| tag					 	|cif			| responseFile																																						| 
| asbaservice | modifyAppliedIpoBid	| src\test\resources\testdata\api\request\Drop2\ASBA\200_modifyAppliedIpoBid.json| referenceno,applicationNo,bids[0].bidid	| appliedIpoEntityList[0].applicationNumber,appliedIpoEntityList[0].referenceId,appliedIpoEntityList[0].bidDetail[0].bidId 		| 200_getAppliedIpoList.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_modifyAppliedIpoBid.json| transactionId |258459119| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json	|

# Withdrawn the ipo bid for category POL
@E2E  @RegressionTest-UDB-T047
Scenario Outline: Verify taht system should return the correct response for withdrawning the BId by hitting the withdrawAppliedIpoBid Api.POL
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user copy file from <source> and paste to file at location <requestBody>
Then Update the request body <requestBody> with attributes and values from response file <responseFile>
When user updates the json request body <requestBody> with tags <tag> and cif <cif> for generating transactionID
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>		
			
Examples:
| service     | endpoint							| requestBody																																		 		| requestField														| responsefield 																																																							| filename									 | responseBody  																																	 						| tag					 		|cif			| responseFile |
| asbaservice | withdrawAppliedIpoBid	| src\test\resources\testdata\api\request\Drop2\ASBA\200_withdrawAppliedIpoBid.json | applicationNo,referenceno,bids[0].bidid	| appliedIpoEntityList[0].applicationNumber,appliedIpoEntityList[0].referenceId,appliedIpoEntityList[0].bidDetail[0].bidId 		| 200_getAppliedIpoList.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_withdrawAppliedIpoBid.json| transactionId 	|258459119| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json	|

#SHA Category --> Apply--> Check-->modify-->Withdrawn

# Apply for New Ipo of SHA category
@E2E  @RegressionTest-UDB-T048
Scenario Outline: Verify that system should return the correct response for new applied ipo by hitting the applyNewIpo Api.- SHA category
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
When user updates the json request body <requestBody> with tags <tag> and cif <cif> for generating transactionID
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>		
			
Examples:
| service     | endpoint		| requestBody																															  | requestField	| responsefield | filename																| responseBody  																																		  | tag					 	|cif|
| asbaservice | applyNewIpo	| src\test\resources\testdata\api\request\Drop2\ASBA\200_applyNewIpoSHA.json| cif 					| customerId 		| GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_applyNewIpoSHA.json| transactionId |258459119|

# Check Status of applied IPO for category SHA
@E2E  @RegressionTest-UDB-T049
Scenario Outline: Verify that system should return the "200" response to check the status of already applied ipo for category Eligible Shareholder by hitting the post checkAlreadyAppliedIpo api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:		
| service     | endpoint                   | requestBody                                                                         		| requestField  | responsefield     					| filename    																								| responseBody |
| asbaservice | checkAlreadyAppliedIpo     | src\test\resources\testdata\api\request\Drop2\ASBA\200_checkAlreadyAppliedIpoSHA.json  | cif,pan       | customerId,kycDetails.pan  | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_checkAlreadyAppliedIpoSHA.json|

#Get allotment stage response for category SHA
@E2E @RegressionTest-UDB-T050
Scenario Outline: Verify that system should return the correct response for allotment stage by hitting the post getAllotmentStageResponse api.SHA
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then Update the request body <requestBody> with attributes and values from response file <responseFile>
Then user triggers a post request with <requestBody>   
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint                  | requestBody                                                                              		| requestField   								 | responsefield    																														 | filename     												| responseBody 																																											 | responseFile																																					  |                                                                 
| asbaservice | getAllotmentStageResponse | src\test\resources\testdata\api\request\Drop2\ASBA\200_getAllotmentStageResponseSHA.json    | applicationNumber,referenceNum | appliedIpoEntityList[0].applicationNumber,appliedIpoEntityList[0].referenceId | 200_getAppliedIpoList.json 					| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAllotmentStageResponseSHA.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json|

# Modify the ipo bid for category SHA
@E2E  @RegressionTest-UDB-T051
Scenario Outline: Verify that system should return the correct response for modified IPO list by hitting the modifyAppliedIpoBid api.SHA
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then Update the request body <requestBody> with attributes and values from response file <responseFile>
When user updates the json request body <requestBody> with tags <tag> and cif <cif> for generating transactionID
Then user triggers a post request with <requestBody>   
Then user verifies that status is 200
Then user verifies json from <responseBody>
			
Examples:
| service     | endpoint						| requestBody																																		 		| requestField														| responsefield 																																																							| filename									 | responseBody  																																	 						 | tag					 |cif			 | responseFile																																						  | 
| asbaservice | modifyAppliedIpoBid	| src\test\resources\testdata\api\request\Drop2\ASBA\200_modifyAppliedIpoBidSHA.json| referenceno,applicationNo,bids[0].bidid	| appliedIpoEntityList[0].applicationNumber,appliedIpoEntityList[0].referenceId,appliedIpoEntityList[0].bidDetail[0].bidId 		| 200_getAppliedIpoList.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_modifyAppliedIpoBidSHA.json| transactionId |258459119| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json	|

# Withdrawn the ipo bid for category SHA
@E2E  @RegressionTest-UDB-T052
Scenario Outline: Verify taht system should return the correct response for withdrawning the BId by hitting the withdrawAppliedIpoBid Api.SHA
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user copy file from <source> and paste to file at location <requestBody>
Then Update the request body <requestBody> with attributes and values from response file <responseFile>
When user updates the json request body <requestBody> with tags <tag> and cif <cif> for generating transactionID
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>		
			
Examples:
| service     | endpoint							| requestBody																																		 			 | requestField															| responsefield 																																																							| filename									 | responseBody  																																	 							 | tag				 		|cif			| responseFile |
| asbaservice | withdrawAppliedIpoBid	| src\test\resources\testdata\api\request\Drop2\ASBA\200_withdrawAppliedIpoBidSHA.json | applicationNo,referenceno,bids[0].bidid	| appliedIpoEntityList[0].applicationNumber,appliedIpoEntityList[0].referenceId,appliedIpoEntityList[0].bidDetail[0].bidId 		| 200_getAppliedIpoList.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_withdrawAppliedIpoBidSHA.json| transactionId 	|258459119| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json	|

#EMP Category --> Apply--> Check-->modify-->Withdrawn
# Apply for New Ipo of EMP category
@E2E  @RegressionTest-UDB-T053
Scenario Outline: Verify that system should return the correct response for new applied ipo by hitting the applyNewIpo Api - EMP category
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
When user updates the json request body <requestBody> with tags <tag> and cif <cif> for generating transactionID
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>		
			
Examples:
| service     | endpoint		| requestBody																															  | requestField	| responsefield | filename																| responseBody  																																	 		| tag					 	|cif|
| asbaservice | applyNewIpo	| src\test\resources\testdata\api\request\Drop2\ASBA\200_applyNewIpoEMP.json| cif 					| customerId 		| GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_applyNewIpoEMP.json| transactionId |258459119|

# Check Status of applied IPO for category EMP
@E2E  @RegressionTest-UDB-T054
Scenario Outline: Verify that system should return the "200" response to check the status of already applied ipo for category Employee by hitting the post checkAlreadyAppliedIpo api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:		
| service     | endpoint                   | requestBody                                                                         | requestField  | responsefield     					| filename    																								| responseBody |
| asbaservice | checkAlreadyAppliedIpo     | src\test\resources\testdata\api\request\Drop2\ASBA\200_checkAlreadyAppliedIpoEMP.json  | cif,pan       | customerId,kycDetails.pan  | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_checkAlreadyAppliedIpoEMP.json|

#Get allotment stage response for category EMP
@E2E @RegressionTest-UDB-T055
Scenario Outline: Verify that system should return the correct response for allotment stage by hitting the post getAllotmentStageResponse api.EMP
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then Update the request body <requestBody> with attributes and values from response file <responseFile>
Then user triggers a post request with <requestBody>   
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint                  | requestBody                                                                              		| requestField   								 | responsefield    																																| filename     												| responseBody 																																											 | responseFile																																					 |                                                                 
| asbaservice | getAllotmentStageResponse | src\test\resources\testdata\api\request\Drop2\ASBA\200_getAllotmentStageResponseEMP.json    | applicationNumber,referenceNum | appliedIpoEntityList[0].applicationNumber,appliedIpoEntityList[0].referenceId	  | 200_getAppliedIpoList.json 					| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAllotmentStageResponseEMP.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json|

# Modify the ipo bid for category EMP
@E2E  @RegressionTest-UDB-T056
Scenario Outline: Verify that system should return the correct response for modified IPO list by hitting the modifyAppliedIpoBid api.EMP
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then Update the request body <requestBody> with attributes and values from response file <responseFile>
When user updates the json request body <requestBody> with tags <tag> and cif <cif> for generating transactionID
Then user triggers a post request with <requestBody>   
Then user verifies that status is 200
Then user verifies json from <responseBody>
			
Examples:
| service     | endpoint						| requestBody																																		 		| requestField														| responsefield 																																																							| filename									 | responseBody  																																	 						 | tag					 |cif			 | responseFile																																						  | 
| asbaservice | modifyAppliedIpoBid	| src\test\resources\testdata\api\request\Drop2\ASBA\200_modifyAppliedIpoBidEMP.json| referenceno,applicationNo,bids[0].bidid	| appliedIpoEntityList[0].applicationNumber,appliedIpoEntityList[0].referenceId,appliedIpoEntityList[0].bidDetail[0].bidId 		| 200_getAppliedIpoList.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_modifyAppliedIpoBidEMP.json| transactionId |258459119| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json	|

# Withdrawn the ipo bid for category EMP
@E2E  @RegressionTest-UDB-T057
Scenario Outline: Verify taht system should return the correct response for withdrawning the BId by hitting the withdrawAppliedIpoBid Api.EMP
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user copy file from <source> and paste to file at location <requestBody>
Then Update the request body <requestBody> with attributes and values from response file <responseFile>
When user updates the json request body <requestBody> with tags <tag> and cif <cif> for generating transactionID
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>		
			
Examples:
| service     | endpoint							| requestBody																																		 			 | requestField															| responsefield 																																																							| filename									 | responseBody  																																	 							 | tag				 		|cif			| responseFile |
| asbaservice | withdrawAppliedIpoBid	| src\test\resources\testdata\api\request\Drop2\ASBA\200_withdrawAppliedIpoBidEMP.json | applicationNo,referenceno,bids[0].bidid	| appliedIpoEntityList[0].applicationNumber,appliedIpoEntityList[0].referenceId,appliedIpoEntityList[0].bidDetail[0].bidId 		| 200_getAppliedIpoList.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_withdrawAppliedIpoBidEMP.json| transactionId 	|258459119| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json	|

#IND Category --> Apply--> Check-->modify-->Withdrawn
# Apply for New Ipo of IND category
@E2E  @RegressionTest-UDB-T058
Scenario Outline: Verify that system should return the correct response for new applied ipo by hitting the applyNewIpo Api. - IND category
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
When user updates the json request body <requestBody> with tags <tag> and cif <cif> for generating transactionID
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>		
			
Examples:
| service     | endpoint		| requestBody																															  | requestField	| responsefield | filename																| responseBody  																																		  | tag					 	|cif|
| asbaservice | applyNewIpo	| src\test\resources\testdata\api\request\Drop2\ASBA\200_applyNewIpoIND.json| cif 					| customerId 		| GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_applyNewIpoIND.json| transactionId |258459119|


# Check Status of applied IPO for category IND
@E2E  @RegressionTest-UDB-T059
Scenario Outline: Verify that system should return the "200" response to check the status of already applied ipo for category Retail Individual by hitting the post checkAlreadyAppliedIpo api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:		
| service     | endpoint                   | requestBody                                                                       		  | requestField  | responsefield     			  | filename    																						  	| responseBody |
| asbaservice | checkAlreadyAppliedIpo     | src\test\resources\testdata\api\request\Drop2\ASBA\200_checkAlreadyAppliedIpoIND.json  | cif,pan       | customerId,kycDetails.pan | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_checkAlreadyAppliedIpoIND.json|

#Get allotment stage response for category IND
@E2E @RegressionTest-UDB-T060
Scenario Outline: Verify that system should return the correct response for allotment stage by hitting the post getAllotmentStageResponse api.IND
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then Update the request body <requestBody> with attributes and values from response file <responseFile>
Then user triggers a post request with <requestBody>   
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint                  | requestBody                                                                              		| requestField   								 | responsefield    																																| filename     												| responseBody 																																											 | responseFile																																					 	|                                                                 
| asbaservice | getAllotmentStageResponse | src\test\resources\testdata\api\request\Drop2\ASBA\200_getAllotmentStageResponseIND.json    | applicationNumber,referenceNum | appliedIpoEntityList[0].applicationNumber,appliedIpoEntityList[0].referenceId	  | 200_getAppliedIpoList.json 					| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAllotmentStageResponseIND.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json|

# Modify the ipo bid for category IND
@E2E  @RegressionTest-UDB-T061
Scenario Outline: Verify that system should return the correct response for modified IPO list by hitting the modifyAppliedIpoBid api.IND
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then Update the request body <requestBody> with attributes and values from response file <responseFile>
When user updates the json request body <requestBody> with tags <tag> and cif <cif> for generating transactionID
Then user triggers a post request with <requestBody>   
Then user verifies that status is 200
Then user verifies json from <responseBody>
			
Examples:
| service     | endpoint						| requestBody																																		 		| requestField														| responsefield 																																																							| filename									 | responseBody  																																	 						 | tag					 |cif			 | responseFile																																						  | 
| asbaservice | modifyAppliedIpoBid	| src\test\resources\testdata\api\request\Drop2\ASBA\200_modifyAppliedIpoBidIND.json| referenceno,applicationNo,bids[0].bidid	| appliedIpoEntityList[0].applicationNumber,appliedIpoEntityList[0].referenceId,appliedIpoEntityList[0].bidDetail[0].bidId 		| 200_getAppliedIpoList.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_modifyAppliedIpoBidIND.json| transactionId |258459119| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json	|

# Withdrawn the ipo bid for category IND
@E2E  @RegressionTest-UDB-T062
Scenario Outline: Verify taht system should return the correct response for withdrawning the BId by hitting the withdrawAppliedIpoBid Api.IND
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user copy file from <source> and paste to file at location <requestBody>
Then Update the request body <requestBody> with attributes and values from response file <responseFile>
When user updates the json request body <requestBody> with tags <tag> and cif <cif> for generating transactionID
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>		
			
Examples:
| service     | endpoint							| requestBody																																		 			 | requestField															| responsefield 																																																							| filename									 | responseBody  																																	 							 | tag				 		|cif			| responseFile |
| asbaservice | withdrawAppliedIpoBid	| src\test\resources\testdata\api\request\Drop2\ASBA\200_withdrawAppliedIpoBidIND.json | applicationNo,referenceno,bids[0].bidid	| appliedIpoEntityList[0].applicationNumber,appliedIpoEntityList[0].referenceId,appliedIpoEntityList[0].bidDetail[0].bidId 		| 200_getAppliedIpoList.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_withdrawAppliedIpoBidIND.json| transactionId 	|258459119| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json	|


##########################################################################################################################

#regression for apply New Ipo 

@RegressionTest-UDB-T063
Scenario Outline: Verify that system should return the "401" response by hitting the post applyNewIpo api.
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:			
| service        | endpoint        	  | requestBody 																																 	  |	requestField   |	responsefield 			| filename 																											| responseBody                   																						     	  |
| asbaservice 	 | applyNewIpo				| src\test\resources\testdata\api\request\Drop2\ASBA\401_applyNewIpo.json					|	pan,name   		 | kycDetails.pan,name	| GS_getProfileDetails_Mandatory_200.json 	|	src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_applyNewIpo.json |                      

@RegressionTest-UDB-T064
Scenario Outline: Verify that system should return the "400" response for applying the ipo by hitting the post applyNewIpo api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
| service     | endpoint   	| requestBody                                                            	| requestField  | responsefield     						 | filename   																									| responseBody 																																		 | 
| asbaservice | applyNewIpo | src\test\resources\testdata\api\request\Drop2\ASBA\400_applyNewIpo.json | cif,pan,name  | customerId,kycDetails.pan,name | GS_getProfileDetails_Mandatory_200.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_applyNewIpo.json|

@RegressionTest-UDB-T065
Scenario Outline: Verify "/applyNewIpo" API "POST" Method for Status code 404 if endpoint is Invalid
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples: 
| service     | endpoint 		 	    | requestBody 																											    		| requestField	| responsefield  									| filename      																							| responseBody																																		 |
| asbaservice | applyNewIpo12345	| src\test\resources\testdata\api\request\Drop2\ASBA\404_applyNewIpo.json   | cif,pan,name  | customerId,kycDetails.pan,name  | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_applyNewIpo.json|

@RegressionTest-UDB-T066
Scenario Outline: Verify "/applyNewIpo" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:   
| service        | endpoint 	  | requestBody 																													    | requestField		| responsefield						    		|	filename 																												 | responseBody                                                                  	   |
| asbaservice    | applyNewIpo	| src\test\resources\testdata\api\request\Drop2\ASBA\405_applyNewIpo.json	  | cif,pan,name 	  | customerId,kycDetails.pan,name	| GS_getProfileDetails_Mandatory_200.json      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_applyNewIpo.json |

@RegressionTest-UDB-T067
Scenario Outline: Verify "/applyNewIpo" API for Status code 500 Error "Internal Server Error" 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples: 
| service    		| endpoint     | requestBody 																													  	|requestField	|responsefield	|filename  	| responseBody                                                           		  		  |
| asbaservice1  | applyNewIpo  | src\test\resources\testdata\api\request\Drop2\ASBA\500_applyNewIpo.json	|null				 	|null        	  |null 			| src\test\resources\testdata\api\response\expected\Drop2\ASBA\500_applyNewIpo.xml	|

############################<--checkAlreadyAppliedIpo-->###########################################

#@RegressionTest-UDB-T040
#Scenario Outline: Verify that system should return the "200" response to check the status of already applied ipo by hitting the post checkAlreadyAppliedIpo api.
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 200
#Then user verifies json from <responseBody>
#
#Examples:		
#| service     | endpoint                   | requestBody                                                                         | requestField  | responsefield     					| filename    																								| responseBody |
#| asbaservice | checkAlreadyAppliedIpo     | src\test\resources\testdata\api\request\Drop2\ASBA\200_checkAlreadyAppliedIpo.json  | cif,pan       | customerId,kycDetails.pan  | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_checkAlreadyAppliedIpo.json|

@RegressionTest-UDB-T068
Scenario Outline: Verify that system should return the "401" response by hitting the post checkAlreadyAppliedIpo api.
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:			
| service        | endpoint        	  	   | requestBody 							 																									 	 			 |	requestField   |	responsefield	| filename 																											| responseBody                   																						    			  	     |
| asbaservice 	 | checkAlreadyAppliedIpo  | src\test\resources\testdata\api\request\Drop2\ASBA\401_checkAlreadyAppliedIpo.json	 |	pan						 | kycDetails.pan	| GS_getProfileDetails_Mandatory_200.json 	|	src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_checkAlreadyAppliedIpo.json |                      

@RegressionTest-UDB-T069
Scenario Outline: Verify that system should return the "400" response for already applied ipo by hitting the post checkAlreadyAppliedIpo api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
| service     | endpoint   					     | requestBody                                                            								| requestField  | responsefield     			  | filename   																								  | responseBody 																																			  	 	  	 | 
| asbaservice | checkAlreadyAppliedIpo   | src\test\resources\testdata\api\request\Drop2\ASBA\400_checkAlreadyAppliedIpo.json     | cif,pan			  | customerId,kycDetails.pan | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_checkAlreadyAppliedIpo.json |

@RegressionTest-UDB-T070
Scenario Outline: Verify "/checkAlreadyAppliedIpo" API "POST" Method for Status code 404 if endpoint is Invalid
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples: 
| service     | endpoint 		 	 				   	  | requestBody 																											    						 | requestField	 | responsefield  				 		| filename      																					   	| responseBody																																							  |
| asbaservice | checkAlreadyAppliedIpo12345	| src\test\resources\testdata\api\request\Drop2\ASBA\404_checkAlreadyAppliedIpo.json | cif,pan  		 | customerId,kycDetails.pan  | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_checkAlreadyAppliedIpo.json|

@RegressionTest-UDB-T071
Scenario Outline: Verify "/checkAlreadyAppliedIpo" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:   
| service        | endpoint 					 	  | requestBody 																																	    		| requestField | responsefield							|	filename 																												 | responseBody                                                                  	  					  |
| asbaservice    | checkAlreadyAppliedIpo	| src\test\resources\testdata\api\request\Drop2\ASBA\405_checkAlreadyAppliedIpo.json	  | cif,pan 	 	 | customerId,kycDetails.pan	| GS_getProfileDetails_Mandatory_200.json      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_checkAlreadyAppliedIpo.json |

@RegressionTest-UDB-T072
Scenario Outline: Verify "/checkAlreadyAppliedIpo" API for Status code 500 Error "Internal Server Error" 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples: 
| service    		| endpoint   		  	 		  | requestBody 																																  			|requestField	|responsefield	|filename  	| responseBody                                                                     	 				 |
| asbaservice1  | checkAlreadyAppliedIpo  | src\test\resources\testdata\api\request\Drop2\ASBA\500_checkAlreadyAppliedIpo.json	|null				 	|null        	  |null 			| src\test\resources\testdata\api\response\expected\Drop2\ASBA\500_checkAlreadyAppliedIpo.xml|


############################<--modifyAppliedIpoBid-->###########################################

#@RegressionTest-UDB-T045
#Scenario Outline: Verify that system should return "200" correct response for modifying the bid of already applied ipo by hitting the modifyAppliedIpoBid Api.
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then Update the request body <requestBody> with attributes and values from response file <responseFile>
#Then user triggers a post request with <requestBody>   
#Then user verifies that status is 200
#Then user verifies json from <responseBody>
#			
#Examples:
#| service     | endpoint       		  | requestBody																																		  | requestField 							  | responsefield 																| filename  	 											  | responseBody               		     																											  | responseFile	|
#| asbaservice | modifyAppliedIpoBid | src\test\resources\testdata\api\request\Drop2\ASBA\200_modifyAppliedIpoBid.json	| bids[0].bidid,applicationNo | bidDetail[0].bidId,applicationNumber		  	  | 200_getAppliedIpoList.json 					| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_modifyAppliedIpoBid.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json|                  

@RegressionTest-UDB-T073
Scenario Outline: Verify that system should return the "401" response by hitting the post modifyAppliedIpoBid api.
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:			
| service        | endpoint        	   | requestBody 							 																									 	 		 |	requestField   |	responsefield 			| filename 																											| responseBody                   																						    			  	  |
| asbaservice 	 | modifyAppliedIpoBid | src\test\resources\testdata\api\request\Drop2\ASBA\401_modifyAppliedIpoBid.json	 |	pan,name			 | kycDetails.pan,name	| GS_getProfileDetails_Mandatory_200.json 	|	src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_modifyAppliedIpoBid.json |                      

@RegressionTest-UDB-T074
Scenario Outline: Verify that system should return the "400" response for applying the ipo by hitting the post modifyAppliedIpoBid api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
| service     | endpoint   					| requestBody                                                            					| requestField  | responsefield     						 | filename   																									| responseBody 																																						 | 
| asbaservice | modifyAppliedIpoBid | src\test\resources\testdata\api\request\Drop2\ASBA\400_modifyAppliedIpoBid.json | cif,pan,name  | customerId,kycDetails.pan,name | GS_getProfileDetails_Mandatory_200.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_modifyAppliedIpoBid.json|

@RegressionTest-UDB-T075
Scenario Outline: Verify "/modifyAppliedIpoBid" API "POST" Method for Status code 404 if endpoint is Invalid
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples: 
| service     | endpoint 		 	 				    | requestBody 																											    						| requestField	| responsefield  									| filename      																							| responseBody																																						 |
| asbaservice | modifyAppliedIpoBid12345	| src\test\resources\testdata\api\request\Drop2\ASBA\404_modifyAppliedIpoBid.json   | cif,pan,name  | customerId,kycDetails.pan,name  | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_modifyAppliedIpoBid.json|

@RegressionTest-UDB-T076
Scenario Outline: Verify "/modifyAppliedIpoBid" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:   
| service        | endpoint 					  | requestBody 																																	    | requestField		| responsefield						    		|	filename 																												 | responseBody                                                                  	  				 |
| asbaservice    | modifyAppliedIpoBid	| src\test\resources\testdata\api\request\Drop2\ASBA\405_modifyAppliedIpoBid.json	  | cif,pan,name 	  | customerId,kycDetails.pan,name	| GS_getProfileDetails_Mandatory_200.json      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_modifyAppliedIpoBid.json |

@RegressionTest-UDB-T077
Scenario Outline: Verify "/modifyAppliedIpoBid" API for Status code 500 Error "Internal Server Error" 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples: 
| service    		| endpoint   		 		  | requestBody 																																  	|requestField	|responsefield	|filename  	| responseBody                                                                     	 		  |
| asbaservice1  | modifyAppliedIpoBid | src\test\resources\testdata\api\request\Drop2\ASBA\500_modifyAppliedIpoBid.json	|null				 	|null        	  |null 			| src\test\resources\testdata\api\response\expected\Drop2\ASBA\500_modifyAppliedIpoBid.xml|


############################<--withdrawAppliedIpoBid-->###########################################

#@RegressionTest-UDB-T050
#Scenario Outline: Verify that system should return "200" correct response for modifying the bid of already applied ipo by hitting the withdrawAppliedIpoBid Api.
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user copy file from <source> and paste to file at location <requestBody>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 200
#Then user verifies json from <responseBody>		
#			
#Examples:			
#| service     | endpoint              | requestBody            																												    | requestField  				    	 | responsefield      				        | filename                    | responseBody                                                                                |source|
#| asbaservice | withdrawAppliedIpoBid | src\test\resources\testdata\api\request\Drop2\ASBA\200_withdrawAppliedIpoBid.json | bids[0].bidid,applicationNo  |bidDetail[0].bidId,applicationNumber| 200_getAppliedIpoList.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_withdrawAppliedIpoBid.json |src\test\resources\testdata\api\request\Drop2\ASBA\200_modifyAppliedIpoBid.json|

@RegressionTest-UDB-T078
Scenario Outline: Verify that system should return the "401" response by hitting the post withdrawAppliedIpoBid api.
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:			
| service        | endpoint        	 	   | requestBody 							 																									 	 			 |	requestField   |	responsefield 			| filename 																											| responseBody                   																						    			  	    |
| asbaservice 	 | withdrawAppliedIpoBid | src\test\resources\testdata\api\request\Drop2\ASBA\401_withdrawAppliedIpoBid.json	 |	pan,name			 | kycDetails.pan,name	| GS_getProfileDetails_Mandatory_200.json 	|	src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_withdrawAppliedIpoBid.json |                      

@RegressionTest-UDB-T079
Scenario Outline: Verify that system should return the "400" response for applying the ipo by hitting the post withdrawAppliedIpoBid api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
| service     | endpoint   					| requestBody                                                            						| requestField  | responsefield     						 | filename   																									| responseBody 																																							 | 
| asbaservice | modifyAppliedIpoBid | src\test\resources\testdata\api\request\Drop2\ASBA\400_withdrawAppliedIpoBid.json | cif,pan,name  | customerId,kycDetails.pan,name | GS_getProfileDetails_Mandatory_200.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_withdrawAppliedIpoBid.json|

@RegressionTest-UDB-T080
Scenario Outline: Verify "/withdrawAppliedIpoBid" API "POST" Method for Status code 404 if endpoint is Invalid
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples: 
| service     | endpoint 		 	 				   	  | requestBody 																											    						| requestField	| responsefield  									| filename      																							| responseBody																																						   |
| asbaservice | withdrawAppliedIpoBid12345	| src\test\resources\testdata\api\request\Drop2\ASBA\404_modifyAppliedIpoBid.json   | cif,pan,name  | customerId,kycDetails.pan,name  | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_withdrawAppliedIpoBid.json|

@RegressionTest-UDB-T081
Scenario Outline: Verify "/withdrawAppliedIpoBid" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:   
| service        | endpoint 					 	  | requestBody 																																	   	  | requestField		| responsefield						    		|	filename 																												 | responseBody                                                                  	  					 |
| asbaservice    | withdrawAppliedIpoBid	| src\test\resources\testdata\api\request\Drop2\ASBA\405_withdrawAppliedIpoBid.json	  | cif,pan,name 	  | customerId,kycDetails.pan,name	| GS_getProfileDetails_Mandatory_200.json      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_withdrawAppliedIpoBid.json |

@RegressionTest-UDB-T082
Scenario Outline: Verify "/withdrawAppliedIpoBid" API for Status code 500 Error "Internal Server Error" 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples: 
| service    		| endpoint   		  		   | requestBody 																																  			|requestField	|responsefield	|filename  	| responseBody                                                                     	 			  |
| asbaservice1  | withdrawAppliedIpoBid  | src\test\resources\testdata\api\request\Drop2\ASBA\500_withdrawAppliedIpoBid.json	|null				 	|null        	  |null 			| src\test\resources\testdata\api\response\expected\Drop2\ASBA\500_withdrawAppliedIpoBid.xml|

#################################<-getAllotmentStageResponse->##################################################
#@RegressionTest-UDB-T078
#Scenario Outline: Verify that system should return the correct response for allotment stage by hitting the post getAllotmentStageResponse api.
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 200
#Then user verifies json from <responseBody>
#
#Examples:
#| service     | endpoint                  | requestBody                                                                              | requestField   | responsefield    | filename      | responseBody |                                                                  
#| asbaservice | getAllotmentStageResponse | src\test\resources\testdata\api\request\Drop2\ASBA\200_getAllotmentStageResponse.json    | null 				  | null        		 | null      		 | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAllotmentStageResponse.json |

@RegressionTest-UDB-T083
Scenario Outline: Verify that system should return the "401" response by hitting the post getAllotmentStageResponse api.
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:			
| service        | endpoint        	 	  		 | requestBody 							 																									 	 			 		 |	requestField   |	responsefield 			| filename 																											| responseBody                   																						    			  	   		  |
| asbaservice 	 | getAllotmentStageResponse | src\test\resources\testdata\api\request\Drop2\ASBA\401_getAllotmentStageResponse.json	 |	pan,name			 | kycDetails.pan,name	| GS_getProfileDetails_Mandatory_200.json 	|	src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_getAllotmentStageResponse.json |                      

@RegressionTest-UDB-T084
Scenario Outline: Verify that system should return the "400" response for applying the ipo by hitting the post getAllotmentStageResponse api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
| service     | endpoint   								| requestBody                                                            								| requestField  | responsefield     						 | filename   																									| responseBody 																																							 		 | 
| asbaservice | getAllotmentStageResponse | src\test\resources\testdata\api\request\Drop2\ASBA\400_getAllotmentStageResponse.json | cif,pan,name  | customerId,kycDetails.pan,name | GS_getProfileDetails_Mandatory_200.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_getAllotmentStageResponse.json|

@RegressionTest-UDB-T085
Scenario Outline: Verify "/getAllotmentStageResponse" API "POST" Method for Status code 404 if endpoint is Invalid
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples: 
| service     | endpoint 		 	 				   	 		  | requestBody 																											    									| requestField	| responsefield  									| filename      																							| responseBody																																						  		 |
| asbaservice | getAllotmentStageResponse12345	| src\test\resources\testdata\api\request\Drop2\ASBA\404_getAllotmentStageResponse.json   | cif,pan,name  | customerId,kycDetails.pan,name  | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_getAllotmentStageResponse.json|

@RegressionTest-UDB-T086
Scenario Outline: Verify "/getAllotmentStageResponse" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:   
| service        | endpoint 					 	 		  | requestBody 																																	   	  		| requestField		| responsefield						    		|	filename 																												 | responseBody                                                                  	  					 		 |
| asbaservice    | getAllotmentStageResponse	| src\test\resources\testdata\api\request\Drop2\ASBA\405_getAllotmentStageResponse.json	  | cif,pan,name 	  | customerId,kycDetails.pan,name	| GS_getProfileDetails_Mandatory_200.json      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_getAllotmentStageResponse.json |

@RegressionTest-UDB-T087
Scenario Outline: Verify "/getAllotmentStageResponse" API for Status code 500 Error "Internal Server Error" 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples: 
| service    		| endpoint   		  		 		   | requestBody 																																  					|requestField	|responsefield	|filename  	| responseBody                                                                     	 					  |
| asbaservice1  | getAllotmentStageResponse  | src\test\resources\testdata\api\request\Drop2\ASBA\500_getAllotmentStageResponse.json	|null				 	|null        	  |null 			| src\test\resources\testdata\api\response\expected\Drop2\ASBA\500_getAllotmentStageResponse.xml|

#################################<-getCategoryDetails->##################################################

# POL Category
@RegressionTest-UDB-T088
Scenario Outline: Verify that system should return the correct response for allotment stage by hitting the post getCategoryDetails api.POL
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint           | requestBody                                                                       | requestField   | responsefield    | filename      | responseBody 																																						|                                                                  
| asbaservice | getCategoryDetails | src\test\resources\testdata\api\request\Drop2\ASBA\200_getCategoryDetails.json    | null 				  | null        		 | null      		 | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getCategoryDetails.json |

#EMP Category
@RegressionTest-UDB-T089
Scenario Outline: Verify that system should return the correct response for allotment stage by hitting the post getCategoryDetails api.EMP
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint           | requestBody                                                                       | requestField   | responsefield    | filename      | responseBody 																																						|                                                                  
| asbaservice | getCategoryDetails | src\test\resources\testdata\api\request\Drop2\ASBA\200_getCategoryDetailsEMP.json    | null 				  | null        		 | null      		 | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getCategoryDetailsEMP.json |

#SHA Category
@RegressionTest-UDB-T090
Scenario Outline: Verify that system should return the correct response for allotment stage by hitting the post getCategoryDetails api.SHA
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint           | requestBody                                                                       | requestField   | responsefield    | filename      | responseBody 																																						|                                                                  
| asbaservice | getCategoryDetails | src\test\resources\testdata\api\request\Drop2\ASBA\200_getCategoryDetailsSHA.json    | null 				  | null        		 | null      		 | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getCategoryDetailsSHA.json |

#IND Category
@RegressionTest-UDB-T091
Scenario Outline: Verify that system should return the correct response for allotment stage by hitting the post getCategoryDetails api.IND
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint           | requestBody                                                                       | requestField   | responsefield    | filename      | responseBody 																																						|                                                                  
| asbaservice | getCategoryDetails | src\test\resources\testdata\api\request\Drop2\ASBA\200_getCategoryDetailsIND.json    | null 				  | null        		 | null      		 | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getCategoryDetailsIND.json |

@RegressionTest-UDB-T092
Scenario Outline: Verify that system should return the "401" response by hitting the post getCategoryDetails api.
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>

Examples:			
| service        | endpoint        	  | requestBody 							 																									 		 |	requestField   |	responsefield 			| filename 																											| responseBody                   																						       				 |
| asbaservice 	 | getCategoryDetails | src\test\resources\testdata\api\request\Drop2\ASBA\401_getCategoryDetails.json	 |	pan,name			 | kycDetails.pan,name	| GS_getProfileDetails_Mandatory_200.json 	|	src\test\resources\testdata\api\response\expected\Drop2\ASBA\401_getCategoryDetails.json |                      

@RegressionTest-UDB-T093
Scenario Outline: Verify that system should return the "400" response for applying the ipo by hitting the post getCategoryDetails api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
| service     | endpoint   			   | requestBody                                                            				| requestField  | responsefield     						 | filename   																									| responseBody 																																	  		 		| 
| asbaservice | getCategoryDetails | src\test\resources\testdata\api\request\Drop2\ASBA\400_getCategoryDetails.json | cif,pan,name  | customerId,kycDetails.pan,name | GS_getProfileDetails_Mandatory_200.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_getCategoryDetails.json|

@RegressionTest-UDB-T094
Scenario Outline: Verify "/getCategoryDetails" API "POST" Method for Status code 404 if endpoint is Invalid
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples: 
| service     | endpoint 		 	 		 			| requestBody 																											    		 			 | requestField	 | responsefield  								 | filename      																							 | responseBody																																						 |
| asbaservice | getCategoryDetails12345	| src\test\resources\testdata\api\request\Drop2\ASBA\404_getCategoryDetails.json   | cif,pan,name  | customerId,kycDetails.pan,name  | GS_getProfileDetails_Mandatory_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\404_getCategoryDetails.json|

@RegressionTest-UDB-T095
Scenario Outline: Verify "/getCategoryDetails" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:   
| service        | endpoint 		 		  | requestBody 																												   	  				| requestField	| responsefield		|	filename 																												 | responseBody                                                                  	  			  |
| asbaservice    | getCategoryDetails	| src\test\resources\testdata\api\request\Drop2\ASBA\405_getCategoryDetails.json	  | cif 	  			| customerId		 	| GS_getProfileDetails_Mandatory_200.json      | src\test\resources\testdata\api\response\expected\Drop2\ASBA\405_getCategoryDetails.json |

@RegressionTest-UDB-T096
Scenario Outline: Verify "/getCategoryDetails" API for Status code 500 Error "Internal Server Error" 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples: 
| service    		| endpoint   		  	  | requestBody 																																		|requestField	|responsefield	|filename  	| responseBody                                                                     	   	 |
| asbaservice1  | getCategoryDetails  | src\test\resources\testdata\api\request\Drop2\ASBA\500_getCategoryDetails.json	|null				 	|null        	  |null 			| src\test\resources\testdata\api\response\expected\Drop2\ASBA\500_getCategoryDetails.xml|
