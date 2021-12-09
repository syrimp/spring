package web.page.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import web.page.domain.BoardVO;
import web.page.domain.Criteria;
import web.page.domain.pageDTO;
import web.page.service.BoardService;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/board/*")
public class BoardController {

		private BoardService service;
		
		@GetMapping("/list")
		public void list(Criteria cri, Model model) {
			log.info("list: "+ cri);
			model.addAttribute("list", service.getList(cri));
			model.addAttribute("pageMaker", new pageDTO(cri, 123));
		}
		
		@GetMapping("/register")
		public void register() {
			
		}

		@PostMapping("/register")
		public String register(BoardVO board, RedirectAttributes rttr) {
			log.info("register: " +board);
			service.register(board);
			rttr.addFlashAttribute("result", board.getBno());
			
			return "redirect:/board/list";
		}
		
		
		@GetMapping("/get")
		public void get(@RequestParam("bno") Long bno, HttpServletRequest req, Model model) {
			HttpSession session = req.getSession();
			log.info("/get");
			model.addAttribute("bno", bno);
			model.addAttribute("board", service.get(bno));
			model.addAttribute("profile", session.getAttribute("profile"));
			System.out.println(session.getAttribute("profile"));
			System.out.println(service.get(bno));
		}
		
		@GetMapping("/modify")
		public void modify(@RequestParam("bno") Long bno, Model model){
			model.addAttribute("board", service.get(bno));
		}
	
		@PostMapping("/modify")
		public String modify(BoardVO board, RedirectAttributes rttr) {
			log.info("modify:" +board);
			if(service.modify(board)) {
				rttr.addFlashAttribute("result" ,"success");
			}
			return "redirect:/board/list";
		}

		
		@PostMapping("/remove")
		public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr) {
			log.info("remove" + bno);
			if(service.remove(bno)) {
				rttr.addFlashAttribute("result", "success");
			}
				
			return "redirect:/board/list";
		}
		
		
		
		
		
		
		
}
