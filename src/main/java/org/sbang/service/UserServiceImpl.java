package org.sbang.service;

import java.util.Date;

import javax.inject.Inject;

import org.sbang.DTO.LoginDTO;
import org.sbang.domain.UserVO;
import org.sbang.mail.MailHandler;
import org.sbang.mail.TempKey;
import org.sbang.persistence.UserDAO;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class UserServiceImpl implements UserService {

	@Inject
	private JavaMailSender mailSender;

	@Inject
	private BCryptPasswordEncoder pwdEncoder;

	@Inject
	private UserDAO dao;

	@Transactional
	@Override
	public void create(UserVO vo) throws Exception { // 회원가입
		vo.setUserPwd(pwdEncoder.encode(vo.getUserPwd())); // 비밀번호 암호화
		dao.create(vo); // 회원가입

		String key = new TempKey().getKey(50, false); // 인증키 생성
		dao.createAuthKey(vo.getUserEmail(), key); // 인증키 DB저장

		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[스방 홈페이지 이메일 인증]");
		sendMail.setText(
				new StringBuffer().append("<h1>메일인증</h1>").append("<a href='http://localhost/user/emailConfirm?userEmail=").append(vo.getUserEmail()).append("&key=").append(key).append("' target='_blenk'>이메일 인증 확인</a>").toString());
		sendMail.setFrom("beam2073@gmail.com", "스방관리자");
		sendMail.setTo(vo.getUserEmail());
		sendMail.send();
	}

	@Override
	public UserVO login(LoginDTO dto) throws Exception { // 로그인
		return dao.login(dto);
	}

	@Override
	public void keepLogin(String userEmail, String sessionId, Date next) throws Exception { // 자동로그인
		dao.keepLogin(userEmail, sessionId, next);
	}

	@Override
	public UserVO checkLoginBefore(String value) throws Exception { // 자동 로그인
		return dao.checkUserWithSessionKey(value);
	}

	@Override
	public String getPwd(LoginDTO dto) throws Exception { // 비밀번호 가져오기
		return dao.getPwd(dto);
	}

	@Override
	public String getPwd(UserVO vo) throws Exception { // 비밀번호 가져오기
		return dao.getPwd(vo);
	}

	@Override
	public void findId(UserVO vo, String toEmail) throws Exception { // 아이디찾기
		String MyEmail = dao.findId(vo);

		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[스방 홈페이지 이메일 인증]");
		sendMail.setText(new StringBuffer().append("고객님의 이메일 주소는 [").append(MyEmail).append("] 입니다.").toString());
		sendMail.setFrom("beam2073@gmail.com", "스방관리자");
		sendMail.setTo(toEmail);
		sendMail.send();
	}

	@Override
	public int findIdCheck(UserVO vo) throws Exception { // 아이디찾기 정보 확인
		return dao.findIdCheck(vo);
	}

	@Override
	public void findPwd(UserVO vo) throws Exception { // 비밀번호 찾기
		String tempKey = new TempKey().getKey(10, false); // 인증키 생성
		String tempPwd = pwdEncoder.encode(tempKey); // 비밀번호 암호화

		dao.findPwd(vo, tempPwd); // 임시 비밀번호로 변경

		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[스방 홈페이지 이메일 인증]");
		sendMail.setText(new StringBuffer().append("임시 비밀번호는 [").append(tempKey).append("]입니다.").toString());
		sendMail.setFrom("beam2073@gmail.com", "스방관리자");
		sendMail.setTo(vo.getUserEmail());
		sendMail.send();
	}

	@Override
	public int findPwdCheck(UserVO vo) throws Exception { // 비밀번호 찾기 정보 확인
		return dao.findPwdCheck(vo);
	}

	@Override
	public UserVO read(String userEmail) throws Exception { // 마이페이지 유저정보 가져오기
		return dao.read(userEmail);
	}

	@Override
	public void changePwd(UserVO vo) throws Exception { // 비밀번호 변경
		dao.changePwd(vo);
	}

	@Override
	public void modify(UserVO vo) throws Exception { // 프로필 정보 수정
		dao.modify(vo);
	}

	@Transactional
	@Override
	public void delete(String userEmail) throws Exception { // 회원 탈퇴
		dao.delete(userEmail);
		dao.deleteAuth(userEmail);
	}

	@Override
	public void userAuth(String userEmail) throws Exception { // 이메일인증 후 인증상태 변경
		dao.userAuth(userEmail);
	}

	@Override
	public void insertNaver(UserVO vo) throws Exception { // 네이버 로그인 정보 추가
		dao.insertNaver(vo);
	}

	@Override
	public int selectNaver(UserVO vo) throws Exception { // 네이버 로그인 정보 확인
		return dao.selectNaver(vo);
	}

	@Override
	public void insertKakao(UserVO vo) throws Exception { // 카카오 로그인 정보 추가
		dao.insertKakao(vo);
	}

	@Override
	public int selectKakao(UserVO vo) throws Exception { // 카카오 로그인 정보 확인
		return dao.selectKakao(vo);
	}
}