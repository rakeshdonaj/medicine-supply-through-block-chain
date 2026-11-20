
package com.in.model;

import java.security.*;
import java.security.SecureRandom;

import javax.crypto.SecretKey;

public class KeyGenerator {

	public static void main(String args[])
	{
		new SecureRandomKeyGen();
		String secretKey = SecureRandomKeyGen.keyGen();
		System.out.println(secretKey);
	}
}
