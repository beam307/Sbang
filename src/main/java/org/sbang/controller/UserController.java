package org.sbang.controller;

import javax.inject.Inject;

import org.sbang.domain.UserVO;
import org.sbang.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/user")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Inject
	private UserService service;

	@RequestMapping(value = "/regUser", method = RequestMethod.POST)
	public String registerPost(UserVO vo, RedirectAttributes rttr) throws Exception { // 회원가입 메서드
		logger.info("register user post....");
		service.create(vo);
		rttr.addFlashAttribute("msg", "regSuccess");

		return "redirect:/";
	}

}
