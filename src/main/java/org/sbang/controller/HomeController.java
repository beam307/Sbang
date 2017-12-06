package org.sbang.controller;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.sbang.domain.SearchCriteria;
import org.sbang.domain.UserVO;
import org.sbang.service.StudyService;
import org.sbang.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {

	@Inject
	private StudyService service;
	
	@Inject
	private UserService uService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, SearchCriteria cri, HttpSession session, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		model.addAttribute("list", service.listSearchCriteria(cri));
		
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

		if (loginCookie != null) { // 자동로그인 쿠키
			UserVO userVO = uService.checkLoginBefore(loginCookie.getValue());

			if (userVO != null) {
				session.setAttribute("login", userVO);
			}
		}

		return "index";
	}

	@RequestMapping(value = "/studyReg", method = RequestMethod.GET)
	public String studyReg(Model model) {
	
		return "study/studyReg";
	}

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(Model model) {
		
		return "user/myPage";
	}

	@RequestMapping(value = "/studyList", method = RequestMethod.GET)
	public String list(Model model) {
		
		return "redirect:study/studyList";
	}

	@RequestMapping(value = "/studyModify", method = RequestMethod.GET)
	public String studyModify(Model model) {
	
		return "study/studyModify";
	}

	@RequestMapping(value = "/studyView", method = RequestMethod.GET)
	public String studyView(Model model) {
		
		return "study/studyView";
	}

	@RequestMapping(value = "/roomManage", method = RequestMethod.GET)
	public String roomManage(Model model) {
		
		return "user/roomManage";
	}

	@RequestMapping(value = "/studyManage", method = RequestMethod.GET)
	public String studyManage(Model model) {
		
		return "user/studyManage";
	}
}
