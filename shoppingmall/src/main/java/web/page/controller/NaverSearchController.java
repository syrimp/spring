package web.page.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import web.page.domain.DbitemVO;
import web.page.domain.itemVO;
import web.page.service.GetItemApplication;
import web.page.service.NaverShoppingAPIService;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/search/*")
public class NaverSearchController {
	
	NaverShoppingAPIService service;
	GetItemApplication search;
	
	@RequestMapping("/submit")
	public String red(String keyword) {
		service.keyword = keyword;
		System.out.println(keyword);
		return "redirect:/search/result";
	}
	

	@RequestMapping("/result")
	public String result(Model model , RedirectAttributes rttr) {
		String key = service.keyword;
		int start = service.start;
		ArrayList<itemVO> list = service.searchResult(key, start);
		model.addAttribute("result",list);
		rttr.addAttribute("start", start);
		return "/search/printSearch";
	}
	
	/*
	 * @RequestMapping("/page") public void pagescroll(@RequestParam("page") int
	 * page, Model model) { String key = service.keyword; int start =
	 * service.start+(50*page); ArrayList<itemVO> list = service.searchResult(key,
	 * start); model.addAttribute("scroll_result",list); }
	 */
	
	@RequestMapping("/page")
	@ResponseBody
	public String page(@RequestParam(value = "page", defaultValue = "1", required = false) int page, Model model, 
				RedirectAttributes rttr) {
		String key = service.keyword;
		int start = service.start+(50*page);
		ArrayList<itemVO> list = service.searchResult(key, start);
		model.addAttribute("scroll_result",list);
		return "redirect:/search/printSearch";
	   }

	
	@RequestMapping("/save")
	public String save() {
		return "/search/keyncode";
	}
	
	@RequestMapping("/saving")
	public String saving(String keyword, String code) {
		search.searchResult(keyword, code);	
		return "/search/mastersave";
	}
	
	
	
	
	
	
	
	

}
