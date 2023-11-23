package com.xhobbe.utils;

/**
 *
 * @author ADMIN
 */
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

public class Encode {

    public static String toSHA256(String password) {
        
        String base64Encoded = null;
        
        String salt = "xHobbe";
        
        password += salt;
        
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            
            byte[] hashedData = md.digest(password.getBytes("UTF-8"));
            
            base64Encoded = Base64.getEncoder().encodeToString(hashedData);
            
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        
        return base64Encoded;
    }
}
