package org.sbang.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.sbang.domain.UserVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter { // 로그인 인터셉터
	private static final String LOGIN = "login";
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception { // 인터셉터
																																					// 후
		HttpSession session = request.getSession();

		ModelMap modelMap = modelAndView.getModelMap();
		Object userVO = modelMap.get("userVO"); // userVO 모델속성 가져옴
		UserVO vo = (UserVO) userVO;

		if (userVO != null) { // 로그인 성공시(객체가 있을 경우)
			logger.info("new login success");
			session.setAttribute(LOGIN, userVO); // userVO 세션저장(아이디,이름만 저장)

			if (request.getParameter("useCookie") != null) {
				logger.info("remember me........");
				Cookie loginCookie = new Cookie("loginCookie", session.getId()); // loginCookie
																					// 쿠키에
																					// 세션id
																					// 저장
				loginCookie.setPath("/");
				loginCookie.setMaxAge(60 * 60 * 24 * 7);
				response.addCookie(loginCookie);
			}

			Cookie idCookie = new Cookie("rememberID", vo.getUserEmail());

			if (request.getParameter("rememberEmail") != null) {
				idCookie.setMaxAge(60 * 60 * 24 * 7);
				idCookie.setPath("/");
				response.addCookie(idCookie);
			} else {
				idCookie.setMaxAge(0);
				idCookie.setPath("/");
				response.addCookie(idCookie);
			}

			Object dest = session.getAttribute("dest"); // URI 세션 저장
			response.sendRedirect(dest != null ? (String) dest : "/");
		}
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception { // 인터셉터
																															// 전
		HttpSession session = request.getSession();
		if (session.getAttribute(LOGIN) != null) { // 기존 로그인정보 삭제
			logger.info("clear login data before");
			session.removeAttribute(LOGIN);
		}
		return true;
	}

}
