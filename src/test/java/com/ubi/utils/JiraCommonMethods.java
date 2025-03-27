package com.ubi.utils;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class JiraCommonMethods {

    public static String PROJECT_ID = "10100";
    public static String BASE_URL = "https://jiradbp.unionbankofindia.co.in/rest/tests/1.0/";
    public static String TOKEN_URL = "https://jiradbp.unionbankofindia.co.in/rest/gadget/1.0/";

    public static String login(){
        try {
        	
        	TrustManager[] trustAllCerts = new TrustManager[]{
        	        new X509TrustManager() {
        	            public X509Certificate[] getAcceptedIssuers() { return null; }
        	            public void checkClientTrusted(X509Certificate[] certs, String authType) { }
        	            public void checkServerTrusted(X509Certificate[] certs, String authType) { }
        	        }
        	};
        	SSLContext sc = SSLContext.getInstance("TLS");
        	sc.init(null, trustAllCerts, new SecureRandom());
        	HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());

            // Set up the URL and HttpURLConnection
            URL url = new URL(TOKEN_URL + "login");
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();

            // Configure the request headers
            connection.setRequestMethod("POST");
            connection.setRequestProperty("accept", "application/json, text/plain, */*");
            connection.setRequestProperty("accept-language", "en-US,en;q=0.9");
            connection.setRequestProperty("content-type", "application/x-www-form-urlencoded; charset=UTF-8");
            connection.setRequestProperty("jira-project-id", PROJECT_ID);
            connection.setRequestProperty("origin", "https://jiradbp.unionbankofindia.co.in");
            connection.setRequestProperty("priority", "u=1, i");
            connection.setRequestProperty("referer", "https://jiradbp.unionbankofindia.co.in/secure/Dashboard.jspa?");
            connection.setRequestProperty("sec-ch-ua", "\"Chromium\";v=\"130\", \"Microsoft Edge\";v=\"130\", \"Not?A_Brand\";v=\"99\"");
            connection.setRequestProperty("sec-ch-ua-mobile", "?0");
            connection.setRequestProperty("sec-ch-ua-platform", "\"Windows\"");
            connection.setRequestProperty("sec-fetch-dest", "empty");
            connection.setRequestProperty("sec-fetch-mode", "cors");
            connection.setRequestProperty("sec-fetch-site", "same-origin");
            connection.setRequestProperty("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0");
            connection.setRequestProperty("x-requested-with", "XMLHttpRequest");

            // Enable input/output streams
            connection.setDoOutput(true);

            // Write data to the request body
            String requestBody = "os_username=Arshan.Bhanage%40ibm.com&os_password=Qwerty123%24";

            try (OutputStream os = connection.getOutputStream()) {
                byte[] input = requestBody.getBytes(StandardCharsets.UTF_8);
                os.write(input, 0, input.length);
            }

            // Read the response
            BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), StandardCharsets.UTF_8));
            StringBuilder response = new StringBuilder();
            String responseLine;
            while ((responseLine = br.readLine()) != null) {
                response.append(responseLine.trim());
            }

            // Print the response for debugging (optional)
            System.out.println("Response: " + response.toString());

            // Extract the XSRF token from the response headers

            System.out.println(connection.getHeaderFields());

            String setCookieHeader = connection.getHeaderField("Set-Cookie");

            Map<String, List<String>> hm = connection.getHeaderFields();

            String xsrfToken = null;
            String JSESSIONID = hm.get("Set-Cookie").get(1).split(";")[0].split("=")[1];

            if (setCookieHeader != null && setCookieHeader.contains("atlassian.xsrf.token")) {
                String[] cookies = setCookieHeader.split(";");
                for (String cookie : cookies) {
                    if (cookie.trim().startsWith("atlassian.xsrf.token")) {
                        xsrfToken = cookie.split("=")[1];
                        break;
                    }
                }
            }

            // Output the XSRF token
            String cookie = String.format("JSESSIONID=%s; atlassian.xsrf.token=%s", JSESSIONID, xsrfToken);
            System.out.println(cookie);
            return cookie;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static int searchTestCycle(String cookie, String testCycleKey){
        try {
            // Define the URL
            String urlString = BASE_URL
                    + "testrun/search?fields=id%2Ckey%2Cname%2CfolderId%2CiterationId%2CprojectVersionId%2CenvironmentId%2CuserKeys%2CenvironmentIds%2CplannedStartDate%2CplannedEndDate%2CexecutionTime%2CestimatedTime%2CtestResultStatuses%2CtestCaseCount%2CissueCount%2Cstatus(id%2Cname%2Ci18nKey%2Ccolor)%2CcustomFieldValues%2CcreatedOn%2CcreatedBy%2CupdatedOn%2CupdatedBy%2Cowner&query=testRun.projectId+IN+("
                    + PROJECT_ID
                    + ")+ORDER+BY+testRun.name+DESC&maxResults=90000&startAt=0&archived=false";
            URL url = new URL(urlString);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();


            // Set request properties
            connection.setRequestMethod("GET");
            connection.setRequestProperty("accept", "application/json, text/plain, */*");
            connection.setRequestProperty("accept-encoding", "gzip, deflate, br");
            connection.setRequestProperty("accept-language", "en-US,en;q=0.9");
            connection.setRequestProperty("connection", "keep-alive");
            connection.setRequestProperty("content-type", "application/x-www-form-urlencoded; charset=UTF-8");
            connection.setRequestProperty("cookie", cookie);

            // Send request and get response code
            int responseCode = connection.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) {
                // Read the response
                BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                StringBuilder response = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    response.append(line);
                }
                reader.close();

                // Parse JSON response
                JSONObject jsonResponse = new JSONObject(response.toString());
                JSONArray results = jsonResponse.getJSONArray("results");
                //System.out.println(jsonResponse);

                // Extract key and id into HashMap
                Map<String, Integer> keyIdMap = new HashMap<>();
                for (int i = 0; i < results.length(); i++) {
                    JSONObject result = results.getJSONObject(i);
                    String key = result.getString("key");
                    int id = result.getInt("id");
                    keyIdMap.put(key, id);
                }

                System.out.println( "Test Cycle Id: " + keyIdMap.get(testCycleKey));
                return keyIdMap.get(testCycleKey);

            } else {
                System.out.println("GET request failed. Response code: " + responseCode);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public static int searchTestCase(String testCaseKey, String cookie){

        String url = BASE_URL + "testcase/search";
        String queryParams = "fields=id,key,projectId,name,averageTime,estimatedTime,labels,folderId,componentId,status(id,name,i18nKey,color),priority(id,name,i18nKey,color),lastTestResultStatus(name,i18nKey,color),majorVersion,createdOn,createdBy,updatedOn,updatedBy,customFieldValues,owner,folderId"
                + "&query=testCase.projectId+IN+("
                + PROJECT_ID
                + ")+AND+testCase.keyName+LIKE+%22"
                + testCaseKey
                + "%22+ORDER+BY+testCase.statusIndex+DESC"
                + "&startAt=0&maxResults=90000&archived=false";

        try {
            URL obj = new URL(url + "?" + queryParams);
            HttpURLConnection con = (HttpURLConnection) obj.openConnection();

            // Set up the request method and headers
            con.setRequestMethod("GET");
            con.setRequestProperty("cookie", cookie);

            // Get the response code
            int responseCode = con.getResponseCode();
            System.out.println("Response Code: " + responseCode);

            // Read the response
            if (responseCode == HttpURLConnection.HTTP_OK) { // Success
                BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
                String inputLine;
                StringBuilder response = new StringBuilder();

                while ((inputLine = in.readLine()) != null) {
                    response.append(inputLine);
                }
                in.close();

                // Parse JSON response
                JSONObject jsonResponse = new JSONObject(response.toString());
                JSONArray results = jsonResponse.getJSONArray("results");

                // Extract key and id into HashMap
                Map<String, Integer> keyIdMap = new HashMap<>();

                JSONObject result = results.getJSONObject(0);
                System.out.println("Test Case Id: " + result.getInt("id"));
                return result.getInt("id");

            } else {
                System.out.println("Failed to retrieve test cases. Response Code: " + responseCode);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public static int fetchUniqueIdToChangeStatus(String cookie, int testCycleId, int testCaseId) {

        HttpURLConnection connection = null;
        try {
            // Define the URL
            URL url = new URL(BASE_URL + "testrun/" + testCycleId + "/testrunitems?fields=id%2Cindex%2CissueCount%2C%24lastTestResult");
            connection = (HttpURLConnection) url.openConnection();

            // Set the request method to GET
            connection.setRequestMethod("GET");

            // Set request headers
            connection.setRequestProperty("accept", "application/json, text/plain, */*");
            connection.setRequestProperty("content-type", "application/x-www-form-urlencoded; charset=UTF-8");
            connection.setRequestProperty("cookie", cookie);
            connection.setRequestProperty("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0");

            // Send the request and read the response
            int responseCode = connection.getResponseCode();

            StringBuilder content = new StringBuilder();
            try (BufferedReader in = new BufferedReader(new InputStreamReader(
                    responseCode >= 200 && responseCode < 300 ? connection.getInputStream() : connection.getErrorStream()))) {
                String inputLine;
                while ((inputLine = in.readLine()) != null) {
                    content.append(inputLine);
                }
            }

            // Parse the JSON response
            JSONObject jsonObject = new JSONObject(content.toString());
//            System.out.println("Response Content: " + content);

            // Attempt to retrieve "testRunItems" array, use optJSONArray to avoid exception if key is missing
            JSONArray testRunItems = jsonObject.optJSONArray("testRunItems");

            if (testRunItems == null) {
                System.out.println("No 'testRunItems' array found in the JSON response.");
                return 0;
            }

            // Variable to store the test case ID to search for
            int storedTestCaseId = testCaseId;

            // Iterate over testRunItems array to find the matching test case
            Integer lastTestResultId = null;
            for (int i = 0; i < testRunItems.length(); i++) {
                JSONObject testRunItem = testRunItems.getJSONObject(i);
                JSONObject lastTestResult = testRunItem.optJSONObject("$lastTestResult");
                if (lastTestResult == null) {
                    System.out.println("No '$lastTestResult' object found for item at index " + i);
                    continue;
                }

                JSONObject testCase = lastTestResult.optJSONObject("testCase");
                if (testCase == null) {
                    System.out.println("No 'testCase' object found within '$lastTestResult' for item at index " + i);
                    continue;
                }

                if (testCase.getInt("id") == storedTestCaseId) {
                    lastTestResultId = lastTestResult.getInt("id");
                    break; // Exit loop once the match is found
                }
            }

            // Print the found lastTestResult id or a message if not found
            if (lastTestResultId != null) {
                return lastTestResultId;
            } else {
                System.out.println("No matching test case found for ID: " + storedTestCaseId);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (connection != null) connection.disconnect();
        }
        return 0;
    }


}
