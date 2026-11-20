package BlackChain;




import java.util.*;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.*;

      public class SendMail
      {
    	  public static void main(String args[]) {
    		 

    	        Properties props = new Properties();  
    	        props.put("mail.smtp.host", "smtp.gmail.com");  
    	        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
    	        props.put("mail.smtp.auth", "true");  
    	        props.put("mail.debug", "true");  
    	        props.put("mail.smtp.port", 587);  
    	        props.put("mail.smtp.socketFactory.port", 25);  
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

    	            Transport transport = mailSession.getTransport();

    	            MimeMessage message = new MimeMessage(mailSession);

    	            message.setSubject("Secret Key");
    	            message.setFrom(new InternetAddress("chandan.cbk@gmail.com"));
    	            String []to = new String[]{"chandan.cbk@gmail.com"};
    	            message.addRecipient(Message.RecipientType.TO, new InternetAddress("chandan.cbk@gmail.com"));
    	            String body = "fasd";
    	            message.setContent(body,"text/html");
    	            transport.connect();

    	            transport.sendMessage(message,message.getRecipients(Message.RecipientType.TO));
    	            transport.close();
    	        } catch (Exception exception) {

    	        }
    	    }
   }