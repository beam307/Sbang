package org.sbang.controller;

import java.util.List;

import javax.inject.Inject;

import org.sbang.domain.StudyVO;
import org.sbang.service.StudyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
	private static final Logger logger=LoggerFactory.getLogger(StudyController.class);
	
	@Inject
	private StudyService service;
	
	@RequestMapping(value="/studyReg",method=RequestMethod.GET)
	public void registGET(StudyVO study,Model model) throws Exception{
		logger.info("register get...");
	}
	
	@RequestMapping(value="/studyReg",method=RequestMethod.POST)
	public String registPOST(StudyVO study,RedirectAttributes rttr) throws Exception{
		logger.info("regist post........");
		logger.info(study.toString());
		
		service.regist(study);
		rttr.addFlashAttribute("msg","SUCCESS");
		return "redirect:/study/studyList";
	}
	@RequestMapping(value="/studyList",method=RequestMethod.GET)
	public void listAll(Model model) throws Exception{
		logger.info("show all list.........");
		model.addAttribute("list",service.listAll());
	}
	
	@RequestMapping(value="/studyView",method=RequestMethod.GET)
	public void read(@RequestParam("studyNo") int studyNo,Model model) throws  Exception{
		model.addAttribute(service.read(studyNo));
	}
	
	@RequestMapping(value="/studyRemove",method=RequestMethod.POST)
	public String remove(@RequestParam("studyNo") int studyNo, RedirectAttributes rttr) throws Exception{
		service.remove(studyNo);
		
		rttr.addFlashAttribute("msg","SUCCESS");
		
		return "redirect:/study/studyList";
	}
	
	@RequestMapping("/getImg/{studyNo}")
	@ResponseBody
	public List<String> getImg(@PathVariable("studyNo")Integer studyNo) throws Exception{
		logger.info(service.getImg(studyNo).toString());
		return service.getImg(studyNo);
	}
	
	@RequestMapping(value="/studyModify", method=RequestMethod.GET)
	public void modifyGET(@RequestParam("studyNo") int studyNo, Model model) throws Exception{
		model.addAttribute(service.read(studyNo));
	
	@RequestMapping(value="/studyModify",method=RequestMethod.POST)
	public String modifyPOST(StudyVO study, RedirectAttributes rttr) throws Exception{
		logger.info("mod post........");
//		rttr.addAttribute("page",cri.getPage());
//		rttr.addAttribute("perPageNum",cri.getPerPageNum());
		service.modify(study);
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/study/studyList";
	}
//	
//	@RequestMapping(value="/listPage",method=RequestMethod.GET)
//	public void listPage(Criteria cri,Model model)throws Exception{
//		logger.info(cri.toString());
//		
//		model.addAttribute("list",service.listCriteria(cri));
//		PageMaker pageMaker=new PageMaker();
//		pageMaker.setCri(cri);
//		//pageMaker.setTotalCount(131);
//		pageMaker.setTotalCount(service.listCountCriteria(cri));
//		
//		model.addAttribute("pageMaker",pageMaker);
//	}
}
