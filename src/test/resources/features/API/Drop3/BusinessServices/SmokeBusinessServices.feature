Feature: Smoke of Business Services
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop3/BusinessServices



@TestCaseKey=UBI-T38485
Scenario Outline: Verify getAccountList API for status code 200 with valid cif
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service  |getAccountList  |src/test/resources/testdata/api/request/Drop3/BusinessServices/getAccountList.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getAccountList.json|

#Ritika code for LEI flow



@TestCaseKey=UDB-T38598 @TestCaseKey=UDB-T38599A
Scenario Outline: Verify saveLEIDetails  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user copy file from <sourceFilePath> and paste to file at location <destinationFilePath>
Then user verifies json from <responseBody>
Examples:
|service              |endpoint      |requestBody                                                                       |requestField  |responsefield     | filename   |responseBody                                                                                        |sourceFilePath                                         |destinationFilePath               |                                   
|bs-bff-mobile-service|saveLEIDetails|src/test/resources/testdata/api/request/Drop3/BusinessServices/saveLEIDetails.json|null					 |null							|null				 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/saveLEIDetails.json        |src/test/resources/responseFolder/saveLEIDetails.json  |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/saveLEIDetails.json|

@TestCaseKey=UBI-T38502
Scenario Outline: Verify verifyLeiNumber API for 200 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service                         |endpoint                    |requestBody                                                                                      |requestField      |responsefield      |filename          |responseBody|
|bs-bff-mobile-service           |verifyLeiNumber             |src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyLeiNumber.json              |null					     |null							 |null				      |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyLeiNumber.json|




@TestCaseKey=UDB-T38599
Scenario Outline: Verify fetchLeiDetails  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service              |endpoint      |requestBody                                                                              |requestField               |responsefield     | filename                           |responseBody|
|bs-bff-mobile-service|fetchLeiDetails|src/test/resources/testdata/api/request/Drop3/BusinessServices/fetchLeiDetails.json     |applicationNumber					 |referenceId				|saveLEIDetails.json				         |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/fetchLeiDetailsResponse.json|

@TestCaseKey=UDB-T38599
Scenario Outline: Verify workFlowInitiate  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service              |endpoint               |requestBody                                                                                       |requestField               |responsefield     | filename                           |responseBody|
|bff-service          |/initiate  |src/test/resources/testdata/api/request/Drop3/BusinessServices/WorkFlowInitiate.json              |applId					           |referenceId				|saveLEIDetails.json				         |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/WorkFlowInitiate.json|

@TestCaseKey=UDB-T38599A
Scenario Outline: Verify applicationInstances  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user copy file from <sourceFilePath> and paste to file at location <destinationFilePath>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Then User sorts key <key> in the root node <rootnode> arraynode <arraynode> from json file <destinationFilePath>
Examples:
|service              |endpoint                |requestBody                                                                                            |requestField               |responsefield         | filename                                  |responseBody                                                                                    |sourceFilePath                                         |destinationFilePath |key|rootnode|arraynode|
|bff-service          |/application/instances  |src/test/resources/testdata/api/request/Drop3/BusinessServices/instances.json                          |applId					           |referenceId				    |saveLEIDetails.json				                |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/instances.json         |src/test/resources/responseFolder/instances.json       |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/instances.json|status|wfTasks|tasks| 

@TestCaseKey=UDB-T38599A
Scenario Outline: Verify taskUpdate  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service              |endpoint               |requestBody                                                                                       |requestField                     |responsefield                                       | filename                           |responseBody|
|bff-service          |/tasks/update          |src/test/resources/testdata/api/request/Drop3/BusinessServices/update.json                        |taskId,applId					           |wfTasks[0].tasks[1].taskId,wfTasks[0].applId				|instances.json			                 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/update.json|



@TestCaseKey=UDB-T38599
Scenario Outline: Verify leiUpdateStatus  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service              |endpoint       |requestBody                                                                              |requestField               |responsefield     | filename                           |responseBody|
|bs-bff-mobile-service|leiUpdateStatus|src/test/resources/testdata/api/request/Drop3/BusinessServices/leiUpdateStatus.json     |applicationNumber					 |referenceId				|saveLEIDetails.json				         |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/leiUpdateStatus.json|


@TestCaseKey=UDB-T38599
Scenario Outline: Verify getCustomerOverview  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service              |endpoint           |requestBody                                                                                 |requestField               |responsefield     | filename                           |responseBody|
|bs-bff-mobile-service|getCustomerOverview|src/test/resources/testdata/api/request/Drop3/BusinessServices/getCustomerOverview.json     |null					 |null				|null.json				         |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getCustomerOverview.json|

#Udyam Flow
@TestCaseKey=UDB-T38598
Scenario Outline: Verify saveUdyamDetails  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user copy file from <sourceFilePath> and paste to file at location <destinationFilePath>
Then user verifies json from <responseBody>
Examples:
|service              |endpoint        |requestBody                                                                           |requestField  |responsefield     | filename   |responseBody                                                                                          |sourceFilePath                                           |destinationFilePath               |                                   
|bs-bff-mobile-service|saveUdyamDetails|src/test/resources/testdata/api/request/Drop3/BusinessServices/saveUdyamDetails.json  |null					 |null							|null				 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/saveUdyamDetails.json        |src/test/resources/responseFolder/saveUdyamDetails.json  |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/saveUdyamDetails.json|

@TestCaseKey=UDB-T38598
Scenario Outline: Verify fetchUdyamDetails  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service              |endpoint         |requestBody                                                                            |requestField                |responsefield         | filename                     |responseBody |                                                                                                                           
|bs-bff-mobile-service|fetchUdyamDetails|src/test/resources/testdata/api/request/Drop3/BusinessServices/fetchUdyamDetails.json  |applicationNumber					 |referenceId						|saveUdyamDetails.json				 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/fetchUdyamDetails.json   |     

@TestCaseKey=UDB-T38464
Scenario Outline: Verify verifyUdyamNumber API for Status code 200 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service              |endpoint          |requestBody                                                                                 |requestField  |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyUdyamNumber |src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyUdyamNumber.json       |null					|null							  |null			   |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyUdyamNumber.json|

@TestCaseKey=UDB-T38599
Scenario Outline: Verify workFlowInitiateUdyam  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service              |endpoint               |requestBody                                                                                       |requestField               |responsefield     | filename                           |responseBody|
|bff-service          |/initiate  |src/test/resources/testdata/api/request/Drop3/BusinessServices/WorkFlowInitiateUdyam.json              |applId					           |referenceId				        |saveUdyamDetails.json				         |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/WorkFlowInitiateUdyam.json|

@TestCaseKey=UDB-T38599
Scenario Outline: Verify applicationInstancesUdyam  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user copy file from <sourceFilePath> and paste to file at location <destinationFilePath>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service              |endpoint                |requestBody                                                                                            |requestField               |responsefield         | filename                                    |responseBody                                                                                    |sourceFilePath                                         |destinationFilePath |
|bff-service          |/application/instances  |src/test/resources/testdata/api/request/Drop3/BusinessServices/instances.json                          |applId					           |referenceId				    |saveUdyamDetails.json				                |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/instances.json         |src/test/resources/responseFolder/instances.json       |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/instances.json| 

@TestCaseKey=UDB-T38599
Scenario Outline: Verify taskUpdateUdyam  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service              |endpoint               |requestBody                                                                                            |requestField                     |responsefield                                       | filename                           |responseBody|
|bff-service          |/tasks/update          |src/test/resources/testdata/api/request/Drop3/BusinessServices/updateUdyam.json                        |taskId,applId					           |wfTasks[0].tasks[0].taskId,wfTasks[0].applId				|instances.json			         |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/updateUdyam.json|


@TestCaseKey=UDB-T38599
Scenario Outline: Verify udyamUpdateStatus  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service              |endpoint         |requestBody                                                                              |requestField               |responsefield     | filename                              |responseBody|
|bs-bff-mobile-service|udyamUpdateStatus|src/test/resources/testdata/api/request/Drop3/BusinessServices/udyamUpdateStatus.json     |applicationNumber					 |referenceId				|saveUdyamDetails.json				         |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/udyamUpdateStatus.json|



#GST Flow
@TestCaseKey=UDB-T38598
Scenario Outline: Verify saveGstDetails  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user copy file from <sourceFilePath> and paste to file at location <destinationFilePath>
Then user verifies json from <responseBody>
Examples:
|service              |endpoint      |requestBody                                                                       |requestField  |responsefield     | filename   |responseBody                                                                                        |sourceFilePath                                         |destinationFilePath               |                                   
|bs-bff-mobile-service|saveGstDetails|src/test/resources/testdata/api/request/Drop3/BusinessServices/saveGstDetails.json|null					 |null							|null				 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/saveGstDetails.json        |src/test/resources/responseFolder/saveGstDetails.json  |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/saveGstDetails.json|


@TestCaseKey=UBI-T38477
Scenario Outline: Verify getGstList  POST api for 200 status code
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint  |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|bs-bff-mobile-service|getGstList|src/test/resources/testdata/api/request/Drop3/BusinessServices/getGSTList.json|null				 |null							|null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getGSTList.json|


@TestCaseKey=UDB-T38469
Scenario Outline: Verify fetchGstList API for 200 staus with verified and unverified Gst list
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint                 |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|bs-bff-mobile-service|fetchGstList             |src/test/resources/testdata/api/request/Drop3/BusinessServices/fetchGSTList.json|null					|							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/fetchGSTList.json|




@TestCaseKey=UDB-T38521
Scenario Outline: Verify verifyGst  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service              |endpoint |requestBody                                                                                |requestField      |responsefield                                                                                       | filename   |responseBody|
|bs-bff-mobile-service|verifyGst|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyGST.json				      |null							 |null                                                                                                |null        |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyGST.json|

@TestCaseKey=UDB-T38599
Scenario Outline: Verify workFlowInitiateGST  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service              |endpoint               |requestBody                                                                                       |requestField               |responsefield     | filename                           |responseBody|
|bff-service          |/initiate  |src/test/resources/testdata/api/request/Drop3/BusinessServices/WorkFlowInitiateGST.json              |applId					           |referenceId				        |saveGstDetails.json				         |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/WorkFlowInitiateGST.json|


@TestCaseKey=UDB-T38599
Scenario Outline: Verify applicationInstancesGST  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user copy file from <sourceFilePath> and paste to file at location <destinationFilePath>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service              |endpoint                |requestBody                                                                                            |requestField               |responsefield         | filename                                    |responseBody                                                                                    |sourceFilePath                                         |destinationFilePath |
|bff-service          |/application/instances  |src/test/resources/testdata/api/request/Drop3/BusinessServices/instances.json                          |applId					           |referenceId				    |saveGstDetails.json				                |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/instances.json         |src/test/resources/responseFolder/instances.json       |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/instances.json| 

@TestCaseKey=UDB-T38599
Scenario Outline: Verify taskUpdateGST  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service              |endpoint               |requestBody                                                                                            |requestField                     |responsefield                                       | filename                           |responseBody|
|bff-service          |/tasks/update          |src/test/resources/testdata/api/request/Drop3/BusinessServices/updateGST.json                        |taskId,applId					           |wfTasks[0].tasks[1].taskId,wfTasks[0].applId				|instances.json			         |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/updateGST.json|



#below API is not working currently getting error code 504


@TestCaseKey=UDB-T38490
Scenario Outline: Verify getCashFlow API  returns a successful response with a valid cash flow data when period type years.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>





Examples:
|service              |endpoint   |requestBody                                                                    |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|getCashFlow|src/test/resources/testdata/api/request/Drop3/BusinessServices/getCashFlow.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getCashFlowResponse.json|

@TestCaseKey=UDB-T38490
Scenario Outline: Verify getWorkingCapital API  returns a successful response with a valid getWorkingCapital data when period type years.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>





Examples:
|service              |endpoint         |requestBody                                                                    |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|getWorkingCapital|src/test/resources/testdata/api/request/Drop3/BusinessServices/getWorkingCapital.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getWorkingCapital.json|

@TestCaseKey=UDB-T38490
Scenario Outline: Verify getCollectionSummary API  returns a successful response with a valid getCollectionSummary data when period type years.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>





Examples:
|service              |endpoint         |requestBody                                                                    |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|getCollectionSummary|src/test/resources/testdata/api/request/Drop3/BusinessServices/getCollectionSummary.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getCollectionSummary.json|

@TestCaseKey=UDB-T38490
Scenario Outline: Verify getCollectionStatment API  returns a successful response with a valid getCollectionSummary data when period type years.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>





Examples:
|service              |endpoint         |requestBody                                                                    |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|getCollectionStatment|src/test/resources/testdata/api/request/Drop3/BusinessServices/getCollectionStatment.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getCollectionStatment.json|



