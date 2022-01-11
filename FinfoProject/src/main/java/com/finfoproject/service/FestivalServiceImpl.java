package com.finfoproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.finfoproject.domain.Criteria;
import com.finfoproject.domain.FestivalVO;
import com.finfoproject.domain.ReviewVO;
import com.finfoproject.mapper.FestivalMapper;

import lombok.Setter;

@Service
@Repository
public class FestivalServiceImpl implements FestivalService {
	
	@Setter(onMethod_ =@Autowired)
	private FestivalMapper mapper;

	@Override
	public void write(FestivalVO vo) throws Exception {
		mapper.write(vo);
	}

	@Override
	public FestivalVO read(int f_NO) throws Exception {
		return mapper.read(f_NO);
	}

	@Override
	public void update(FestivalVO vo) throws Exception {
		mapper.update(vo);
	}

	@Override
	public void delete(int f_NO) throws Exception {
		mapper.delete(f_NO);
	}

	@Override
	public List<FestivalVO> list() throws Exception {	
		return mapper.list();
	}

	@Override
	public void registReview(ReviewVO review) throws Exception {
		mapper.registReview(review);
	}

	@Override
	public List<ReviewVO> reviewList(int f_NO) throws Exception {
		return mapper.reviewList(f_NO);
	}

	@Override
	public void deleteReview(ReviewVO review) throws Exception {
		mapper.deleteReview(review);
	}

	@Override
	public String reviewIdCheck(int r_NO) throws Exception {
		return mapper.reviewIdCheck(r_NO);
	}

	@Override
	public List<FestivalVO> listPage(Criteria cri) throws Exception {
		return mapper.listPage(cri);
	}

	@Override
	public int listCount() throws Exception {
		return mapper.listCount();
	}

	@Override
	public void modifyReview(ReviewVO review) throws Exception {
		mapper.modifyReview(review);
	}

	@Override
	public List<FestivalVO> list2() throws Exception {
		return mapper.list2();
	}

	@Override
	public List<FestivalVO> listGenre() throws Exception {
		return mapper.listGenre();
	}

	@Override
	public List<FestivalVO> listGenre2() throws Exception {
		return mapper.listGenre2();
	}

	@Override
	public List<FestivalVO> listGenre3() throws Exception {
		return mapper.listGenre3();
	}
	
	

}
