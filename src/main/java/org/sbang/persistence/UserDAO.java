package org.sbang.persistence;

import org.sbang.DTO.LoginDTO;
import org.sbang.domain.UserVO;

public interface UserDAO {
	
	public void create(UserVO vo) throws Exception;
	
	public UserVO read(String id) throws Exception;
	
	public void update(UserVO vo) throws Exception;
	
	public void delete(String id) throws Exception;
	
	public UserVO login(LoginDTO dto) throws Exception; // 로그인
}
