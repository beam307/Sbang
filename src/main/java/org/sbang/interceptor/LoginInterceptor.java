package org.sbang.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter { // 로그인 인터셉터
	private static final String LOGIN = "login";
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception { // 인터셉터 후
		HttpSession session = request.getSession();

		ModelMap modelMap = modelAndView.getModelMap();
		Object userVO = modelMap.get("userVO"); // userVO 모델속성 가져옴

		if (userVO != null) { // 로그인 성공시(객체가 있을 경우)
			logger.info("new login success");
			session.setAttribute(LOGIN, userVO); // userVO 세션저장(아이디,이름만 저장)
			
			Object dest = session.getAttribute("dest"); // URI 세션 저장
			response.sendRedirect(dest != null ? (String) dest : "/");
		}

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception { // 인터셉터 전
		HttpSession session = request.getSession();
		if (session.getAttribute(LOGIN) != null) { // 기존 로그인정보 삭제
			logger.info("clear login data before");
			session.removeAttribute(LOGIN);
		}
		return true;
	}

}
