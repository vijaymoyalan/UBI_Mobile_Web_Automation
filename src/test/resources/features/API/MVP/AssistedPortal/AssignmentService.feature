Feature: Assisted Portal flow - Assignment Service

@TestCaseKey=UDB-T31258
Scenario Outline: Verify get application form details based on amount range using solid
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a generic post request with parameters:
      | key           | value                   |
      | amountFrom    | 0.00                    |
      | amountTo      | 50000.00                |
      | requestBody   | src\test\resources\testdata\api\request\mvp\assistedportal\Application_Form_List.json |
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|env|service |endpoint                         |responseBody|
|assignment|webform |/application-form-list    |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\Application_Form_List_Response.json|

@TestCaseKey=UDB-T31259
Scenario Outline: Verify users save last login details
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a generic post request with parameters:
      | key           | value                   |
      | requestBody   | \src\test\resources\testdata\api\request\mvp\assistedportal\SaveLastLoginDetails.json  |
Then user verifies that status is 200


Examples:
|env|service  |endpoint                              |
|assignment|weblogin |/save-last-login-details		 |

@TestCaseKey=UDB-T31260
Scenario Outline: Verify to get branch details based on amount range using solid
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a generic post request with parameters:
      | key           | value                   |
      | amountFrom    | 0.00                    |
      | amountTo      | 751000.00               |
      | solid         | 68010                   |
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|env|service             |endpoint |responseBody|
|assignment|weblogin     |/branch  | \src\test\resources\testdata\api\response\expected\mvp\assistedportal\BranchLoginDetails.json|

@TestCaseKey=UDB-T31261
Scenario Outline: Verify user is assigning to branch using solid and id
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a generic post request with parameters:
      | key           | value                                                                           |
      | requestBody   | \src\test\resources\testdata\api\request\mvp\assistedportal\AssignToBranch.json |
Then user verifies that status is 200
Examples:
|env|service |endpoint                              |
|assignment|webform     |/assign-to-branch		    |
