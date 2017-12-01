package org.sbang.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/board")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice(Model model) {
		logger.info("go notice");

		return "/board/notice";
	}

	@RequestMapping(value = "/onenone", method = RequestMethod.GET)
	public String onenone(Model model) {
		logger.info("go onenone");

		return "/board/onenone";
	}
}
