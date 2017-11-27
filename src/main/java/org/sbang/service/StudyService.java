package org.sbang.service;

import java.util.List;

import org.sbang.domain.StudyVO;


public interface StudyService {
	public void regist(StudyVO study) throws Exception;
	
	public StudyVO read(Integer studyId) throws Exception;
	
	public void modify(StudyVO study)throws Exception;
	
	public void remove(Integer studyId) throws Exception;
	
	public List<StudyVO> listAll() throws Exception;
	
//	public List<StudyVO> listCriteria(Criteria cri) throws Exception;
//	
//	public int listCountCriteria(Criteria cri) throws Exception;
//	
//	public List<StudyVO> listSearchCriteria(SearchCriteria cri) throws Exception;
//	
//	public int listSearchCount(SearchCriteria cri) throws Exception;
//	
//	public List<String> getAttach(Integer bno) throws Exception;
}
