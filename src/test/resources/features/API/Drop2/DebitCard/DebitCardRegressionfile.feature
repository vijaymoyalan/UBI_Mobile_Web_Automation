Feature: Regression for DebitCard
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/DebitCard


@TestCaseKey=UDB-T35245 @Smoke @E2E  @Regression 
Scenario Outline:Verify "Debit Card Profile" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint            |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfile.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfile.json|

@TestCaseKey=UDB-T35246  @Regression 
Scenario Outline:Verify "Debit Card Profile" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint            |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfile.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfile.json|

@TestCaseKey=UDB-T35247  @Regression 
Scenario Outline:Verify "Debit Card Profile" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service    |endpoint            |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfileempty.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|


@TestCaseKey=UDB-T35248  @Regression 
Scenario Outline:Verify "Debit Card Profile" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service    |endpoint            |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfileempty.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|

@TestCaseKey=UDB-T35249  @Regression 
Scenario Outline:Verify "Debit Card Profile" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service    |endpoint            |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfileempty.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|

@TestCaseKey=UDB-T35250  @Regression 
Scenario Outline:Verify "Debit Card Profile" API for Status code 405 if HTTP metod is other than POST  for Eg: GET
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service    |endpoint            |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfile.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|


@TestCaseKey=UDB-T35251  @Regression
Scenario Outline:Verify "Debit Card Profile" API for Status code 404 "Not Found"	
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404

Examples:
|service    |endpoint            |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfil    |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfile.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfile.json|


@TestCaseKey=UDB-T35259 @Regression 
Scenario Outline: Verify "Update Limitl" API "POST" Method for Status code 200 with Only Mandatory fields	
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimit     |\src\test\resources\testdata\api\request\Drop2\DebitCard\fhmUpdateLimit.json  |null          | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmUpdateLimit.json|

@TestCaseKey=UDB-T35260 @Regression 
Scenario Outline: Verify "Update Limit" API "POST" Method for Status code 400 with Only Optional fields available in request body	
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimit     |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfileempty.json  |null           | null   |null |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|

@TestCaseKey=UDB-T35261 @Regression 
Scenario Outline: Verify "Update Limit" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimit     |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfileempty.json  |null|null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|


@TestCaseKey=UDB-T35262 @Regression 
Scenario Outline: Verify "Update LImit" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimit     |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfileempty.json  |null|null|null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|

@TestCaseKey=UDB-T35263 @Regression 
Scenario Outline: Verify "Update Limit" API for Status code 405 if HTTP metod is other than POST  for Eg: GET
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimit     |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfileempty.json  |null         | null      | null  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|


@TestCaseKey=UDB-T35264 @Regression 
Scenario Outline: Verify "Update Limit" API for Status code 404 "Not Found"
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404

Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimi     |\src\test\resources\testdata\api\request\Drop2\DebitCard\fhmUpdateLimit.json  |null          | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmUpdateLimit.json|


@TestCaseKey=UDB-T35265 @Regression
Scenario Outline: Verify "Block/UnBlock" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnblock     |\src\test\resources\testdata\api\request\Drop2\DebitCard\fhmBlockUnblock.json  |primaryAccountNumber           | cardAccNum         | debitCardProfile.json  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmBlockUnblock.json|
	
@TestCaseKey=UDB-T35266 @Regression
Scenario Outline: Verify "Block/Unblock" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnblock     |\src\test\resources\testdata\api\request\Drop2\DebitCard\fhmBlockUnblock.json  |primaryAccountNumber           | cardAccNum         | debitCardProfile.json  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmBlockUnblock.json|
	
	
@TestCaseKey=UDB-T35267 @Regression
Scenario Outline:Verify "Block/Unblock" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnblock     |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfileempty.json  |primaryAccountNumber           | cardAccNum         | debitCardProfile.json  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|
	
@TestCaseKey=UDB-T35268 @Regression
Scenario Outline: Verify "Block/unblock" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnblock     |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfileempty.json  |primaryAccountNumber           | cardAccNum         | debitCardProfile.json  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|
	
	
@TestCaseKey=UDB-T35269 @Regression
Scenario Outline: Verify "Block/Unblock" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnblock     |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfileempty.json  |primaryAccountNumber           | cardAccNum         | debitCardProfile.json  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|
	
	
@TestCaseKey=UDB-T35270 @Regression
Scenario Outline:Verify "Block/Unblock" API for Status code 405 if HTTP metod is other than POST  for Eg: GET
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnblock     |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfileempty.json  |primaryAccountNumber           | cardAccNum         | debitCardProfile.json  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|
	
	

@TestCaseKey=UDB-T35271 @Regression
Scenario Outline: Verify "Block/Unblock" API for Status code 404 "Not Found"	
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404

Examples:
|service    |endpoint           |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnbloc     |\src\test\resources\testdata\api\request\Drop2\DebitCard\fhmBlockUnblock.json  |primaryAccountNumber           | cardAccNum         | debitCardProfile.json  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmBlockUnblock.json|

		
	