package org.sbang.service;

import java.util.List;

import javax.inject.Inject;

import org.sbang.domain.Criteria;
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

<<<<<<< HEAD
	@Inject
	private ReplyDAO replyDAO;

	@Inject
	private WeekDAO weekDAO;

=======
>>>>>>> branch 'younghoon' of https://github.com/beam307/Sbang
	@Transactional
	@Override
	public void regist(StudyVO study) throws Exception {
		studyDAO.create(study);
		String[] files = study.getFiles();
<<<<<<< HEAD
		WeekVO[] weekArr = study.getWeekVO();
		/*
		 * if (files == null) { return; }
		 */
=======
		System.out.println("어떻게 나올가나???file:" + files.toString());
		if (files == null) {
			return;
		}
>>>>>>> branch 'younghoon' of https://github.com/beam307/Sbang
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
<<<<<<< HEAD
		StudyVO studyVO = studyDAO.read(studyNo);
		studyDAO.updateViewCnt(studyNo);
		return studyVO;
=======
		// studyDAO.updateViewCnt(studyId);
		return studyDAO.read(studyNo);
>>>>>>> branch 'younghoon' of https://github.com/beam307/Sbang
	}

	@Override
<<<<<<< HEAD
	public List<WeekVO> getWeek(Integer studyNo) throws Exception {
		return weekDAO.list(studyNo);
	}

	@Override
=======
>>>>>>> branch 'younghoon' of https://github.com/beam307/Sbang
	public List<String> getImg(Integer studyNo) throws Exception {
		return studyDAO.getImg(studyNo);
	}

	@Transactional
	@Override
	public void modify(StudyVO study) throws Exception {
		studyDAO.update(study);
		Integer studyNo = study.getStudyNo();
<<<<<<< HEAD
=======
		System.out.println(studyNo);
>>>>>>> branch 'younghoon' of https://github.com/beam307/Sbang
		studyDAO.deleteImg(studyNo);

		String[] files = study.getFiles();
<<<<<<< HEAD
		/*
		 * if (files == null) { return; }
		 */
=======
		if (files == null) {
			return;
		}
>>>>>>> branch 'younghoon' of https://github.com/beam307/Sbang
		for (String fileName : files) {
			studyDAO.replaceImg(fileName, studyNo);
		}

<<<<<<< HEAD
		weekDAO.delete(studyNo);
		
		WeekVO[] weekArr = study.getWeekVO();

		/*
		 * if (weekArr == null) { return; }
		 */
		for (WeekVO weekVO : weekArr) {
			weekDAO.replace(weekVO,studyNo);
		}

=======
>>>>>>> branch 'younghoon' of https://github.com/beam307/Sbang
	}

	@Transactional
	@Override
	public void remove(Integer studyNo) throws Exception {
<<<<<<< HEAD
		weekDAO.delete(studyNo);
		replyDAO.deleteWithStudyNo(studyNo);
=======
		// replyDAO.deleteWithBno(bno);
>>>>>>> branch 'younghoon' of https://github.com/beam307/Sbang
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
