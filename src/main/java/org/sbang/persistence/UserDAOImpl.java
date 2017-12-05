package org.sbang.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.sbang.DTO.LoginDTO;
import org.sbang.domain.UserVO;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "org.sbang.mapper.UserMapper";

	@Override
	public void create(UserVO vo) throws Exception { // 회원가입
		session.insert(namespace + ".create", vo);
	}

	@Override
	public void createAuthKey(String userEmail, String authKey) throws Exception { // 회원가입시 인증키 추가
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("userEmail", userEmail);
		map.put("authKey", authKey);

		session.selectOne(namespace + ".createAuthKey", map);
	}

	@Override
	public UserVO login(LoginDTO dto) throws Exception { // 로그인
		return session.selectOne(namespace + ".login", dto);
	}

	@Override
	public void keepLogin(String userEmail, String sessionId, Date next) throws Exception { // 자동로그인
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("userEmail", userEmail);
		map.put("sessionId", sessionId);
		map.put("next", next);

		session.update(namespace + ".keepLogin", map);
	}

	@Override
	public UserVO checkUserWithSessionKey(String value) throws Exception { // 자동 로그인
		return session.selectOne(namespace + ".checkUserWithSessionKey", value);
	}

	@Override
	public String getPwd(LoginDTO dto) throws Exception { // 비밀번호 가져오기
		return session.selectOne(namespace + ".getPwd", dto);
	}

	@Override
	public String getPwd(UserVO vo) throws Exception { // 비밀번호 가져오기
		return session.selectOne(namespace + ".getPwd", vo);
	}

	@Override
	public String findId(UserVO vo) throws Exception { // 아이디 찾기
		return session.selectOne(namespace + ".findId", vo);
	}

	@Override
	public int findIdCheck(UserVO vo) throws Exception { // 아이디찾기 정보확인
		return session.selectOne(namespace + ".findIdCheck", vo);
	}

	@Override
	public void findPwd(UserVO vo, String tempPwd) throws Exception { // 비밀번호 찾기
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("UserVO", vo);
		map.put("tempPwd", tempPwd);

		session.update(namespace + ".findPwd", map);
	}

	@Override
	public int findPwdCheck(UserVO vo) throws Exception { // 비밀번호찾기 정보확인
		return session.selectOne(namespace + ".findPwdCheck", vo);
	}

	@Override
	public UserVO read(String userEmail) throws Exception { // 마이페이지 유저정보 가져오기
		return session.selectOne(namespace + ".read", userEmail);
	}

	@Override
	public void changePwd(UserVO vo) throws Exception { // 비밀번호 변경
		session.selectOne(namespace + ".changePwd", vo);
	}

	@Override
	public void modify(UserVO vo) throws Exception { // 프로필 정보 수정
		session.update(namespace + ".modify", vo);
	}

	@Override
	public void delete(String userEmail) throws Exception { // 회원 탈퇴
		session.delete(namespace + ".delete", userEmail);
	}

	@Override
	public void deleteAuth(String userEmail) throws Exception { // 회원탈퇴시 인증정보 삭제
		session.delete(namespace + ".deleteAuth", userEmail);
	}

	@Override
	public void userAuth(String userEmail) throws Exception { // 이메일인증 후 인증상태 변경
		session.update(namespace + ".userAuth", userEmail);
	}

	@Override
	public void insertNaver(UserVO vo) throws Exception { // 네이버 로그인 정보 추가
		session.update(namespace + ".insertNaver", vo);
	}

	@Override
	public int selectNaver(UserVO vo) throws Exception { // 네이버 로그인 정보 확인
		return session.selectOne(namespace + ".selectNaver", vo);
	}

	@Override
	public void insertKakao(UserVO vo) throws Exception { // 카카오 로그인 정보 추가
		session.update(namespace + ".insertKakao", vo);
	}

	@Override
	public int selectKakao(UserVO vo) throws Exception { // 카카오 로그인 정보 확인
		return session.selectOne(namespace + ".selectKakao", vo);
	}
}