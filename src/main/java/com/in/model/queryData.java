package com.in.model;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import BlackChain.FileSHA1Coded;
import BlackChain.split;

public class queryData {
	
	Connection con =null;
	Statement st =null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public int reg(String username,String emailId,String password,String mobile,String loc,String utype)
	{
		int x = 0;
		try
		{
			con=dbConnect.connect();
			String sql="insert into registration(userName,emailId,password,mobileNo,location,userType)values(?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, emailId);
			ps.setString(3, password);
			ps.setString(4, mobile);
			ps.setString(5, loc);
			ps.setString(6, utype);
			x=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return x;
	}
	
	public String login(String username, String password,String utype)
	{
		String manData = null;
		try
		{
			con=dbConnect.connect();
			String sql="select * from registration where emailId=? and password=? and userType=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, utype);
			rs=ps.executeQuery();
			if(rs.next())
			{
				String name= rs.getString(2);
				String email=rs.getString(3);
				manData= name+","+email;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return manData;
	}
	
	public int newItem(String drugName,String location,String mdate,String edate,String ingred,String usage,String sidefect,String certifcte,String email,String seckey)
	{
		int x = 0;
		try
		{
			con=dbConnect.connect();
			String sql="insert into iteminfo values(?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, drugName);
			ps.setString(2, location);
			ps.setString(3, mdate);
			ps.setString(4, edate);
			ps.setString(5, ingred);
			ps.setString(6, usage);
			ps.setString(7, sidefect);
			ps.setString(8, certifcte);
			ps.setString(9, email);			
			ps.setString(10, seckey);
			x=ps.executeUpdate();			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return x;
	}
	
	public int shareItemManf(String drugName,String distName, String quantity, String transAmt, String userEmail,String path, String fpath,String path1,String path2)
	{
		int x = 0;
		try
		{
			con=dbConnect.connect();
			String sql="insert into shareItemInfo values(?,?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, drugName);
			ps.setString(2, distName);
			ps.setString(3, quantity);
			ps.setString(4, transAmt);
			 
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy");  
			LocalDateTime now = LocalDateTime.now(); 
			String curDate = dtf.format(now);
			
			DateTimeFormatter dtf1 = DateTimeFormatter.ofPattern("HH:mm:ss");  
			LocalDateTime now1 = LocalDateTime.now(); 
			String curTime = dtf1.format(now1);			
			ps.setString(5, curDate);
			ps.setString(6, curTime);
			ps.setString(7, userEmail);			
			x=ps.executeUpdate();	
			
			Statement st = con.createStatement();
			rs=st.executeQuery("select * from iteminfo where drugName='"+drugName+"'");
			if(rs.next())
			{
				BeanItem bean =  new BeanItem();
				bean.setDrugName(drugName);
				bean.setLocation(rs.getString(2));
				bean.setmDate(rs.getString(3));
				bean.seteDate(rs.getString(4));
				bean.setIngredients(rs.getString(5));
				bean.setUsage(rs.getString(6));
				bean.setSideEffect(rs.getString(7));			
				bean.setQuantity(quantity);
				bean.setTransAmt(transAmt);
				bean.setTransDate(curDate);
				bean.setTransTime(curTime);
				bean.setCerFname("/Medical_SCM/Certificate/"+rs.getString(8));
				GenerateQRCode.sendDatatoQRCode(bean,path);
				String str = Encryption.encData(bean);
				GenerateQRCodeEnc.sendDatatoQRCode(str,path1);
				
				BufferedWriter writer = new BufferedWriter(new FileWriter(path2));
				writer.write(drugName+","+rs.getString(2)+","+rs.getString(3));
				writer.newLine();
				writer.write(rs.getString(4)+","+rs.getString(5)+","+rs.getString(6));
				writer.newLine();
				writer.write(rs.getString(7)+","+quantity+","+transAmt+","+curDate+","+curTime);				
				writer.close();
				
				split s = new split();
				s.splitData(path2);
				
				
				
				File file = new File(path2);
				
				FileSHA1Coded ff = new FileSHA1Coded();
				try 
				{
					String hashval = ff.genHash1("Blocks/", file.getName());
					String[] str1 = hashval.split(",");
					
					int pos = file.getName().lastIndexOf(".");
					String start = file.getName().substring(0, pos);
					
					int i=0;
					for(int j=2;j<=4;j++)
					{
						BufferedWriter w1 = new BufferedWriter(new FileWriter("Blocks/"+start+j+".txt",true));
						PrintWriter p1 = new PrintWriter(w1);
						w1.newLine();
						p1.write(str1[i]);
						p1.flush();
						i++;
					}
					
					String sql1 = "insert into distblock values(?,?,?,?,?,?,?,?,?)";
					PreparedStatement pr = con.prepareStatement(sql1);
					pr.setString(1, userEmail);
					pr.setString(2, drugName);
					pr.setString(3, start+"1.txt");
					pr.setString(4, start+"2.txt");
					pr.setString(5, start+"3.txt");
					pr.setString(6, str1[0]);
					pr.setString(7, str1[1]);
					pr.setString(8, str1[2]);
					FileSHA1Coded fileHash = new FileSHA1Coded();
					String hash=fileHash.sha1Code(path2);
					pr.setString(9, hash);
					pr.executeUpdate();
					
				} catch (NoSuchAlgorithmException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
				
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return x;
	}
	
	public int requestKeyfromDist(String drugName,String manfEmail,String distEmail,String distName)
	{
		int x = 0;
		try
		{
			con=dbConnect.connect();
			String sql="insert into requestKeyfromDist values(?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, drugName);
			ps.setString(2, manfEmail);
			ps.setString(3, distEmail);
			ps.setString(4, distName);		
			x=ps.executeUpdate();			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return x;
	}
	
	public int shareItemtoPatient(String drugName,String patientName, String quantity, String transAmt, String userEmail,String path, String fpath,String path1,String path2)
	{
		int x = 0;
		try
		{
			con=dbConnect.connect();
			String sql="insert into shareItemtoPatient values(?,?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, drugName);
			ps.setString(2, patientName);
			ps.setString(3, quantity);
			ps.setString(4, transAmt);
			 
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy");  
			LocalDateTime now = LocalDateTime.now(); 
			String curDate = dtf.format(now);
			
			DateTimeFormatter dtf1 = DateTimeFormatter.ofPattern("HH:mm:ss");  
			LocalDateTime now1 = LocalDateTime.now(); 
			String curTime = dtf1.format(now1);			
			ps.setString(5, curDate);
			ps.setString(6, curTime);
			ps.setString(7, userEmail);			
			x=ps.executeUpdate();	
			
			Statement st = con.createStatement();
			rs=st.executeQuery("select * from iteminfo where drugName='"+drugName+"'");
			if(rs.next())
			{
				BeanItem bean =  new BeanItem();
				bean.setDrugName(drugName);
				bean.setLocation(rs.getString(2));
				bean.setmDate(rs.getString(3));
				bean.seteDate(rs.getString(4));
				bean.setIngredients(rs.getString(5));
				bean.setUsage(rs.getString(6));
				bean.setSideEffect(rs.getString(7));			
				bean.setQuantity(quantity);
				bean.setTransAmt(transAmt);
				bean.setTransDate(curDate);
				bean.setTransTime(curTime);
				bean.setCerFname("/Medical_SCM/Certificate/"+rs.getString(8));
				GenerateQRCode.sendDatatoQRCode(bean,path);
				String str = Encryption.encData(bean);
				GenerateQRCodeEnc.sendDatatoQRCode(str,path1);
				
				BufferedWriter writer = new BufferedWriter(new FileWriter(path2));
				writer.write(drugName+","+rs.getString(2)+","+rs.getString(3));
				writer.newLine();
				writer.write(rs.getString(4)+","+rs.getString(5)+","+rs.getString(6));
				writer.newLine();
				writer.write(rs.getString(7)+","+quantity+","+transAmt+","+curDate+","+curTime);				
				writer.close();
				
				split s = new split();
				s.splitData(path2);
				
				
				
				File file = new File(path2);
				
				FileSHA1Coded ff = new FileSHA1Coded();
				
				try 
				{
					String hashval = ff.genHash1("Blocks/", file.getName());
					String[] str1 = hashval.split(",");
					
					int pos = file.getName().lastIndexOf(".");
					String start = file.getName().substring(0, pos);
					
					int i=0;
					for(int j=2;j<=4;j++)
					{
						BufferedWriter w1 = new BufferedWriter(new FileWriter("Blocks/"+start+j+".txt",true));
						PrintWriter p1 = new PrintWriter(w1);
						w1.newLine();
						p1.write(str1[i]);
						p1.flush();
						i++;
					}
					
					String sql1 = "insert into patientblock values(?,?,?,?,?,?,?,?,?)";
					PreparedStatement pr = con.prepareStatement(sql1);
					pr.setString(1, userEmail);
					pr.setString(2, drugName);
					pr.setString(3, start+"1.txt");
					pr.setString(4, start+"2.txt");
					pr.setString(5, start+"3.txt");
					pr.setString(6, str1[0]);
					pr.setString(7, str1[1]);
					pr.setString(8, str1[2]);
					FileSHA1Coded fileHash = new FileSHA1Coded();
					String hash=fileHash.sha1Code(path2);
					pr.setString(9, hash);
					pr.executeUpdate();
					
				} catch (NoSuchAlgorithmException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
				
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return x;
	}
	
	public int shareItemtoHospital(String drugName,String hospitalName, String quantity, String transAmt, String userEmail,String path, String fpath,String path1,String path2)
	{
		int x = 0;
		try
		{
			con=dbConnect.connect();
			String sql="insert into shareItemtoHospital values(?,?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, drugName);
			ps.setString(2, hospitalName);
			ps.setString(3, quantity);
			ps.setString(4, transAmt);
			 
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy");  
			LocalDateTime now = LocalDateTime.now(); 
			String curDate = dtf.format(now);
			
			DateTimeFormatter dtf1 = DateTimeFormatter.ofPattern("HH:mm:ss");  
			LocalDateTime now1 = LocalDateTime.now(); 
			String curTime = dtf1.format(now1);			
			ps.setString(5, curDate);
			ps.setString(6, curTime);
			ps.setString(7, userEmail);			
			x=ps.executeUpdate();	
			
			Statement st = con.createStatement();
			rs=st.executeQuery("select * from iteminfo where drugName='"+drugName+"'");
			if(rs.next())
			{
				BeanItem bean =  new BeanItem();
				bean.setDrugName(drugName);
				bean.setLocation(rs.getString(2));
				bean.setmDate(rs.getString(3));
				bean.seteDate(rs.getString(4));
				bean.setIngredients(rs.getString(5));
				bean.setUsage(rs.getString(6));
				bean.setSideEffect(rs.getString(7));			
				bean.setQuantity(quantity);
				bean.setTransAmt(transAmt);
				bean.setTransDate(curDate);
				bean.setTransTime(curTime);
				bean.setCerFname("/Medical_SCM/Certificate/"+rs.getString(8));
				GenerateQRCode.sendDatatoQRCode(bean,path);
				String str = Encryption.encData(bean);
				GenerateQRCodeEnc.sendDatatoQRCode(str,path1);
				
				BufferedWriter writer = new BufferedWriter(new FileWriter(path2));
				writer.write(drugName+","+rs.getString(2)+","+rs.getString(3));
				writer.newLine();
				writer.write(rs.getString(4)+","+rs.getString(5)+","+rs.getString(6));
				writer.newLine();
				writer.write(rs.getString(7)+","+quantity+","+transAmt+","+curDate+","+curTime);				
				writer.close();
				
				split s = new split();
				s.splitData(path2);
				
				
				File file = new File(path2);
				
				FileSHA1Coded ff = new FileSHA1Coded();
				try 
				{
					String hashval = ff.genHash1("Blocks/", file.getName());
					String[] str1 = hashval.split(",");
					
					int pos = file.getName().lastIndexOf(".");
					String start = file.getName().substring(0, pos);
					
					int i=0;
					for(int j=2;j<=4;j++)
					{
						BufferedWriter w1 = new BufferedWriter(new FileWriter("Blocks/"+start+j+".txt",true));
						PrintWriter p1 = new PrintWriter(w1);
						w1.newLine();
						p1.write(str1[i]);
						p1.flush();
						i++;
					}
					
					String sql1 = "insert into hospitalblock values(?,?,?,?,?,?,?,?,?)";
					PreparedStatement pr = con.prepareStatement(sql1);
					pr.setString(1, userEmail);
					pr.setString(2, drugName);
					pr.setString(3, start+"1.txt");
					pr.setString(4, start+"2.txt");
					pr.setString(5, start+"3.txt");
					pr.setString(6, str1[0]);
					pr.setString(7, str1[1]);
					pr.setString(8, str1[2]);
					FileSHA1Coded fileHash = new FileSHA1Coded();
					String hash=fileHash.sha1Code(path2);
					pr.setString(9, hash);
					pr.executeUpdate();
					
				} catch (NoSuchAlgorithmException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
				
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return x;
	}
	
	public int requestKeyfromPatient(String drugName,String distEmail,String pemail,String pname)
	{
		int x = 0;
		try
		{
			con=dbConnect.connect();
			String sql="insert into requestKeyfromPatient values(?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, drugName);
			ps.setString(2, distEmail);
			ps.setString(3, pemail);
			ps.setString(4, pname);		
			x=ps.executeUpdate();			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return x;
	}
	
	public int requestKeyfromHospital(String drugName,String distEmail,String hemail,String hname)
	{
		int x = 0;
		try
		{
			con=dbConnect.connect();
			String sql="insert into requestkeyfromhospital values(?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, drugName);
			ps.setString(2, distEmail);
			ps.setString(3, hemail);
			ps.setString(4, hname);		
			x=ps.executeUpdate();			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return x;
	}
}
