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

@WebServlet("/sendKeytoDist")
public class sendKeytoDist extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String drugName	= req.getParameter("drugName");
		String distEmail = req.getParameter("distEmail");
		String mname = req.getParameter("mname");
		try
		{
			Connection con = dbConnect.connect();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select mobileNo from registration where emailId='"+distEmail+"' and userType='Distributor'");
			rs.next();
			String distMob = rs.getString(1);
			
			Statement st1 = con.createStatement();
			ResultSet rs1 = st1.executeQuery("select publicKey from iteminfo where drugName='"+drugName+"'");
			rs1.next();
			String secKey = rs1.getString(1);
			
			SMSNew s = new SMSNew();
			s.sendms(distMob, "Secret Key For Drugname "+drugName+" is "+secKey+" from the Manufacture "+mname);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
