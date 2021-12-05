package web.page.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import web.page.service.BoardService;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/board/*")
public class BoardController {

		private BoardService service;
		
		@GetMapping("/list")
		public void list(Model model) {
			log.info("list");
			model.addAttribute("list", service.getList());
		}
}
