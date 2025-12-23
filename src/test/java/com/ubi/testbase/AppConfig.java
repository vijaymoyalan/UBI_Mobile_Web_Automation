package com.ubi.testbase;

import net.serenitybdd.core.Serenity;
import net.thucydides.model.util.EnvironmentVariables;

public class AppConfig {
	private static EnvironmentVariables environmentVariables = Serenity.environmentVariables();

	public static String getBaseUrl() {
		return environmentVariables.getProperty("webdriver.base.url");
	}

	public static String getBrowser() {
		return environmentVariables.getProperty("webdriver.driver");
	}

	public static String getRestUrl(String env) {
		return environmentVariables.getProperty("rest.base." + env);
	}

	public static String getdbpId() {
		return environmentVariables.getProperty("rest.dbp-id" + environmentVariables.getProperty("environment"));
	}

	/*
	 * public static String getSITdbpID() { return
	 * environmentVariables.getProperty("rest.dbp-idsit" +
	 * environmentVariables.getProperty("environment")); } public static String
	 * getSITdbpSecret() { return
	 * environmentVariables.getProperty("rest.dbp-secretsit" +
	 * environmentVariables.getProperty("environment")); }
	 */
	public static String getdbpSecret() {
		return environmentVariables.getProperty("rest.dbp-secret" + environmentVariables.getProperty("environment"));
	}

	public static String getEnvironment() {
		return environmentVariables.getProperty("environment");
	}

	public static String getUserName() {
		return environmentVariables.getProperty("username");
	}

	public static String getmbloginFolder() {
		return environmentVariables.getProperty("mbloginFolder");
	}

	public static String getPassword() {
		return environmentVariables.getProperty("password");
	}

	public static String senderEmail() {
		return environmentVariables.getProperty("senderemail");
	}

	public static String rsaToken() {
		return environmentVariables.getProperty("rsatoken");
	}

	public static String xapikey() {
		return environmentVariables.getProperty("xapikey");
	}

	public static String ignoredFields() {
		return environmentVariables.getProperty("ignoredFields");
	}
	
	public static String sortKeys() {
		return environmentVariables.getProperty("json.sort.keys");
	}
	
	public static String testCycleKey() {
		return environmentVariables.getProperty("testcyclekey");
	}
	
//	Below config is for RIB username
	public static String getRIBUsername() {
		return environmentVariables.getProperty("rib.username");
	}
//	Below config is for RIB password
	public static String getRIBPassword() {
		return environmentVariables.getProperty("rib.password");
	}

	// Below app config for Assisted portal
	public static String getRestAssistedUrl(String env) {
		return environmentVariables.getProperty("rest.base.sit." + env);
	}
//	public static String getRestUrlCMB(String env) {
//		return environmentVariables.getProperty("rest.base.cmb." + env);
//	}
//	public static String getdbpIdCMB() {
//		return environmentVariables.getProperty("rest.cmb.dbp-id" + environmentVariables.getProperty("environment"));
//	}
//	public static String getdbpSecretCMB() {
//		return environmentVariables.getProperty("rest.cmb.dbp-secret" + environmentVariables.getProperty("environment"));
//	}
}