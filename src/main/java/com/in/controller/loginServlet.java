package com.in.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.in.model.queryData;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String username = req.getParameter("username");
		String password= req.getParameter("password");
		String utype = req.getParameter("utype");
		
		if(utype.equals("Admin"))
		{
			if(username.equals("admin") && password.equals("admin"))
			{
				resp.sendRedirect("AdminHome.jsp");
			}
		}
		else
		if(utype.equals("Manufacture"))
		{
			 String str= new queryData().login(username, password,"Manufacture");
			if(str != null)
			{
				String[] mystr = str.split(",");
				HttpSession ses = req.getSession();
				ses.setAttribute("mname", mystr[0]);
				ses.setAttribute("memail", mystr[1]);
				resp.sendRedirect("ManufactureHome.jsp");
			}
			else
			{
				resp.sendRedirect("error.jsp");
			}
		}	
		else
		if(utype.equals("Distributor"))
		{
			 String str= new queryData().login(username, password,"Distributor");
			if(str != null)
			{
				String[] mystr = str.split(",");
				HttpSession ses = req.getSession();
				ses.setAttribute("dname", mystr[0]);
				ses.setAttribute("demail", mystr[1]);
				resp.sendRedirect("DistributorHome.jsp");
			}	
			else
			{
				resp.sendRedirect("error.jsp");
			}
		}
		else
		if(utype.equals("Patient"))
		{
			String str= new queryData().login(username, password,"Patient");
			if(str != null)
			{
				String[] mystr = str.split(",");
				HttpSession ses = req.getSession();
				ses.setAttribute("pname", mystr[0]);
				ses.setAttribute("pemail", mystr[1]);
				resp.sendRedirect("PatientHome.jsp");
			}	
			else
			{
				resp.sendRedirect("error.jsp");
			}
		}
		else
		if(utype.equals("Hospital"))
		{
			 String str= new queryData().login(username, password,"Hospital");
			if(str != null)
			{
				String[] mystr = str.split(",");
				HttpSession ses = req.getSession();
				ses.setAttribute("hname", mystr[0]);
				ses.setAttribute("hemail", mystr[1]);
				resp.sendRedirect("HospitalHome.jsp");
			}	
			else
			{
				resp.sendRedirect("error.jsp");
			}
		}
		else
		{
			resp.sendRedirect("error.jsp");
		}
	}

}
