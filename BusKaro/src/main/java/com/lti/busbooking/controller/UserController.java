package com.lti.busbooking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lti.busbooking.model.User;
import com.lti.busbooking.service.UserService;
import com.lti.busbooking.model.User;

@Controller
@RequestMapping("/user")
public class UserController {
	
	//@Autowired
	private UserService userService;
	
	@GetMapping("/signupForm")
	public ModelAndView showFormForAdd()
	{	ModelAndView mv=new ModelAndView ("signup");
		User  theUser = new User(); 
	mv.addObject("user",theUser);
	
	return mv;
	}
	
	@PostMapping("/saveUser")
	public String saveUser(@ModelAttribute("user") User theUser) {
		userService.saveUser(theUser);
		return "redirect:/user/list";
}
	
	
	@GetMapping("/loginForm")
	public String showFormForAdd(Model theModel) {
		User theUser = new User();
		theModel.addAttribute("user", theUser);
		return "login";

	
	}
	
	
}