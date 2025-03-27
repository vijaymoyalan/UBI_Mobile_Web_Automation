Feature: Regression of Current Account Enquiry Services API

  Background: SettingFileHandlerPath
    Given user sets the file path for this feature file for Drop3/CurrentAccountEnquiry

  @TestCaseKey=UBI-1
  Scenario Outline: Verify getLienDetails API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      | service      | endpoint       | requestBody                                                                              | responseBody                                                                                       |
      | customerMSME | getLienDetails | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getLienDetails.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getLienDetails.json |

  @TestCaseKey=UBI-2
  Scenario Outline: Verify getLienDetails API for status code 400 with blank body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>
    Examples:
      | service      | endpoint       | requestBody                                                                                  | responseBody                                                                                           |
      | customerMSME | getLienDetails | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getLienDetails_400.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getLienDetails_400.json |


  @TestCaseKey=UBI-3
  Scenario Outline: Verify getLienDetails API for status code 401 with unauthorized token
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 401
    Then user verifies json from <responseBody>
    Examples:
      | service      | endpoint       | requestBody                                                                                  | responseBody                                                                                           |
      | customerMSME | getLienDetails | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getLienDetails_401.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getLienDetails_401.json |

  @TestCaseKey=UBI-4
  Scenario Outline: Verify getLienDetails API for status code 404 with incorrect endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>
    Examples:
      | service      | endpoint        | requestBody                                                                                  | responseBody                                                                                           |
      | customerMSME | getLienDetails1 | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getLienDetails_404.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getLienDetails_404.json |

  @TestCaseKey=UBI-5
  Scenario Outline: Verify getLienDetails API for status code 405 with incorrect Http method
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>
    Examples:
      | service      | endpoint       | requestBody                                                                                  | responseBody                                                                                           |
      | customerMSME | getLienDetails | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getLienDetails_405.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getLienDetails_405.json |

#  @TestCaseKey=UBI-6
#  Scenario Outline: Verify getLienDetails API for status code 500 internal server error
#    Given user sets the environment of endpoint
#    Given user set the basepath to <service>
#    Then set the endpoint <endpoint>
#    Then user triggers a post request with <requestBody>
#    Then user verifies that status is 500
#    Then user verifies json from <responseBody>
#    Examples:
#      | service      | endpoint       | requestBody                                                                                  | responseBody                                                                                           |
#      | customerMSME | getLienDetails | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getLienDetails_500.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getLienDetails_500.json |
#

  @TestCaseKey=UBI-1
  Scenario Outline: Verify getCustomerAccountsExt API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      | service      | endpoint               | requestBody                                                                                      | responseBody                                                                                               |
      | customerMSME | getCustomerAccountsExt | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getCustomerAccountsExt.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getCustomerAccountsExt.json |

  @TestCaseKey=UBI-2
  Scenario Outline: Verify getCustomerAccountsExt API for status code 400 with blank body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>
    Examples:
      | service      | endpoint               | requestBody                                                                                          | responseBody                                                                                                   |
      | customerMSME | getCustomerAccountsExt | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getCustomerAccountsExt_400.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getCustomerAccountsExt_400.json |


  @TestCaseKey=UBI-3
  Scenario Outline: Verify getCustomerAccountsExt API for status code 401 with unauthorized token
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 401
    Then user verifies json from <responseBody>
    Examples:
      | service      | endpoint               | requestBody                                                                                          | responseBody                                                                                                   |
      | customerMSME | getCustomerAccountsExt | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getCustomerAccountsExt_401.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getCustomerAccountsExt_401.json |

  @TestCaseKey=UBI-4
  Scenario Outline: Verify getCustomerAccountsExt API for status code 404 with incorrect endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>
    Examples:
      | service      | endpoint                | requestBody                                                                                          | responseBody                                                                                                   |
      | customerMSME | getCustomerAccountsExt1 | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getCustomerAccountsExt_404.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getCustomerAccountsExt_404.json |

  @TestCaseKey=UBI-5
  Scenario Outline: Verify getCustomerAccountsExt API for status code 405 with incorrect Http method
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>
    Examples:
      | service      | endpoint               | requestBody                                                                                          | responseBody                                                                                                   |
      | customerMSME | getCustomerAccountsExt | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getCustomerAccountsExt_405.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getCustomerAccountsExt_405.json |

#  @TestCaseKey=UBI-6
#  Scenario Outline: Verify getCustomerAccountsExt API for status code 500 internal server error
#    Given user sets the environment of endpoint
#    Given user set the basepath to <service>
#    Then set the endpoint <endpoint>
#    Then user triggers a post request with <requestBody>
#    Then user verifies that status is 500
#    Then user verifies json from <responseBody>
#    Examples:
#      | service      | endpoint               | requestBody                                                                                          | responseBody                                                                                                   |
#      | customerMSME | getCustomerAccountsExt | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getCustomerAccountsExt_500.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getCustomerAccountsExt_500.json |

  @TestCaseKey=UBI-1
  Scenario Outline: Verify getTransactionStatement API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      | service            | endpoint                | requestBody                                                                                       | responseBody                                                                                                |
      | generalserviceMSME | getTransactionStatement | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getTransactionStatement.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getTransactionStatement.json |

  @TestCaseKey=UBI-2
  Scenario Outline: Verify getTransactionStatement API for status code 400 with blank body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>
    Examples:
      | service            | endpoint                | requestBody                                                                                           | responseBody                                                                                                    |
      | generalserviceMSME | getTransactionStatement | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getTransactionStatement_400.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getTransactionStatement_400.json |


  @TestCaseKey=UBI-3
  Scenario Outline: Verify getTransactionStatement API for status code 401 with unauthorized token
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 401
    Then user verifies json from <responseBody>
    Examples:
      | service            | endpoint                | requestBody                                                                                           | responseBody                                                                                                    |
      | generalserviceMSME | getTransactionStatement | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getTransactionStatement_401.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getTransactionStatement_401.json |

  @TestCaseKey=UBI-4
  Scenario Outline: Verify getTransactionStatement API for status code 404 with incorrect endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>
    Examples:
      | service            | endpoint                 | requestBody                                                                                           | responseBody                                                                                                    |
      | generalserviceMSME | getTransactionStatement1 | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getTransactionStatement_404.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getTransactionStatement_404.json |

  @TestCaseKey=UBI-5
  Scenario Outline: Verify getTransactionStatement API for status code 405 with incorrect Http method
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>
    Examples:
      | service            | endpoint                | requestBody                                                                                           | responseBody                                                                                                    |
      | generalserviceMSME | getTransactionStatement | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getTransactionStatement_405.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getTransactionStatement_405.json |

#  @TestCaseKey=UBI-6
#  Scenario Outline: Verify getTransactionStatement API for status code 500 internal server error
#    Given user sets the environment of endpoint
#    Given user set the basepath to <service>
#    Then set the endpoint <endpoint>
#    Then user triggers a post request with <requestBody>
#    Then user verifies that status is 500
#    Then user verifies json from <responseBody>
#    Examples:
#      | service            | endpoint                | requestBody                                                                                           | responseBody                                                                                                    |
#      | generalserviceMSME | getTransactionStatement | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getTransactionStatement_500.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getTransactionStatement_500.json |


  @TestCaseKey=UBI-1
  Scenario Outline: Verify emailStatement API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      | service            | endpoint       | requestBody                                                                              | responseBody                                                                                       |
      | generalserviceMSME | emailStatement | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/emailStatement.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/emailStatement.json |

  @TestCaseKey=UBI-2
  Scenario Outline: Verify emailStatement API for status code 400 with blank body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>
    Examples:
      | service            | endpoint       | requestBody                                                                                  | responseBody                                                                                           |
      | generalserviceMSME | emailStatement | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/emailStatement_400.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/emailStatement_400.json |


  @TestCaseKey=UBI-3
  Scenario Outline: Verify emailStatement API for status code 401 with unauthorized token
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 401
    Then user verifies json from <responseBody>
    Examples:
      | service            | endpoint       | requestBody                                                                                  | responseBody                                                                                           |
      | generalserviceMSME | emailStatement | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/emailStatement_401.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/emailStatement_401.json |

  @TestCaseKey=UBI-4
  Scenario Outline: Verify emailStatement API for status code 404 with incorrect endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>
    Examples:
      | service            | endpoint        | requestBody                                                                                  | responseBody                                                                                           |
      | generalserviceMSME | emailStatement1 | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/emailStatement_404.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/emailStatement_404.json |

  @TestCaseKey=UBI-5
  Scenario Outline: Verify emailStatement API for status code 405 with incorrect Http method
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>
    Examples:
      | service            | endpoint       | requestBody                                                                                  | responseBody                                                                                           |
      | generalserviceMSME | emailStatement | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/emailStatement_405.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/emailStatement_405.json |

#  @TestCaseKey=UBI-6
#  Scenario Outline: Verify emailStatement API for status code 500 internal server error
#    Given user sets the environment of endpoint
#    Given user set the basepath to <service>
#    Then set the endpoint <endpoint>
#    Then user triggers a post request with <requestBody>
#    Then user verifies that status is 500
#    Then user verifies json from <responseBody>
#    Examples:
#      | service            | endpoint       | requestBody                                                                                  | responseBody                                                                                           |
#      | generalserviceMSME | emailStatement | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/emailStatement_500.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/emailStatement_500.json |

  @TestCaseKey=UBI-1
  Scenario Outline: Verify transactionStatementPdf API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      | service            | endpoint                | requestBody                                                                                       | responseBody                                                                                                |
      | generalserviceMSME | transactionStatementPdf | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/transactionStatementPdf.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/transactionStatementPdf.json |

  @TestCaseKey=UBI-2
  Scenario Outline: Verify transactionStatementPdf API for status code 400 with blank body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>
    Examples:
      | service            | endpoint                | requestBody                                                                                           | responseBody                                                                                                    |
      | generalserviceMSME | transactionStatementPdf | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/transactionStatementPdf_400.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/transactionStatementPdf_400.json |


  @TestCaseKey=UBI-3
  Scenario Outline: Verify transactionStatementPdf API for status code 401 with unauthorized token
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 401
    Then user verifies json from <responseBody>
    Examples:
      | service            | endpoint                | requestBody                                                                                           | responseBody                                                                                                    |
      | generalserviceMSME | transactionStatementPdf | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/transactionStatementPdf_401.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/transactionStatementPdf_401.json |

  @TestCaseKey=UBI-4
  Scenario Outline: Verify transactionStatementPdf API for status code 404 with incorrect endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>
    Examples:
      | service            | endpoint                 | requestBody                                                                                           | responseBody                                                                                                    |
      | generalserviceMSME | transactionStatementPdf1 | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/transactionStatementPdf_404.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/transactionStatementPdf_404.json |

  @TestCaseKey=UBI-5
  Scenario Outline: Verify transactionStatementPdf API for status code 405 with incorrect Http method
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>
    Examples:
      | service            | endpoint                | requestBody                                                                                           | responseBody                                                                                                    |
      | generalserviceMSME | transactionStatementPdf | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/transactionStatementPdf_405.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/transactionStatementPdf_405.json |

#  @TestCaseKey=UBI-6
#  Scenario Outline: Verify transactionStatementPdf API for status code 500 internal server error
#    Given user sets the environment of endpoint
#    Given user set the basepath to <service>
#    Then set the endpoint <endpoint>
#    Then user triggers a post request with <requestBody>
#    Then user verifies that status is 500
#    Then user verifies json from <responseBody>
#    Examples:
#      | service            | endpoint                | requestBody                                                                                           | responseBody                                                                                                    |
#      | generalserviceMSME | transactionStatementPdf | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/transactionStatementPdf_500.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/transactionStatementPdf_500.json |


  @TestCaseKey=UBI-1
  Scenario Outline: Verify fetchPrimaryAccountBalance API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      | service              | endpoint                   | requestBody                                                                                          | responseBody                                                                                                   |
      | businessServicesMSME | fetchPrimaryAccountBalance | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/fetchPrimaryAccountBalance.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/fetchPrimaryAccountBalance.json |

  @TestCaseKey=UBI-2
  Scenario Outline: Verify fetchPrimaryAccountBalance API for status code 400 with blank body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>
    Examples:
      | service              | endpoint                   | requestBody                                                                                              | responseBody                                                                                                       |
      | businessServicesMSME | fetchPrimaryAccountBalance | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/fetchPrimaryAccountBalance_400.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/fetchPrimaryAccountBalance_400.json |


  @TestCaseKey=UBI-3
  Scenario Outline: Verify fetchPrimaryAccountBalance API for status code 401 with unauthorized token
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 401
    Then user verifies json from <responseBody>
    Examples:
      | service              | endpoint                   | requestBody                                                                                              | responseBody                                                                                                       |
      | businessServicesMSME | fetchPrimaryAccountBalance | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/fetchPrimaryAccountBalance_401.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/fetchPrimaryAccountBalance_401.json |

  @TestCaseKey=UBI-4
  Scenario Outline: Verify fetchPrimaryAccountBalance API for status code 404 with incorrect endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>
    Examples:
      | service              | endpoint                    | requestBody                                                                                              | responseBody                                                                                                       |
      | businessServicesMSME | fetchPrimaryAccountBalance1 | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/fetchPrimaryAccountBalance_404.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/fetchPrimaryAccountBalance_404.json |

  @TestCaseKey=UBI-5
  Scenario Outline: Verify fetchPrimaryAccountBalance API for status code 405 with incorrect Http method
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>
    Examples:
      | service              | endpoint                   | requestBody                                                                                              | responseBody                                                                                                       |
      | businessServicesMSME | fetchPrimaryAccountBalance | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/fetchPrimaryAccountBalance_405.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/fetchPrimaryAccountBalance_405.json |

#  @TestCaseKey=UBI-6
#  Scenario Outline: Verify fetchPrimaryAccountBalance API for status code 500 internal server error
#    Given user sets the environment of endpoint
#    Given user set the basepath to <service>
#    Then set the endpoint <endpoint>
#    Then user triggers a post request with <requestBody>
#    Then user verifies that status is 500
#    Then user verifies json from <responseBody>
#    Examples:
#      | service              | endpoint                   | requestBody                                                                                              | responseBody                                                                                                       |
#      | businessServicesMSME | fetchPrimaryAccountBalance | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/fetchPrimaryAccountBalance_500.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/fetchPrimaryAccountBalance_500.json |


  @TestCaseKey=UBI-1
  Scenario Outline: Verify setPrimaryAccountDetails API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      | service              | endpoint                 | requestBody                                                                                        | responseBody                                                                                                 |
      | businessServicesMSME | setPrimaryAccountDetails | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/setPrimaryAccountDetails.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/setPrimaryAccountDetails.json |

  @TestCaseKey=UBI-2
  Scenario Outline: Verify setPrimaryAccountDetails API for status code 400 with blank body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>
    Examples:
      | service              | endpoint                 | requestBody                                                                                            | responseBody                                                                                                     |
      | businessServicesMSME | setPrimaryAccountDetails | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/setPrimaryAccountDetails_400.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/setPrimaryAccountDetails_400.json |


  @TestCaseKey=UBI-3
  Scenario Outline: Verify setPrimaryAccountDetails API for status code 401 with unauthorized token
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 401
    Then user verifies json from <responseBody>
    Examples:
      | service              | endpoint                 | requestBody                                                                                            | responseBody                                                                                                     |
      | businessServicesMSME | setPrimaryAccountDetails | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/setPrimaryAccountDetails_401.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/setPrimaryAccountDetails_401.json |

  @TestCaseKey=UBI-4
  Scenario Outline: Verify setPrimaryAccountDetails API for status code 404 with incorrect endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>
    Examples:
      | service              | endpoint                  | requestBody                                                                                            | responseBody                                                                                                     |
      | businessServicesMSME | setPrimaryAccountDetails1 | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/setPrimaryAccountDetails_404.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/setPrimaryAccountDetails_404.json |

  @TestCaseKey=UBI-5
  Scenario Outline: Verify setPrimaryAccountDetails API for status code 405 with incorrect Http method
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>
    Examples:
      | service              | endpoint                 | requestBody                                                                                            | responseBody                                                                                                     |
      | businessServicesMSME | setPrimaryAccountDetails | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/setPrimaryAccountDetails_405.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/setPrimaryAccountDetails_405.json |

#  @TestCaseKey=UBI-6
#  Scenario Outline: Verify setPrimaryAccountDetails API for status code 500 internal server error
#    Given user sets the environment of endpoint
#    Given user set the basepath to <service>
#    Then set the endpoint <endpoint>
#    Then user triggers a post request with <requestBody>
#    Then user verifies that status is 500
#    Then user verifies json from <responseBody>
#    Examples:
#      | service              | endpoint                 | requestBody                                                                                            | responseBody                                                                                                     |
#      | businessServicesMSME | setPrimaryAccountDetails | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/setPrimaryAccountDetails_500.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/setPrimaryAccountDetails_500.json |


  @TestCaseKey=UBI-1
  Scenario Outline: Verify fetchBranchDetails API for status code 200 with valid cif and cid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples:
      | service              | endpoint           | requestBody                                                                                  | responseBody                                                                                           |
      | businessServicesMSME | fetchBranchDetails | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/fetchBranchDetails.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/fetchBranchDetails.json |

  @TestCaseKey=UBI-2
  Scenario Outline: Verify fetchBranchDetails API for status code 400 with blank body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>
    Examples:
      | service              | endpoint           | requestBody                                                                                      | responseBody                                                                                               |
      | businessServicesMSME | fetchBranchDetails | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/fetchBranchDetails_400.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/fetchBranchDetails_400.json |


  @TestCaseKey=UBI-3
  Scenario Outline: Verify fetchBranchDetails API for status code 401 with unauthorized token
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 401
    Then user verifies json from <responseBody>
    Examples:
      | service              | endpoint           | requestBody                                                                                      | responseBody                                                                                               |
      | businessServicesMSME | fetchBranchDetails | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/fetchBranchDetails_401.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/fetchBranchDetails_401.json |

  @TestCaseKey=UBI-4
  Scenario Outline: Verify fetchBranchDetails API for status code 404 with incorrect endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>
    Examples:
      | service              | endpoint            | requestBody                                                                                      | responseBody                                                                                               |
      | businessServicesMSME | fetchBranchDetails1 | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/fetchBranchDetails_404.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/fetchBranchDetails_404.json |

  @TestCaseKey=UBI-5
  Scenario Outline: Verify fetchBranchDetails API for status code 405 with incorrect Http method
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>
    Examples:
      | service              | endpoint           | requestBody                                                                                      | responseBody                                                                                               |
      | businessServicesMSME | fetchBranchDetails | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/fetchBranchDetails_405.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/fetchBranchDetails_405.json |

#  @TestCaseKey=UBI-6
#  Scenario Outline: Verify fetchBranchDetails API for status code 500 internal server error
#    Given user sets the environment of endpoint
#    Given user set the basepath to <service>
#    Then set the endpoint <endpoint>
#    Then user triggers a post request with <requestBody>
#    Then user verifies that status is 500
#    Then user verifies json from <responseBody>
#    Examples:
#      | service              | endpoint           | requestBody                                                                                      | responseBody                                                                                               |
#      | businessServicesMSME | fetchBranchDetails | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/fetchBranchDetails_500.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/fetchBranchDetails_500.json |


#  @TestCaseKey=UBI-1
#  Scenario Outline: Verify getlistVpa API for status code 200 with valid cif and cid
#    Given user sets the environment of endpoint
#    Given user set the basepath to <service>
#    Then set the endpoint <endpoint>
#    Then user triggers a post request with <requestBody>
#    Then user verifies that status is 200
#    Then user verifies json from <responseBody>
#    Examples:
#      | service | endpoint   | requestBody                                                                          | responseBody                                                                                   |
#      | upiMSME | getlistVpa | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getlistVpa.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getlistVpa.json |
#
#  @TestCaseKey=UBI-2
#  Scenario Outline: Verify getlistVpa API for status code 400 with blank body
#    Given user sets the environment of endpoint
#    Given user set the basepath to <service>
#    Then set the endpoint <endpoint>
#    Then user triggers a post request with <requestBody>
#    Then user verifies that status is 400
#    Then user verifies json from <responseBody>
#    Examples:
#      | service | endpoint   | requestBody                                                                              | responseBody                                                                                       |
#      | upiMSME | getlistVpa | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getlistVpa_400.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getlistVpa_400.json |
#
#
#  @TestCaseKey=UBI-3
#  Scenario Outline: Verify getlistVpa API for status code 401 with unauthorized token
#    Given user sets the environment of endpoint
#    Given user set the basepath to <service>
#    Then set the endpoint <endpoint>
#    Then user triggers a post request with <requestBody>
#    Then user verifies that status is 401
#    Then user verifies json from <responseBody>
#    Examples:
#      | service | endpoint   | requestBody                                                                              | responseBody                                                                                       |
#      | upiMSME | getlistVpa | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getlistVpa_401.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getlistVpa_401.json |
#
#  @TestCaseKey=UBI-4
#  Scenario Outline: Verify getlistVpa API for status code 404 with incorrect endpoint
#    Given user sets the environment of endpoint
#    Given user set the basepath to <service>
#    Then set the endpoint <endpoint>
#    Then user triggers a post request with <requestBody>
#    Then user verifies that status is 404
#    Then user verifies json from <responseBody>
#    Examples:
#      | service | endpoint    | requestBody                                                                              | responseBody                                                                                       |
#      | upiMSME | getlistVpa1 | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getlistVpa_404.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getlistVpa_404.json |
#
#  @TestCaseKey=UBI-5
#  Scenario Outline: Verify getlistVpa API for status code 405 with incorrect Http method
#    Given user sets the environment of endpoint
#    Given user set the basepath to <service>
#    Then set the endpoint <endpoint>
#    Then user triggers a get request with <requestBody>
#    Then user verifies that status is 405
#    Then user verifies json from <responseBody>
#    Examples:
#      | service | endpoint   | requestBody                                                                              | responseBody                                                                                       |
#      | upiMSME | getlistVpa | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getlistVpa_405.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getlistVpa_405.json |

#  @TestCaseKey=UBI-6
#  Scenario Outline: Verify getlistVpa API for status code 500 internal server error
#    Given user sets the environment of endpoint
#    Given user set the basepath to <service>
#    Then set the endpoint <endpoint>
#    Then user triggers a post request with <requestBody>
#    Then user verifies that status is 500
#    Then user verifies json from <responseBody>
#    Examples:
#      | service | endpoint   | requestBody                                                                              | responseBody                                                                                       |
#      | upiMSME | getlistVpa | /src/test/resources/testdata/api/request/Drop3/CurrentAccountEnquiry/getlistVpa_500.json | /src/test/resources/testdata/api/response/expected/Drop3/CurrentAccountEnquiry/getlistVpa_500.json |










