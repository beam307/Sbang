package org.sbang.domain;

import java.util.Date;

import lombok.Data;

@Data
public class StudyVO {

	private int studyId;

	private String studyName;
	private String studyCategory;
	private String studyRegion;

	private Date studyRegisterDate;
	private Date studyUpdateDate;

	private int studyTargetAge;
	private int studyMaxMemberCount;
	private int studyCurrentMemberCount;
	private int studyMembershipFee;
	private int studyWorkPerMonth;

	private Date studyStartDate;
	private Date studyEndDate;

}
