package web.page.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import web.page.domain.itemVO;
import web.page.service.NaverShoppingAPIService;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/search/*")
public class NaverSearchController {
	
	NaverShoppingAPIService service;

	@RequestMapping("/search/index")
	public void index() {
	
	}
	
	@RequestMapping("/search/submit")
	public String red(String keyword) {
		service.keyword = keyword;
		System.out.println(keyword);
		return "redirect:/search/result";
	}
	

	@RequestMapping("/search/result")
	public String result(Model model , RedirectAttributes rttr) {
		String key = service.keyword;
		int start = service.start;
		ArrayList<itemVO> list = service.searchResult(key, start);
		model.addAttribute("list",list);
		rttr.addAttribute("start", start);
		return "/search/printSearch";	
	}
	
	@RequestMapping("/search/page")
	public void pagescroll() {
		
	}
	
	
	
	
	
	
	
	

}
