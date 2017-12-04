package org.sbang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/study")
public class StudyController {

	@RequestMapping(value = "/studyReg", method = RequestMethod.GET)
	public String studyReg(Model model) {

		return "study/studyReg";
	}

	@RequestMapping(value = "/studyList", method = RequestMethod.GET)
	public String list(Model model) {

		return "study/studyList";
	}

	@RequestMapping(value = "/studyModify", method = RequestMethod.GET)
	public String studyModify(Model model) {

		return "study/studyModify";
	}

	@RequestMapping(value = "/studyView", method = RequestMethod.GET)
	public String studyView(Model model) {

		return "study/studyView";
	}
}