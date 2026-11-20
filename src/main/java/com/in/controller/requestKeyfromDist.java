package com.in.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.in.model.queryData;

@WebServlet("/requestKeyfromDist")
public class requestKeyfromDist extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String drugName  = req.getParameter("drugName");
		String manfEmail = req.getParameter("manfEmail");
		
		 HttpSession ses = req.getSession();
		 String distEmail = (String) ses.getAttribute("demail");
		 String distName = (String) ses.getAttribute("dname");
		 
		 new queryData().requestKeyfromDist(drugName, manfEmail, distEmail, distName);
		 
	}

	

}
