package org.sbang.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

<<<<<<< HEAD
@Data
=======
@Getter
@Setter
>>>>>>> branch 'younghoon' of https://github.com/beam307/Sbang
public class SearchCriteria extends Criteria {

	private String searchType;
	private String keyword;
<<<<<<< HEAD
	private String lineUp;
=======

	@Override
	public String toString() {
		return "SearchCriteria [searchType=" + searchType + ", keyword=" + keyword + ", getPage()=" + getPage() + ", getPageStart()=" + getPageStart() + ", getPerPageNum()=" + getPerPageNum() + ", toString()=" + super.toString()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + "]";
	}
>>>>>>> branch 'younghoon' of https://github.com/beam307/Sbang

}