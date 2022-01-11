package com.finfoproject.mapper;

import com.finfoproject.domain.LoginDTO;
import com.finfoproject.domain.UsersVO;

public interface UserMapper {
	
		//회원가입
		public void register(UsersVO vo);
		
		//로그인 
		public UsersVO login(LoginDTO dto);
		
		//정보수정
		public int modify(UsersVO vo);

	
}//end UserMapper
