package org.sbang.domain;

import lombok.Data;

@Data
public class SearchCriteria extends Criteria {

	private String searchType; //검색필터
	private String keyword; //검색단어
	private String lineUp; //정렬기준
	private String region; //지역키워드
	private String upCategory; //카테고리필터

}