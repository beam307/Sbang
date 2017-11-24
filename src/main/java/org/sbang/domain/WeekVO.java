package org.sbang.domain;

import java.util.Date;

import lombok.Data;

@Data
public class WeekVO {

	private int studyId;

	private Date weekStartDate;
	private Date weekEndDate;

}
