package com.finfoproject.mapper;

import java.util.List;

import com.finfoproject.domain.Criteria;
import com.finfoproject.domain.FestivalVO;
import com.finfoproject.domain.ReviewVO;

public interface FestivalMapper {

	void write(FestivalVO vo);

	FestivalVO read(int f_NO);

	void update(FestivalVO vo);

	void delete(int f_NO);

	List<FestivalVO> list();

	void registReview(ReviewVO review);

	List<ReviewVO> reviewList(int f_NO);

	void deleteReview(ReviewVO review);

	String reviewIdCheck(int r_NO);

	List<FestivalVO> listPage(Criteria cri);

	int listCount();

	void modifyReview(ReviewVO review);

	List<FestivalVO> list2();

	List<FestivalVO> listGenre();

	List<FestivalVO> listGenre2();

	List<FestivalVO> listGenre3();

}
