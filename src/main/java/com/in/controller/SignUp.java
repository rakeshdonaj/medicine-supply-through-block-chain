package com.in.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.in.model.queryData;

@WebServlet("/SignUp")
public class SignUp extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String userName = req.getParameter("username");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String mobileNo = req.getParameter("mobileNo");
		String location = req.getParameter("location");
		String utype = req.getParameter("utype");
		
		int x =  new queryData().reg(userName, email, password, mobileNo, location, utype);
		resp.sendRedirect("index.jsp");
	}

}
