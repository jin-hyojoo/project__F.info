package com.finfoproject.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LoginDTO {
	 private String u_email;
	 private String u_pw;
	 private boolean useCookie;
}//end LoginDTO : 로그인화면으로부터 전달되는 회원의 데이터(아이디, 비밀번호)를 수집하는 용도