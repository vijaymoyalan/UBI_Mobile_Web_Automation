Feature: Smoke of Home Page
  Background: SettingFileHandlerPath
    Given user sets the file path for this feature file for Drop3/HomePage

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
      |customerMSME  |getCustomerAccountsExt  |src/test/resources/testdata/api/request/Drop3/HomePage/getCustomerAccountsExt.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/HomePage/getCustomerAccountsExt.json|

  @TestCaseKey=UBI-7
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
      |customerMSME  |getBGLCDetails  |src/test/resources/testdata/api/request/Drop3/HomePage/getBGLCDetails.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/HomePage/getBGLCDetails.json|

  @TestCaseKey=UBI-13
  Scenario Outline: Verify getLoanDetails API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getLoanDetails  |src/test/resources/testdata/api/request/Drop3/HomePage/getLoanDetails.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/HomePage/getLoanDetails.json|

  @TestCaseKey=UBI-19
  Scenario Outline: Verify getDebitCreditAmount API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getDebitCreditAmount  |src/test/resources/testdata/api/request/Drop3/HomePage/getDebitCreditAmount.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/HomePage/getDebitCreditAmount.json|

  @TestCaseKey=UBI-25
  Scenario Outline: Verify getCardProfile API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |credit-cardMSME  |getCardProfile  |src/test/resources/testdata/api/request/Drop3/HomePage/getCardProfile.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/HomePage/getCardProfile.json|