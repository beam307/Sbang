package org.sbang.persistence;

import java.util.Date;

import org.sbang.DTO.LoginDTO;
import org.sbang.domain.UserVO;

public interface UserDAO {

	public void create(UserVO vo) throws Exception;

	public UserVO read(String userEmail) throws Exception;

	public void update(UserVO vo) throws Exception;

	public void delete(String userEmail) throws Exception;

	public UserVO login(LoginDTO dto) throws Exception; // 로그인

	public void changePwd(UserVO vo) throws Exception;

	public boolean checkPw(String userEmail, String userPwd) throws Exception;

	public void keepLogin(String userEmail, String sessionId, Date next) throws Exception;

	public UserVO checkUserWithSessionKey(String value) throws Exception;

	public void createAuthKey(String userEmail, String authKey) throws Exception;

	public void userAuth(String userEmail) throws Exception;

	public void deleteAuth(String userEmail) throws Exception;

	public void insertNaver(UserVO vo) throws Exception;

	public String findId(String userBirth, String userName) throws Exception;

	public void createPwd(String userEmail, String key) throws Exception;

<<<<<<< HEAD
	public int selectNaver(UserVO vo) throws Exception;

	public void insertKakao(UserVO vo) throws Exception;

	public int selectKakao(UserVO vo) throws Exception;
	
	public String getPwd(LoginDTO dto) throws Exception;
=======
	public void imageUpload(UserVO vo) throws Exception;
>>>>>>> branch 'user' of https://github.com/beam307/Sbang.git

}