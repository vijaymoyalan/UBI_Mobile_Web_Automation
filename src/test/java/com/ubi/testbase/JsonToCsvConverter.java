package com.ubi.testbase;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

class JsonToCsvConverter {

	private static final String JSON_REPORT_PATH = "target/cucumber-report.json"; // Update path as needed
	private static final String CSV_OUTPUT_PATH = "target/test-results.csv";

	public static void main(String[] args) {
		try {
			parseJsonAndWriteCsv(JSON_REPORT_PATH, CSV_OUTPUT_PATH);
			System.out.println("CSV file generated at: " + CSV_OUTPUT_PATH);
			ProcessCsvData.runCsv();
		} catch (IOException e) {
			System.err.println("Error processing JSON: " + e.getMessage());
		}
	}

	public static void parseJsonAndWriteCsv(String jsonFilePath, String csvFilePath) throws IOException {
		// Initialize ObjectMapper to parse JSON
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode rootNode = objectMapper.readTree(new File(jsonFilePath));

		// Initialize CSV writer
		try (FileWriter writer = new FileWriter(csvFilePath)) {
			// Write CSV header
			writer.append("Test Case Key,Status\n");

			// Loop through each feature in the JSON
			for (JsonNode featureNode : rootNode) {
				if (featureNode.has("elements")) {
					for (JsonNode scenarioNode : featureNode.get("elements")) {
						if (scenarioNode.has("type") && scenarioNode.get("type").asText().equals("scenario")) {
							String testCaseKey = extractTestCaseKey(scenarioNode.get("tags"));
							String status = determineScenarioStatus(scenarioNode);

							// Write the test case key and status to CSV
							writer.append(testCaseKey).append(",").append(status).append("\n");
						}
					}
				}
			}
		}
	}

	private static String extractTestCaseKey(JsonNode tagsNode) {
		if (tagsNode != null) {
			for (JsonNode tag : tagsNode) {
				String tagName = tag.get("name").asText();
				if (tagName.startsWith("@TestCaseKey=")) {
					return tagName.substring("@TestCaseKey=".length());
				}
			}
		}
		return "Unknown"; // Default if no test case key is found
	}

	private static String determineScenarioStatus(JsonNode scenarioNode) {
        String finalStatus="";

        if (scenarioNode.has("steps")) {
            for (JsonNode stepNode : scenarioNode.get("steps")) {
                if (stepNode.has("result")) {
                    String stepStatus = stepNode.get("result").get("status").asText();
                    if ("passed".equalsIgnoreCase(stepStatus)) {
                        return "Pass";
                    }
                      else if ("failed".equalsIgnoreCase(stepStatus) || "error".equalsIgnoreCase(stepStatus)) {
                        return "Fail";
                    } else if ("skipped".equalsIgnoreCase(stepStatus) || "ignored".equalsIgnoreCase(stepStatus) || "aborted".equalsIgnoreCase(stepStatus)) {
                        return "Not Executed";
                    } else if ("pending".equalsIgnoreCase(stepStatus) || "compromised".equalsIgnoreCase(stepStatus)) {
                    	return "In Progress";
                    }
                }
            }
        }
        return finalStatus;
    }
}
