package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class RedirectController 
{

	@RequestMapping("/test1")
	public String test1()
	{
		System.out.println("this is testning 1 redirect page");

		return "redirect:/test2";
	}
	
	
	@RequestMapping("/test2")
	public String test2()
	{
		System.out.println("this is testning 2 redirect page");	
			
		return "home";
	}
	
	@RequestMapping(path="/linkeDin" )//, method= RequestMethod.POST)
	public RedirectView LinkeDin()
	{
		RedirectView redirectView =  new RedirectView();
		
		redirectView.setUrl("https://www.linkedin.com/in/ayush-susheel-672b13190/");
		
		System.out.println("redirecting to LINKEDIN");
		
		return redirectView;
	}
	
	
	@RequestMapping(path="/github") // , method= RequestMethod.POST)
	public RedirectView github()
	{
		RedirectView redirectView =  new RedirectView();
		
		redirectView.setUrl("https://github.com/Ayushsusheel");
		
		System.out.println("redirecting to GITHUB");
		
		return redirectView;
	}
	
	@RequestMapping(path="/searchAnything" )//, method= RequestMethod.POST)
	public String searchAnything()
	{
		System.out.println("searchAnything method called redirecting to searchOnGoogle.jsp !");
		
		return "searchOnGoogle";
	}
	
	@RequestMapping("/search")
	public RedirectView search(@RequestParam ("querybox") String userQuery)
	{
		RedirectView redirectView =  new RedirectView();
		
		String url = "https://www.google.com/search?q=" + userQuery;
		
		redirectView.setUrl(url);
		
		System.out.println("redirecting to GOOGLE WITH QUERY AS :-->  " + userQuery);
		
		return redirectView;
	}
	
	
	
	
	
	
	
	
	
	
}
