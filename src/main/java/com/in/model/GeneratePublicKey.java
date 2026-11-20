package com.in.model;

import java.security.KeyPairGenerator;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.KeyFactory;
import java.security.spec.EncodedKeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.NoSuchAlgorithmException;

public class GeneratePublicKey {

     public static byte[] generateKeys(String keyAlgorithm, int numBits) {
    	 
    	 byte[] str = null;
          try {
               // Get the public/private key pair
               KeyPairGenerator keyGen = KeyPairGenerator.getInstance(keyAlgorithm);
               keyGen.initialize(numBits);
               KeyPair keyPair = keyGen.genKeyPair();
               PrivateKey privateKey = keyPair.getPrivate();
               PublicKey publicKey = keyPair.getPublic();

               //System.out.println("\n" + "Generating key/value pair using " + privateKey.getAlgorithm() + " algorithm");

               // Get the bytes of the public and private keys
               byte[] privateKeyBytes = privateKey.getEncoded();
               byte[] publicKeyBytes = publicKey.getEncoded();

               // Get the formats of the encoded bytes
               String formatPrivate = privateKey.getFormat(); // PKCS#8
               String formatPublic = publicKey.getFormat(); // X.509

               // The bytes can be converted back to public and private key objects
               KeyFactory keyFactory = KeyFactory.getInstance(keyAlgorithm);
               EncodedKeySpec privateKeySpec = new PKCS8EncodedKeySpec(privateKeyBytes);
               PrivateKey privateKey2 = keyFactory.generatePrivate(privateKeySpec);

               EncodedKeySpec publicKeySpec = new X509EncodedKeySpec(publicKeyBytes);
               PublicKey publicKey2 = keyFactory.generatePublic(publicKeySpec);
               
          } catch (InvalidKeySpecException specException) {
               System.out.println("Exception");
               System.out.println("Invalid Key Spec Exception");
          } 
          catch (NoSuchAlgorithmException e) {
               System.out.println("Exception");
               System.out.println("No such algorithm: " + keyAlgorithm);
          }
		return str;

     }

}