package com.in.controller;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.in.model.SMSNew;
import com.in.model.dbConnect;

@WebServlet("/forgotPassword")
public class forgotPassword extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String utype = req.getParameter("utype");
		String regEmail = req.getParameter("regEmail");
		String regMobile = req.getParameter("regMobile");
		
		try
		{
			Connection con = dbConnect.connect();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from registration where emailId='"+regEmail+"' and mobileNo='"+regMobile+"' and userType='"+utype+"'");
			if(rs.next())
			{
				SMSNew s = new SMSNew();
				s.sendms(regMobile, "Your Password is "+rs.getString(4));
				resp.sendRedirect("index.jsp");
			}
			else
			{
				resp.sendRedirect("errorPassword.jsp");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
