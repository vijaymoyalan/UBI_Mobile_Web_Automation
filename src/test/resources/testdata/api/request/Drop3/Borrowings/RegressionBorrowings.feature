Feature: Regression of Borrowings
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
      |customerMSME  |getCustomerAccountsExt  |src\test\resources\testdata\api\request\Drop3\Borrowings\getCustomerAccountsExt.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getCustomerAccountsExt.json|

  @TestCaseKey=UBI-2
  Scenario Outline: Verify getCustomerAccountsExt API for status code 400 with blank body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getCustomerAccountsExt  |src\test\resources\testdata\api\request\Drop3\Borrowings\getCustomerAccountsExt_400.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getCustomerAccountsExt_400.json|


  @TestCaseKey=UBI-3
  Scenario Outline: Verify getCustomerAccountsExt API for status code 401 with unauthorized token
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 401
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getCustomerAccountsExt  |src\test\resources\testdata\api\request\Drop3\Borrowings\getCustomerAccountsExt_401.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getCustomerAccountsExt_401.json|

  @TestCaseKey=UBI-4
  Scenario Outline: Verify getCustomerAccountsExt API for status code 404 with incorrect endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getCustomerAccountsExt1  |src\test\resources\testdata\api\request\Drop3\Borrowings\getCustomerAccountsExt_404.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getCustomerAccountsExt_404.json|

  @TestCaseKey=UBI-5
  Scenario Outline: Verify getCustomerAccountsExt API for status code 405 with incorrect Http method
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getCustomerAccountsExt  |src\test\resources\testdata\api\request\Drop3\Borrowings\getCustomerAccountsExt_405.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getCustomerAccountsExt_405.json|

##  @TestCaseKey=UBI-6
##  Scenario Outline: Verify getCustomerAccountsExt API for status code 500 internal server error
##    Given user sets the environment of endpoint
##    Given user set the basepath to <service>
##    Then set the endpoint <endpoint>
##    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
##    Then user triggers a post request with <requestBody>
##    Then user verifies that status is 500
##    Then user verifies json from <responseBody>
##    Examples:
##      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
##      |customerMSME  |getCustomerAccountsExt1  |src\test\resources\testdata\api\request\Drop3\Borrowings\fetchBranchDetails_500.json|null					|null							 |null				|src\test\resources\testdata\api\request\Drop3\Borrowings\getCustomerAccountsExt_500.json|
#
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
      |customerMSME  |getBGLCDetails  |src\test\resources\testdata\api\request\Drop3\Borrowings\getBGLCDetails.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getBGLCDetails.json|

  @TestCaseKey=UBI-8
  Scenario Outline: Verify getBGLCDetails API for status code 400 with blank body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getBGLCDetails  |src\test\resources\testdata\api\request\Drop3\Borrowings\getBGLCDetails_400.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getBGLCDetails_400.json|


  @TestCaseKey=UBI-9
  Scenario Outline: Verify getBGLCDetails API for status code 401 with unauthorized token
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 401
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getBGLCDetails  |src\test\resources\testdata\api\request\Drop3\Borrowings\getBGLCDetails_401.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getBGLCDetails_401.json|

  @TestCaseKey=UBI-10
  Scenario Outline: Verify getBGLCDetails API for status code 404 with incorrect endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getBGLCDetails1  |src\test\resources\testdata\api\request\Drop3\Borrowings\getBGLCDetails_404.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getBGLCDetails_404.json|

  @TestCaseKey=UBI-11
  Scenario Outline: Verify getBGLCDetails API for status code 405 with incorrect Http method
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getBGLCDetails  |src\test\resources\testdata\api\request\Drop3\Borrowings\getBGLCDetails_405.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getBGLCDetails_405.json|

##  @TestCaseKey=UBI-12
##  Scenario Outline: Verify getBGLCDetails API for status code 500 internal server error
##    Given user sets the environment of endpoint
##    Given user set the basepath to <service>
##    Then set the endpoint <endpoint>
##    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
##    Then user triggers a post request with <requestBody>
##    Then user verifies that status is 500
##    Then user verifies json from <responseBody>
##    Examples:
##      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
##      |customerMSME  |getBGLCDetails1  |src\test\resources\testdata\api\request\Drop3\Borrowings\getBGLCDetails_500.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getBGLCDetails_500.json|
#
#
  @TestCaseKey=UBI-13
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
      |customerMSME  |getLoanDetailsMSME  |src\test\resources\testdata\api\request\Drop3\Borrowings\getLoanDetails.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/Borrowings/getLoanDetails.json|

  @TestCaseKey=UBI-14
  Scenario Outline: Verify getLoanDetailsMSME API for status code 400 with blank body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getLoanDetailsMSME  |src\test\resources\testdata\api\request\Drop3\Borrowings\getLoanDetails_400.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getLoanDetails_400.json|


  @TestCaseKey=UBI-15
  Scenario Outline: Verify getLoanDetailsMSME API for status code 401 with unauthorized token
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 401
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getLoanDetailsMSME  |src\test\resources\testdata\api\request\Drop3\Borrowings\getLoanDetails_401.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getLoanDetails_401.json|

  @TestCaseKey=UBI-16
  Scenario Outline: Verify getLoanDetailsMSME API for status code 404 with incorrect endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getLoanDetailsMSME1  |src\test\resources\testdata\api\request\Drop3\Borrowings\getLoanDetails_404.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getLoanDetails_404.json|

  @TestCaseKey=UBI-17
  Scenario Outline: Verify getLoanDetailsMSME API for status code 405 with incorrect Http method
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |customerMSME  |getLoanDetailsMSME  |src\test\resources\testdata\api\request\Drop3\Borrowings\getLoanDetails_405.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getLoanDetails_405.json|

##  @TestCaseKey=UBI-18
##  Scenario Outline: Verify getLoanDetailsMSME API for status code 500 internal server error
##    Given user sets the environment of endpoint
##    Given user set the basepath to <service>
##    Then set the endpoint <endpoint>
##    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
##    Then user triggers a post request with <requestBody>
##    Then user verifies that status is 500
##    Then user verifies json from <responseBody>
##    Examples:
##      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
##      |customerMSME  |getLoanDetailsMSME  |src\test\resources\testdata\api\request\Drop3\Borrowings\getLoanDetails_500.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getLoanDetails_500.json|
#
  @TestCaseKey=UBI-19
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

  @TestCaseKey=UBI-20
  Scenario Outline: Verify fetchBranchDetails API for status code 400 with blank body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |businessServicesMSME  |fetchBranchDetails  |src\test\resources\testdata\api\request\Drop3\Borrowings\fetchBranchDetails_400.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\fetchBranchDetails_400.json|


  @TestCaseKey=UBI-21
  Scenario Outline: Verify fetchBranchDetails API for status code 401 with unauthorized token
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 401
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |businessServicesMSME  |fetchBranchDetails  |src\test\resources\testdata\api\request\Drop3\Borrowings\fetchBranchDetails_401.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\fetchBranchDetails_401.json|

  @TestCaseKey=UBI-22
  Scenario Outline: Verify fetchBranchDetails API for status code 404 with incorrect endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |businessServicesMSME  |fetchBranchDetails1  |src\test\resources\testdata\api\request\Drop3\Borrowings\fetchBranchDetails_404.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\fetchBranchDetails_404.json|

  @TestCaseKey=UBI-23
  Scenario Outline: Verify fetchBranchDetails API for status code 405 with incorrect Http method
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |businessServicesMSME  |fetchBranchDetails  |src\test\resources\testdata\api\request\Drop3\Borrowings\fetchBranchDetails_405.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\fetchBranchDetails_405.json|

##  @TestCaseKey=UBI-24
##  Scenario Outline: Verify fetchBranchDetails API for status code 500 internal server error
##    Given user sets the environment of endpoint
##    Given user set the basepath to <service>
##    Then set the endpoint <endpoint>
##    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
##    Then user triggers a post request with <requestBody>
##    Then user verifies that status is 500
##    Then user verifies json from <responseBody>
##    Examples:
##      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
##      |businessServicesMSME  |fetchBranchDetails  |src\test\resources\testdata\api\request\Drop3\Borrowings\fetchBranchDetails_500.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\fetchBranchDetails_500.json|
#
  @TestCaseKey=UBI-25
  Scenario Outline: Verify getTransactionStatement API for status code 200 with blank body
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

  @TestCaseKey=UBI-26
  Scenario Outline: Verify getTransactionStatement API for status code 400 with blank body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |generalserviceMSME  |getTransactionStatement  |src\test\resources\testdata\api\request\Drop3\Borrowings\getTransactionStatement_400.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getTransactionStatement_400.json|


  @TestCaseKey=UBI-27
  Scenario Outline: Verify getTransactionStatement API for status code 401 with unauthorized token
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 401
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |generalserviceMSME  |getTransactionStatement  |src\test\resources\testdata\api\request\Drop3\Borrowings\getTransactionStatement_401.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getTransactionStatement_401.json|

  @TestCaseKey=UBI-28
  Scenario Outline: Verify getTransactionStatement API for status code 404 with incorrect endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |generalserviceMSME  |getTransactionStatement1  |src\test\resources\testdata\api\request\Drop3\Borrowings\getTransactionStatement_404.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getTransactionStatement_404.json|

  @TestCaseKey=UBI-29
  Scenario Outline: Verify getTransactionStatement API for status code 405 with incorrect Http method
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>
    Examples:
      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
      |generalserviceMSME  |getTransactionStatement  |src\test\resources\testdata\api\request\Drop3\Borrowings\getTransactionStatement_405.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getTransactionStatement_405.json|

#  @TestCaseKey=UBI-30
#  Scenario Outline: Verify getTransactionStatement API for status code 500 internal server error
#    Given user sets the environment of endpoint
#    Given user set the basepath to <service>
#    Then set the endpoint <endpoint>
#    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
#    Then user triggers a post request with <requestBody>
#    Then user verifies that status is 500
#    Then user verifies json from <responseBody>
#    Examples:
#      |service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
  #    |generalserviceMSME  |getTransactionStatement  |src\test\resources\testdata\api\request\Drop3\Borrowings\getTransactionStatement_500.json|null					|null							 |null				|src\test\resources\testdata\api\response\expected\Drop3\Borrowings\getTransactionStatement_500.json|