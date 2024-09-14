package controllers;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import allDAO.UserDAO;

@Controller
public class HistoryController 
{
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping("/History")
	String gotoHistory(
            @SessionAttribute("loggedUser") String userNameSe,
            @SessionAttribute("crushName") String crushName,
            Model model)
	{
		
		List<Map<String, Object>> list = userDAO.getHistory(userNameSe);
		
		model.addAttribute("list",list);
		model.addAttribute("user",userNameSe);
		
		return "PreviousHistory";
	}

	

}
