Feature: Regression for VirtualCard
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/DebitCard


@TestCaseKey=UDB-T36239  @Regression 
Scenario Outline:For Virtual Card Verify "Debit Card Profile" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
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

@TestCaseKey=UDB-T36240  @Regression 
Scenario Outline:For Virtual Card  Verify "Debit Card Profile" API "POST" Method for Status code 200 with Only Mandatory fields
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

@TestCaseKey=UDB-T36241  @Regression 
Scenario Outline:For Virtual Card  Verify "Debit Card Profile" API "POST" Method for Status code 400 with Only Optional fields available in request body
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


@TestCaseKey=UDB-T36242  @Regression 
Scenario Outline:For Virtual Card  Verify "Debit Card Profile" API "POST" Method for Status code 400 if Request body is blank
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

@TestCaseKey=UDB-T36243  @Regression 
Scenario Outline:For Virtual Card  Verify "Debit Card Profile" API "POST" Method for Status code 400 if Request body is invalid JSON
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

@TestCaseKey=UDB-T36244  @Regression 
Scenario Outline:For Virtual Card  Verify "Debit Card Profile" API for Status code 405 if HTTP metod is other than POST  for Eg: GET
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


@TestCaseKey=UDB-T36245  @Regression
Scenario Outline:For Virtual Card  Verify "Debit Card Profile" API for Status code 404 "Not Found"	
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404

Examples:
|service    |endpoint            |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfil    |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfile.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfile.json|

@TestCaseKey=UDB-T36246 @Regression 
Scenario Outline: For Virtual Card  Verify "Green Pin" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)	
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                              |requestField               |responsefield               | filename               |responseBody                                                       |
|debitCard  |green-pin          |\src\test\resources\testdata\api\request\Drop2\DebitCard\green-pin.json  |null            |		   null       					| null |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\green-pin.json|

@TestCaseKey=UDB-T36247 @Regression 
Scenario Outline: For Virtual Card Verify "Green Pin" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                              |requestField               |responsefield               | filename               |responseBody                                                       |
|debitCard  |green-pin          |\src\test\resources\testdata\api\request\Drop2\DebitCard\green-pin.json  |null            |		   null       					| null |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\green-pin.json|

@TestCaseKey=UDB-T36248 @Regression 
Scenario Outline: For Virtual Card Verify "Green Pin" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                              |requestField               |responsefield               | filename               |responseBody                                                       |
|debitCard  |green-pin          |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfileempty.json  |null            |		   null       					| null |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|

@TestCaseKey=UDB-T36249 @Regression
Scenario Outline:For Virtual Card Verify "Green Pin" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                              |requestField               |responsefield               | filename               |responseBody                                                       |
|debitCard  |green-pin          |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfileempty.json  |null            |		   null       					| null |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|

@TestCaseKey=UDB-T36250 @Regression
Scenario Outline: For Virtual Card Verify "Green Pin" API "POST" Method for Status code 400 if Request body is invalid JSON	
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                              |requestField               |responsefield               | filename               |responseBody                                                       |
|debitCard  |green-pin          |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfileempty.json  |null            |		   null       					| null |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|

@TestCaseKey=UDB-T36251 @Regression
Scenario Outline: For Virtual Card Verify "Green Pin" API for Status code 405 if HTTP metod is other than POST  for Eg: GET
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                              |requestField               |responsefield               | filename               |responseBody                                                       |
|debitCard  |green-pin          |\src\test\resources\testdata\api\request\Drop2\DebitCard\green-pin.json  |null            |		   null       					| null |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfileempty400.json|


@TestCaseKey=UDB-T36252 @Regression
Scenario Outline: For Virtual Card Verify "Green Pin" API for Status code 404 "Not Found"	
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404

Examples:
|service    |endpoint           |requestBody                                                              |requestField               |responsefield               | filename               |responseBody                                                       |
|debitCard  |green-pi          |\src\test\resources\testdata\api\request\Drop2\DebitCard\green-pin.json  |null            |		   null       					| null |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\green-pin.json|




@TestCaseKey=UDB-T36253 @Regression 
Scenario Outline: For Virtual Card Verify "Update Limitl" API "POST" Method for Status code 200 with Only Mandatory fields	
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

@TestCaseKey=UDB-T36254 @Regression 
Scenario Outline: For Virtual Card Verify "Update Limit" API "POST" Method for Status code 400 with Only Optional fields available in request body	
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

@TestCaseKey=UDB-T36255 @Regression 
Scenario Outline: For Virtual Card Verify "Update Limit" API "POST" Method for Status code 400 if Request body is blank
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


@TestCaseKey=UDB-T36256 @Regression 
Scenario Outline: For Virtual Card Verify "Update LImit" API "POST" Method for Status code 400 if Request body is invalid JSON
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

@TestCaseKey=UDB-T36257 @Regression 
Scenario Outline: For Virtual Card Verify "Update Limit" API for Status code 405 if HTTP metod is other than POST  for Eg: GET
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


@TestCaseKey=UDB-T36258 @Regression 
Scenario Outline: For Virtual Card Verify "Update Limit" API for Status code 404 "Not Found"
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404

Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimi     |\src\test\resources\testdata\api\request\Drop2\DebitCard\fhmUpdateLimit.json  |null          | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmUpdateLimit.json|


@TestCaseKey=UDB-T36259 @Regression
Scenario Outline: For Virtual Card Verify "Block/UnBlock" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
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
	
@TestCaseKey=UDB-T36260 @Regression
Scenario Outline: For Virtual Card Verify "Block/Unblock" API "POST" Method for Status code 200 with Only Mandatory fields
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
	
	
@TestCaseKey=UDB-T36261 @Regression
Scenario Outline: For Virtual Card Verify "Block/Unblock" API "POST" Method for Status code 400 with Only Optional fields available in request body
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
	
@TestCaseKey=UDB-T36262 @Regression
Scenario Outline: For Virtual Card Verify "Block/unblock" API "POST" Method for Status code 400 if Request body is blank
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
	
	
@TestCaseKey=UDB-T36263 @Regression
Scenario Outline: For Virtual Card Verify "Block/Unblock" API "POST" Method for Status code 400 if Request body is invalid JSON
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
	
	
@TestCaseKey=UDB-T36264 @Regression
Scenario Outline:For Virtual Card Verify "Block/Unblock" API for Status code 405 if HTTP metod is other than POST  for Eg: GET
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
	
	

@TestCaseKey=UDB-T36265 @Regression
Scenario Outline: For Virtual Card Verify "Block/Unblock" API for Status code 404 "Not Found"	
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404

Examples:
|service    |endpoint           |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnbloc     |\src\test\resources\testdata\api\request\Drop2\DebitCard\fhmBlockUnblock.json  |primaryAccountNumber           | cardAccNum         | debitCardProfile.json  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmBlockUnblock.json|

		
	