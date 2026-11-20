package com.in.model;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
public class SMSNew
{
	public static String retval = "";
	public static String SMSSender(String APIKey, String number, String text, String senderid,String channel ,String flashsms,String route)
	{
		String rsp = "";
		try 
		{
			// Construct The Post Data
			String data = URLEncoder.encode("APIKey", "UTF-8") + "=" + URLEncoder.encode(APIKey, "UTF-8");
			data += "&" + URLEncoder.encode("senderid", "UTF-8") + "=" + URLEncoder.encode(senderid, "UTF-8");
			data += "&" + URLEncoder.encode("channel", "UTF-8") + "=" + URLEncoder.encode(channel, "UTF-8");
			data += "&" + URLEncoder.encode("DCS", "UTF-8") + "=" + URLEncoder.encode("0", "UTF-8");
			data += "&" + URLEncoder.encode("flashsms", "UTF-8") + "=" + URLEncoder.encode(flashsms, "UTF-8");
			data += "&" + URLEncoder.encode("number", "UTF-8") + "=" + URLEncoder.encode(number, "UTF-8");
			data += "&" + URLEncoder.encode("text", "UTF-8") + "=" + URLEncoder.encode(text, "UTF-8");
			data += "&" + URLEncoder.encode("route", "UTF-8") + "=" + URLEncoder.encode(route, "UTF-8");
			String url1="http://smppsmshub.in/api/mt/SendSMS";
			url1+="?"+data;
			URL url=new URL(url1);
			URLConnection connection = url.openConnection();
			BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			StringBuilder sb = new StringBuilder();
			String line;
			while ((line = reader.readLine()) != null)
			{
			sb = sb.append(line);
			}
			rsp = sb.toString();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return rsp;
	}
	
	public void sendms(String mob,String data) 
	{
		String response = SMSSender("BmMadcFr20GF8aioFDXBKw", mob, data, "YUKTHA", "Trans" ,"0", "51");
		System.out.println(response +" == SMS Sent Successfully");
	}
	
	public static void main(String args[])
	{
		SMSNew s = new SMSNew();
		s.sendms("8431727960", "Hello");
	}
	
}