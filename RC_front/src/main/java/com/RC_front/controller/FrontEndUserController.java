package com.RC_front.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.RC_back.dao.IUserDAO;
import com.RC_back.model.User;

@Controller
public class FrontEndUserController {
	@Autowired
	private IUserDAO userDAO;
	
	@RequestMapping(value = { "/register" })
	public ModelAndView register() {
		ModelAndView model = new ModelAndView("page");
		model.addObject("title", "Register");
		model.addObject("userClickRegister", true);
		model.addObject("user",new User());
		return model;
	}

	@RequestMapping(value = "/userData.do", method = RequestMethod.POST)
	public ModelAndView doActions(@ModelAttribute("user") @Valid User user, BindingResult result) {
		if (result.hasErrors()) {
			ModelAndView model1 = new ModelAndView("page");
			model1.addObject("title", "Register");
			model1.addObject("userClickRegister", true);
			return model1;
		}
		userDAO.addUser(user);

		ModelAndView model1 = new ModelAndView("page");
		model1.addObject("title", "Register");
		model1.addObject("userClickHome", true);
		return model1;
	}
}
