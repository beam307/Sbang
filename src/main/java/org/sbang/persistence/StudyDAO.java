package org.sbang.persistence;

import java.util.List;

import org.sbang.domain.StudyVO;

public interface StudyDAO {
	public void create(StudyVO vo) throws Exception;
	
	public StudyVO read(Integer studyId) throws Exception;
	
	public void update(StudyVO vo) throws Exception;
	
	public void delete(Integer studyId) throws Exception;
	
	public List<StudyVO> listAll() throws Exception;
	
//	public List<StudyVO> listPage(int page) throws Exception;
//	
//	public List<StudyVO> listCriteria(Criteria cri) throws Exception;
//	
//	public int countPaging(Criteria cri) throws Exception;
//	
//	public List<StudyVO> listSearch(SearchCriteria cri) throws Exception;
//	
//	public int listSearchCount(SearchCriteria cri)throws Exception;
//	
//	public void updateReplyCnt(Integer bno, int amount) throws Exception;
//	
//	public void updateViewCnt(Integer bno) throws Exception;
//	
//	public void addAttach(String fullName) throws Exception;
//	
//	public List<String> getAttach(Integer bno) throws Exception;
//	
//	public  void deleteAttach(Integer bno) throws Exception;
//	
//	public void replaceAttach(String fullName,Integer bno) throws Exception;
}
