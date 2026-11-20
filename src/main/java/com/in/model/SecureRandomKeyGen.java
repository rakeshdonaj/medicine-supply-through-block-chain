package com.in.model;




import org.apache.commons.lang3.RandomStringUtils;


 
public class SecureRandomKeyGen {
	
	public static String keyGen() {

  String secretKey = RandomStringUtils.random(32, false, true);
  secretKey = RandomStringUtils.random(16, 0, 20, true, true, "bj81G5RDED3DC6142kasok".toCharArray());

  return secretKey;

  
    }
}
