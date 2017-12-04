package org.sbang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/board")
public class BoardController {

	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice(Model model) {

		return "/board/notice";
	}

	@RequestMapping(value = "/onenone", method = RequestMethod.GET)
	public String onenone(Model model) {

		return "/board/onenone";
	}
}
