# Feature: General Services API
# Author: Sachin Ghorpade and Gauri Mate
# Description: Smoke Testing : General Services API
# Test Environment: SIT/UAT
# Preconditions: General Services API should be up and running

#######################################################################################
Feature: Smoke of General Service API Test
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for drop2/GeneralService 
#######################################################################################


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
      | chequeservice | /account-info |\src\test\resources\testdata\api\request\Drop2\GeneralService\CS_accountinfo.json|null|null|null|src\test\resources\testdata\api\response\expected\Drop2\GeneralService\CS_accountinfo.json|




#@TestCaseKey=UDB-T7632 @Regression 
 #Scenario Outline: Verify get customer account details with cif for valid customer
 #			Given user sets the environment of endpoint
#			Given user set the basepath to <service>
#			Then set the endpoint <endpoint>
#			Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
#			Then user triggers a post request to get customer accounts <requestBody>
#			Then user verifies that status is 200
#			Then user verifies json from <responseBody>		
#						
#			Examples:			
#			| service  | endpoint         	 | requestBody 																																									|requestField   |responsefield  | filename  | responseBody                    																																				|
#			| customer |/getCustomerAccounts |src\test\resources\testdata\api\request\Drop2\GeneralService\CS_accountinfo.json|null 					|null						| null 			|src\test\resources\testdata\api\response\expected\Drop2\GeneralService\CS_accountinfo.json|
 #	 

 
 @TestCaseKey=UDB-T30945 
  Scenario Outline: Verify that customer profile details are fetched by cif using api getProfileDetails
    #Given user sets the bearer token
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>    
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField |responsefield     | filename       | responseBody            |
      | generalservice |getProfileDetails | src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getProfileDetails.json|cif,name |accounts[0].cif,accounts[0].customerName  | CS_accountinfo.json|src\test\resources\testdata\api\response\expected\Drop2\GeneralService\GS_getProfileDetails.json|
    

	@TestCaseKey=UDB-T30933 
  Scenario Outline: Verify that customer address details are fetched by cif/account number using api getAddress
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>   
    Then user verifies that status is 200  
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody                                                                           |requestField   |responsefield      | filename                          | responseBody                               |
      | generalservice |getAddress |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getAddress.json |cif,acctNum            |accounts[0].cif,accounts[0].acctNum     | CS_accountinfo.json|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getAddress.json |
   
  
     
   @TestCaseKey=UDB-T31078  
  Scenario Outline: Verify that all loan details are fetched using api fetchloandetails
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody  |requestField   |responsefield      | filename                                                                                          | responseBody                                                                          |
      | generalservice |fetchloandetails  | \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_fetchloandetails.json|cif            |accounts[0].cif         | CS_accountinfo.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_fetchloandetails.json| 
      
   
      
     @TestCaseKey=UDB-T31042 
   Scenario Outline: Verify that balance certificate details are fetched using api balance-cert
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody  |requestField   |responsefield      | filename      | responseBody                      |
      | generalservice |balance-cert      | \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance-cert.json |acctId            |accounts[0].acctNum         | CS_accountinfo.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance-cert.json|      
      
    @TestCaseKey=UDB-T30957
 Scenario Outline: Verify that Mini Statement details are fetched by cif using api getMiniTransactionStatement
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint                    | requestBody|requestField   |responsefield      | filename      | responseBody        |
      | generalservice |getMiniTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getMiniTransactionStatement.json|cif,acctNum            |accounts[0].cif,accounts[0].acctNum         | CS_accountinfo.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getMiniTransactionStatement.json|      
  		
  	@TestCaseKey=UDB-T30981	
  Scenario Outline: Verify that transaction Statement details are fetched by cif using api getTransactionStatement
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint                | requestBody |requestField   |responsefield      | filename      |responseBody                                                                                                  |
      | generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getTransactionStatement.json|cif,acctNum |accounts[0].cif,accounts[0].acctNum  | CS_accountinfo.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getTransactionStatement.json|
     
     	@TestCaseKey=UDB-T31006	
  Scenario Outline: Verify that transaction Statement details are fetched by cif using api getTransactionStatementpdf
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint                | requestBody |requestField   |responsefield      | filename      |responseBody                                                                                                  |
      | generalservice |transactionStatementPdf| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getTransactionStatementPdf.json|cif,acctNum |accounts[0].cif,accounts[0].acctNum  | CS_accountinfo.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getTransactionStatementPdf.json|
     
     @TestCaseKey=UDB-T30993 
	Scenario Outline: Verify that Statement details are sent via email by cif using api emailStatement
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename                               | responseBody                                                                          |
      | generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_emailStatement.json|cif,acctNum |accounts[0].cif,accounts[0].acctNum  | CS_accountinfo.json|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_emailStatement.json|
      
      
  		@TestCaseKey=UDB-T31053
   Scenario Outline: Verify that individual loan interest certificate details are fetched using api loan-interest-cert
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
   Then user verifies that status is 200
    Then user verifies json from <responseBody>
    
    Examples:

    | service        | endpoint           | requestBody |requestField   |responsefield      | filename     | responseBody           |
    | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_Individual.json|accountNumber,cif |accountInfo[14].accountNumber,accountInfo[14].customerId  | GS_fetchloandetails.json | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_Individual.json|
      
     	@TestCaseKey=UDB-T31101
   Scenario Outline: Verify that consolidated loan interest certificate details are fetched using api loan-interest-cert
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
   Then user verifies that status is 200
    Then user verifies json from <responseBody>
    
    Examples:

    | service        | endpoint           | requestBody  |requestField   |responsefield      | filename    | responseBody          |
    | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_Consolidated.json|accountNumber,solId,cif,schemeType |accountInfo[18].accountNumber,accountInfo[18].solId,accountInfo[11].customerId,accountInfo[18].schemeType| GS_fetchloandetails.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_Consolidated.json|                                            
    
     @TestCaseKey=UDB-T31089
    Scenario Outline: Verify that balance details are fetched using api balance
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    #Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | generalservice |balance|\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance.json|acctId            |accounts[0].acctNum  | CS_accountinfo.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance.json|
   
        @TestCaseKey=UDB-T35292 
    Scenario Outline: Verify that Consolidated TDS Certificate downloaded using api downloadTdsCert
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Consolidated.json|cif,accountNumber |accounts[1].cif,accounts[1].acctNum  |CS_accountinfo.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Consolidated.json|
     
       @TestCaseKey=UDB-T35312
    Scenario Outline: Verify that Individual TDS Certificate downloaded using api downloadTdsCert
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    #Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Individual.json|cif,accountNumber |accounts[1].cif,accounts[1].acctNum  |CS_accountinfo.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Individual.json|
     
      @TestCaseKey=UDB-T35302
    Scenario Outline: Verify that Consolidated Interest Certificate downloaded using api downloadInterestCert
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Consolidated.json|cif,accountNumber |accounts[1].cif,accounts[1].acctNum  |CS_accountinfo.json  |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Consolidated.json|
     
       @TestCaseKey=UDB-T35322
    Scenario Outline: Verify that Individual Interest Certificate downloaded using api downloadInterestCert
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Individual.json|cif,accountNumber |accounts[1].cif,accounts[1].acctNum  |CS_accountinfo.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Individual.json|
     
     
     @TestCaseKey=UDB-T35332
    Scenario Outline: Verify that ATM is located using api getLocateAtm
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |getLocateAtm|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateAtm.json|cif            |accounts[1].cif | CS_accountinfo.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateAtm.json|
      
      @TestCaseKey=UDB-T35342 
    Scenario Outline: Verify that Branch is located using api getLocateBranch
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |getLocateBranch|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateBranch.json|cif            |accounts[1].cif | CS_accountinfo.json  |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateBranch.json|
     
      @TestCaseKey=UDB-T35352
    Scenario Outline: Verify that Branch is searched using api searchByLocation
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |searchByLocation|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_searchByLocation.json|searchParam            |address.permAddr3 | GS_getAddress.json  |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_searchByLocation.json|
     
       @TestCaseKey=UDB-T40586 
    Scenario Outline: Verify that Primary Account balance is fetched using api fetchPrimaryAccountBalance
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |fetchPrimaryAccountBalance|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_fetchPrimaryAccountBalance.json|cif            |accounts[0].cif | CS_accountinfo.json  |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_fetchPrimaryAccountBalance.json|
                 
        @TestCaseKey=UDB-T40577 
    Scenario Outline: Verify that Nominee details are fetched for given account number using api fetch-nominee
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |fetch-nominee|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_fetch-nominee.json|cif,accountNumber            |accounts[0].cif,accounts[0].acctNum | CS_accountinfo.json  |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_fetch-nominee.json|
                                                                                                                                                             