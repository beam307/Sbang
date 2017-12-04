package org.sbang.controller;

import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.sbang.DTO.LoginDTO;
import org.sbang.domain.UserVO;
import org.sbang.kakao.KakaoLogin;
import org.sbang.naver.JsonParser;
import org.sbang.naver.NaverLoginBO;
import org.sbang.service.UserService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import com.fasterxml.jackson.databind.JsonNode;
import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
@RequestMapping("/login")
public class LoginController {

	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;

	@Inject
	private BCryptPasswordEncoder pwdEncoder;

	/* NaverLoginBO */
	@Inject
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	@Inject
	private UserService service;

	@RequestMapping(value = "/loginGet", method = RequestMethod.GET)
	public String loginGet() throws Exception {

		return "/user/login";
	}

	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPost(LoginDTO dto, Model model, HttpSession session, RedirectAttributes rttr, UserVO vo) throws Exception {
		
		if (pwdEncoder.matches(dto.getUserPwd(), service.getPwd(dto))){ 
			vo = service.login(dto); // vo에 userEmail만 저장
		}
		
		if (vo == null){
			return;
		}
		model.addAttribute("userVO", vo); // model에 {userVO : vo} 저장
		if (dto.isUseCookie()) {
			int amount = 60 * 60 * 24 * 7;

			Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));

			service.keepLogin(vo.getUserEmail(), session.getId(), sessionLimit); // 세션ID,
																					// 세션시간
																					// 저장
		}

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET) // 로그아웃
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		Object obj = session.getAttribute("login");

		if (obj != null) {
			UserVO vo = (UserVO) obj;
			session.removeAttribute("login"); // 세션 제거
			session.invalidate();

			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

			if (loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepLogin(vo.getUserEmail(), session.getId(), new Date());
			}
		}
		return "/login/logout";
	}

	@RequestMapping(value = "/naverLogin", method = RequestMethod.GET)
	public ModelAndView naverLogin(HttpSession session) {
		/* 네아로 인증 URL을 생성하기 위하여 getAuthorizationUrl을 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);

		return new ModelAndView("login/naverLogin", "url", naverAuthUrl);
	}

	@RequestMapping(value = "/callback", method = RequestMethod.GET)
	public String callback(@RequestParam String code, @RequestParam String state, HttpSession session, Model model, UserVO vo) throws Exception {
		/* 네아로 인증이 성공적으로 완료되면 code 파라미터가 전달되며 이를 통해 access token을 발급 */
		JsonParser json = new JsonParser();

		OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
		String apiResult = naverLoginBO.getUserProfile(oauthToken);
		vo = json.changeJson(apiResult); // vo에 userEmail, userGender, userNaver 저장

		if (service.selectNaver(vo) > 0) {
			session.setAttribute("login", vo);
		} else {
			service.insertNaver(vo);
			session.setAttribute("login", vo);
		}

		return "/login/callback";
	}

	@RequestMapping(value = "/kakaoLogin", method = { RequestMethod.GET, RequestMethod.POST })
	public String kakaoLogin(@RequestParam("code") String code, UserVO vo, HttpSession session) throws Exception {
		JsonNode jsonToken = KakaoLogin.getAccessToken(code);
		JsonNode userInfo = KakaoLogin.getKakaoUserInfo(jsonToken.get("access_token").toString());
		vo = KakaoLogin.changeData(userInfo); // vo userEmail, userName, userKakao 저장

		if (service.selectKakao(vo) > 0) {
			session.setAttribute("login", vo);
		} else {
			service.insertKakao(vo);
			session.setAttribute("login", vo);
		}

		return "/login/kakaoLogin";
	}

}