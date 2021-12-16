package web.page.controller;



import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import web.page.domain.DbitemVO;
import web.page.domain.pageDTO;
import web.page.service.GetItemApplication;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private GetItemApplication service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	
	@RequestMapping(value="/temp", method = RequestMethod.GET)
	public String printhome(String temp, Model model, RedirectAttributes rttr) {
		List<DbitemVO> itemList = service.printhome(temp);
		model.addAttribute("suggestion", itemList);
		return "redirect:/";
	}

	
}
