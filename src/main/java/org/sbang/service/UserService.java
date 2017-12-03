package org.sbang.service;

import java.util.Date;

import org.sbang.DTO.LoginDTO;
import org.sbang.domain.UserVO;

public interface UserService {

	public void create(UserVO vo) throws Exception;

	public UserVO read(String userEmail) throws Exception;

	public void update(UserVO vo) throws Exception;

	public void delete(String userEmail) throws Exception;

	public void changePwd(UserVO vo) throws Exception;

	public UserVO login(LoginDTO dto) throws Exception;

	public boolean checkPw(String userEmail, String userPwd) throws Exception;

	public void keepLogin(String userEmail, String sessionId, Date next) throws Exception;

	public UserVO checkLoginBefore(String value) throws Exception;

	public void userAuth(String userEmail) throws Exception;

	public void findId(String userEmail, String userBirth, String userName) throws Exception;

	public void createPwd(String userEmail) throws Exception;

	public void insertNaver(UserVO vo) throws Exception;

	public int selectNaver(UserVO vo) throws Exception;

	public void insertKakao(UserVO vo) throws Exception;

	public int selectKakao(UserVO vo) throws Exception;

}