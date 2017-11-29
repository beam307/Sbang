package org.sbang.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter { // 로그인 인증 인터셉터(ex 로그인 X 일때 등록페이지 이동)
	private static final Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		HttpSession session = request.getSession();
		if (session.getAttribute("login") == null) { // login세션이 없으면
			logger.info("current user is not logined");
			saveDest(request); // 위치값 가져오기
			
			response.sendRedirect("/login/loginGet");
			return false;
		}

		return true;
	}

	private void saveDest(HttpServletRequest req) {
		String uri = req.getRequestURI(); // URI로부터 URL 반환
		String query = req.getQueryString(); // URI 반환(질의 문자열 포함)

		if (query == null || query.equals("null"))
			query = "";
		else
			query = "?" + query;

		if (req.getMethod().equals("GET")) {
			logger.info("dest : " + (uri + query));
			req.getSession().setAttribute("dest", uri + query);
		}
	}

}