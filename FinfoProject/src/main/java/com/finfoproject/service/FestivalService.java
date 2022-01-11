package com.finfoproject.service;

import java.util.List;

import com.finfoproject.domain.Criteria;
import com.finfoproject.domain.FestivalVO;
import com.finfoproject.domain.ReviewVO;

public interface FestivalService {

	public void write(FestivalVO vo) throws Exception;
	public FestivalVO read(int f_NO) throws Exception;
	public void update(FestivalVO vo) throws Exception;
	public void delete(int f_NO) throws Exception;
	public List<FestivalVO> list() throws Exception;
	public List<FestivalVO> list2() throws Exception;	
	public List<FestivalVO> listGenre() throws Exception;
	public List<FestivalVO> listGenre2() throws Exception;
	public List<FestivalVO> listGenre3() throws Exception;
	public void registReview(ReviewVO review) throws Exception;
	public List<ReviewVO> reviewList(int f_NO) throws Exception;
	public List<FestivalVO> listPage(Criteria cri) throws Exception;
	public int listCount() throws Exception;
	public void deleteReview(ReviewVO review) throws Exception;
	public String reviewIdCheck(int r_NO) throws Exception;
	public void modifyReview(ReviewVO review) throws Exception;
}
