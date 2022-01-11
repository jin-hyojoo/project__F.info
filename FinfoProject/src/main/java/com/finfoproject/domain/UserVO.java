package com.finfoproject.domain;

import lombok.Data;

@Data
public class UserVO {
	private int u_NO;
	private String u_PASSWORD;
	private String u_EMAIL;
	private String u_NAME;
	private String u_LIKE1;
	private String u_LIKE2;
	private int	u_CK;
}
