package springmvc.controller;


import java.util.List;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import springmvc.dao.StudentDAO;
import springmvc.model.Student;



@Controller
public class EmailController 
{
	
	@Autowired
	private StudentDAO studentDAO; 
	
	
	
	@RequestMapping("/generateEmail") 				
	public String addStudent(Model m)
	{   
		 
		
		return "generateEmail"; 
		
	}
	
	
	@RequestMapping("/sendEmail")	
	public ModelAndView sendEmail(@RequestParam("emailID") String emailID,
								  @RequestParam("Username") String Username,Model model    )
						 
	{
		
		System.out.println("\n\npreparing to send message ...\n\n");
		
		
		List<Student> students = studentDAO.getAllStudents();	
		
		Gson gson = new Gson();
		
		String jsonString = gson.toJson(students);
		
		String message ="Dear " + Username + ",\r\n"
						+ "\r\n"
						+ "Here is the List of Students that have been registered in our University so far.\r\n"
						+ "\r\n"
						+ "Can you please verify these student details accordingly.\r\n"
						+ "\r\n"
						+ "\r\n"
						
						+ jsonString
						
						
						+ "\n\nRegards,\r\n"
						+ "\r\n"
						+ "Admin";
		
		String subject = "List of All Students";
		
		String to = emailID; 
		
		
		
		
		String from = "adddminnnn31@gmail.com";
		
		sendEmail(message,subject,to,from);
		//sendAttach(message,subject,to,from);
		
		
		
		ModelAndView modelAndview = new ModelAndView();
		
		model.addAttribute("USERNAME", Username);
		
		model.addAttribute("TO", emailID);
		
		modelAndview.setViewName("mailSentSuccessfully"); //displayStudents.jsp
		
		return modelAndview;
		
		
		
	}

	//this is responsible to send email..
	private static void sendEmail(String message, String subject, String to, String from) {
		
		//Variable for gmail
		String host="smtp.gmail.com";
		
		//get the system properties
		Properties properties = System.getProperties();
		System.out.println("PROPERTIES "+properties);
		
		//setting important information to properties object
		
		//host set
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port","465");
		properties.put("mail.smtp.ssl.enable","true");
		properties.put("mail.smtp.auth","true");
		
		//Step 1: to get the session object..
		Session session=Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {				
				return new PasswordAuthentication("admin@gmail.com", "password");
			}
			
			
			
		});
		
		session.setDebug(true);
		
		//Step 2 : compose the message [text,multi media]
		MimeMessage m = new MimeMessage(session);
		
		try {
		
		//from email
		m.setFrom(from);
		
		//adding recipient to message
		m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		
		
		//adding subject to message
		m.setSubject(subject);
	
		
		//adding text to message
		m.setText(message);
		
		//send 
		
		//Step 3 : send the message using Transport class
		Transport.send(m);
		
		System.out.println("Sent success...................");
		
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
			
	}
}
