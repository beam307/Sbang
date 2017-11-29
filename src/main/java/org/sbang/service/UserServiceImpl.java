package org.sbang.service;

import java.util.Date;

import javax.inject.Inject;

import org.sbang.DTO.LoginDTO;
import org.sbang.domain.UserVO;
import org.sbang.persistence.UserDAO;
import org.springframework.stereotype.Repository;

@Repository
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;

	@Override
	public void create(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.create(vo);

	}

	@Override
	public UserVO read(String userEmail) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(userEmail);
	}

	@Override
	public void update(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.update(vo);

	}

	@Override
	public void delete(String userEmail) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(userEmail);
	}

	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		return dao.login(dto);
	}

	@Override
	public void changePwd(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.changePwd(vo);
	}

	@Override
	public boolean checkPw(String userEmail, String userPwd) {
		return dao.checkPw(userEmail, userPwd);
	}

	@Override
	public void keepLogin(String userEmail, String sessionId, Date next) throws Exception {
		dao.keepLogin(userEmail, sessionId, next);
	}

	@Override
	public UserVO checkLoginBefore(String value) {
		return dao.checkUserWithSessionKey(value);
	}

}