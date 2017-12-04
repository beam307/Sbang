package org.sbang.controller;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.sbang.domain.UserVO;
import org.sbang.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

@Controller
public class HomeController {

	@Inject
	private UserService service;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(RedirectAttributes rttr, HttpSession session, HttpServletRequest request) throws Exception {

		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

		if (loginCookie != null) { // 자동로그인 쿠키
			UserVO userVO = service.checkLoginBefore(loginCookie.getValue());

			if (userVO != null) {
				session.setAttribute("login", userVO);
			}
		}

		return "/index";
	}

}
