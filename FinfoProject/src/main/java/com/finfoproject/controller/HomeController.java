package com.finfoproject.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.finfoproject.domain.FestivalVO;
import com.finfoproject.service.FestivalService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Inject
	FestivalService service;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getlist(Model model) throws Exception {

		logger.info("do List 실행");
		
		List<FestivalVO> list = service.list();
		model.addAttribute("list", list);
		
		List<FestivalVO> list2 = service.list2();
		model.addAttribute("list2", list2);
		
		List<FestivalVO> listGenre = service.listGenre();
		model.addAttribute("listGenre", listGenre);
		
		List<FestivalVO> listGenre2 = service.listGenre2();
		model.addAttribute("listGenre2", listGenre2);
		
		List<FestivalVO> listGenre3 = service.listGenre3();
		model.addAttribute("listGenre3", listGenre3);

		return "/finfo/main";
	}

}