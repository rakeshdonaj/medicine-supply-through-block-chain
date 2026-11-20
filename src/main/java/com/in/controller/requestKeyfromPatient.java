package com.in.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.in.model.queryData;

@WebServlet("/requestKeyfromPatient")
public class requestKeyfromPatient extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String drugName  = req.getParameter("drugName");
		String distEmail = req.getParameter("distEmail");
		
		 HttpSession ses = req.getSession();
		 String pemail = (String) ses.getAttribute("pemail");
		 String pname = (String) ses.getAttribute("pname");
		 
		 new queryData().requestKeyfromPatient(drugName, distEmail, pemail, pname);
		 
		 
	}

}
