package org.sbang.domain;

import java.util.Arrays;
import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
public class StudyVO {

	private WeekVO[] weekVO;
	
	private int studyNo;

	private String studyName;
	private String studyCategory;
	private String studyRegion;
	private String studyIntroduce;

	private Date studyRegDate;
	private Date studyUpdateDate;

	private int studyTargetAge;
	private int studyMaxMemCnt;
	private int studyCurMemCnt;
	private int studyMemFee;
	private int studyWorkPerMonth;
	private int studyViewCnt;
	private int studyReplyCnt;

	private String imagePath;

	private Date studyStartDate;
	private Date studyEndDate;

	private String[] files;

}
