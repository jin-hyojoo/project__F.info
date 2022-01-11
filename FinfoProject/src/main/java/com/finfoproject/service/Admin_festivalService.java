package com.finfoproject.service;

import java.util.List;

import com.finfoproject.domain.Admin_Criteria;
import com.finfoproject.domain.FestivalVO;

public interface Admin_festivalService {
	
	//메인 페스티벌 정보수정
	public int mainmodify(FestivalVO festival);

	//축제 게시글 내용 수정
	public int modify(FestivalVO festival);

	//페이징 때 사용
	public int getTotal(Admin_Criteria cri);

	//페이징으로 리스트 가져오기
	public List<FestivalVO> getList(Admin_Criteria cri);

	//특정 축제 정보 가져오기 
	public FestivalVO get(int f_NO);
	
	//축제 추가
	public void write(FestivalVO festival);

	//축제 삭제
	public void remove(int f_NO);
	

}//end Admin_festivalService
