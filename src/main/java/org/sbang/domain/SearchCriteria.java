package org.sbang.domain;

import lombok.Data;

@Data
public class SearchCriteria extends Criteria {

	private String searchType; //�˻�����
	private String keyword; //�˻��ܾ�
	private String lineUp; //���ı���
	private String region; //����Ű����
	private String upCategory; //ī�װ�����

}