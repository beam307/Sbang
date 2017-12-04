package org.sbang.persistence;

import java.util.List;

import org.sbang.domain.Criteria;
import org.sbang.domain.SearchCriteria;
import org.sbang.domain.StudyVO;

public interface StudyDAO {
	public void create(StudyVO vo) throws Exception;

	public StudyVO read(Integer studyNo) throws Exception;

	public void update(StudyVO vo) throws Exception;

	public void delete(Integer studyNo) throws Exception;

	public List<StudyVO> listAll() throws Exception;

	public void addImg(String imagePatg) throws Exception;

	public void deleteImg(Integer studyNo) throws Exception;

	public List<String> getImg(Integer studyNo) throws Exception;

	public void replaceImg(String imagePath, Integer studyNo) throws Exception;

	public List<StudyVO> listPage(int page) throws Exception;

	public List<StudyVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;

	public List<StudyVO> listSearch(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	//
	// public void updateReplyCnt(Integer bno, int amount) throws Exception;
	//
	// public void updateViewCnt(Integer bno) throws Exception;
	//

	//
	//
	//

	//

}
