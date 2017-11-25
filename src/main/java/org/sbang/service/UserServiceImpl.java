package org.sbang.service;

import javax.inject.Inject;

import org.sbang.domain.UserVO;
import org.sbang.persistence.UserDAO;
import org.springframework.stereotype.Repository;


@Repository
public class UserServiceImpl implements UserService{
	

	@Inject
	private UserDAO dao;
	
	
	@Override
	public void create(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.create(vo);

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
