package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import allDAO.UserDAO;
import api.UserRegisterDTO;
import api.userLoginDTO;



@Controller
@SessionAttributes("loggedUser")
public class LoginController {
	
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping("/login")
	String ResultPage(@ModelAttribute("user") userLoginDTO us,Model model)
	{
		
		String u = us.getUserName();
		
		model.addAttribute("loggedUser",u);
	
		boolean f = userDAO.checkUser(us);
				
		if(f) return "HomePage";
	
		else return "index";
	}
	
	@RequestMapping("/registerUser")
	String registertPage(@ModelAttribute("registeredUser") UserRegisterDTO user,Model model)
	{

			boolean f=userDAO.insertUser(user);
			
			model.addAttribute("is",f);
			
			if(f) return "redirect:/index";
			
			return "redirect:/index";
				
	}
	
	@RequestMapping("/index")
	String index()
	{
		return "index";
	}
}
