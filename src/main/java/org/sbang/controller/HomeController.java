package org.sbang.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model , RedirectAttributes rttr) {
		logger.info("go home");
		return "index";
	} 
	
	@RequestMapping(value = "/studyReg", method = RequestMethod.GET)
	public String studyReg(Model model) {
		logger.info("go studyReg");
				
		return "study/studyReg";
	}
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(Model model) {
		logger.info("go mypage");
				
		return "user/myPage";
	}
	
	@RequestMapping(value = "/studyList", method = RequestMethod.GET)
	public String list(Model model) {
		logger.info("go list");
				
		return "study/studyList";
	}
	
	@RequestMapping(value = "/studyModify", method = RequestMethod.GET)
	public String studyModify(Model model) {
		logger.info("go studyModify");
				
		return "study/studyModify";
	}

	@RequestMapping(value = "/studyView", method = RequestMethod.GET)
	public String studyView(Model model) {
		logger.info("go studyView");
				
		return "study/studyView";
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
