package com.finfoproject.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class FestivalVO {
	private int f_NO;
	private String f_SUBJECT ;
	@DateTimeFormat(pattern="yyyy/mm/dd")
	private Date f_START;
	@DateTimeFormat(pattern="yyyy/mm/dd")
	private Date f_END;
	private String	f_PLACE;
	private String	f_TAG1;
	private String	f_TAG2;
	private int	g_NO;
	private String	g_NAME;
	private String	u_LIKE1;
	private String	u_LIKE2;
	private String	f_THUMBNAIL;
	private String	f_DESC;
	private String	f_IMGURL;
	private String	f_URL;
	private String	f_PRICE;
	private String	f_SHOWLOWPRICE;
	private int	f_STATE;
}
