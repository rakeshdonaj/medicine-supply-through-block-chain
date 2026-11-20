package com.in.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.in.model.SMSNew;
import com.in.model.dbConnect;

@WebServlet("/sendKeytoHospital")
public class sendKeytoHospital  extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String drugName	= req.getParameter("drugName");
		String hosEmail = req.getParameter("hosEmail");
		String dname = req.getParameter("dname");
		try
		{
			Connection con = dbConnect.connect();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select mobileNo from registration where emailId='"+hosEmail+"' and userType='Hospital'");
			rs.next();
			String hosMob = rs.getString(1);
			
			Statement st1 = con.createStatement();
			ResultSet rs1 = st1.executeQuery("select publicKey from iteminfo where drugName='"+drugName+"'");
			rs1.next();
			String secKey = rs1.getString(1);
			
			SMSNew s = new SMSNew();
			s.sendms(hosMob, "Secret Key For Drugname "+drugName+" is "+secKey+" from the Distributor "+dname);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
