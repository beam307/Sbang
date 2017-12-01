package org.sbang.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.sbang.domain.UserVO;
import org.sbang.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/user")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Inject
	private UserService service;

	@RequestMapping(value = "/regUser", method = RequestMethod.GET)
	public String registerGet() throws Exception {
		logger.info("regUserGet......");

		return "/user/userJoin";
	}

	@RequestMapping(value = "/regUser", method = RequestMethod.POST)
	public String registerPost(UserVO vo, RedirectAttributes rttr) throws Exception { // 회원가입
		logger.info("register user post....");
		service.create(vo);
		rttr.addFlashAttribute("msg", "regSuccess");

		return "redirect:/";
	}

	@RequestMapping(value = "/myPage", method = RequestMethod.POST)
	public String myPagePost(UserVO vo, RedirectAttributes rttr) throws Exception {

		service.update(vo);

		rttr.addFlashAttribute("msg", "regSuccess");

		return "/user/myPagePost";
	}

	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String myPageGet(HttpSession session, Model model) throws Exception {

		logger.info("go mypage");
		UserVO vo = (UserVO) session.getAttribute("login");
		UserVO vo2 = service.read(vo.getUserEmail());

		model.addAttribute("UserVO", vo2);
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
		model.addAttribute("check", true);
		model.addAttribute("userEmail", userEmail);

		return "/user/emailConfirm";

		// 내가 인증을 눌렀을 때 link가 가서 그것을 눌렸을 때 넘어오는 것이당
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
	public String roomManage(Model model) {
		logger.info("go roomManage");

		return "/user/roomManage";
	}

	@RequestMapping(value = "/studyManage", method = RequestMethod.GET)
	public String studyManage(Model model) {
		logger.info("go studyManage");

		return "/user/studyManage";
	}

	@RequestMapping(value = "/roomManage", method = RequestMethod.GET)
	public String roomManage(Model model) {
		logger.info("go roomManage");

		return "/user/roomManage";
	}

	@RequestMapping(value = "/studyManage", method = RequestMethod.GET)
	public String studyManage(Model model) {
		logger.info("go studyManage");

		return "/user/studyManage";
	}

}