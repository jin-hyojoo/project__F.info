package com.finfoproject.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Admin_Criteria {
	private int pageNum;
	private int amount;
	private String type;
	private String keyword;

	
	public Admin_Criteria() {
		this(1,4);
	}

	public Admin_Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	 public String[] getTypeArr() {
		 return type == null? new String[] {}: type.split("");
	 }
	 
	 
}//end Criteria
