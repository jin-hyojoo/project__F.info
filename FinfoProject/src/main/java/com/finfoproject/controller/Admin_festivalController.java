package com.finfoproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.finfoproject.domain.Admin_Criteria;
import com.finfoproject.domain.FestivalVO;
import com.finfoproject.domain.Admin_PageDTO;
import com.finfoproject.service.Admin_festivalService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
@AllArgsConstructor
public class Admin_festivalController {
	
	private Admin_festivalService service;
	
	@GetMapping("/flist")
	public void list(Admin_Criteria cri, Model model) {
		model.addAttribute("flist", service.getList(cri));		
		int total = service.getTotal(cri);
		model.addAttribute("pageMaker", new Admin_PageDTO(cri, total));
	}//end list
	
	
	//메인 수정버튼 기능
	@PostMapping("/mainmodify")
	public String mainmodify(FestivalVO festival,  RedirectAttributes rttr) {
		log.info("F_no: " + festival.getF_NO() + "  F_state: " +  festival.getF_STATE());
		service.mainmodify(festival);
		return "redirect:/admin/flist";
	}//end mainmodify
	
	
	//축제 게시글 조회(내용확인 창으로 이동)
	@GetMapping({ "/fget", "/fmodify" })
	public void get(@RequestParam("f_NO") int f_NO, @ModelAttribute("cri") Admin_Criteria cri, Model model) {
		model.addAttribute("festival", service.get(f_NO));
	}//end get
	
	//축제 내용 수정
	@PostMapping("/fmodify")
	public String modify(FestivalVO festival,  @ModelAttribute("cri") Admin_Criteria cri, RedirectAttributes rttr) {
		log.info("게시글 수정 작업 진입");
		log.info(festival);
		service.modify(festival);

		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/admin/flist";
	}//end modify
	
	@PostMapping("/remove")
	public String remove(@RequestParam("f_NO") int f_NO, Admin_Criteria cri, RedirectAttributes rttr) {
		log.info("삭제할거야!!!");
		service.remove(f_NO);
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/admin/flist";
	}//end remove
	
	
	//작성 페이지로 이동
	@GetMapping("/fwrite")
	public void write() {}
	
	//게시글 작성 기능 
	@PostMapping("/fwritepost")
	public String writepost(FestivalVO festival, RedirectAttributes rttr) {
		log.info(festival);
		service.write(festival);
		return "redirect:/admin/flist";
	}//end writepost
	
	
}//end AdminController
