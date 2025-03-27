# Feature: ASBA API
# Author: Dipesh Titirmare


# Description: Smoke Testing : ASBA API
# Test Environment: UAT
# Preconditions: ASBA API should be up and running

#######################################################################################
Feature: Smoke of ASBA API Test
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/ASBA
#######################################################################################


@Test-UDB-T000
 #Scenario Outline: Verify get customer account details with cif for valid customer
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
#Then user triggers a post request to get customer accounts <requestBody>
#Then user verifies that status is 200
#Then user verifies json from <responseBody>		
#			
#Examples:			
#| service        | endpoint        		 	  | requestBody																																									 |requestField   |responsefield      | filename       | responseBody                    |
#| generalservice |/getCustomerAccounts		|src\test\resources\testdata\api\request\Drop2\GeneralService\Customer_getCustomerAccounts.json|null 					 |null							 | null 					|src\test\resources\testdata\api\response\expected\Drop2\GeneralService\Customer_getCustomerAccounts.json|

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
| generalservice | getProfileDetails  |\src\test\resources\testdata\api\request\Drop2\ASBA\GS_getProfileDetails_Regression_Mandatory_Optional_200.json|null 			 |null 				 | null 		|\src\test\resources\testdata\api\response\Expected\Drop2\ASBA\GS_getProfileDetails_Regression_Mandatory_Optional_200.json|
 
@Test-UDB-T001 
Scenario Outline: Verify that system should return the Ongoing IPO list by hitting the post getOngoingIpoList api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint              | requestBody                                                                    | requestField | responsefield  | filename    																				| responseBody |
| asbaservice | getOngoingIpoList     | src\test\resources\testdata\api\request\Drop2\ASBA\200_getOngoingIpoList.json  | cif          | customerId 		 | GS_getProfileDetails_Regression_Mandatory_Optional_200.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getOngoingIpoList.json|

@Test-UDB-T002
Scenario Outline: Verify that system should return the already added Demat Account list by hitting the post fetchDematList api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint           | requestBody                                                                    | requestField     | responsefield  				   | filename  																												 | responseBody |
| asbaservice | fetchDematList     | src\test\resources\testdata\api\request\Drop2\ASBA\200_fetchDematList.json     | cif,pan          | customerId,kycDetails.pan | GS_getProfileDetails_Regression_Mandatory_Optional_200.json       | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_fetchDematList.json|

@Test-UDB-T003
Scenario Outline: Verify that system should add the Demat account by hitting the post addNewDematAccount api.
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


@Test-UDB-T004
Scenario Outline: Verify that system should edit the demat account the applied Ipo by hitting the post editDematAccount api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint         | requestBody                                                                  | requestField  | responsefield   								 | filename    																							  | responseBody |
| asbaservice | editDematAccount | src/test/resources/testdata/api/request/Drop2/ASBA/200_editDematAccount.json | cif,pan,name  | customerId,kycDetails.pan,name   | GS_getProfileDetails_Regression_Mandatory_Optional_200.json| src/test/resources/testdata/api/response/expected/Drop2/ASBA/200_editDematAccount.json |


@Test-UDB-T005
Scenario Outline: Verify that system should return the correct response for Delete demat account by hitting the post deleteDematAccount api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint           | requestBody                                                                       | requestField  | responsefield   								  | filename     																									  | responseBody |                                                                  
| asbaservice | deleteDematAccount | src\test\resources\testdata\api\request\Drop2\ASBA\200_deleteDematAccount.json    | cif,pan,name  | customerId,kycDetails.pan,name   | GS_getProfileDetails_Regression_Mandatory_Optional_200.json 		| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_deleteDematAccount.json|

@Test-UDB-T006
Scenario Outline: Verify that system should return the correct response for allotment stage by hitting the post getAllotmentStageResponse api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint                  | requestBody                                                                              | requestField   | responsefield    | filename      | responseBody |                                                                  
| asbaservice | getAllotmentStageResponse | src\test\resources\testdata\api\request\Drop2\ASBA\200_getAllotmentStageResponse.json    | null 				  | null        		 | null      		 | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAllotmentStageResponse.json |

@Test-UDB-T007
Scenario Outline: Verify that system should return the correct response for Ipo Category Details stage by hitting the post getCategoryDetails api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint                  | requestBody                                                                              | requestField   | responsefield    | filename      | responseBody |                                                                  
| asbaservice | getCategoryDetails        | src\test\resources\testdata\api\request\Drop2\ASBA\200_getCategoryDetails.json           | null 				  | null        		 | null      		 | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getCategoryDetails.json |

@Test-UDB-T008 
Scenario Outline: Verify that system should return the correct response for Ipo subscription rate stage by hitting the post getSubscriptionRate api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
| service     | endpoint                  | requestBody                                                                              | requestField   | responsefield    | filename      | responseBody |                                                                  
| asbaservice | getSubscriptionRate       | src\test\resources\testdata\api\request\Drop2\ASBA\200_getSubscriptionRate.json          | null 				  | null        		 | null      		 | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getSubscriptionRate.json |


@Test-UDB-T009A 
Scenario Outline: Verify that system should return the correct response for new applied ipo by hitting the applyNewIpo Api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>		
			
Examples:			
| service        | endpoint         | requestBody 																											      | requestField   | responsefield     							 | filename     																							 | responseBody |
| asbaservice    | applyNewIpo      |	src\test\resources\testdata\api\request\Drop2\ASBA\200_applyNewIpo.json	| cif,pan,name   |customerId,kycDetails.pan,name 	 | GS_getProfileDetails_Regression_Mandatory_Optional_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_applyNewIpo.json |

@Test-UDB-T010
Scenario Outline: Verify that system should return the Ongoing IPO list by hitting the post checkAlreadyAppliedIpo api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:		
| service     | endpoint                   | requestBody                                                                         | requestField  | responsefield     					| filename    																								| responseBody |
| asbaservice | checkAlreadyAppliedIpo     | src\test\resources\testdata\api\request\Drop2\ASBA\200_checkAlreadyAppliedIpo.json  | cif,pan       | customerId,kycDetails.pan  | GS_getProfileDetails_Regression_Mandatory_Optional_200.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_checkAlreadyAppliedIpo.json|


@Test-UDB-T011
Scenario Outline: Verify that system should return the correct response for already applied IPO list by hitting the getAppliedIpoList api.
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

@Test-UDB-T012
Scenario Outline: Verify that system should return the correct response for modified IPO list by hitting the modifyAppliedIpoBid api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then Update the request body <requestBody> with attributes and values from response file <responseFile>
Then user triggers a post request with <requestBody>   
Then user verifies that status is 200
Then user verifies json from <responseBody>
			
Examples:
| service     | endpoint       		  | requestBody																																		  | requestField 							  | responsefield 																| filename  	 											  | responseBody               		     																											  | responseFile	|
| asbaservice | modifyAppliedIpoBid | src\test\resources\testdata\api\request\Drop2\ASBA\200_modifyAppliedIpoBid.json	| bids[0].bidid,applicationNo | bidDetail[0].bidId,applicationNumber		  	  | 200_getAppliedIpoList.json 					| src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_modifyAppliedIpoBid.json | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_getAppliedIpoList.json|                  

@Test-UDB-T013
Scenario Outline: Verify taht system should return the correct response for withdrawning the BId by hitting the withdrawAppliedIpoBid Api.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user copy file from <source> and paste to file at location <requestBody>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>		
			
Examples:			
| service     | endpoint              | requestBody            																												    | requestField  				    	 | responsefield      				        | filename                    | responseBody                                                                                |source|
| asbaservice | withdrawAppliedIpoBid | src\test\resources\testdata\api\request\Drop2\ASBA\200_withdrawAppliedIpoBid.json | bids[0].bidid,applicationNo  |bidDetail[0].bidId,applicationNumber| 200_getAppliedIpoList.json  | src\test\resources\testdata\api\response\expected\Drop2\ASBA\200_withdrawAppliedIpoBid.json |src\test\resources\testdata\api\request\Drop2\ASBA\200_modifyAppliedIpoBid.json|

#@Test-UDB-T013
#Scenario Outline: Verify that system should return the Ongoing IPO list by hitting the post checkAlreadyAppliedIpo api.
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 400
#Then user verifies json from <responseBody>
#
#Examples:
#| service     | endpoint                   | requestBody                                                                         | requestField  | responsefield     | filename    | responseBody |
#| asbaservice | checkAlreadyAppliedIpo     | src\test\resources\testdata\api\request\Drop2\ASBA\200_checkAlreadyAppliedIpo.json  | null          | null              | null        | src\test\resources\testdata\api\response\expected\Drop2\ASBA\400_checkAlreadyAppliedIpo.json|
