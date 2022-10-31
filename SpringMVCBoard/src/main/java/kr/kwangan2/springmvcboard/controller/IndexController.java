package kr.kwangan2.springmvcboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.kwangan2.springmvcboard.service.BoardService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
public class IndexController {

	@GetMapping("/")
	public String index() {
		return "redirect:/";
	}

}
