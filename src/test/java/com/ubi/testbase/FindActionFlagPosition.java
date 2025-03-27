package com.ubi.testbase;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.Iterator;

public class FindActionFlagPosition {
	

	    public static void main(String[] args) throws Exception {
	    	
	    	Path configFilePath = Paths.get(TestBase._baseDir, "src\\test\\resources\\testdata\\api\\response\\expected\\Drop2\\ASBA\\200_getAppliedIpoList.json");
	        String expectedContent = Files.readString(configFilePath);
	      ;

	        // Initialize ObjectMapper
	        ObjectMapper objectMapper = new ObjectMapper();

	        // Parse JSON response
	        JsonNode rootNode = objectMapper.readTree(expectedContent);

	        // Get appliedIpoEntityList
	        JsonNode appliedIpoEntityList = rootNode.get("appliedIpoEntityList");

	        if (appliedIpoEntityList.isArray()) {
	            int position = 0;
	            boolean found = false;

	            for (Iterator<JsonNode> it = appliedIpoEntityList.elements(); it.hasNext(); position++) {
	                JsonNode entity = it.next();

	                // Check if "actionFlag" is "ADD"
	                if ("ADD".equals(entity.get("actionFlag").asText())) {
	                    // Get corresponding "applicationNumber"
	                    String applicationNumber = entity.get("applicationNumber").asText();

	                    // Get "bidId" from bidDetail array
	                    JsonNode bidDetail = entity.get("bidDetail");
	                    String bidId = bidDetail.isArray() && bidDetail.size() > 0 
	                            ? bidDetail.get(0).get("bidId").asText() 
	                            : "N/A";

	                    // Print results
	                    System.out.println("Position of 'actionFlag' with value 'ADD': " + position);
	                    System.out.println("Corresponding 'applicationNumber': " + applicationNumber);
	                    System.out.println("Corresponding 'bidId': " + bidId);

	                    found = true;
	                    break;
	                }
	            }

	            if (!found) {
	                System.out.println("'actionFlag' with value 'ADD' not found in the response.");
	            }
	        } else {
	            System.out.println("Invalid or missing 'appliedIpoEntityList' in the response.");
	        }
	    }
	}


