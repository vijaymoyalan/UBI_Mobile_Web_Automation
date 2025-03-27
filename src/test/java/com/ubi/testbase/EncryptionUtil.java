package com.ubi.testbase;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.Base64;
import java.util.Date;
import java.util.Map;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.ubi.base.ObjectIntialization;

import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.auth0.jwt.JWT;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import net.serenitybdd.core.Serenity;
import net.serenitybdd.rest.SerenityRest;

public class EncryptionUtil {

	private static final Charset UTF_8 = StandardCharsets.UTF_8;
	private static final String CIPHER_ALGORITHM = "AES/GCM/NoPadding";
	private static final String FACTORY_INSTANCE = "PBKDF2WithHmacSHA512"; // Password-based-Key-Derivative-Function +
																			// Keyed-Hash Message Authentication Code
	private static final int TAG_LENGTH = 16;
	private static final int IV_LENGTH = 12;
	private static final int SALT_LENGTH = 16;
	private static final int KEY_LENGTH = 32;
	private static final int ITERATIONS = 1000;
	
		   
	private static SecretKey getAESKeyFromPassword(char[] password, byte[] salt)
			throws NoSuchAlgorithmException, InvalidKeySpecException {
		SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA512");
		KeySpec spec = new PBEKeySpec(password, salt, ITERATIONS, KEY_LENGTH * 8);
		return new SecretKeySpec(factory.generateSecret(spec).getEncoded(), "AES");
	}

	public static String decrypt(String cipherContent, String masterKey) throws Exception {
		try {
			byte[] decode = Base64.getDecoder().decode(cipherContent.getBytes(UTF_8));
			ByteBuffer byteBuffer = ByteBuffer.wrap(decode);
			byte[] salt = new byte[SALT_LENGTH];
			byteBuffer.get(salt);
			byte[] iv = new byte[IV_LENGTH];
			byteBuffer.get(iv);
			return decryptData(masterKey, byteBuffer, salt, iv);
		} catch (Exception e) {
			throw new Exception(e);
		}
	}

	private static String decryptData(String masterKey, ByteBuffer byteBuffer, byte[] salt, byte[] iv)
			throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeySpecException, InvalidKeyException,
			InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {
		byte[] content = new byte[byteBuffer.remaining()];
		byteBuffer.get(content);
		Cipher cipher = Cipher.getInstance(CIPHER_ALGORITHM);
		SecretKey aesKeyFromPassword = getAESKeyFromPassword(masterKey.toCharArray(), salt);
		cipher.init(Cipher.DECRYPT_MODE, aesKeyFromPassword, new GCMParameterSpec(TAG_LENGTH * 8, iv));
		byte[] plainText = cipher.doFinal(content);
		return new String(plainText, UTF_8);
	}

	public static String encrypt(String plainMessage, String masterKey) {
		try {
			byte[] salt = getRandomNonce(SALT_LENGTH);

			SecretKey secretKey = getSecretKey(masterKey, salt);
			byte[] iv = getRandomNonce(IV_LENGTH);
			return encryptData(plainMessage, salt, secretKey, iv);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	private static String encryptData(String plainMessage, byte[] salt, SecretKey secretKey, byte[] iv)
			throws InvalidKeyException, InvalidAlgorithmParameterException, NoSuchPaddingException,
			NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException {
		Cipher cipher = initCipher(Cipher.ENCRYPT_MODE, secretKey, iv);
		byte[] encryptedMessageByte = cipher.doFinal(plainMessage.getBytes(UTF_8));

		byte[] cipherByte = ByteBuffer.allocate(salt.length + iv.length + encryptedMessageByte.length).put(salt).put(iv)
				.put(encryptedMessageByte).array();
		return Base64.getEncoder().encodeToString(cipherByte);
	}

	public static byte[] getRandomNonce(int length) {
		byte[] nonce = new byte[length];
		new SecureRandom().nextBytes(nonce);
		return nonce;
	}

	public static SecretKey getSecretKey(String password, byte[] salt)
			throws NoSuchAlgorithmException, InvalidKeySpecException {
		KeySpec spec = new PBEKeySpec(password.toCharArray(), salt, ITERATIONS, KEY_LENGTH * 8);

		SecretKeyFactory factory = SecretKeyFactory.getInstance(FACTORY_INSTANCE);
		return new SecretKeySpec(factory.generateSecret(spec).getEncoded(), "AES");
	}

	private static Cipher initCipher(int mode, SecretKey secretKey, byte[] iv) throws InvalidKeyException,
			InvalidAlgorithmParameterException, NoSuchPaddingException, NoSuchAlgorithmException {
		Cipher cipher = Cipher.getInstance(CIPHER_ALGORITHM);
		cipher.init(mode, secretKey, new GCMParameterSpec(TAG_LENGTH * 8, iv));
		return cipher;
	}


	public static boolean isTokenExpired(String token) {
        try {
            String[] splitToken = token.split("\\.");
            String payload = new String(Base64.getDecoder().decode(splitToken[1]));
            ObjectMapper objectMapper = new ObjectMapper();
            Map<String, Object> payloadMap = objectMapper.readValue(payload, Map.class);

            long expiryTimeInSeconds = (Integer) payloadMap.get("exp");
            long currentTimeInSeconds = new Date().getTime() / 1000;

            return currentTimeInSeconds >= expiryTimeInSeconds;
        } catch (Exception e) {
            e.printStackTrace();
            return true; // Assume the token is expired or invalid if there's an error
        }
    }

	public static String formatStringforHeaders(String formatString) {
		if (formatString.length() > 1) {
			// Remove the first and last characters
			formatString = formatString.substring(1, formatString.length() - 1);
		} else {
			// Handle the case where the string is too short
			formatString = ""; // Or handle according to your needs
		}
		return formatString;
	}
	
	
   

	
	
}