package com.finfoproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.finfoproject.domain.GenreVO;
import com.finfoproject.mapper.AdminMapper;

import lombok.Setter;


@Service
@Repository
public class AdminServiceImpl implements AdminService {

	@Setter(onMethod_ =@Autowired)
	private AdminMapper mapper;

	@Override
	public List<GenreVO> genre() {
		return mapper.genre();
	}

}
