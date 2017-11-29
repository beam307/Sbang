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
		// TODO Auto-generated method stub
		session.insert(namespace + ".create", vo);

	}

	@Override
	public UserVO read(String userEmail) throws Exception {
		return session.selectOne(namespace + ".read", userEmail);
	}

	@Override
	public void update(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".modify", vo);

	}

	@Override
	public void delete(String userEmail) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".delete", userEmail);
	}

	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		return session.selectOne(namespace + ".login", dto);
	}

	@Override
	public void changePwd(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.selectOne(namespace + ".updatePwd", vo);
	}

	@Override
	public boolean checkPw(String userEmail, String userPwd) {
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
	public void keepLogin(String userEmail, String sessionId, Date next) {
		Map<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("userEmail", userEmail);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next", next);

		session.update(namespace + ".keepLogin", paramMap);

	}

	@Override
	public UserVO checkUserWithSessionKey(String value) {
		return session.selectOne(namespace + ".checkUserWithSessionKey", value);
	}

}