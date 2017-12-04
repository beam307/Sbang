package org.sbang.service;

import java.util.List;

import javax.inject.Inject;

import org.sbang.domain.Criteria;
import org.sbang.domain.SearchCriteria;
import org.sbang.domain.StudyVO;
import org.sbang.persistence.StudyDAO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class StudyServiceImpl implements StudyService {

	@Inject
	private StudyDAO studyDAO;

	@Transactional
	@Override
	public void regist(StudyVO study) throws Exception {
		studyDAO.create(study);
		String[] files = study.getFiles();
		System.out.println("어떻게 나올가나???file:" + files.toString());
		if (files == null) {
			return;
		}
		for (String imagePath : files) {
			studyDAO.addImg(imagePath);
		}
	}

	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public StudyVO read(Integer studyNo) throws Exception {
		// studyDAO.updateViewCnt(studyId);
		return studyDAO.read(studyNo);
	}

	@Override
	public List<String> getImg(Integer studyNo) throws Exception {
		return studyDAO.getImg(studyNo);
	}

	@Transactional
	@Override
	public void modify(StudyVO study) throws Exception {
		studyDAO.update(study);
		Integer studyNo = study.getStudyNo();
		System.out.println(studyNo);
		studyDAO.deleteImg(studyNo);

		String[] files = study.getFiles();
		if (files == null) {
			return;
		}
		for (String fileName : files) {
			studyDAO.replaceImg(fileName, studyNo);
		}

	}

	@Transactional
	@Override
	public void remove(Integer studyNo) throws Exception {
		// replyDAO.deleteWithBno(bno);
		studyDAO.deleteImg(studyNo);
		studyDAO.delete(studyNo);
	}

	@Override
	public List<StudyVO> listAll() throws Exception {
		return studyDAO.listAll();
	}

	@Override
	public List<StudyVO> listCriteria(Criteria cri) throws Exception {
		return studyDAO.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return studyDAO.countPaging(cri);
	}

	@Override
	public List<StudyVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return studyDAO.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return studyDAO.listSearchCount(cri);
	}
}
