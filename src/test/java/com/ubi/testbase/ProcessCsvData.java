//package com.ubi.testbase;
//
//import com.opencsv.CSVReader;
//import com.opencsv.exceptions.CsvValidationException;
//import com.ubi.utils.JiraCommonMethods;
//import com.ubi.utils.JiraTask;
//
//import java.io.FileReader;
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.HashMap;
//import java.util.Map;
//
//class ProcessCsvData{
//
//    private static ArrayList<String> statuses = new ArrayList<>();
//    private static final String CSV_FILE_PATH = "target/serenity-reports/test_results.csv";
//    static int count = 0;
//    static Map<String, Integer> result = new HashMap<>();
//    static ArrayList<String> testCaseNotFoundInTestCycle = new ArrayList<>();
//
//    public static void runCsv() {
//        try {
//            readCsvAndProcess(CSV_FILE_PATH);
//        } catch (IOException | CsvValidationException e) {
//            System.err.println("Error reading CSV: " + e.getMessage());
//        }
//
//        System.out.println(statuses);
//    }
//
//    public static void readCsvAndProcess(String csvFilePath) throws IOException, CsvValidationException {
//        try (CSVReader reader = new CSVReader(new FileReader(csvFilePath))) {
//            String[] nextLine;
//
//            reader.readNext();
//
//            while ((nextLine = reader.readNext()) != null) {
//                String testCaseKey = nextLine[0];
//                String status = nextLine[1];
//
//                processTestCase(testCaseKey, status);
//
//                count++;
//
//            }
//            System.out.println("=========================================");
//            System.out.println("Test scenarios executed       :) " + count);
//            System.out.println("=========================================");
//                    
//            System.out.println(result);
//            
//            System.out.println("Test cases not found in test cycle: " + testCaseNotFoundInTestCycle);
//            
//            
//        }
//    }
//
//    public static void processTestCase(String testCaseKey, String status) {
////        String testCycleKey = "UDB-C194";
////          String testCycleKey = "UDB-C167"; //APY
//        String testCycleKey = "UDB-C512"; // fdrd
//        if(result.containsKey(status)) {
//        	result.put(status, result.get(status) + 1);
//        }else {
//        	result.put(status, 1);
//        } 
//        status = handleCase(status);       
//        System.out.println("Processing Test Case: " + testCaseKey + ", Status: " + status);
//
//        if(status.equals("Pass") || status.equals("Fail") || status.equals("In Progress")){
//        	if (!JiraTask.input(testCaseKey, testCycleKey, status).equalsIgnoreCase("TestCaseFound")) {
//        		testCaseNotFoundInTestCycle.add(testCaseKey);
//        	}
//        }else{
//            statuses.add(status);
//        }
//
//    }
//
//    public static String handleCase(String status){
//        if ("ERROR".equalsIgnoreCase(status) || "FAILURE".equalsIgnoreCase(status)){
//            return "Fail";
//        } else if ("SUCCESS".equalsIgnoreCase(status)) {
//            return "Pass";
//        } else if ("COMPROMISED".equalsIgnoreCase(status) || "PENDING".equalsIgnoreCase(status) || "ABORTED".equalsIgnoreCase(status) || "IGNORED".equalsIgnoreCase(status)) {
//            return "In Progress";
//        }
//        return status;
//    }
//
//}
package com.ubi.testbase;

import com.opencsv.CSVReader;
import com.opencsv.exceptions.CsvValidationException;
import com.ubi.utils.JiraTask;

import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

class ProcessCsvData {

private static ArrayList<String> statuses = new ArrayList<>();
private static final String CSV_FILE_PATH = "C:\\\\Users\\\\ShoaibRehman\\\\Automation\\\\ubiAutomationapi\\\\ubiAutomation\\\\src\\\\test\\\\java\\\\com\\\\ubi\\\\testbase\\\\testbasetest_results.csv";
static int count = 0;

public static void runCsv() {
try

{ readCsvAndProcess(CSV_FILE_PATH); }
catch (IOException | CsvValidationException e)

{ System.err.println("Error reading CSV: " + e.getMessage()); }
System.out.println(statuses);
}

public static void readCsvAndProcess(String csvFilePath) throws IOException, CsvValidationException {
try (CSVReader reader = new CSVReader(new FileReader(csvFilePath))) {
String[] nextLine;

reader.readNext();

while ((nextLine = reader.readNext()) != null)

{ String testCaseKey = nextLine[0]; String status = nextLine[1]; processTestCase(testCaseKey, status); count++; }
System.out.println("=========================================");
System.out.println("Number of test cases updated....  " + count);
System.out.println("=========================================");
}
}

public static void processTestCase(String testCaseKey, String status) {
// String testCycleKey = "UDB-C194";
// String testCycleKey = "UDB-C167"; //APY
String testCycleKey = "UDB-C512"; // FD RD
status = handleCase(status);
System.out.println("Processing Test Case: " + testCaseKey + ", Status: " + status);

if(status.equals("Pass") || status.equals("Fail") || status.equals("In Progress"))

{ System.out.println("Input"); JiraTask.input(testCaseKey, testCycleKey, status); }
else

{ statuses.add(status); }
}

public static String handleCase(String status){
if ("ERROR".equalsIgnoreCase(status) || "FAILURE".equalsIgnoreCase(status))

{ return "Fail"; }
else if ("SUCCESS".equalsIgnoreCase(status))

{ return "Pass"; }
else if ("COMPROMISED".equalsIgnoreCase(status) || "PENDING".equalsIgnoreCase(status) || "ABORTED".equalsIgnoreCase(status) || "IGNORED".equalsIgnoreCase(status))

{ return "In Progress"; }
return status;
}
}
 