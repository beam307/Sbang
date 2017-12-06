package org.sbang.service;

import java.util.List;

import javax.inject.Inject;

import org.sbang.domain.SearchCriteria;
import org.sbang.domain.StudyVO;
import org.sbang.domain.WeekVO;
import org.sbang.persistence.ReplyDAO;
import org.sbang.persistence.StudyDAO;
import org.sbang.persistence.WeekDAO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class StudyServiceImpl implements StudyService {

	@Inject
	private StudyDAO studyDAO;

	@Inject
	private ReplyDAO replyDAO;

	@Inject
	private WeekDAO weekDAO;

	@Transactional
	@Override
	public void regist(StudyVO study) throws Exception {
		studyDAO.create(study);
		String[] files = study.getFiles();
		WeekVO[] weekArr = study.getWeekVO();
		/*
		 * if (files == null) { return; }
		 */
		for (String imagePath : files) {
			studyDAO.addImg(imagePath);
		}

		/*
		 * if (weekArr == null) { return; }
		 */
		for (WeekVO weekVO : weekArr) {
			weekDAO.create(weekVO);
		}

	}

	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public StudyVO read(Integer studyNo) throws Exception {
		StudyVO studyVO = studyDAO.read(studyNo);
		studyDAO.updateViewCnt(studyNo);
		return studyVO;
	}

	@Override
	public List<WeekVO> getWeek(Integer studyNo) throws Exception {
		return weekDAO.list(studyNo);
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
		/*
		 * if (files == null) { return; }
		 */
		for (String fileName : files) {
			studyDAO.replaceImg(fileName, studyNo);
		}
		weekDAO.delete(studyNo);
		WeekVO[] weekArr = study.getWeekVO();
		/*
		 * if (weekArr == null) { return; }
		 */
		for (WeekVO weekVO : weekArr) {
			weekDAO.replace(weekVO,studyNo);
		}
	}

	@Transactional
	@Override
	public void remove(Integer studyNo) throws Exception {
		weekDAO.delete(studyNo);
		replyDAO.deleteWithStudyNo(studyNo);
		studyDAO.deleteImg(studyNo);
		studyDAO.delete(studyNo);
	}

	@Override
	public List<StudyVO> listAll() throws Exception {
		return studyDAO.listAll();
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
