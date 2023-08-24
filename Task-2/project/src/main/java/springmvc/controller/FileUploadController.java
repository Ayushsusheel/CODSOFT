package springmvc.controller;







import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.util.Scanner;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;





@Controller
public class FileUploadController 
{
    
	
	@RequestMapping("/count")
	public String count()
	{
		System.out.println("count() method speaking..... going to fileUpload.jsp file now  !!!");
		
		return "countVia_Txt_File";
	}
	
	
	
	
	
	@RequestMapping("/enterText")
	public String enterText()
	{
		System.out.println("enterText() method speaking..... going to fileUpload.jsp file now  !!!");
		
		return "enterText";
	}
	
	
	
	@RequestMapping("/countText")
	public String countText(@RequestParam ("query") String query, Model model)
	{
		System.out.println("countText() method speaking..... going to fileUpload.jsp file now  !!!");
		
		 int count=0;  
		
		 char ch[]= new char[query.length()];    
		 
         for(int i=0;i<query.length();i++)  
         {  
             ch[i]= query.charAt(i);  
             
             if( ((i>0)&&(ch[i]!=' ')&&(ch[i-1]==' ')) || ((ch[0]!=' ')&&(i==0)) )  
                 count++;  
         }  
         
         model.addAttribute("COUNT",count);
         
        return "countTextSuccess";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("/fileUpload")
	public String fileUpload()
	{
		System.out.println("fileUpload() method speaking..... going to fileUpload.jsp file now  !!!");
		
		return "fileUpload";
	}
	
	
	
	@RequestMapping(path="/uploadFile", method=RequestMethod.POST) //path (or) value both we can use...
	public String hadlingFileUpload(@RequestParam ("uploadedFile") CommonsMultipartFile file, Model model, HttpSession session) //HttpSession  we used this in order to fetch real context path
	{
		
		System.out.println("hadlingFileUpload() method speaking..... going to fileUploadSuccess.jsp file now  !!!\n\n");

		
		//NOW WE WILL SAVE THE FILE AT SERVER SIDE (or) WHERE EVER I WANT TO STORE IT .....
		
		byte data[] = file.getBytes(); 
		
		/*String path = session.getServletContext().getRealPath("/")*/
		
		System.out.println(path);             
		
		
		String path = session.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources" + File.separator + "images" + File.separator + file.getOriginalFilename()    ; //File.separator  ---> it means  ( slash )
		
		System.out.println("\n\nfile will be stored at :--->   " + path + "\n\n\n");
		
		try 
		{
			FileOutputStream fileOutputStream = new FileOutputStream(path);
		
			fileOutputStream.write(data);
			
			fileOutputStream.close();
				
			System.out.println("\n\nFile Stored Successfully at location--->   " + path +"\n\n\n");
		
			model.addAttribute("fileName", file.getOriginalFilename());
		
		}catch (Exception e) 
		{
			e.printStackTrace();
			
			System.out.println("FAILED TO SAVE THE FILE!!!!!");
			
		}
		
		

//TRYING TO READ THE DATA FROM UPLOADED FILE  NOW I'LL WRITE THE LOGIC FOR COUNTING NUMBER OF WORDS.........
		
		String filePath = path;// + file.getOriginalFilename();
		
		try 
		{
			FileInputStream fileInputStream = new FileInputStream(filePath);        
			
			int value = fileInputStream.read();
			
			while(!(value == -1))
			{
				char c = (char) value;
				
				System.out.print(c);
				
				value = fileInputStream.read();
				
			}
		
			fileInputStream.close();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
//TRYING TO COUNT NUMBER OF WORDS IN A FILE......
		
		String line; 
		
        int count = 0;  
        
        FileReader fileReader;
        
		try 
		{
		    fileReader = new FileReader(filePath);
		    
		    BufferedReader br = new BufferedReader(fileReader);
		    
		    while((line = br.readLine()) != null) 
		    {  
	            String words[] = line.split(" ");  
	            
	            count = count + words.length;  
	        }  
	          
	        System.out.println("Number of words present in given file: " + count);  
	        
	        model.addAttribute("count",count);
	        
	        br.close();  
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			
		}  
        
	
		return "fileUploadSuccess";
	}
	
	
}
