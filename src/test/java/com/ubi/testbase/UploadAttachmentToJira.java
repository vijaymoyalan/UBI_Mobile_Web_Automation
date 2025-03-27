package com.ubi.testbase;

import com.ubi.utils.JiraCommonMethods;
import org.json.JSONObject;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

public class UploadAttachmentToJira {

    public static String BASE_URL = "https://jiradbp.unionbankofindia.co.in/rest/tests/1.0/";
    public static ArrayList<String> imageNotUploadedList = new ArrayList<>();
    
    
    public static void main(String[] args){

        // Path to the folder containing images
        String folderPath = "C:\\Users\\ArshanBhanage\\projectautomation\\ubiAutomation\\ubiAutomation\\src\\test\\resources\\screenshots";

        // Process all files in the folder
        File folder = new File(folderPath);
        if (!folder.exists() || !folder.isDirectory()) {
            System.out.println("Invalid folder path!");
            return;
        }

        File[] files = folder.listFiles((dir, name) ->
                name.toLowerCase().matches(".*\\.(png|jpg|jpeg)")); // Filter for image files
        if (files == null || files.length == 0) {
            System.out.println("No image files found in the folder.");
            return;
        }


        String cookie = JiraCommonMethods.login();

        for (File file : files) {
            String fileName = file.getName();
            String testCaseKey = fileName.split("_")[3];
            String testCycleKey = fileName.split("_")[1];
            String filePath = file.getAbsolutePath();

            System.out.println("\nTest Case Key: " + testCaseKey);
            System.out.println("Test Cycle Key: " + testCycleKey);
            System.out.println("File Path: " + filePath);
            System.out.println("-----------------------");

            int testCycleId = JiraCommonMethods.searchTestCycle(cookie, testCycleKey);
            int testCaseId = JiraCommonMethods.searchTestCase(testCaseKey, cookie);
            int runItemId = JiraCommonMethods.fetchUniqueIdToChangeStatus(cookie, testCycleId, testCaseId);
            uploadAttachmentToTestCase(cookie, runItemId, filePath, 0);
        }
        System.out.println(imageNotUploadedList.size() + "\n images failed to upload: " + imageNotUploadedList);
    }

    private static void uploadAttachmentToTestCase(String cookie, int runItemId, String filePath, int retry) {

        if(retry > 10){
            imageNotUploadedList.add(filePath);
            return;
        }
        
        HttpURLConnection connection = null;
        String boundary = "Boundary-" + System.currentTimeMillis();

        try {
            // Define the URL
            URL url = new URL(BASE_URL + "testresult/" + runItemId + "/attachment");
            System.out.println(url);
            connection = (HttpURLConnection) url.openConnection();

            // Set the request method to POST
            connection.setRequestMethod("POST");

            // Set request headers
            connection.setDoOutput(true);
            connection.setRequestProperty("accept", "application/json, text/plain, */*");
            connection.setRequestProperty("Connection", "keep-alive");
            connection.setRequestProperty("content-type", "multipart/form-data; boundary=" + boundary);
            connection.setRequestProperty("cookie", cookie);
            connection.setRequestProperty("X-Requested-With", "XMLHttpRequest");
            connection.setRequestProperty("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0");

            OutputStream outputStream = connection.getOutputStream();
            PrintWriter writer = new PrintWriter(new OutputStreamWriter(outputStream, StandardCharsets.UTF_8), true);

            // Add file part
            writer.append("--").append(boundary).append("\r\n");
            writer.append("Content-Disposition: form-data; name=\"file\"; filename=\"").append(new File(filePath).getName()).append("\"\r\n");
            writer.append("Content-Type: application/octet-stream\r\n\r\n").flush();


            FileInputStream fis = new FileInputStream(filePath);
            byte[] buffer = new byte[4096];
            int bytesRead;
            while((bytesRead = fis.read(buffer)) != -1){
                outputStream.write(buffer, 0, bytesRead);
            }
            outputStream.flush();
            fis.close();

            writer.append("\r\n").append("--").append(boundary).append("--").append("\r\n").flush();
            writer.close();

            // Send the request and read the response
            int responseCode = connection.getResponseCode();
            System.out.println("Response Code:" + responseCode);
            
            if(!(responseCode >= 200 && responseCode < 300)){
                Thread.sleep(500);
                System.out.println("\nRetrying to upload image again...");
                uploadAttachmentToTestCase(cookie, runItemId, filePath, retry + 1);
            }

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
            System.out.println(jsonObject);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (connection != null) connection.disconnect();
        }
    }
}