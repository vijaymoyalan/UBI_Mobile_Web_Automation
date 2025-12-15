Feature: Regression Test for NCMC
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/NCMC


@TestCaseKey=UDB-T32697 @Regression 
Scenario Outline: Verify post ncmcfullStatment api returns 200 response with Mandatory fields in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                     |requestField|responsefield     | filename      |responseBody |
|ncmc     |ncmcfullStatment    |src\test\resources\testdata\api\request\Drop2\NCMC\fullstatement200.json         |null        |null              |null           |src\test\resources\testdata\api\response\expected\Drop2\NCMC\fullstatement200.json|

@TestCaseKey=UDB- @Regression
Scenario Outline: Verify post ncmcfullStatment api returns 200 response with Mandatory and optional fields in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                            |requestField |responsefield     | filename      |responseBody |
|ncmc     |ncmcfullStatment    |src\test\resources\testdata\api\request\Drop2\NCMC\fullstatement200.json         |null|null|null|src\test\resources\testdata\api\response\expected\Drop2\NCMC\fullstatement200.json|



@TestCaseKey=UDB-T32700 @Regression 
Scenario Outline: Verify post ncmcfullStatment api returns 400 response for Invalid JSON in request Body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmcfullStatment    | src\test\resources\testdata\api\request\Drop2\NCMC\400badrequest.json  |null         |null              |null  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\400badrequest.json|

@TestCaseKey=UDB-T32699 @Regression 
Scenario Outline: Verify post ncmcfullStatment api returns 400 response for BLANK request Body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmcfullStatment    | src\test\resources\testdata\api\request\Drop2\NCMC\400badrequest.json  |null         |null              |null  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\400badrequest.json|

@TestCaseKey=UDB-T32701   @Regression 
Scenario Outline: Verify get ncmcfullStatment api returns 405 response for invalid method e.g. Get Request
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmcfullStatment    | src\test\resources\testdata\api\request\Drop2\NCMC\400badrequest.json  |null|null|null|src\test\resources\testdata\api\response\expected\Drop2\NCMC\400badrequest.json|


@TestCaseKey=UDB-T32702  @Regression 
Scenario Outline: Verify get ncmcfullStatment api returns 404 response for invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmcfullStatmen    | src\test\resources\testdata\api\request\Drop2\NCMC\400badrequest.json  |null|null|null|src\test\resources\testdata\api\response\expected\Drop2\NCMC\400badrequest.json|



@TestCaseKey=UDB-T32690 @Regression
Scenario Outline: Verify post ncmcwalletdetails api returns 200 response with Mandatory fields in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                            |requestField |responsefield     | filename      |responseBody |
|ncmc     |ncmc/wallet/details    |src\test\resources\testdata\api\request\Drop2\NCMC\walletdetails200.json         |null|null|null|src\test\resources\testdata\api\response\expected\Drop2\NCMC\walletdetails200.json|

@TestCaseKey=UDB-T32689 @Regression 
Scenario Outline: Verify post ncmcwalletdetails api returns 200 response with Mandatory and optional fields in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                            |requestField |responsefield     | filename      |responseBody |
|ncmc     |ncmc/wallet/details    |src\test\resources\testdata\api\request\Drop2\NCMC\walletdetails200.json         |null|null|null|src\test\resources\testdata\api\response\expected\Drop2\NCMC\walletdetails200.json|


@TestCaseKey=UDB-T32693 @Regression 
Scenario Outline: Verify post ncmcwalletdetails api returns 200 response for  JSON in request Body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200

Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmc/wallet/details    | src\test\resources\testdata\api\request\Drop2\NCMC\400badrequest.json  |null         |null              |null  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\400badrequest.json|

@TestCaseKey=UDB-T32692 @Regression 
Scenario Outline: Verify post ncmcwalletdetails api returns 200 response for  request Body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmc/wallet/details    | src\test\resources\testdata\api\request\Drop2\NCMC\400badrequest.json  |null         |null              |null  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\400badrequest.json|


@TestCaseKey=UDB-T32694 @Regression
Scenario Outline: Verify get ncmcwalletdetails api returns 405 response for invalid method e.g. Get Request
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmc/wallet/details    | src\test\resources\testdata\api\request\Drop2\NCMC\400badrequest.json  |null|null|null|src\test\resources\testdata\api\response\expected\Drop2\NCMC\400badrequest.json|


@TestCaseKey=UDB-T32695  @Regression  
Scenario Outline: Verify get ncmcwalletdetails api returns 404 response for invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmc/wallet/details1    | src\test\resources\testdata\api\request\Drop2\NCMC\400badrequest.json  |null|null|null|src\test\resources\testdata\api\response\expected\Drop2\NCMC\400badrequest.json|


@TestCaseKey=UDB-T32683 @Regression 
Scenario Outline: Verify post fundtransfer api returns 200 response with Mandatory fields in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                            |requestField |responsefield     | filename      |responseBody |
|ncmc     |fund/transfer    |src\test\resources\testdata\api\request\Drop2\NCMC\fundtransfer200.json         |null|null|null|src\test\resources\testdata\api\response\expected\Drop2\NCMC\fundtransfer200.json|

@TestCaseKey=UDB-T32682 @Regression 
Scenario Outline: Verify post fundtransfer api returns 200 response with Mandatory and Optional fields in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                            |requestField |responsefield     | filename      |responseBody |
|ncmc     |fund/transfer    |src\test\resources\testdata\api\request\Drop2\NCMC\fundtransfer200.json         |null|null|null|src\test\resources\testdata\api\response\expected\Drop2\NCMC\fundtransfer200.json|

 
@TestCaseKey=UDB-T32686 @Regression 
Scenario Outline: Verify post fundtransfer api returns 400 response for Invalid JSON fields in request Body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |fund/transfer    | src\test\resources\testdata\api\request\Drop2\NCMC\400badrequest.json  |null         |null              |null  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\400badrequest.json|

@TestCaseKey=UDB-T32685 @Regression
Scenario Outline: Verify post fundtransfer api returns 400 response for BLANK request Body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |fund/transfer    | src\test\resources\testdata\api\request\Drop2\NCMC\400badrequest.json  |null         |null              |null  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\400badrequest.json|


@TestCaseKey=UDB-T32687 @Regression 
Scenario Outline: Verify get fundtransfer api returns 405 response for invalid method e.g. Get Request
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405

	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |fund/transfer    | src\test\resources\testdata\api\request\Drop2\NCMC\400badrequest.json  |null|null|null|src\test\resources\testdata\api\response\expected\Drop2\NCMC\405badrequest.json|


@TestCaseKey=UDB-T32688 @Regression 
Scenario Outline: Verify get fundtransfer api returns 404 response for invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404

	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |fund/transfe   | src\test\resources\testdata\api\request\Drop2\NCMC\400badrequest.json  |null|null|null|src\test\resources\testdata\api\response\expected\Drop2\NCMC\400badrequest.json|

