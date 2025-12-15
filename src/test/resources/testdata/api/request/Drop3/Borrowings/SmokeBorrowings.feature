Feature: Smoke of Borrowings.
  Background: SettingFileHandlerPath
    Given user sets the file path for this feature file for Drop3/Borrowings

  @TestCaseKey=UBI-1
  Scenario Outline: Verify getCustomerAccountsExt API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getCustomerAccountsExt  |src\test\resources\testdata\api\request\Drop3\Borrowings\getCustomerAccountsExt.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/Borrowings/getCustomerAccountsExt.json|

  @TestCaseKey=UBI-2
  Scenario Outline: Verify getBGLCDetails API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getBGLCDetails  |src/test/resources/testdata/api/request/Drop3/Borrowings/getBGLCDetails.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/Borrowings/getBGLCDetails.json|

  @TestCaseKey=UBI-3
  Scenario Outline: Verify getLoanDetailsMSME API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getLoanDetailsMSME  |src\test\resources\testdata\api\request\Drop3\Borrowings\getLoanDetails.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getLoanDetails.json|

  @TestCaseKey=UBI-4
  Scenario Outline: Verify fetchBranchDetails API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |businessServicesMSME  |fetchBranchDetails  |src\test\resources\testdata\api\request\Drop3\Borrowings\fetchBranchDetails.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\fetchBranchDetails.json|

  @TestCaseKey=UBI-5
  Scenario Outline: Verify getTransactionStatement API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |generalserviceMSME  |getTransactionStatement  |src\test\resources\testdata\api\request\Drop3\Borrowings\getTransactionStatement.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getTransactionStatement.json|