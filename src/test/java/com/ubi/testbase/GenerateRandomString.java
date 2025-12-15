// added by Vijay M for auto generated text

package com.ubi.testbase;

import java.security.SecureRandom;

public class GenerateRandomString {
	private static final String CHARACTERS = "abcdefghijklmnopqrstuvwxyz0123456789-";
    private static final SecureRandom random = new SecureRandom();

    // Reusable method
    public String generateRandomString(int length) {
        StringBuilder result = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            int index = random.nextInt(CHARACTERS.length());
            result.append(CHARACTERS.charAt(index));
        }
        System.out.println("Generated 6 digit text "+result);
        return result.toString();
    }
    
}
