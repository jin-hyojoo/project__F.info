package com.finfoproject.domain;

import java.util.Date;
import lombok.Data;


import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
@Data
public class ReviewVO {
	private int r_NO;
	private int f_NO;
	private String u_EMAIL;
	private String r_CONTENT;
	@DateTimeFormat(pattern="yyyy/mm/dd")
	private Date r_REGDATE;
}//end ReviewVO
