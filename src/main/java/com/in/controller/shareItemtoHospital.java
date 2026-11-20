package com.in.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.in.model.dbConnect;
import com.in.model.queryData;

@WebServlet("/shareItemtoHospital")
public class shareItemtoHospital extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String drugName = req.getParameter("drugName");
		String hospitalName = req.getParameter("hospitalName");
		String quantity = req.getParameter("quantity");
		String transactionAmount = req.getParameter("transactionAmount");
		
		HttpSession ses = req.getSession();
		String userEmail = (String) ses.getAttribute("demail");
		String dname = (String)ses.getAttribute("dname");
		    
		String fpath=getServletContext().getRealPath(File.separator);
		File f1 = new File(fpath+"\\HospitalQrCode\\"+userEmail+"-"+drugName+".png");
		
		File f2 = new File(fpath+"\\EncryptedHospitaltQrCode\\"+userEmail+"-"+drugName+".png");
		
		 File f3 = new File(fpath+"\\temp\\"+userEmail+"-"+drugName+".txt");	
		 
	    new queryData().shareItemtoHospital(drugName, hospitalName, quantity, transactionAmount, userEmail, f1.toString(),fpath,f2.toString(),f3.toString());
	    
	    try
	    {
	    	Connection con = dbConnect.connect();
		    Statement st = con.createStatement();
		    ResultSet rs = st.executeQuery("select quantity from shareiteminfo where drugName='"+drugName+"' and distributorName='"+dname+"'");
		    rs.next();
		    int qun = Integer.parseInt(rs.getString(1));
		    int qun1 = Integer.parseInt(quantity);
		    int tot = qun - qun1;
		    String str = String.valueOf(tot);
		    Statement st1 = con.createStatement();
		    st1.executeUpdate("update shareiteminfo set quantity='"+str+"' where drugName='"+drugName+"' and distributorName='"+dname+"'");
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    
	    
	    resp.sendRedirect("shareItemtoHospital.jsp");
	}

}
