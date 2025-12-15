# Feature: Cheque Services API
# Author: Sachin Ghorpade and Gauri Mate
# Description: Smoke Testing : Cheque Services API
# Test Environment: SIT
# Preconditions: Cheque Services API should be up and running

########################################################################################################
Feature: Smoke of Cheque Service API Test
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/ChequeService 
########################################################################################################

    @TestCaseKey=UDB-T28622 
  Scenario Outline: Verify that get the account
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /account-info |\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_accountinfo.json|null|null|null|src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_accountinfo.json|
   
    #@TestCaseKey=UDB-T28628 
  #Scenario Outline: Verify that book request for given account number and number of leaves
    #Given user sets the environment of endpoint
    #Given user set the basepath to <service>
    #Then set the endpoint <endpoint>
    #Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    #Then user triggers a post request with <requestBody>
    #Then user verifies that status is 200
    #Then user verifies json from <responseBody>
#
    #Examples: 
      #| service        | endpoint    | requestBody | requestField |responsefield     | filename                                                                                    | responseBody                                                                                           |
      #| chequeservice | /book-request |src\test\resources\testdata\api\request\Drop2\ChequeService\CS_bookrequest.json|accountNumber|accounts[0].acctNum|CS_accountinfo.json|src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_bookrequest.json|
      
     @TestCaseKey=UDB-T28645  
  Scenario Outline: Verify that cheque-leafs for given account number.
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service       | endpoint     | requestBody 																																		|requestField |responsefield     		| filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /cheque-leafs|\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_chequeleafs.json|accountNumber|accounts[12].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_chequeleafs.json|
      
   
    @TestCaseKey=UDB-T28633
  Scenario Outline: Verify that Status inquiry for given account number and cheque number.
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /status-inquiry |\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_statusinquiry.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_statusinquiry.json|
     
     
   #@TestCaseKey=PP-T01
  #Scenario Outline: Verify that Limit amount for given cif
    #Given user sets the environment of endpoint
    #Given user set the basepath to <service>
    #Then set the endpoint <endpoint>
    #Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    #Then user triggers a post request with <requestBody>
    #Then user verifies that status is 200
    #Then user verifies json from <responseBody>
#
    #Examples: 
      #| service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      #| positivepay | /limit-amount |\src\test\resources\testdata\api\request\Drop2\ChequeService\PP_limit-amount.json|null|null|null|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\PP_limit-amount.json|
     #
#
 #@TestCaseKey=PP-T02
  #Scenario Outline: Verify that positive-pay-enquiry for given cif and Account Number
    #Given user sets the environment of endpoint
    #Given user set the basepath to <service>
    #Then set the endpoint <endpoint>
    #Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    #Then user triggers a post request with <requestBody>
    #Then user verifies that status is 200
    #Then user verifies json from <responseBody>
#
    #Examples: 
      #| service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      #| positivepay | /positive-pay-enquiry |\src\test\resources\testdata\api\request\Drop2\ChequeService\PP_Positive-Pay_Enquiry.json|null|null|null|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\PP_Positive-Pay_Enquiry.json|
#
#@TestCaseKey=PP-T03
  #Scenario Outline: Verify that positive-pay-request for given cif and Account Number
    #Given user sets the environment of endpoint
    #Given user set the basepath to <service>
    #Then set the endpoint <endpoint>
    #Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    #Then user triggers a post request with <requestBody>
    #Then user verifies that status is 200
    #Then user verifies json from <responseBody>
#
    #Examples: 
      #| service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      #| positivepay | /positive-pay-request |\src\test\resources\testdata\api\request\Drop2\ChequeService\PP_positive-pay-request.json|null|null|null|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\PP_positive-pay-request.json|
#
#@TestCaseKey=PP-T04
  #Scenario Outline: Verify that positive-pay-landing-page-info for given cif
    #Given user sets the environment of endpoint
    #Given user set the basepath to <service>
    #Then set the endpoint <endpoint>
    #Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    #Then user triggers a post request with <requestBody>
    #Then user verifies that status is 200
    #Then user verifies json from <responseBody>
#
    #Examples: 
      #| service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      #| positivepay | /positive-pay-landing-page-info |\src\test\resources\testdata\api\request\Drop2\ChequeService\PP_positive-pay-landing-page-info.json|null|null|null|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\PP_positive-pay-landing-page-info.json|
#
     #
    #@TestCaseKey=UDB-T28639
  #Scenario Outline: Verify that Positive-pay-limit for given account number and cheque number.
    #Given user sets the environment of endpoint
    #Given user set the basepath to <service>
    #Then set the endpoint <endpoint>
    #Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    #Then user triggers a post request with <requestBody>
    #Then user verifies that status is 200
    #Then user verifies json from <responseBody>
#
    #Examples: 
      #| service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      #| chequeservice | /positive-pay-limit |\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_positivepaylimit.json|cif,accountNumber|accounts[12].cif,accounts[12].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_positivepaylimit.json|
      #
   
    #@TestCaseKey=UDB-T28651
  #Scenario Outline: Verify that stop-cheque-payment for given account number and cheque number.
    #Given user sets the environment of endpoint
    #Given user set the basepath to <service>
    #Then set the endpoint <endpoint>
    #Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    #Then user triggers a post request with <requestBody>
    #Then user verifies that status is 200
    #Then user verifies json from <responseBody>
#
    #Examples: 
      #| service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      #| chequeservice | /stop-cheque-payment|\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_stopchequepayment.json|chequeNumber|chequeLeafs[47].chequeLeafNumber|CS_chequeleafs.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_stopchequepayment.json|
      #
  