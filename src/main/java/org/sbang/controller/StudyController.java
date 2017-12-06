package org.sbang.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.sbang.domain.PageMaker;
import org.sbang.domain.SearchCriteria;
import org.sbang.domain.StudyVO;
import org.sbang.service.StudyService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/study/*")
public class StudyController {

	@Inject
	private StudyService service;

	@RequestMapping(value = "/studyReg", method = RequestMethod.GET)
	public void registGET(StudyVO study, Model model) throws Exception {
	}

	@RequestMapping(value = "/studyReg", method = RequestMethod.POST)
	public String registPOST(StudyVO study, RedirectAttributes rttr) throws Exception {
		if (study.getStudyName() != "") {
			service.regist(study);
		} else {
			rttr.addFlashAttribute("msg", "FAIL");
		}
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/study/studyList";
	}

	@RequestMapping(value = "/studyList", method = RequestMethod.GET)
	public void listAll(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("list", service.listSearchCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listSearchCount(cri));
		model.addAttribute("pageMaker", pageMaker);
	}

	@RequestMapping(value = "/studyView", method = RequestMethod.GET)
	public void read(@RequestParam("studyNo") int studyNo, @ModelAttribute("cri") SearchCriteria cri, Model model, HttpSession session) throws Exception {
		model.addAttribute("login", session.getAttribute("login"));
		model.addAttribute(service.read(studyNo));
		model.addAttribute("weekList", service.getWeek(studyNo));
	}

	@RequestMapping(value = "/studyRemove", method = RequestMethod.POST)
	public String remove(@RequestParam("studyNo") int studyNo, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		service.remove(studyNo);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		rttr.addAttribute("lineUp", cri.getLineUp());
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/study/studyList";
	}

	@RequestMapping("/getImg/{studyNo}")
	@ResponseBody
	public List<String> getImg(@PathVariable("studyNo") Integer studyNo) throws Exception {
		return service.getImg(studyNo);
	}

	@RequestMapping(value = "/studyModify", method = RequestMethod.GET)
	public void modifyGET(@RequestParam("studyNo") int studyNo, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute(service.read(studyNo));
		model.addAttribute("weekList", service.getWeek(studyNo));
	}

	@RequestMapping(value = "/studyModify", method = RequestMethod.POST)
	public String modifyPOST(StudyVO study, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		rttr.addAttribute("lineUp", cri.getLineUp());
		service.modify(study);
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/study/studyList";
	}

}
