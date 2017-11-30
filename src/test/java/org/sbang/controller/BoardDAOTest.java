package org.sbang.controller;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.sbang.domain.SearchCriteria;
import org.sbang.domain.StudyVO;
import org.sbang.persistence.StudyDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BoardDAOTest {

	@Inject 
	StudyDAO dao;
	
	private static Logger logger=LoggerFactory.getLogger(BoardDAOTest.class);
	
	/*@Test
	public void testCreate()throws Exception{
		StudyVO study=new StudyVO();
		study.setStudyName("새로운 글을!!` 넣습니다");
		study.setStudyCategory("#새로운 글을 넣습니다.");
		study.setStudyRegion("서울시 강서구");
		study.setStudyMaxMemCnt(5);
		dao.create(study);
	}*/
	
	/*@Test
	public void testRead() throws Exception{
		logger.info(dao.read(4).toString());
	}
	*/
	/*@Test
	public void testUpdate() throws Exception{
		BoardVO board=new BoardVO();
		board.setBno(3);
		board.setTitle("수정된 글!");
		board.setContent("수정 테스트!");
		dao.update(board);
	}*/
	
	/*@Test
	public void testDelete() throws Exception{
		dao.delete(3);
	}*/
	/*@Test
	public void testListPage() throws Exception{
		int page=3;
		List<StudyVO> list=dao.listPage(page);
		
		for(StudyVO studyVO:list) {
			logger.info(studyVO.getStudyNo()+":"+studyVO.getStudyName());
		}
	}*/
	
	/*@Test
	public void testListCriteria() throws Exception{
		Criteria cri=new Criteria();
		cri.setPage(2);
		cri.setPerPageNum(20);
		
		List<StudyVO> list=dao.listCriteria(cri);
		
		for(StudyVO studyVO:list) {
			logger.info(studyVO.getStudyNo()+":"+studyVO.getStudyName());
		}
	}*/
	/*@Test
	public void testURI() throws Exception{
		UriComponents uriComponents=UriComponentsBuilder.newInstance()
				.path("/board/read")
				.queryParam("bno", 12)
				.queryParam("perPageNum", 20)
				.build();
		logger.info("/board/read?bno=12&perPageNum=20");
		logger.info(uriComponents.toString());
	}*/
	/*@Test
	public void testURI2() throws Exception{
		UriComponents uriComponents=UriComponentsBuilder.newInstance()
				.path("/{module}/{page}")
				.queryParam("bno", 12)
				.queryParam("perPageNum", 20)
				.build()
				.expand("board","read")
				.encode();
		logger.info("/board/read?bno=12&perPageNum=20");
		logger.info(uriComponents.toString());
	}*/
	
	@Test
	public void testDynamic1() throws Exception{
		SearchCriteria cri=new SearchCriteria();
		cri.setPage(1);
		cri.setKeyword("d");
		cri.setSearchType("t");
		
		logger.info("========================");
		
		List<StudyVO> list=dao.listSearch(cri);
		
		for(StudyVO studyVO :list) {
			logger.info(studyVO.getStudyNo()+": "+studyVO.getStudyName());
		}
		logger.info("==========================");
		logger.info("COUNT: "+dao.listSearchCount(cri));
	}
}
