package org.sbang.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.sbang.DTO.LoginDTO;
import org.sbang.domain.UserVO;
import org.sbang.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Inject
	private UserService service;

	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPOST(LoginDTO dto, Model model, HttpServletRequest request) throws Exception {
		UserVO vo = service.login(dto); // LoginDTO vo에 저장
		if (vo == null) {
			return;
		}
		model.addAttribute("userVO", vo); // model에 {userVO : vo} 저장
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET) // 로그아웃
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		Object obj = session.getAttribute("login");
		
		if(obj != null){
			UserVO vo = (UserVO) obj; //쿠키 제거용도
			session.removeAttribute("login"); // 세션 제거
			session.invalidate();
		}
		return "login/logout";
	}
	
}