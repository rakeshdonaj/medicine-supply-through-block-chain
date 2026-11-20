package BlackChain;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

public class Test {

	public static void main(String args[]){
		
		split s = new split();
		s.splitData("D://test.txt");
		
		FileSHA1Coded ff = new FileSHA1Coded();
		try {
			ff.genHash1("D://New folder/", "test.txt");
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
