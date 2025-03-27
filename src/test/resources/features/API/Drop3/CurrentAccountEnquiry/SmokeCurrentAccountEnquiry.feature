Feature: Smoke of Current Account Enquiry

  Background: SettingFileHandlerPath
    Given user sets the file path for this feature file for Drop3/CurrentAccountEnquiry

  @TestCaseKey=UBI-T38485
  Scenario Outline: Verify getTransactionStatement API for status code 200 with valid parameters
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples:
      | service            | endpoint                | requestBody                                                                                      | responseBody                                                                                               |
      | generalserviceMSME | getTransactionStatement | src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getTransactionStatement.json | src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getTransactionStatement.json |

  @TestCaseKey=UDB-T38599
  Scenario Outline: Verify emailStatement POST API for 200 status code with valid parameters
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples:
      | service            | endpoint       | requestBody                                                                             | responseBody                                                                                      |
      | generalserviceMSME | emailStatement | src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/emailStatement.json | src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/emailStatement.json |

  @TestCaseKey=UDB-T38598
  Scenario Outline: Verify transactionStatementPdf POST API for 200 status code with valid parameters
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples:
      | service            | endpoint                | requestBody                                                                                      | responseBody                                                                                               |
      | generalserviceMSME | transactionStatementPdf | src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/transactionStatementPdf.json | src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/transactionStatementPdf.json |

  @TestCaseKey=UBI-T38502
  Scenario Outline: Verify fetchPrimaryAccountBalance API for 200 status code
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples:
      | service              | endpoint                   | requestBody                                                                                         | responseBody                                                                                                  |
      | businessServicesMSME | fetchPrimaryAccountBalance | src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/fetchPrimaryAccountBalance.json | src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/fetchPrimaryAccountBalance.json |

  @TestCaseKey=UDB-T38599
  Scenario Outline: Verify setPrimaryAccountDetails POST API for 200 status code with valid parameters
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples:
      | service              | endpoint                 | requestBody                                                                                       | responseBody                                                                                                |
      | businessServicesMSME | setPrimaryAccountDetails | src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/setPrimaryAccountDetails.json | src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/setPrimaryAccountDetails.json |

  @TestCaseKey=UDB-T38599
  Scenario Outline: Verify fetchBranchDetails POST API for 200 status code with valid parameters
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples:
      | service              | endpoint           | requestBody                                                                                 | responseBody                                                                                          |
      | businessServicesMSME | fetchBranchDetails | src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/fetchBranchDetails.json | src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/fetchBranchDetails.json |

  @TestCaseKey=UDB-T38599
  Scenario Outline: Verify getLienDetails POST API for 200 status code with valid parameters
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples:
      | service      | endpoint       | requestBody                                                                             | responseBody                                                                                      |
      | customerMSME | getLienDetails | src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getLienDetails.json | src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getLienDetails.json |

  @TestCaseKey=UDB-T31233
  Scenario Outline: Verify getCustomerAccountsExt POST API for 200 status code with valid parameters
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples:
      | service      | endpoint               | requestBody                                                                                     | responseBody                                                                                              |
      | customerMSME | getCustomerAccountsExt | src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getCustomerAccountsExt.json | src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getCustomerAccountsExt.json |

  @TestCaseKey=UDB-T38599
  Scenario Outline: Verify getlistVpa POST API for 200 status code with valid parameters
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples:
      | service | endpoint   | requestBody                                                                         | responseBody                                                                                  |
      | upiMSME | getlistVpa | src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getlistVpa.json | src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getlistVpa.json |
