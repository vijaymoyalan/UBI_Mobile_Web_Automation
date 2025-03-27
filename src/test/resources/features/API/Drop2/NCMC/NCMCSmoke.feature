Feature: Smoke Test for NCMC
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/NCMC

@TestCaseKey=UDB-T32696
Scenario Outline: Verify post ncmcfullStatment api returns 200 response with Mandatory and optional fields in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200

Examples:
|service  |endpoint            | requestBody                                                                            |requestField |responsefield     | filename      |responseBody |
|ncmc     |ncmcfullStatment    |src\test\resources\testdata\api\request\Drop2\NCMC\fullstatement200.json         |null         |null|null|src\test\resources\testdata\api\response\expected\Drop2\NCMC\fullstatement200.json|


@TestCaseKey=UDB-T32689
Scenario Outline: Verify post ncmcwalletdetails api returns 200 response with Mandatory and optional fields in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200

	
Examples:
|service  |endpoint            | requestBody                                                                            |requestField |responsefield     | filename      |responseBody |
|ncmc     |ncmc/wallet/details    |src\test\resources\testdata\api\request\Drop2\NCMC\walletdetails200.json         |null|null|null|src\test\resources\testdata\api\response\expected\Drop2\NCMC\walletdetails200.json|


@TestCaseKey=UDB-T32682
Scenario Outline: Verify post fundtransfer api returns 200 response with Mandatory and Optional fields in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200

	
Examples:
|service  |endpoint            | requestBody                                                                            |requestField |responsefield     | filename      |responseBody |
|ncmc     |fund/transfer    |src\test\resources\testdata\api\request\Drop2\NCMC\fundtransfer200.json         |null|null|null|src\test\resources\testdata\api\response\expected\Drop2\NCMC\fundtransfer200.json|

