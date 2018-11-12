package org.sbang.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {
	private Integer replyNo;
	private Integer studyNo;

	private String UserEmail;
	private String replyText;

	private Date replyRegDate;
	private Date replyUpdateDate;
}
