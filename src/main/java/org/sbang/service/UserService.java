package org.sbang.service;

import java.util.Date;

import org.sbang.DTO.LoginDTO;
import org.sbang.domain.UserVO;

public interface UserService {
	
	public void create(UserVO vo) throws Exception;
	
	public UserVO read(String id) throws Exception;
	
	public void update(UserVO vo) throws Exception;
	
	public void delete(String id) throws Exception;
	
	public UserVO login(LoginDTO dto) throws Exception;
	
	public void keepLogin(String userEmail, String sessionId, Date next) throws Exception;
	
	public UserVO checkLoginBefore(String value);

}
