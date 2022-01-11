package com.finfoproject.service;

import java.util.List;

import com.finfoproject.domain.Admin_Criteria;
import com.finfoproject.domain.UsersVO;

public interface Admin_userService {
	
	//회원정보수정
	public int modify(UsersVO users);

	//페이징으로 리스트 가져오기
	public List<UsersVO> getList(Admin_Criteria cri);
	
	//페이징 때 사용
	public int getTotal(Admin_Criteria cri);
	
	
	
}//end Admin_userService
