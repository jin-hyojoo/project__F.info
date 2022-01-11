package com.finfoproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.finfoproject.domain.LoginDTO;
import com.finfoproject.domain.UsersVO;
import com.finfoproject.mapper.UserMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service //비즈니스 영역 담당 객체임을 표기
@Repository
@AllArgsConstructor //모든 파라미터를 이용하는 생성자를 만듬
public class UserServiceImp implements UserService {
	
	@Setter(onMethod_ =@Autowired)
	private UserMapper mapper;

	@Override
	public void register(UsersVO vo) {
		log.info("insert......" + vo);
		mapper.register(vo);
	}

	@Override
	public UsersVO login(LoginDTO dto) {
		log.info("login......" + dto);
		UsersVO vo = mapper.login(dto);
		
		return vo;
	}//end register 회원가입
	
	@Override
	public boolean modify(UsersVO vo) {
		log.info("modify......" + vo);
		
		return mapper.modify(vo) == 1;
	}


}//end UserServiceImp
