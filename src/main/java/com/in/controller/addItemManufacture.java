package com.in.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;

import com.in.model.GeneratePublicKey;
import com.in.model.SecureRandomKeyGen;
import com.in.model.queryData;
import com.oreilly.servlet.MultipartRequest;

@WebServlet("/addItemManufacture")
public class addItemManufacture extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String drugName= null;
		String location = null;
		String manufacDate = null;
		String expiryDate = null;
		String ingredients = null;
		String usage = null;
		String sideEffect = null;
		String approvedCertificate = null;
		String data;
		
		String fpath=getServletContext().getRealPath(File.separator);
		MultipartRequest multi= new MultipartRequest(req, fpath, 1024*1024*10);
		Enumeration en = multi.getParameterNames();
		while(en.hasMoreElements())
		{
			data=(String) en.nextElement();
			if(data.equals("drugName"))
			{
				drugName=multi.getParameter(data);
			}
			if(data.equals("location"))
			{
				location=multi.getParameter(data);
			}
			if(data.equals("manufacDate"))
			{
				manufacDate=multi.getParameter(data);
			}
			if(data.equals("expiryDate"))
			{
				expiryDate=multi.getParameter(data);
			}
			if(data.equals("ingredients"))
			{
				ingredients=multi.getParameter(data);
			}
			if(data.equals("usage"))
			{
				usage=multi.getParameter(data);
			}
			if(data.equals("sideEffect"))
			{
				sideEffect=multi.getParameter(data);
			}			
		}
		

		Enumeration en1=multi.getFileNames();
		while(en1.hasMoreElements())
		{
			String str=(String)en1.nextElement();
			if(str.equals("approvedCertificate"))
			{
				approvedCertificate=multi.getFile(str).getName();
			}			
		}
		
		File f1 = new File(fpath+approvedCertificate);
		File certPath = new File(fpath+"\\Certificate\\"+approvedCertificate);
	     try {
	    	    FileUtils.copyFile(f1, certPath);
	    	} catch (IOException e) {
	    	    e.printStackTrace();
	    	}
	     f1.delete();
	     
	     HttpSession ses = req.getSession();
	    String userEmail = (String) ses.getAttribute("memail");
	    
	    String secretKey = SecureRandomKeyGen.keyGen();    
	    new queryData().newItem(drugName, location, manufacDate, expiryDate, ingredients, usage, sideEffect, approvedCertificate,userEmail,secretKey);
		  resp.sendRedirect("addItemManf.jsp");
	}
}
