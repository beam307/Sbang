package org.sbang.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserVO {

	private String userId;
	private String userName;
	private String userPassword;
	private String userBirth;
	private String userSex;
	private String userPhoneNumber;
	private String userEmail;
	private String userIntroduce;
	private String userProfileImagePath;
	private String userRegion;
	private String userFavoriteCategory;
	private String userWishlist;
	
	private Date userRegisterDate;
	private Date userUpdateDate;
	
	private String userGoogle;
	private String userNaver;
	
	private boolean userCertification;
	private boolean userActivityAlarm;
	private boolean userAlarm;

}
