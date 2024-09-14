package controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import api.userLoginDTO;
import services.EmailService;

@Controller
public class MailController 
{
	@Autowired
	EmailService emailService;
	
	
	@RequestMapping("sendMail")
	String goToMailPage(HttpServletRequest rs,Model model)
	{
		String relation = rs.getParameter("relation");

		model.addAttribute("relation",relation);
		
		return "MailPage";
	}
		
	@RequestMapping("mailSent")
	String mailSentPage(HttpServletRequest rs,
			@SessionAttribute("loggedUser") String userName,
			@SessionAttribute("crushName") String crushName,
			@RequestParam String email,Model model)
	{
		//System.out.println(email);
		String relation = rs.getParameter("relation");
				
		emailService.sendMail(email,relation,userName,crushName);
	
		
		
		return "success";
		
	}
	

}
