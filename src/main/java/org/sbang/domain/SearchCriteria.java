package org.sbang.domain;

import lombok.Data;

@Data
public class SearchCriteria extends Criteria {

	private String searchType;
	private String keyword;
	private String lineUp;
	private String region;
	private String upCategory;

}