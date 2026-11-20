package BlackChain;



import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

/**
 * User: zeroleaf
 * Date: 13-10-3
 * Time: 21:04
 *
 * Generate a sha1 hash code of a file.
 */
public class FileSHA1Coded {
	
	 static String hashval = null;
    public static String genHash1(String path,String name) throws IOException, NoSuchAlgorithmException {
    	StringBuffer sb = new StringBuffer();
        FileSHA1Coded fileHash = new FileSHA1Coded();
        File f = new File(path);
		String totalFiles[] =f.list();
		File file = new File(path+name);
		 int pos = file.getName().lastIndexOf(".");
		String start = file.getName().substring(0, pos);
		int j=1;
		for(int i=0;i<3;i++){
		
				  hashval  = fileHash.sha1Code("D:/Blocks/"+start+""+j+".txt");
				  System.out.println(hashval);
				  sb.append(hashval+",");
				j++;
			
			
		}
		return sb.toString();
        /*
         * Input file name: testfile.txt
         * Input file content: (only one line bellow)
         * This is a file for test sha1 hash code
         *
         * Output:
         * 7465503EADC8799AE6F64E03EE87AB747B9D08F5
         *
         */

    }

    /**
     * Generate a file 's sha1 hash code.
     * @param filePath file path
     * @return sha1 hash code of this file
     * @throws IOException if file doesn't or other IOException
     * @throws NoSuchAlgorithmException
     */
    public String sha1Code(String filePath) throws IOException, NoSuchAlgorithmException {
        FileInputStream fileInputStream = new FileInputStream(filePath);
        MessageDigest digest = MessageDigest.getInstance("SHA-1");
        DigestInputStream digestInputStream = new DigestInputStream(fileInputStream, digest);
        byte[] bytes = new byte[1024];
        // read all file content
        while (digestInputStream.read(bytes) > 0);

//        digest = digestInputStream.getMessageDigest();
        byte[] resultByteArry = digest.digest();
        return bytesToHexString(resultByteArry);
    }

    /**
     * Convert a array of byte to hex String. <br/>
     * Each byte is covert a two character of hex String. That is <br/>
     * if byte of int is less than 16, then the hex String will append <br/>
     * a character of '0'.
     *
     * @param bytes array of byte
     * @return hex String represent the array of byte
     */
    public static String bytesToHexString(byte[] bytes) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) {
            int value = b & 0xFF;
            if (value < 16) {
                // if value less than 16, then it's hex String will be only
                // one character, so we need to append a character of '0'
                sb.append("0");
            }
            sb.append(Integer.toHexString(value).toUpperCase());
        }
        return sb.toString();
    }
  
}
