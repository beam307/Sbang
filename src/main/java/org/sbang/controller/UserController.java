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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/user")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Inject
	private UserService service;
	
	@RequestMapping(value = "/regUser", method = RequestMethod.GET) // 회원가입창 get
	public String registerGet() throws Exception { 
		logger.info("regUserGet......");

		return "/user/userJoin";
	}
	
	@RequestMapping(value = "/regUser", method = RequestMethod.POST) // 회원가입 post
	public String registerPost(UserVO vo, RedirectAttributes rttr) throws Exception { 
		logger.info("reUser post........");
		service.create(vo);
		rttr.addFlashAttribute("msg", "regSuccess");

		return "redirect:/";
	}
	
	@RequestMapping(value = "/myPage", method = RequestMethod.GET) // 마이페이지창 get
	public String mypage(Model model) { 
		logger.info("myPageGet..........");
				
		return "/user/myPage";
	}

}
