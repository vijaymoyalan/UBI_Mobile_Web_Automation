Feature: Smoke of mPOS
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop3/mPOS

@TestCaseKey=UBI-111
Scenario Outline: Verify "isMerchantEligibleForPOS" API "POST" Method for Status code 200 with all field for an ETB customer
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint          					|requestBody    																										|responseBody |
|pos			|isMerchantEligibleForPOS		|src\test\resources\testdata\api\request\Drop3\mPOS\isMerchantEligibleForPOS_request.json| src\test\resources\testdata\api\response\expected\Drop3\mPOS\isMerchantEligibleForPOS_response.json|

Scenario Outline: Verify "getSettlementAccountList" API "POST" Method for Status code 200 with all fields for an ETB customer
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint          					|requestBody    																										|responseBody |
|pos			|getSettlementAccountList		|src\test\resources\testdata\api\request\Drop3\mPOS\getSettlementAccountList_request.json| src\test\resources\testdata\api\response\expected\Drop3\mPOS\getSettlementAccountList_response.json|

Scenario Outline: Verify "getMerchantDetails" API "POST" Method for Status code 200 with all fields for an ETB customer
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint          		|requestBody    																										|responseBody |
|pos			|getMerchantDetails		|src\test\resources\testdata\api\request\Drop3\mPOS\getMerchantDetails_request.json| src\test\resources\testdata\api\response\expected\Drop3\mPOS\getMerchantDetails_response.json|


Scenario Outline: Verify "saveDropOffInformation" API "POST" Method for Status code 200 with all fields for an ETB customer
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint          		|requestBody    																										|responseBody |
|pos			|saveDropOffInformation|src\test\resources\testdata\api\request\Drop3\mPOS\saveDropOffInformation_request.json| src\test\resources\testdata\api\response\expected\Drop3\mPOS\saveDropOffInformation_response.json|

Scenario Outline: Verify "uploadImage" API "POST" Method for Status code 200 with all fields for an ETB customer
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint     |requestBody    																										|responseBody |
|pos			|uploadImage	|src\test\resources\testdata\api\request\Drop3\mPOS\uploadImage_request.json| src\test\resources\testdata\api\response\expected\Drop3\mPOS\uploadImage_response.json|

Scenario Outline: Verify "fetchApplicationDetails" API "POST" Method for Status code 200 with all fields for an ETB customer
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint     |requestBody    																										|responseBody |
|pos			|fetchApplicationDetails	|src\test\resources\testdata\api\request\Drop3\mPOS\fetchApplicationDetails_request.json| src\test\resources\testdata\api\response\expected\Drop3\mPOS\fetchApplicationDetails_response.json|


Scenario Outline: Verify "deleteImage" API "POST" Method for Status code 200 with all fields for an ETB customer
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint     |requestBody    																										|responseBody |
|pos			|deleteImage	|src\test\resources\testdata\api\request\Drop3\mPOS\deleteImage_request.json| src\test\resources\testdata\api\response\expected\Drop3\mPOS\deleteImage_response.json|


Scenario Outline: Verify "fetchPaymentDetail" API "POST" Method for Status code 200 with all fields for an ETB customer
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint     |requestBody    																										|responseBody |
|pos			|fetchPaymentDetail	|src\test\resources\testdata\api\request\Drop3\mPOS\fetchPaymentDetail_request.json| src\test\resources\testdata\api\response\expected\Drop3\mPOS\fetchPaymentDetail_response.json|


Scenario Outline: Verify "fetchBranchDetail" API "POST" Method for Status code 200 with all fields for an ETB customer
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint     |requestBody    																										|responseBody |
|pos			|fetchBranchDetail	|src\test\resources\testdata\api\request\Drop3\mPOS\fetchBranchDetail_request.json| src\test\resources\testdata\api\response\expected\Drop3\mPOS\fetchBranchDetail_response.json|


Scenario Outline: Verify "fetchPOSDeviceCount" API "POST" Method for Status code 200 with all fields for an ETB customer
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint     |requestBody    																										|responseBody |
|pos			|fetchPOSDeviceCount	|src\test\resources\testdata\api\request\Drop3\mPOS\fetchPOSDeviceCount_request.json|src\test\resources\testdata\api\response\expected\Drop3\mPOS\fetchPOSDeviceCount_response.json|


Scenario Outline: Verify "fetchMerchantLinkedPOSDeviceDetails" API "POST" Method for Status code 200 with all fields for an ETB customer
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint     |requestBody    																										|responseBody |
|pos			|fetchMerchantLinkedPOSDeviceDetails	|src\test\resources\testdata\api\request\Drop3\mPOS\fetchPOSDeviceCount_request.json|src\test\resources\testdata\api\response\expected\Drop3\mPOS\fetchPOSDeviceCount_response.json|

Scenario Outline: Verify "fetchPOSApplicationTrackingDetails" API "POST" Method for Status code 200 with all fields for an ETB customer
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint     |requestBody    																										|responseBody |
|pos			|fetchPOSApplicationTrackingDetails	|src\test\resources\testdata\api\request\Drop3\mPOS\fetchPOSApplicationTrackingDetails_request.json|src\test\resources\testdata\api\response\expected\Drop3\mPOS\fetchPOSApplicationTrackingDetails_response.json|

