package com.finfoproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.finfoproject.domain.Admin_Criteria;
import com.finfoproject.domain.FestivalVO;
import com.finfoproject.mapper.Admin_festivalMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@Repository
@AllArgsConstructor 
public class Admin_festivalServiceImp implements Admin_festivalService{

	@Setter(onMethod_ =@Autowired)
	private Admin_festivalMapper mapper;
	
	
	@Override
	public int mainmodify(FestivalVO festival) {
		return mapper.update(festival);
	}
	
	@Override
	public int getTotal(Admin_Criteria cri) {
		return mapper.getTotalCount(cri);
	}
	
	//글수정
	@Override
	public int modify(FestivalVO festival) {
		log.info("modify......" + festival);
		return mapper.modify(festival);
	}

	@Override
	public List<FestivalVO> getList(Admin_Criteria cri) {
		return mapper.getListWithPaging(cri);
	}

	@Override
	public FestivalVO get(int f_NO) {
		return mapper.read(f_NO);
	}

	@Override
	public void write(FestivalVO festival) {
		mapper.write(festival);
	}

	@Override
	public void remove(int f_NO) {
		mapper.delete(f_NO);
	}

}//end Admin_festivalServiceImp
