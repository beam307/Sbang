package org.sbang.domain;

import java.util.Date;

import lombok.Data;

@Data
public class WeekVO {

	private int weekNo;
	private int studyNo;

	private String weekDay;

	private Date weekStartDate;
	private Date weekEndDate;

}
