package org.sbang.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
public class SearchCriteria extends Criteria {

	private String searchType;
	private String keyword;
	private String lineUp;

}