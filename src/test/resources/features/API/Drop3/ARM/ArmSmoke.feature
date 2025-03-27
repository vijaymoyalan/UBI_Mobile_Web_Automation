Feature: Smoke of ARM
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop3/ARM

@TestCaseKey=UDB-T01
Scenario Outline: Verify "feature-accesses" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                   |requestField  |responsefield     | filename   |responseBody|
|arm     |feature-accesses|src\test\resources\testdata\api\request\Drop3\ARM\200_feature-accessesReq.json|null					|null					     |null				|src\test\resources\testdata\api\response\expected\Drop3\ARM\200_feature-accessesResponse.json|

@TestCaseKey=UDB-T02
Scenario Outline: Verify "getArmTermsAndCondition" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                   |requestField  |responsefield     | filename   |responseBody|
|arm     |getArmTermsAndCondition|src\test\resources\testdata\api\request\Drop3\ARM\200_getArmTermsAndConditionReq.json|null					|null					     |null				|src\test\resources\testdata\api\response\expected\Drop3\ARM\200_getArmTermsAndConditionResponse.json|

@TestCaseKey=UDB-T03
Scenario Outline: Verify "corp-list" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                   |requestField  |responsefield     | filename   |responseBody|
|arm     |corp-list|src\test\resources\testdata\api\request\Drop3\ARM\200_corp-listReq.json|null					|null					     |null				|src\test\resources\testdata\api\response\expected\Drop3\ARM\200_corp-listResponse.json|

@TestCaseKey=UDB-T04
Scenario Outline: Verify "admin-access" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                    |requestField  |responsefield     | filename   |responseBody|
|arm     |admin-access    |src\test\resources\testdata\api\request\Drop3\ARM\200_admin-accessReq.json|null|null					     |null			  	|src\test\resources\testdata\api\response\expected\Drop3\ARM\200_admin-accessResponse.json|

@TestCaseKey=UDB-T05
Scenario Outline: Verify "corp-users-with-app-roles" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                    |requestField  |responsefield     | filename   |responseBody|
|arm     |corp-users-with-app-roles|src\test\resources\testdata\api\request\Drop3\ARM\200_corp-users-with-app-rolesReq.json|null|null					     |null			  	|src\test\resources\testdata\api\response\expected\Drop3\ARM\200_corp-users-with-app-rolesResponse.json|

@TestCaseKey=UDB-T06
Scenario Outline: Verify "corp-user-workflows" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                    |requestField  |responsefield     | filename   |responseBody|
|arm     |corp-user-workflows   |src\test\resources\testdata\api\request\Drop3\ARM\200_corp-user-workflowsReq.json |null|null					     |null			  	|src\test\resources\testdata\api\response\expected\Drop3\ARM\200_corp-user-workflowsResponse.json|

@TestCaseKey=UDB-T07
Scenario Outline: Verify "corp-user-role" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                    |requestField  |responsefield     | filename   |responseBody|
|arm     |corp-user-role   |src\test\resources\testdata\api\request\Drop3\ARM\200_corp-user-roleReq.json|null|null					     |null			  	|src\test\resources\testdata\api\response\expected\Drop3\ARM\200_corp-user-roleResponse.json|

@TestCaseKey=UDB-T08
Scenario Outline: Verify "userid-suggestion" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                    |requestField  |responsefield     | filename   |responseBody|
|arm     |userid-suggestion   |src\test\resources\testdata\api\request\Drop3\ARM\200_userid-suggestionReq.json|null|null					     |null			  	|src\test\resources\testdata\api\response\expected\Drop3\ARM\200_userid-suggestionResponse.json|

@TestCaseKey=UDB-T09
Scenario Outline: Verify "userid-availability" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                    |requestField  |responsefield     | filename   |responseBody|
|arm     |userid-availability   |src\test\resources\testdata\api\request\Drop3\ARM\200_userid-availabilityReq.json|null|null					     |null			  	|src\test\resources\testdata\api\response\expected\Drop3\ARM\200_userid-availabilityResponse.json|

@TestCaseKey=UDB-T10
Scenario Outline: Verify "feature-accesses-hierarchy" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                    |requestField  |responsefield     | filename   |responseBody|
|arm     |feature-accesses-hierarchy   |src\test\resources\testdata\api\request\Drop3\ARM\200_feature-accesses-hierarchyReq.json|null|null					     |null			  	|src\test\resources\testdata\api\response\expected\Drop3\ARM\200_feature-accesses-hierarchyResponse.json|

@TestCaseKey=UDB-T11
Scenario Outline: Verify "added-user-sole-prop" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Given User update the JSON file <requestBody> with random values for the key <keylist> using regex <regex>
Then user triggers a post request with <requestBody>
Then user copy file from <responseFolder> and paste to file at location <responseBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint              |requestBody                                                                       |requestField  |responsefield     | filename   |responseBody|keylist|regex|responseFolder|
|arm     |added-user-sole-prop  |src\test\resources\testdata\api\request\Drop3\ARM\200_added-user-sole-prop.json|null|null					     |null			  	|src\test\resources\testdata\api\response\expected\Drop3\ARM\200_added-user-sole-prop.json|corpUserId,corpUserName,corpUserMobileNumber|[A-Z]{4}[0-9]{4},[A-Z]{1}[a-z]{7},[0-9]{10}|src\test\resources\responseFolder\200_added-user-sole-prop.json|
