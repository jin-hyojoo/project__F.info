/*package com.finfoproject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.finfoproject.domain.LoginDTO;
import com.finfoproject.domain.UsersVO;
import com.finfoproject.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/finfo/*")
@AllArgsConstructor
public class mainController {
	
	private UserService u_service;
	
	@GetMapping("/main")
	public void main() {
		log.info("main 화면 출력 성공");
	}//end 메인화면
	
	@PostMapping("/register")
	public String register(UsersVO uservo, RedirectAttributes rttr) {
		log.info("회원가입: " + uservo);
		u_service.UserInsert(uservo);
		rttr.addFlashAttribute("msg", "REGISTERED");
		return "redirect:/finfo/login";
	}//end 회원가입 처리
	
	
	 리턴값이 String일때만 이렇게 지정 return "finfo/login"; 
	 * 리턴값이 void일 떄는 위에처럼만 해주면 화면 나옴
	@GetMapping("/login")
	public void login() {
		log.info("login 화면 출력 성공");
	}//end 로그인화면
	
	@PostMapping("/loginpost")
	public void loginPost(LoginDTO loginDTO, HttpSession httpSession, Model model) {
		UsersVO userVO  = u_service.login(loginDTO);
		if (userVO  == null ) 
            return;
		model.addAttribute("user", userVO  );
	}//end 로그인처리
	

}//end Client_MainController
*/