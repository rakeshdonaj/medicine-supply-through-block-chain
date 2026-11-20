package BlackChain;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Merge File Example
 *
 * @author Krishna
 *
 */
public class MergeFileExample {
	private static String FILE_NAME = "demo.txt";
	public static void main(String[] args) {
		File ofile = new File(FILE_NAME);
		FileOutputStream fos;
		FileInputStream fis;
	
		File f = new File("C:/");
		String totalFiles[] =f.list();
	
		byte[] fileBytes;
		int bytesRead = 0;
		int j=1;
		List<File> list = new ArrayList<File>();
		for(int i=0;i<=totalFiles.length;i++){
			if(j==6){
				break;
			}
			else{
				list.add(new File("D:/New Folder/File"+j+".txt"));
				j++;
			}
			
		}
		
	
		
		try {
		    fos = new FileOutputStream(ofile,true);
		    for (File file : list) {
		        fis = new FileInputStream(file);
		        fileBytes = new byte[(int) file.length()];
		        bytesRead = fis.read(fileBytes, 0,(int)  file.length());
		        assert(bytesRead == fileBytes.length);
		        assert(bytesRead == (int) file.length());
		        fos.write(fileBytes);
		        fos.flush();
		        fileBytes = null;
		        fis.close();
		        fis = null;
		    }
		    fos.close();
		    fos = null;
		}catch (Exception exception){
			exception.printStackTrace();
		}
	}
}
