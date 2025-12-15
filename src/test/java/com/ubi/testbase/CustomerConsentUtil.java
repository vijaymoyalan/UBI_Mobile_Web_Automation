//package com.ubi.testbase;
//
//import java.io.BufferedReader;
//import java.io.IOException;
//import java.io.InputStreamReader;
//import java.io.OutputStream;
//import java.net.HttpURLConnection;
//import java.net.URL;
//import java.util.Optional;
//import java.util.regex.Matcher;
//import java.util.regex.Pattern;
//
//import org.openqa.selenium.WebDriver;
//import org.openqa.selenium.devtools.DevTools;
//
//
//public class CustomerConsentUtil {
//
//    private final WebDriver webDriver;
//    private final DevTools devTools;
//
//    private boolean captureEnabled = false;
//
//    private String apiUrl;
//    private String dbpId;
//    private String dbpSecret;
//
//    private static final Pattern UUID_PATTERN = Pattern.compile(
//            "[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}"
//    );
//
//    public CustomerConsentUtil(WebDriver driver, DevTools devTools) {
//        this.webDriver = driver;
//        this.devTools = devTools;
//
//        this.apiUrl = "https://ras.unionbankofindia.bank.in/sit/dbp/ast/mpgw/app/web/customer/api/v1/consent/approve";
//        this.dbpId = "a157e0b96952ec8028423b6fa145858a";
//        this.dbpSecret = "ed6af6cf78d5b232963fc308f3e965f6";
//    }
//
//    public void startConsentCapture() {
//        captureEnabled = true;
//
//        System.out.println("CustomerConsentUtil: Consent capture started");
//
//        enableNetworkCapture();
//        attachNetworkListener();
//    }
//
//    public void stopConsentCapture() {
//        captureEnabled = false;
//        System.out.println("CustomerConsentUtil: Consent capture stopped");
//    }
//
//    public void setApiCredentials(String apiUrl, String id, String secret) {
//        this.apiUrl = apiUrl;
//        this.dbpId = id;
//        this.dbpSecret = secret;
//    }
//
//    private void enableNetworkCapture() {
//        devTools.createSession();
//        devTools.send(Network.enable(Optional.empty(), Optional.empty(), Optional.empty()));
//    }
//
//    private void attachNetworkListener() {
//
//        devTools.addListener(Network.responseReceived(), response -> {
//
//            if (!captureEnabled) return;
//
//            String url = response.getResponse().getUrl();
//
//            if (url.contains("saveConsent")) {
//                try {
//                    RequestId requestId = response.getRequestId();
//                    String body = devTools.send(Network.getResponseBody(requestId)).getBody();
//
//                    Matcher matcher = UUID_PATTERN.matcher(body);
//
//                    if (matcher.find()) {
//                        String consentRequestId = matcher.group();
//                        System.out.println("CustomerConsentUtil: Consent ID found → " + consentRequestId);
//
//                        approveConsent(consentRequestId);
//
//                        captureEnabled = false;
//                    }
//
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }
//            }
//        });
//    }
//
//    private void approveConsent(String consentRequestId) throws IOException {
//
//        System.out.println("CustomerConsentUtil: Approving Consent ID → " + consentRequestId);
//
//        HttpURLConnection connection = (HttpURLConnection) new URL(apiUrl).openConnection();
//
//        connection.setRequestMethod("POST");
//        connection.setRequestProperty("dbp-id", dbpId);
//        connection.setRequestProperty("dbp-secret", dbpSecret);
//        connection.setRequestProperty("Content-Type", "application/json; utf-8");
//        connection.setRequestProperty("Accept", "application/json");
//        connection.setDoOutput(true);
//
//        String jsonBody = "{\"consentRequestId\": \"" + consentRequestId + "\"}";
//
//        try (OutputStream os = connection.getOutputStream()) {
//            os.write(jsonBody.getBytes("utf-8"));
//        }
//
//        try (BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()))) {
//            while (in.readLine() != null) {}
//        }
//
//        System.out.println("CustomerConsentUtil: Consent approval completed");
//        connection.disconnect();
//    }
//}
//
