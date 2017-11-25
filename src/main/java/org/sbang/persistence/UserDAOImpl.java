package org.sbang.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.sbang.domain.UserVO;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "org.sbang.mapper.UserMapper";

	@Override
	public void create(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".create", vo);

	}

	@Override
	public UserVO read(String id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String id) throws Exception {
		// TODO Auto-generated method stub
		
	}
	

}
