package com.in.model;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.Signature;

import javax.crypto.Cipher;
public class Encryption {

	
	public static String encData(BeanItem bean) throws Exception {
		Signature sign = Signature.getInstance("SHA256withRSA");
	      
	      //Creating KeyPair generator object
	      KeyPairGenerator keyPairGen = KeyPairGenerator.getInstance("RSA");
	      
	      //Initializing the key pair generator
	      keyPairGen.initialize(2048);
	      
	      //Generating the pair of keys
	      KeyPair pair = keyPairGen.generateKeyPair();      
		
	      //Creating a Cipher object
	      Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
	        
	      //Initializing a Cipher object
	      cipher.init(Cipher.ENCRYPT_MODE, pair.getPublic());
		  
	      //Adding data to the cipher
	      byte[] input = bean.getDrugName().getBytes();	  
	      cipher.update(input);
		  
	      //encrypting the data
	      byte[] cipherText = cipher.doFinal();	 
	      String encStr = new String(cipherText, "UTF8");
	      return encStr;
	}

}
