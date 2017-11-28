package org.sbang.service;

import java.util.List;

import javax.inject.Inject;

import org.sbang.domain.StudyVO;
import org.sbang.persistence.StudyDAO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class StudyServiceImpl implements StudyService {

	@Inject
	private StudyDAO studyDAO;
	


	@Transactional
	@Override
	public void regist(StudyVO study) throws Exception {
		studyDAO.create(study);
		String[] files=study.getFiles();
		System.out.println(files);
		if(files==null) {return;}
		for(String imagePath:files) {
			studyDAO.addImg(imagePath);
		}
	}

	//@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public StudyVO read(Integer studyNo) throws Exception {
		//studyDAO.updateViewCnt(studyId);
		return studyDAO.read(studyNo);
	}

	//@Transactional
	@Override
	public void modify(StudyVO study) throws Exception {
		studyDAO.update(study);
		//Integer studyId=study.getStudyId();
		//System.out.println(studyId);
		//studyDAO.deleteAttach(studyId);
		
//		String[] files=board.getFiles();
//		if(files==null) {return;}
//		for(String fileName:files) {
//			studyDAO.replaceAttach(fileName, bno);
//		}
		
		
	}
	
	@Transactional
	@Override
	public void remove(Integer studyNo) throws Exception {
		//boardDAO.deleteAttach(studyId);
		//replyDAO.deleteWithBno(bno);
		studyDAO.delete(studyNo);
	}

	@Override
	public List<StudyVO> listAll() throws Exception {
		return studyDAO.listAll();
	}
//
//	@Override
//	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
//		return boardDAO.listCriteria(cri);
//	}
//
//	@Override
//	public int listCountCriteria(Criteria cri) throws Exception {
//		return boardDAO.countPaging(cri);
//	}
//	@Override
//	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
//		return boardDAO.listSearch(cri);
//	}
//	@Override
//	public int listSearchCount(SearchCriteria cri) throws Exception {
//		return boardDAO.listSearchCount(cri);
//	}
//	@Override
//	public List<String> getAttach(Integer bno) throws Exception{
//		return boardDAO.getAttach(bno);
//	}
}
