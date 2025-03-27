import json
import zipfile

# Define the directory to save JSON files
zip_filename = "api_test_cases.zip"

# Create JSON data for each test case category per endpoint
test_cases = {
    
    "getTransactionStatement.json": {},
    "getTransactionStatement_400.json": {},
    "getTransactionStatement_401.json": {"customerId": "12345"},
    "getTransactionStatement_404.json": {"customerId": "99999"},
    "getTransactionStatement_405.json": None,
    "getTransactionStatement_500.json": {"customerId": "12345"},


    "emailStatement.json": {},
    "emailStatement_400.json": {},
    "emailStatement_401.json": {"customerId": "12345"},
    "emailStatement_404.json": {"customerId": "99999"},
    "emailStatement_405.json": None,
    "emailStatement_500.json": {"customerId": "12345"},

    "emailStatement.json": {},
    "emailStatement_400.json": {},
    "emailStatement_401.json": {"customerId": "12345"},
    "emailStatement_404.json": {"customerId": "99999"},
    "emailStatement_405.json": None,
    "emailStatement_500.json": {"customerId": "12345"},

    "transactionStatementPdf.json": {},
    "transactionStatementPdf_400.json": {},
    "transactionStatementPdf_401.json": {"customerId": "12345"},
    "transactionStatementPdf_404.json": {"customerId": "99999"},
    "transactionStatementPdf_405.json": None,
    "transactionStatementPdf_500.json": {"customerId": "12345"},

    "fetchPrimaryAccountBalance.json": {},
    "fetchPrimaryAccountBalance_400.json": {},
    "fetchPrimaryAccountBalance_401.json": {"customerId": "12345"},
    "fetchPrimaryAccountBalance_404.json": {"customerId": "99999"},
    "fetchPrimaryAccountBalance_405.json": None,
    "fetchPrimaryAccountBalance_500.json": {"customerId": "12345"},


    "setPrimaryAccountDetails.json": {},
    "setPrimaryAccountDetails_400.json": {},
    "setPrimaryAccountDetails_401.json": {"customerId": "12345"},
    "setPrimaryAccountDetails_404.json": {"customerId": "99999"},
    "setPrimaryAccountDetails_405.json": None,
    "setPrimaryAccountDetails_500.json": {"customerId": "12345"},


    "fetchBranchDetails.json": {},
    "fetchBranchDetails_400.json": {},
    "fetchBranchDetails_401.json": {"customerId": "12345"},
    "fetchBranchDetails_404.json": {"customerId": "99999"},
    "fetchBranchDetails_405.json": None,
    "fetchBranchDetails_500.json": {"customerId": "12345"},


    "getCASAAccountDetails.json": {},
    "getCASAAccountDetails_400.json": {},
    "getCASAAccountDetails_401.json": {"customerId": "12345"},
    "getCASAAccountDetails_404.json": {"customerId": "99999"},
    "getCASAAccountDetails_405.json": None,
    "getCASAAccountDetails_500.json": {"customerId": "12345"},


    "getLienDetails.json": {},
    "getLienDetails_400.json": {},
    "getLienDetails_401.json": {"customerId": "12345"},
    "getLienDetails_404.json": {"customerId": "99999"},
    "getLienDetails_405.json": None,
    "getLienDetails_500.json": {"customerId": "12345"},

    "getCustomerAccountsExt.json": {},
    "getCustomerAccountsExt_400.json": {},
    "getCustomerAccountsExt_401.json": {"customerId": "12345"},
    "getCustomerAccountsExt_404.json": {"customerId": "99999"},
    "getCustomerAccountsExt_405.json": None,
    "getCustomerAccountsExt_500.json": {"customerId": "12345"},


    "getChequeDetail.json": {},
    "getChequeDetail_400.json": {},
    "getChequeDetail_401.json": {"customerId": "12345"},
    "getChequeDetail_404.json": {"customerId": "99999"},
    "getChequeDetail_405.json": None,
    "getChequeDetail_500.json": {"customerId": "12345"},


    "debitCardProfile.json": {},
    "debitCardProfile_400.json": {},
    "debitCardProfile_401.json": {"customerId": "12345"},
    "debitCardProfile_404.json": {"customerId": "99999"},
    "debitCardProfile_405.json": None,
    "debitCardProfile_500.json": {"customerId": "12345"},



    "getlistVpa.json": {},
    "getlistVpa_400.json": {},
    "getlistVpa_401.json": {"customerId": "12345"},
    "getlistVpa_404.json": {"customerId": "99999"},
    "getlistVpa_405.json": None,
    "getlistVpa_500.json": {"customerId": "12345"},



##    "getDebitCreditAmount.json": {"accountId": "98765"},
##    "getDebitCreditAmount_400.json": {},
##    "getDebitCreditAmount_401.json": {"accountId": "98765"},
##    "getDebitCreditAmount_404.json": {"accountId": "00000"},
##    "getDebitCreditAmount_405.json": None,
##    "getDebitCreditAmount_500.json": {"accountId": "98765"},
##
##    "getAccountBalance.json": {"accountId": "112233"},
##    "getAccountBalance_400.json": {},
##    "getAccountBalance_401.json": {"accountId": "112233"},
##    "getAccountBalance_404.json": {"accountId": "00000"},
##    "getAccountBalance_405.json": None,
##    "getAccountBalance_500.json": {"accountId": "112233"},
##
##    "getCardProfile.json": {"cardId": "445566"},
##    "getCardProfile_400.json": {},
##    "getCardProfile_401.json": {"cardId": "445566"},
##    "getCardProfile_404.json": {"cardId": "00000"},
##    "getCardProfile_405.json": None,
##    "getCardProfile_500.json": {"cardId": "445566"},
}

# Write JSON files and zip them
with zipfile.ZipFile(zip_filename, 'w') as zipf:
    for filename, data in test_cases.items():
        file_path = f"{filename}"
        with open(file_path, "w", encoding="utf-8") as json_file:
            json.dump(data, json_file, indent=4)
        zipf.write(file_path, filename)

zip_filename
