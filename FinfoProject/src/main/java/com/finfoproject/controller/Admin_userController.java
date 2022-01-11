package com.finfoproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.finfoproject.domain.Admin_Criteria;
import com.finfoproject.domain.Admin_PageDTO;
import com.finfoproject.domain.UsersVO;
import com.finfoproject.service.Admin_userService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
@AllArgsConstructor
public class Admin_userController {
	
	private Admin_userService service;
	
	@GetMapping("/ulist")
	public void list(Admin_Criteria cri, Model model) {
		model.addAttribute("ulist", service.getList(cri));		
		int total = service.getTotal(cri);
		model.addAttribute("pageMaker", new Admin_PageDTO(cri, total));
	}//end list
	
	
	@PostMapping("/u_modify")
	public String modify(UsersVO users,  RedirectAttributes rttr) {
		log.info("u_no: " + users.getU_no() + "  u_ck: " +  users.getU_ck());
		service.modify(users);
		//model.addAttribute("ulist",service.modify(users));

		return "redirect:/admin/ulist";
	}
	
	
	
	
	

}//end AdminController
