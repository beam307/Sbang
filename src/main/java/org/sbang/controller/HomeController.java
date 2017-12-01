package org.sbang.controller;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.sbang.domain.UserVO;
import org.sbang.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	private UserService service;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(RedirectAttributes rttr, HttpSession session, HttpServletRequest request) throws Exception{
		logger.info("go home");
		
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		
		if(loginCookie != null){ // 자동로그인 쿠키
			UserVO userVO = service.checkLoginBefore(loginCookie.getValue());
			
			logger.info("USERVO: " + userVO);
			
			if(userVO != null){
				session.setAttribute("login", userVO);
			}
		}
		
		return "/index";
	}


}
