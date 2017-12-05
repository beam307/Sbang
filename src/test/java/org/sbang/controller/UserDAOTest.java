package org.sbang.controller;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.sbang.domain.UserVO;
import org.sbang.persistence.UserDAO;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class UserDAOTest {

	@Inject
	private UserDAO dao;
	
	@Test
	public void testCreate() throws Exception {
		
		UserVO user = new UserVO();
				
		dao.create(user);
		
		
	}

}

/*private int studyId;

private Date studyRegisterDate;
private Date studyUpdateDate;

private int studyTargetAge;
private int studyMaxMemberCount;
private int studyCurrentMemberCount;
private int studyMembershipFee;
private int studyWorkPerMonth;

private Date studyStartDate;
private Date studyEndDate;*/
