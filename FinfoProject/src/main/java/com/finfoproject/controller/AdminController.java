package com.finfoproject.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finfoproject.domain.GenreVO;
import com.finfoproject.service.AdminService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	AdminService aService;
	
	@RequestMapping("/index")
	public void getAdminMain() throws Exception{
		logger.info("get main");
	}
	
	@GetMapping("/login")
	public String login() {
		return null;
	}//
	
	@RequestMapping("/festival/register")
	public void getFestivalRegister(Model model) throws Exception{
		logger.info("get festival Register");
		
		List<GenreVO> genre = null;
		genre = aService.genre();
		model.addAttribute("genre",JSONArray.fromObject(genre));
	}
}
