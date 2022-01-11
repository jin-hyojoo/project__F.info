package com.finfoproject.mapper;

import java.util.List;

import com.finfoproject.domain.Admin_Criteria;
import com.finfoproject.domain.UsersVO;

public interface Admin_userMapper {

	public int update(UsersVO users);

	public List<UsersVO> getListWithPaging(Admin_Criteria cri);
	
	public int getTotalCount(Admin_Criteria cri);



}//end Admin_userMapper
