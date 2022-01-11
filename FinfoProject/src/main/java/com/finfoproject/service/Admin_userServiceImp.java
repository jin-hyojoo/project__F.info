package com.finfoproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.finfoproject.domain.Admin_Criteria;
import com.finfoproject.domain.UsersVO;
import com.finfoproject.mapper.Admin_userMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service //비즈니스 영역 담당 객체임을 표기
@Repository
@AllArgsConstructor //모든 파라미터를 이용하는 생성자를 만듬
public class Admin_userServiceImp implements Admin_userService {
	
	@Setter(onMethod_ =@Autowired)
	private Admin_userMapper mapper;

	@Override
	public int modify(UsersVO users) {
		return mapper.update(users);
	}//end modify
	
	@Override
	public List<UsersVO> getList(Admin_Criteria cri) {
		return mapper.getListWithPaging(cri);
	}//getList


	@Override
	public int getTotal(Admin_Criteria cri) {
		return mapper.getTotalCount(cri);
	}//end getTotal

}//end Admin_userServiceImp
