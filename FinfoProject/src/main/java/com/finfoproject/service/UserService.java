package com.finfoproject.service;

import com.finfoproject.domain.LoginDTO;
import com.finfoproject.domain.UsersVO;

public interface UserService {
	public void register(UsersVO vo);
	public UsersVO login(LoginDTO dto);
	public boolean modify(UsersVO vo);
}//end UserService
