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
	public void create(UserVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
	}

	@Override
	public UserVO read(String userEmail) throws Exception {
		return session.selectOne(namespace + ".read", userEmail);
	}

	@Override
	public void update(UserVO vo) throws Exception {
		session.update(namespace + ".modify", vo);
	}

	@Override
	public void delete(String userEmail) throws Exception {
		session.delete(namespace + ".delete", userEmail);
	}

	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		return session.selectOne(namespace + ".login", dto);
	}

	@Override
	public void changePwd(UserVO vo) throws Exception {
		session.selectOne(namespace + ".updatePwd", vo);
	}

	@Override
	public boolean checkPw(String userEmail, String userPwd) throws Exception {
		boolean result = false;

		Map<String, String> map = new HashMap<String, String>();
		map.put("userEmail", userEmail);
		map.put("userPwd", userPwd);

		int count = session.selectOne(namespace + ".checkPwd", map);
		if (count == 1)
			result = true;
		return result;
	}

	@Override
	public void keepLogin(String userEmail, String sessionId, Date next) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("userEmail", userEmail);
		map.put("sessionId", sessionId);
		map.put("next", next);

		session.update(namespace + ".keepLogin", map);

	}

	@Override
	public UserVO checkUserWithSessionKey(String value) throws Exception {
		return session.selectOne(namespace + ".checkUserWithSessionKey", value);
	}

	@Override
	public void createAuthKey(String userEmail, String authKey) throws Exception { // 인증키 DB에 넣기
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("userEmail", userEmail);
		map.put("authKey", authKey);

		session.selectOne(namespace + ".createAuthKey", map);
	}

	@Override
	public void userAuth(String userEmail) throws Exception { // 인증키 일치시 DB칼럼(인증여부) false->true 로 변경
		session.update(namespace + ".userAuth", userEmail);
	}

	@Override
	public void deleteAuth(String userEmail) throws Exception {
		session.delete(namespace + ".deleteAuth", userEmail);
	}

	@Override
	public String findId(String userBirth, String userName) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("userBirth", userBirth);
		map.put("userName", userName);
		return session.selectOne(namespace + ".findId", map);

	}

	@Override
	public void createPwd(String userEmail, String key) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("userEmail", userEmail);
		map.put("key", key);
		session.update(namespace + ".createPwd", map);

	}

	@Override
	public void insertNaver(UserVO vo) throws Exception {
		session.update(namespace + ".insertNaver", vo);
	}

	@Override
	public int selectNaver(UserVO vo) throws Exception {
		return session.selectOne(namespace + ".selectNaver", vo);
	}

	@Override
	public void insertKakao(UserVO vo) throws Exception {
		session.update(namespace + ".insertKakao", vo);
	}

	@Override
	public int selectKakao(UserVO vo) throws Exception {
		return session.selectOne(namespace + ".selectKakao", vo);
	}

}