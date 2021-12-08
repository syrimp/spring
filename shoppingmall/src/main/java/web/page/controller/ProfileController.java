package web.page.controller;

import web.page.domain.profileVO;
import web.page.service.profileService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String join(profileVO profile) {
		service.join(profile);
		return "/profile/login";
	}
	
	@PostMapping("/login")
	public String login(String id, String pw, HttpServletRequest req, RedirectAttributes rttr) {
		HttpSession session = req.getSession();
		profileVO login = service.login(id, pw);
		
		if(login==null) {
			session.setAttribute("profile", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/profile/login";
		} else {
			session.setAttribute("profile", login);
			rttr.addAttribute("sucess", true);
			return "redirect:/";
		}
	}	
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	
}
