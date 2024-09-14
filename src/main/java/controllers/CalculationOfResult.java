package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import allDAO.UserDAO;
import api.UserDTO;
import api.userLoginDTO;
import services.*;

@Controller
@SessionAttributes("crushName")
public class CalculationOfResult 
{
	@Autowired
	private RelationService relationService;
	
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping("/calculate")
	String calulateResult(@ModelAttribute("user") UserDTO user,Model model)
	{
		
		
		
		String relation = relationService.checkRelation(user);
		model.addAttribute("relation", relation);
		
		String u = (String) model.getAttribute("loggedUser");
		
		model.addAttribute("crushName",user.getCrushName());
		
		
		model.addAttribute("loggedUser",u);
		
		String[] a = relation.split(" ");
		
		String ag = a[a.length-1];
		
		boolean k = userDAO.insertRelation(user,ag);
	
		return "result";
	}
	
	

}
