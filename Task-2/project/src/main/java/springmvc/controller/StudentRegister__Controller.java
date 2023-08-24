package springmvc.controller;


import java.net.http.HttpRequest;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import springmvc.dao.StudentDAO;
import springmvc.model.Student;

@Controller
public class StudentRegister__Controller 
{
	 
	@Autowired
	private StudentDAO studentDAO; 
	
	
	
	@InitBinder
	public void dontMap(WebDataBinder binder) //CUSTOMIZE AS PER THE REUIREMENT SAY I DONT WANT TO MAP STREET IN MY student OBJ SO I WILL USE InitBinder + WEbdataBinder...
	{
		
		SimpleDateFormat date = new SimpleDateFormat("yyyy-mm-dd");
		
		binder.registerCustomEditor(Date.class, "dob" , new CustomDateEditor( date, false));
		
		
	}
	
	
	@RequestMapping("/add") 				//TAKE STUDENT DETAILS VIA FORM 
	public String addStudent(Model m)
	{   
		m.addAttribute("title","ADD STUDENT"); //this is my title for add_user_in_db.jsp file I'M using BASE.jsp everywhere therefore at run time add the title accordingly
		
		return "add_student_in_db_form"; 
		
	}
	
	
	
	//1st way to process form using redirect view , httpservletrequest and redirecting to index.jsp
	
	/*@RequestMapping(path="/processForm" , method= RequestMethod.POST)  // PROCESS  AND  SAVE DETAILS OF STUDENT IN DATABASE
	public RedirectView handleStudentData__and__save__in__DB(@Valid @ModelAttribute ("student") Student student ,BindingResult result, HttpServletRequest request, Model m )
	{
		
		
		RedirectView redirectView =  new RedirectView();
		
		System.out.println("\n\n STUDENT DETAILS VIA FORM :---->\t" + student +"\n\n");
		
//		char array[] = student.getPhoneNumber().toCharArray();
//		
//		for(char c : array)
//		{
//			if(!Character.isDigit(c))
//			{
//				m.addAttribute("ERROR","PHONE NUMBER CANNOT CONTAIN ALPHABETS");
//				
//				
//			}
//		}
		
		
		
		if(result.hasErrors())
		{
			System.out.println("\n\nERROR PRESENT IN THE Student Adding FORM  :------>     " + result.getAllErrors() + "\n\n");
			
			redirectView.setUrl("add");
			
			return redirectView;
		}
		
		System.out.println("\n\nNO ERRORS IN THE FORM SAVING THE STUDENT IN DATABASE with details as :-->\t" + student.toString() + "\n\n");
		
		studentDAO.saveStudent(student);
		
		redirectView.setUrl( request.getContextPath() + "/");  //home page pe redirect kr dega (index.jsp (about me))
		
		
		return redirectView;
	}*/
	
	
	//2nd way :-> ADD STUDENT (IF ERROR REDIRECT TO SAME REGISTER PAGE ELSE DISPLAY SUCCESS PAGE!!)
	
	@RequestMapping(path="/processForm" , method= RequestMethod.POST)  // PROCESS  AND  SAVE DETAILS OF STUDENT IN DATABASE
	public ModelAndView handle__StudentData__and__save__in__DB(@Valid @ModelAttribute ("student") Student student ,BindingResult result , Model m)
	{
		
		System.out.println("\n\n STUDENT DETAILS VIA FORM :---->\t" + student +"\n\n");
		
		
		if(result.hasErrors())
		{
			System.out.println("\n\nERROR PRESENT IN THE Student Adding FORM  :------>     " + result.getAllErrors() + "\n\n");
			
			ModelAndView modelAndView = new ModelAndView("add_student_in_db_form");
			
			return modelAndView;
		}
		
		System.out.println("\n\nNO ERRORS IN THE FORM SAVING THE STUDENT IN DATABASE with details as :-->\t" + student.toString() + "\n\n");
		
		studentDAO.saveStudent(student);
		
		ModelAndView modelAndView = new ModelAndView("add_student_in_db_form_success");
		
		
		m.addAttribute("SUCCESS_MSG",student.toString());
		m.addAttribute("NAME", student.getStudentName());
		
		return modelAndView; 
	}
	
	
	//LIST ALL STUDENTS DETAILS
	
	
	@RequestMapping("/displayStudents")
	public ModelAndView displayAllUsers(@ModelAttribute Student student ,Model model)
	{
		ModelAndView modelAndview=new ModelAndView();
		
		
		List<Student> students = studentDAO.getAllStudents();
		
		model.addAttribute("title","Displaying All Students :-)");
		
		modelAndview.addObject("studentsList", students);
		
		modelAndview.setViewName("Display_All_Students"); //displayStudents.jsp
		
		return modelAndview;
		
	}
	
	
	
	
	//DELETE A RECORD
	
	@RequestMapping("/deleteStudent/{studentID}")
	public ModelAndView deleteStudent(@PathVariable("studentID") int studentID, Model model) //@ModelAttribute Student student ,Model model, inko likhne ka no use because hmlog value thodi dere h sari details of student via form jo ye ModelAttribute Map krega !!! therefore, No Use....
	{
		
		
		model.addAttribute("title","Student Record Deleted :-)");
		
		
		ModelAndView modelAndview=new ModelAndView();
		
		Student detail = studentDAO.getSingleStudent(studentID);
		
		String name = detail.getStudentName();
		
		modelAndview.addObject("NAME", name);
		
		studentDAO.deleteSingleStudent(studentID);
		
		modelAndview.setViewName("deletedSuccessfully"); //displayStudents.jsp
		
		return modelAndview;
		
	}
	
	
	@RequestMapping("/updateStudent/{studentID}")
	public ModelAndView updateStudent(@PathVariable("studentID") int studentID,Model model) //@ModelAttribute Student student ,Model model, inko likhne ka no use because hmlog value thodi dere h sari details of student via form jo ye ModelAttribute Map krega !!! therefore, No Use....
	{
		
		model.addAttribute("title", "Update :-)");
		
		ModelAndView modelAndview=new ModelAndView();
		
		Student detail = studentDAO.getSingleStudent(studentID);
		
		
		modelAndview.addObject("DETAILS", detail);
		
		//studentDAO.deleteSingleStudent(studentID);
		
		modelAndview.setViewName("updateDetails"); //displayStudents.jsp
		
		return modelAndview;
		
	}
	
	
	
	
} 

























