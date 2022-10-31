package kr.kwangan2.springmvcboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.kwangan2.springmvcboard.domain.BoardVO;
import kr.kwangan2.springmvcboard.service.BoardService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {

	private BoardService boardService;

	@GetMapping("/list")
	public String boardVOList(Model model) {
		log.info("list");
		model.addAttribute("boardVOList", boardService.boardVOList());
		return "boardList";
	}

	@GetMapping("boardInsert")
	public String boardInsert() {
		return "boardInsert";

	}

	@PostMapping("/boardInsertProc")
	public String boardInsertProc(BoardVO boardVO, RedirectAttributes redirectAttributes) {
		if(boardService.insertBoardVO(boardVO)>0){
		redirectAttributes.addFlashAttribute("result", "success");
		}
		return "redirect:/";
	}

	@GetMapping("/select")
	public String selectgBoardVO(@RequestParam("bno") Long bno,  Model model) {
		model.addAttribute("BoardVO", boardService.selectBoardVO(bno));
		return "boardUpdate"; // view 이름
	}

	@PostMapping("/updateProc")
	public String updateBoardVO(BoardVO boardVO, RedirectAttributes rttr) {
		if (boardService.updateBoardVO(boardVO) > 0) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/";
	}

	@GetMapping("/delete")
	public String deleteBoardVO(@RequestParam("bno") Long bno, RedirectAttributes rttr) {
		if (boardService.deleteBoardVO(bno) > 0) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/";
	}

}
