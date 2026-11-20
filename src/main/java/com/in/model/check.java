package com.in.model;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class check {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy");  
		LocalDateTime now = LocalDateTime.now(); 
		System.out.println(dtf.format(now));
		
		DateTimeFormatter dtf1 = DateTimeFormatter.ofPattern("HH:mm:ss");  
		LocalDateTime now1 = LocalDateTime.now(); 
		System.out.println(dtf1.format(now1));
		
	}

}
