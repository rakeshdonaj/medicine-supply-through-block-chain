package com.in.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.in.model.queryData;

@WebServlet("/shareItemManf")
public class shareItemManf extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String drugName = req.getParameter("drugName");
		String distributorName = req.getParameter("distributorName");
		String quantity = req.getParameter("quantity");
		String transactionAmount = req.getParameter("transactionAmount");
		
	    HttpSession ses = req.getSession();
	    String userEmail = (String) ses.getAttribute("memail");
	    
	    String fpath=getServletContext().getRealPath(File.separator);
	    File f1 = new File(fpath+"\\QrCode\\"+userEmail+"-"+drugName+".png");
	    
	    File f2 = new File(fpath+"\\EncryptedQrCode\\"+userEmail+"-"+drugName+".png");
	    
	    File f3 = new File(fpath+"\\temp\\"+userEmail+"-"+drugName+".txt");	    
	    
	    
	    new queryData().shareItemManf(drugName, distributorName, quantity, transactionAmount, userEmail, f1.toString(),fpath,f2.toString(),f3.toString());
	    resp.sendRedirect("viewItemsManf.jsp");
	}

}
