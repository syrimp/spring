package web.page.controller;

import web.page.domain.profileVO;
import web.page.service.profileService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/profile/*")
@AllArgsConstructor
public class ProfileController {

	private profileService service;
	
	@GetMapping("/join")
	public void join() {
		
	}
	@GetMapping("/login")
	public void login() {
		
	}
	
	@PostMapping("/join")
	public String join(String id,String pw, String address, String email, String name, String phone) {
		service.join(id,pw,address,email,name,phone);
		return "/profile/login";
	}
	
	@PostMapping("/login")
	public profileVO login(String id, String pw) {
		return service.login(id, pw);
	}	
	
	
	
	
}
