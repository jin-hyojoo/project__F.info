package com.finfoproject.mapper;

import java.util.List;

import com.finfoproject.domain.Admin_Criteria;
import com.finfoproject.domain.FestivalVO;

public interface Admin_festivalMapper {
	
	//메인화면 축제 수정
	public int update(FestivalVO festival);
	
	//축제 수정
	public int modify(FestivalVO festival);
	
	public int getTotalCount(Admin_Criteria cri);
	
	//전체 리스트 with 페이징
	public List<FestivalVO> getListWithPaging(Admin_Criteria cri);
	
	//축제 상세정보 조회
	public FestivalVO read(int f_NO);
		
	//축제 등록
	public void write(FestivalVO festival);

	//축제 삭제
	public void delete(int f_NO);

}//end Admin_festivalMapper
