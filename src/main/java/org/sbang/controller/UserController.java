package org.sbang.controller;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.sbang.domain.UserVO;
import org.sbang.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/user")
public class UserController {

	@Inject
	private UserService service;
<<<<<<< HEAD
	
=======

	@Resource(name = "uploadPath")
	private String uploadPath;

>>>>>>> branch 'user' of https://github.com/beam307/Sbang.git
	@RequestMapping(value = "/regUser", method = RequestMethod.GET)
	public String registerGet() throws Exception {
		return "/user/userJoin";
	}

	@RequestMapping(value = "/regUser", method = RequestMethod.POST)
	public String registerPost(UserVO vo, RedirectAttributes rttr) throws Exception { // 회원가입
		service.create(vo);
		rttr.addFlashAttribute("msg", "regSuccess");
		return "redirect:/";
	}

	@RequestMapping(value = "/myPage", method = RequestMethod.POST)
	public String myPagePost(UserVO vo, RedirectAttributes rttr, MultipartFile file) throws Exception {
		
		service.update(vo);

		rttr.addFlashAttribute("msg", "regSuccess");

		return "/user/myPagePost";
	}

	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String myPageGet(HttpSession session, Model model) throws Exception {

		UserVO vo = (UserVO) session.getAttribute("login");

		model.addAttribute("UserVO", service.read(vo.getUserEmail()));
		return "/user/myPage";

	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deletePost(RedirectAttributes rttr, HttpSession session) throws Exception {

		UserVO vo = (UserVO) session.getAttribute("login");
		service.delete(vo.getUserEmail());

		rttr.addFlashAttribute("msg", "delete");

		return "redirect:/login/logout";
	}

	@RequestMapping(value = "/changePwd", method = RequestMethod.POST)
	public String changePost(UserVO vo, HttpServletRequest request, HttpSession session) throws Exception {

		vo.setUserEmail(((UserVO) session.getAttribute("login")).getUserEmail());

		boolean result = service.checkPw(vo.getUserEmail(), vo.getUserPwd());
		if (vo.getUserNewPwd().equals(vo.getUserCheckPwd()) && result == true) {
			service.changePwd(vo);
			request.setAttribute("msg", "changePwd");
		} else {
			request.setAttribute("msg", "changeFail");
		}
		return "/user/changePwdPost";
	}

	@RequestMapping(value = "/emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(String userEmail, Model model) throws Exception {
		service.userAuth(userEmail);
		model.addAttribute("userEmail", userEmail);

		return "/user/emailConfirm";
	}

	@RequestMapping(value = "/sendPwd", method = RequestMethod.GET)
	public String sendPwd(String userEmail, Model model) throws Exception {

		service.createPwd(userEmail);
		model.addAttribute("userEmail", userEmail);

		return "/user/sendPwd";
	}

	@RequestMapping(value = "/findId", method = RequestMethod.GET)
	public String findIdGet(String userEmail, String userBirth, String userName) throws Exception {

		service.findId(userEmail, userBirth, userName);

		return "/user/login";
	}


	@RequestMapping(value = "/roomManage", method = RequestMethod.GET)
<<<<<<< HEAD
	public String roomManage(Model model) {
=======
	public String roomManage(Model model) throws Exception {
		logger.info("go roomManage");
>>>>>>> branch 'user' of https://github.com/beam307/Sbang.git

		return "/user/roomManage";
	}

	@RequestMapping(value = "/studyManage", method = RequestMethod.GET)
<<<<<<< HEAD
	public String studyManage(Model model) {
=======
	public String studyManage(Model model) throws Exception {
		logger.info("go studyManage");
>>>>>>> branch 'user' of https://github.com/beam307/Sbang.git

		return "/user/studyManage";
	}

}