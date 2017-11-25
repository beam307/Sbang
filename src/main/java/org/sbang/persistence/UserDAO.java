package org.sbang.persistence;

import org.sbang.domain.UserVO;

public interface UserDAO {
	
	public void create(UserVO vo) throws Exception;
	
	public UserVO read(String id) throws Exception;
	
	public void update(UserVO vo) throws Exception;
	
	public void delete(String id) throws Exception;
}
