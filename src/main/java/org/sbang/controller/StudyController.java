package org.sbang.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/study")
public class StudyController {
	
	private static final Logger logger = LoggerFactory.getLogger(StudyController.class);
   
	@RequestMapping(value = "/studyReg", method = RequestMethod.GET)
	public String studyReg(Model model) {
		logger.info("go studyReg");
				
		return "study/studyReg";
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
}