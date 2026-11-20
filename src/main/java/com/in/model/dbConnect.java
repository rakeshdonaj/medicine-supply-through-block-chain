package com.in.model;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbConnect {
	
	public static Connection connect()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			String host = System.getProperty("db.host", "localhost");
			con=DriverManager.getConnection("jdbc:mysql://"+host+"/medicine_scm?useSSL=false&allowPublicKeyRetrieval=true","root","root");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
}
