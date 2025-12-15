package com.ubi.testbase;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.json.JSONException;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.testng.asserts.SoftAssert;
import com.fasterxml.jackson.core.exc.StreamReadException;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.ubi.utils.FileUtils;
import com.ubi.utils.LoggerSerenity;

import io.restassured.response.Response;
import net.serenitybdd.annotations.Step;
import net.serenitybdd.core.Serenity;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import java.io.StringReader;

public class JSONComparator {
	private static final Logger LOGGER = LoggerFactory.getLogger(JSONComparator.class);

	@Step("user verifies that json or xml (.*)$")
	public static void compareJsonOutput(String responseBody, String[] fieldsToIgnore,
			Map<String, String[]> specificValuesToIgnore) throws Exception {
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			Response response = Serenity.sessionVariableCalled("response");

			// Read the expected result from file
			Path configFilePath = Paths.get(TestBase._baseDir, responseBody);
			String expectedContent = Files.readString(configFilePath);

			// Extract the actual response body
			String actualContent = response.then().extract().body().asString();

			// Detect if the content is XML or JSON
			boolean isXml = isXmlContent(actualContent);
			// Handle encryption
			boolean isEncrypted;
			do {
				isEncrypted = CommonRestUtils.isResponseEncrypted(actualContent);
				if (isEncrypted) {
					JsonNode rootNode = objectMapper.readTree(actualContent);
					String dataValue = rootNode.path("data").asText();
					String xapikey = AppConfig.xapikey();
					actualContent = EncryptionUtil.decrypt(dataValue, xapikey);
					Serenity.setSessionVariable("decryptedResponseBody").to(actualContent);
					isEncrypted = false;

				}
			} while (isEncrypted);

			if (isXml) {
				LOGGER.info("The response is identified as XML. Performing XML validation.");
				validateXml(expectedContent, actualContent);
			} else {
				LOGGER.info("The response is identified as JSON. Performing JSON validation.");
				// Parse JSON strings based on their type (Array or Object)
				Object resultExpected = parseJsonDynamically(objectMapper, expectedContent);
				Object resultActual = parseJsonDynamically(objectMapper, actualContent);

				// Normalize both actual and expected responses
				normalizeJsonResponse(resultExpected, objectMapper);
				normalizeJsonResponse(resultActual, objectMapper);
				
				
				String keys = AppConfig.sortKeys(); 
				List<String> sortKeys = Arrays.stream(keys.split(","))
				                              .map(String::trim)
				                              .collect(Collectors.toList());

				sortJsonByKeysDeep(resultExpected, sortKeys);
				sortJsonByKeysDeep(resultActual, sortKeys);
				// Remove ignored fields (supports only Map type for simplicity in this method)
//            if (resultExpected instanceof Map && resultActual instanceof Map) {
//                removeIgnoredFields((Map<String, Object>) resultExpected, fieldsToIgnore, specificValuesToIgnore);
//                removeIgnoredFields((Map<String, Object>) resultActual, fieldsToIgnore, specificValuesToIgnore);
//            }

				// Remove ignored fields recursively (supporting Map and List)
			    
				removeIgnoredFieldsRecursive(resultExpected, fieldsToIgnore, specificValuesToIgnore);
				removeIgnoredFieldsRecursive(resultActual, fieldsToIgnore, specificValuesToIgnore);

				// Compare the parsed objects
				boolean areEqual = resultExpected.equals(resultActual);
				LOGGER.info("The actual JSON: " + resultActual);
				LOGGER.info("The expected JSON: " + resultExpected);
				LOGGER.info("Are the two JSON objects equal? " + areEqual);

				if (!areEqual) {
					LOGGER.info("Differences:");
					if (resultExpected instanceof Map && resultActual instanceof Map) {
						findDifferences((Map<String, Object>) resultExpected, (Map<String, Object>) resultActual);
					}
					Assert.assertEquals("Actual Response body is not matching with Expected response body.",
							expectedContent, actualContent);
				}
			}
		} catch (JSONException | IOException e) {
			LOGGER.error("Error comparing outputs", e);
			throw e;
		}
	}

	private static void removeIgnoredFieldsRecursive(Object json, String[] fieldsToIgnore,
			Map<String, String[]> specificValuesToIgnore) {
		if (json instanceof Map) {
			Map<String, Object> jsonMap = (Map<String, Object>) json;
			removeIgnoredFields(jsonMap, fieldsToIgnore, specificValuesToIgnore);
			
			 
	       
			// Remove fields that match the ignore list
	        for (String fieldToIgnore : fieldsToIgnore) {
	            jsonMap.remove(fieldToIgnore);
	        }
	        
			

// Recursively process nested Maps and Lists
			for (Map.Entry<String, Object> entry : jsonMap.entrySet()) {
				if (entry.getValue() instanceof Map || entry.getValue() instanceof List) {
					removeIgnoredFieldsRecursive(entry.getValue(), fieldsToIgnore, specificValuesToIgnore);
				}
			}
		} else if (json instanceof List) {
			List<Object> jsonList = (List<Object>) json;
			for (Object item : jsonList) {
				if (item instanceof Map || item instanceof List) {
					removeIgnoredFieldsRecursive(item, fieldsToIgnore, specificValuesToIgnore);
				}
			}
		}
	}

	/**
	 * Dynamically parses JSON into a Map or List based on its structure.
	 */
	private static Object parseJsonDynamically(ObjectMapper objectMapper, String jsonString) throws IOException {
		JsonNode rootNode = objectMapper.readTree(jsonString);
		if (rootNode.isArray()) {
			return objectMapper.readValue(jsonString, new TypeReference<List<Object>>() {
			});
		} else if (rootNode.isObject()) {
			return objectMapper.readValue(jsonString, new TypeReference<Map<String, Object>>() {
			});
		} else {
			throw new IllegalArgumentException("Unsupported JSON format: Root is neither an object nor an array.");
		}
	}

	/**
	 * Normalizes JSON responses by processing specific fields (e.g., errorMessage).
	 */
	 private static final List<String> arrayFieldsToSort = Arrays.asList("tdAccountInfoList");
	    private static final List<String> candidateSortKeys = Arrays.asList("depositAmt");

	    public static void normalizeJsonResponse(Object json, ObjectMapper objectMapper) throws IOException {
	        if (json instanceof Map) {
	            Map<String, Object> map = (Map<String, Object>) json;

	            // Normalize the "errorMessage" or "errors" field if present
	            if (map.containsKey("errorMessage")) {
	                Object errorMessage = map.get("errorMessage");
	                if (errorMessage instanceof String) {
	                    map.put("errorMessage", normalizeErrorMessageKey((String) errorMessage));
	                }
	            } else if (map.containsKey("errors")) {
	                Object errorMessage = map.get("errors");
	                if (errorMessage instanceof String) {
	                    map.put("errors", normalizeErrorMessageKey((String) errorMessage));
	                }
	            }

	            // Sort known array fields
	            for (String arrayField : arrayFieldsToSort) {
	                if (map.containsKey(arrayField) && map.get(arrayField) instanceof List) {
	                    List<Map<String, Object>> array = (List<Map<String, Object>>) map.get(arrayField);
	                    Optional<String> sortKey = candidateSortKeys.stream()
	                            .filter(key -> !array.isEmpty() && array.get(0).containsKey(key))
	                            .findFirst();

	                    if (sortKey.isPresent()) {
	                        String keyToSortBy = sortKey.get();
	                        array.sort(Comparator.comparing(item -> Objects.toString(item.getOrDefault(keyToSortBy, ""), "")));
	                        map.put(arrayField, array);
	                    }
	                }
	            }

	            // Recursively normalize nested structures
	            for (Map.Entry<String, Object> entry : map.entrySet()) {
	                if (entry.getValue() instanceof Map || entry.getValue() instanceof List) {
	                    normalizeJsonResponse(entry.getValue(), objectMapper);
	                }
	            }
	        } else if (json instanceof List) {
	            List<Object> list = (List<Object>) json;
	            for (int i = 0; i < list.size(); i++) {
	                Object item = list.get(i);
	                if (item instanceof Map || item instanceof List) {
	                    normalizeJsonResponse(item, objectMapper);
	                }
	            }
	        }
	    }

	    private static String normalizeErrorMessage(String message) {
	        // Customize normalization logic if needed
	        return message.trim().toLowerCase();
	    }
	

	    private static String normalizeErrorMessageKey(String errorMessage) {
			return Arrays.stream(errorMessage.split(";")).map(String::trim).sorted().collect(Collectors.joining("; "));
		}

	private static void removeIgnoredFields(Map<String, Object> map, String[] fieldsToIgnore,
			Map<String, String[]> specificValuesToIgnore) {
		// Collect keys to remove
		List<String> keysToRemove = new ArrayList<>();
		// Iterate through the map's entries
		for (Map.Entry<String, Object> entry : map.entrySet()) {
			String key = entry.getKey();
			Object value = entry.getValue();
			// Mark keys for removal if in fieldsToIgnore
			for (String field : fieldsToIgnore) {
				if (key.equals(field)) {
					keysToRemove.add(key); // Mark for removal
					break; // Exit early since the key matches
				}
			}
			// Handle specific nested fields dynamically

			if (specificValuesToIgnore.containsKey(key) && value instanceof String) {
				String stringValue = (String) value;
				try {
					// Parse the string value as JSON
					ObjectMapper objectMapper = new ObjectMapper();
					JsonNode jsonNode = objectMapper.readTree(stringValue);
					if (jsonNode.isObject()) {
						ObjectNode objectNode = (ObjectNode) jsonNode;
						// Remove or replace fields specified in specificValuesToIgnore
						for (String fieldToModify : specificValuesToIgnore.get(key)) {
							if (objectNode.has(fieldToModify)) {
								objectNode.put(fieldToModify, ""); // Replace field value with an empty string
							}
						}
						// Update the map with the modified JSON string
						map.put(key, objectNode.toString());
					}
				} catch (IOException e) {
					// If value is not valid JSON, log the issue and continue
					LOGGER.warn("Value for key '" + key + "' is not a valid JSON string: " + e.getMessage());
				}
			}
			// Recursively process nested maps
			if (value instanceof Map) {
				removeIgnoredFields((Map<String, Object>) value, fieldsToIgnore, specificValuesToIgnore);
			}
			// Recursively process nested lists
			if (value instanceof Iterable) {
				for (Object item : (Iterable<?>) value) {
					if (item instanceof Map) {
						removeIgnoredFields((Map<String, Object>) item, fieldsToIgnore, specificValuesToIgnore);
					}
				}
			}
		}
		// Remove all keys marked for removal
		for (String key : keysToRemove) {
			map.remove(key);
		}
	}
	
	



	private static void findDifferences(Map<String, Object> expectedResult, Map<String, Object> actualResult) {
		for (String key : expectedResult.keySet()) {
			if (!actualResult.containsKey(key)) {
				LOGGER.info("Key '" + key + "' is missing in the second JSON object.");
			} else {
				areEquals(expectedResult, actualResult, key);
			}
		}

		for (String key : actualResult.keySet()) {
			if (!expectedResult.containsKey(key)) {
				LOGGER.info("Key '" + key + "' is missing in the first JSON object.");
			}
		}
	}

	private static void areEquals(Map<String, Object> expectedResult, Map<String, Object> actualResult, String key) {

		Object expectedValue = expectedResult.get(key);
		Object actualValue = actualResult.get(key);
		SoftAssert softAssert = new SoftAssert();

		if (expectedValue != null && actualValue != null) {
			if (!expectedValue.equals(actualValue)) {
				LOGGER.info("Values for key '" + key + "' are different: Expected JSON: " + expectedValue
						+ ", Actual JSON: " + actualValue);
				softAssert.assertEquals(actualValue, expectedValue, "Values for key '" + key + "' are different.");
			}
		} else if (expectedValue == null && actualValue != null) {
			LOGGER.info(
					"Values for key '" + key + "' are different: Expected JSON is null, Actual JSON: " + actualValue);
			softAssert.assertEquals(actualValue, expectedValue,
					"Values for key '" + key + "' are different: Expected JSON is null.");
		} else if (expectedValue != null && actualValue == null) {
			LOGGER.info("Values for key '" + key + "' are different: Expected JSON: " + expectedValue
					+ ", Actual JSON is null.");
			softAssert.assertEquals(actualValue, expectedValue,
					"Values for key '" + key + "' are different: Actual JSON is null.");
		}

		softAssert.assertAll();

	}

	/**
	 * Checks if the given content is XML.
	 */
	private static boolean isXmlContent(String content) {
		try {
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			builder.parse(new InputSource(new StringReader(content)));
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * Validates the XML content.
	 */
	private static void validateXml(String expectedXml, String actualXml)
			throws ParserConfigurationException, IOException, SAXException {
		// Parse expected XML
		Document expectedDocument = parseXml(expectedXml);

		// Parse actual XML
		Document actualDocument = parseXml(actualXml);

		// Compare XML Documents (implementation depends on specific requirements)
		if (!expectedDocument.isEqualNode(actualDocument)) {
			LOGGER.info("Differences found in XML:");
			LOGGER.info("Expected XML: " + expectedXml);
			LOGGER.info("Actual XML: " + actualXml);
			Assert.fail("XML contents do not match.");
		} else {
			LOGGER.info("XML validation successful: Both documents are identical.");
		}
	}

	/**
	 * Parses a string into an XML Document.
	 */
	private static Document parseXml(String xmlContent) throws ParserConfigurationException, IOException, SAXException {
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		DocumentBuilder builder = factory.newDocumentBuilder();
		return builder.parse(new InputSource(new StringReader(xmlContent)));
	}
	
	@SuppressWarnings("unchecked")
	public static void sortJsonByKeysDeep(Object node, List<String> sortKeys) {
	    if (node instanceof Map<?, ?>) {
	        Map<String, Object> map = (Map<String, Object>) node;
	        for (Map.Entry<String, Object> entry : map.entrySet()) {
	            Object value = entry.getValue();

	            if (value instanceof List<?>) {
	                List<Object> list = (List<Object>) value;

	                if (!list.isEmpty() && list.get(0) instanceof Map) {
	                    Map<String, Object> firstItem = (Map<String, Object>) list.get(0);

	                    for (String sortKey : sortKeys) {
	                        if (firstItem.containsKey(sortKey)) {
	                            list.sort(Comparator.comparing(o -> {
	                                Object val = ((Map<String, Object>) o).get(sortKey);
	                                return val != null ? val.toString() : "";
	                            }));
	                            break; // Sort using the first matching key
	                        }
	                    }

	                    for (Object item : list) {
	                        sortJsonByKeysDeep(item, sortKeys);
	                    }
	                }
	            } else {
	                sortJsonByKeysDeep(value, sortKeys);
	            }
	        }
	    } else if (node instanceof List<?>) {
	        for (Object item : (List<Object>) node) {
	            sortJsonByKeysDeep(item, sortKeys);
	        }
	    }
	}

}
