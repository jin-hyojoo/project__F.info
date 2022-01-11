package com.finfoproject.controller;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
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
public class Client_MainController {
	private UserService service;
	
	@GetMapping("/main")
	public void main(UsersVO vo, HttpSession session) {
		log.info("main 화면 출력 성공");
		session.setAttribute("userSession", vo);
	}//end 메인화면
	
	@PostMapping("/register")
	public String register(UsersVO vo, RedirectAttributes rttr) {
		log.info("회원가입: " + vo);
		
		String hashedPw = BCrypt.hashpw(vo.getU_pw(), BCrypt.gensalt());
		vo.setU_pw(hashedPw);
		service.register(vo);
		rttr.addFlashAttribute("msg", "REGISTERED");
		
		return "redirect:/finfo/login";
	}//end 회원가입 처리
	
	@GetMapping("/mypage")
	public void mypage(HttpSession session) {
		log.info("마이페이지: " + session.getAttribute("userSession"));
	}//end 회원정보 보기
	
	@PostMapping("/modify")
	public String modify(UsersVO vo, HttpSession session, RedirectAttributes rttr) {
		log.info("정보수정: " + vo);
		
		service.modify(vo);
		session.setAttribute("userSession", vo);
		rttr.addFlashAttribute("msg", "MODIFIED");
		
		return "redirect:/finfo/mypage";
	}
	
	@GetMapping("/login")
	public void login() {
		log.info("login 화면 출력 성공");
	}//end 로그인 화면
	
	@PostMapping("/loginpost")
	public String loginPost(LoginDTO dto, HttpSession session, Model model, RedirectAttributes rttr) {
		UsersVO vo = service.login(dto);
		
		log.info(dto);
		log.info(vo);
		
		if (vo == null || !BCrypt.checkpw(dto.getU_pw(), vo.getU_pw())) {
		    return "redirect:/finfo/login";
		} else if (vo.getU_ck() == 1) {
			model.addAttribute("user", vo);
			session.setAttribute("userSession", vo);
			
			return "redirect:/admin/ulist";
		} else {
			model.addAttribute("user", vo);
			session.setAttribute("userSession", vo);
			
			return "redirect:/";			
		}
	}//end 로그인 처리
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		log.info("로그아웃 되었습니다!!");
		session.invalidate();
		return "redirect:/";
		
	}//end 로그아웃 처리
}//end Client_MainController
