package org.sbang.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.sbang.domain.StudyVO;
import org.springframework.stereotype.Repository;

@Repository
public class StudyDAOImpl implements StudyDAO {
	@Inject
	private SqlSession session;

	private static String namespace = "org.sbang.mapper.StudyMapper";

	@Override
	public void create(StudyVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
	}

	@Override
	public StudyVO read(Integer studyNo) throws Exception {
		return session.selectOne(namespace + ".read", studyNo);
	}

	@Override
	public void update(StudyVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer studyNo) throws Exception {
		session.delete(namespace + ".delete", studyNo);
	}

	@Override
	public List<StudyVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}
	
	@Override
	public void addImg(String imagePath) throws Exception{
		session.insert(namespace+".addImg",imagePath);
	}
	
	@Override
	public void deleteImg(Integer studyNo) throws Exception{
		session.delete(namespace+".deleteImg",studyNo);
	}
	
	@Override
	public List<String> getImg(Integer studyNo) throws Exception{
		return session.selectList(namespace+".getImg",studyNo);
	}
	
//
//	@Override
//	public List<BoardVO> listPage(int page) throws Exception {
//		if (page <= 0) {
//			page = 1;
//		}
//		page = (page - 1) * 10;
//
//		return session.selectList(namespace + ".listPage", page);
//	}
//
//	@Override
//	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
//		return session.selectList(namespace + ".listCriteria", cri);
//	}
//
//	@Override
//	public int countPaging(Criteria cri) throws Exception {
//		return session.selectOne(namespace + ".countPaging", cri);
//	}
//
//	@Override
//	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception {
//		return session.selectList(namespace+".listSearch",cri);
//	}
//	
//	@Override
//	public int listSearchCount(SearchCriteria cri) throws Exception{
//		return session.selectOne(namespace+".listSearchCount",cri);
//	}
//	
//	@Override
//	public void updateReplyCnt(Integer bno,int amount) throws Exception{
//		Map<String,Object> paramMap=new HashMap<String,Object>();
//		
//		paramMap.put("bno", bno);
//		paramMap.put("amount", amount);
//		session.update(namespace+".updateReplyCnt",paramMap);
//	}
//	
//	@Override
//	public void updateViewCnt(Integer bno) throws Exception{
//		session.update(namespace+".updateViewCnt",bno);
//	}
//	

//	
//	
//	

//	
//	@Override
//	public void replaceAttach(String fullName,Integer bno) throws Exception{
//		Map<String,Object> paramMap=new HashMap<String,Object>();
//		
//		paramMap.put("bno", bno);
//		paramMap.put("fullName", fullName);
//		
//		session.insert(namespace+".replaceAttach",paramMap);
//	}
}
