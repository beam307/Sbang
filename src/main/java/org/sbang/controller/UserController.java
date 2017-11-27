package org.sbang.controller;

import javax.inject.Inject;

import org.sbang.domain.UserVO;
import org.sbang.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Inject
	private UserService service;
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public void registPOST(UserVO user, Model model) throws Exception{
		logger.info("asdfgwe");
		
		service.create(user);
		model.addAttribute("result", "success");

	}
	
}
