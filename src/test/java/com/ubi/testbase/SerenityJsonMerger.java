package com.ubi.testbase;


import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

class SerenityJsonMerger {

    public static void main(String[] args) {
        // Path to the directory containing JSON files
        String jsonDirectoryPath = "target/serenity-reports";

        // Output CSV file
        String outputCsvPath = "target/serenity-reports/test_results.csv";

        // Create ObjectMapper instance
        ObjectMapper objectMapper = new ObjectMapper();
        List<String> udbNames = new ArrayList<>();

        try (FileWriter csvWriter = new FileWriter(outputCsvPath)) {
            // Write CSV header
            csvWriter.append("Tag Name,Result\n");

            // Process each JSON file in the directory
            try (Stream<File> jsonFiles = Files.list(Paths.get(jsonDirectoryPath))
                    .filter(path -> path.toString().endsWith(".json"))
                    .map(path -> path.toFile())) {

                jsonFiles.forEach(file -> {
                    try {
                        // Parse the JSON file
                        JsonNode rootNode = objectMapper.readTree(file);

                        // Extract tag name
                        JsonNode tagsNode = rootNode.path("tags");
                        
                        if (tagsNode.isArray()) {
                            tagsNode.forEach(tag -> {
                            	
                                String name = tag.path("name").asText();
                                if (name.startsWith("UDB-")) {
                                    udbNames.add(name); 
                                }
                            });
                        }

                        String result = rootNode.path("result").asText("Unknown");

                        // Write to CSV
						while(!udbNames.isEmpty()) {
                        	String testCase = udbNames.get(0);
                            csvWriter.append(testCase).append(",").append(result).append("\n");
                            udbNames.remove(testCase);
                        }


                    } catch (IOException e) {
                        System.err.println("Error processing file: " + file.getName());
                        e.printStackTrace();
                    }
                });
            }

            System.out.println("Test results exported to: " + outputCsvPath);

        } catch (IOException e) {
            System.err.println("Error writing CSV file.");
            e.printStackTrace();
        }

 ProcessCsvData.runCsv();
    }
}