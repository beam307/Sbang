package org.sbang.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.sbang.domain.UserVO;
import org.sbang.service.UserService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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

	@Inject
	private BCryptPasswordEncoder pwdEncoder;

	@RequestMapping(value = "/regUser", method = RequestMethod.GET)
	public String registerGet() throws Exception { // 회원가입
		
		return "/user/userJoin";
	}

	@RequestMapping(value = "/regUser", method = RequestMethod.POST)
	public String registerPost(UserVO vo, RedirectAttributes rttr) throws Exception { // 회원가입
		
		service.create(vo);
		rttr.addFlashAttribute("msg", "regSuccess");
		return "redirect:/";
	}

	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String myPageGet(HttpSession session, Model model) throws Exception { // 마이페이지 창

		UserVO vo = (UserVO) session.getAttribute("login");

		model.addAttribute("UserVO", service.read(vo.getUserEmail()));
		return "/user/myPage";

	}

	@RequestMapping(value = "/myPage", method = RequestMethod.POST)
	public String myPagePost(UserVO vo, RedirectAttributes rttr, MultipartFile file) throws Exception { // 프로필정보수정

		service.modify(vo);

		rttr.addFlashAttribute("msg", "regSuccess");

		return "/user/myPagePost";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deletePost(RedirectAttributes rttr, HttpSession session) throws Exception { // 회원탈퇴

		UserVO vo = (UserVO) session.getAttribute("login");

		service.delete(vo.getUserEmail());
		session.invalidate();

		rttr.addFlashAttribute("msg", "delete");

		return "redirect:/";
	}

	@RequestMapping(value = "/changePwd", method = RequestMethod.POST)
	public String changePost(UserVO vo, HttpServletRequest request, HttpSession session) throws Exception { // 비밀번호 변경

		vo.setUserEmail(((UserVO) session.getAttribute("login")).getUserEmail());

		if (pwdEncoder.matches(vo.getUserPwd(), service.getPwd(vo))) {
			vo.setUserNewPwd(pwdEncoder.encode(vo.getUserNewPwd()));
			service.changePwd(vo);
			request.setAttribute("msg", "changePwd");
		} else
			request.setAttribute("msg", "changeFail");

		return "/user/changePwdPost";
	}

	@RequestMapping(value = "/emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(String userEmail, Model model) throws Exception { // 이메일 확인
		
		service.userAuth(userEmail);
		model.addAttribute("userEmail", userEmail);

		return "/user/emailConfirm";
	}

	@RequestMapping(value = "/findId", method = RequestMethod.POST)
	public String findIdGet(UserVO vo, String toEmail, RedirectAttributes rttr) throws Exception { // 아이디 찾기

		if (service.findIdCheck(vo) > 0) {
			service.findId(vo, toEmail);
			rttr.addFlashAttribute("findUser", "findIdSuccess");
		} else
			rttr.addFlashAttribute("findUser", "findIdFail");

		return "redirect:/login/loginGet";
	}

	@RequestMapping(value = "/findPwd", method = RequestMethod.POST)
	public String sendPwd(UserVO vo, RedirectAttributes rttr) throws Exception { // 패스워드 찾기

		if (service.findPwdCheck(vo) > 0) {
			service.findPwd(vo);
			rttr.addFlashAttribute("findUser", "findPwdSuccess");
		} else
			rttr.addFlashAttribute("findUser", "findPwdFail");

		return "redirect:/login/loginGet";
	}

	@RequestMapping(value = "/roomManage", method = RequestMethod.GET)
	public String roomManage(Model model) throws Exception {

		return "/user/roomManage";
	}

	@RequestMapping(value = "/studyManage", method = RequestMethod.GET)
	public String studyManage(Model model) throws Exception {

		return "/user/studyManage";
	}

}