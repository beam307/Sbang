package org.sbang.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(RedirectAttributes rttr, HttpSession session) {
		logger.info("go home");
		if(session.getAttribute("loginAuth") == "loginAuth"){ // 로그인인증데이터가 넘어 올 경우
			rttr.addFlashAttribute("loginAuth","loginAuth");
		}
		return "index";
	} 
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(Model model) {
		logger.info("go mypage");
				
		return "user/myPage";
	}
	
	@RequestMapping(value = "/roomManage", method = RequestMethod.GET)
	public String roomManage(Model model) {
		logger.info("go roomManage");
				
		return "user/roomManage";
	}
	
	@RequestMapping(value = "/studyManage", method = RequestMethod.GET)
	public String studyManage(Model model) {
		logger.info("go studyManage");
				
		return "user/studyManage";
	}
}
