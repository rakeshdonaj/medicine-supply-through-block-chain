package BlackChain;

import java.io.*;  
import java.util.Scanner;  
public class split {  
public static void splitData(String str)  
{  
 try{  
  // Reading file and getting no. of files to be generated  
  String inputfile = str; //  Source File Name.  
  double nol = 1.0; //  No. of lines to be split and saved in each output file.  
  File file = new File(inputfile);  
  Scanner scanner = new Scanner(file);  
  int count = 0;  
  while (scanner.hasNextLine())   
  {  
   scanner.nextLine();  
   count++;  
  }  
  System.out.println("Lines in the file: " + count);     // Displays no. of lines in the input file.  

  double temp = (count/nol);  
  int temp1=(int)temp;  
  int nof=0;  
  if(temp1==temp)  
  {  
   nof=temp1;  
  }  
  else  
  {  
   nof=temp1+1;  
  }  
  System.out.println("No. of files to be generated :"+nof); // Displays no. of files to be generated.  

  //---------------------------------------------------------------------------------------------------------  

  // Actual splitting of file into smaller files  

  FileInputStream fstream = new FileInputStream(inputfile); DataInputStream in = new DataInputStream(fstream);  

  BufferedReader br = new BufferedReader(new InputStreamReader(in)); String strLine; 
  int pos = file.getName().lastIndexOf(".");
  String start = file.getName().substring(0, pos);
  System.out.println(start);
  for (int j=1;j<=nof;j++)  
  {  
   FileWriter fstream1 = new FileWriter("D:/Blocks/"+start+j+".txt");     
   BufferedWriter out = new BufferedWriter(fstream1);   
   for (int i=1;i<=nol;i++)  
   {  
    strLine = br.readLine();   
    if (strLine!= null)  
    {  
     out.write(strLine);  
     
     if(i!=nol)  
     {  
    	 
    	 out.newLine();  
     }  
    }  
   }  
   out.close();  
  }  

  in.close();  
 }catch (Exception e)  
 {  
  System.err.println("Error: " + e.getMessage());  
 }  

}  

}