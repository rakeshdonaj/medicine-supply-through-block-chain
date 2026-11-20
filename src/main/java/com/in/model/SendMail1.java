package com.in.model;

import java.util.*;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.*;

      public class SendMail1
      {
    	  public void sendTemplateEmail(String email,String data) {
    		 

    	        Properties props = new Properties();  
    	        props.put("mail.smtp.host", "smtp.gmail.com");  
    	        props.put("mail.smtp.ssl.trust", "*");    	        
    	        props.put("mail.debug", "true");  
    	        props.put("mail.smtp.port", 587); 
    	        props.put("mail.smtp.starttls.enable", "true");
    	        props.put("mail.transport.protocol", "smtp");
    	    
    	        Session mailSession = null;

    	        mailSession = Session.getInstance(props,  
    	                new javax.mail.Authenticator() {  
    	            protected PasswordAuthentication getPasswordAuthentication() {  
    	                return new PasswordAuthentication("escortnry@gmail.com", "escortnry@123");  
    	            }  
    	        });  


    	        try {

    	            
    	        	Transport transport = mailSession.getTransport("smtps");

    	            MimeMessage message = new MimeMessage(mailSession);

    	            message.setSubject("SECRET KEY");
    	            message.setFrom(new InternetAddress("escortnry@gmail.com"));
    	            String []to = new String[]{email};
    	            message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
    	           String body = data;
    	            message.setContent(body,"text/html");
    	            transport.connect ("smtp.gmail.com", 587, "escortnry@gmail.com", "escortnry@123");
    	            transport.sendMessage(message, message.getAllRecipients());
    	            transport.close();

    	            transport.sendMessage(message,message.getRecipients(Message.RecipientType.TO));
    	            transport.close();
    	        } catch (Exception exception) {

    	        }
    	    }
    	  
    	  public static void main(String args[])
    	  {
    		  SendMail1 s = new SendMail1();
    		  s.sendTemplateEmail("chandan.cbk@gmail.com", "123");
    	  }
   }