package com.util;
import java.security.*;

public class SHA256Util {
	
	    public static String encryptPassword(String password) {
	        try {
	        	MessageDigest md = MessageDigest.getInstance("SHA-256");
	        	byte[] hashedBytes = md.digest(password.getBytes());
	        	StringBuilder sb = new StringBuilder();
	        	for(byte b: hashedBytes) {
	        		sb.append(String.format("%02x",b));
	        	}
	        	return sb.toString();
	        } catch(NoSuchAlgorithmException e) {
	        	throw new RuntimeException("Failed to hash: ", e);
	        }
	    }

	    public static boolean checkPassword(String password, String storedHash) {
	        String hashedPassword = encryptPassword(password);
	        return hashedPassword.equals(storedHash);
	    }
}