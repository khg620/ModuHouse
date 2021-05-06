package moduhouse.controller.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.user.UserBean;
import moduhouse.service.community.BoardService;

@Controller
@RequiredArgsConstructor
public class QnAController {
	
	private final BoardService boardService;
	private final UserBean signInUserBean;
	
	@GetMapping("/community/read_question")
	public String read() {
		return "community/read_question";
	}
	
	@GetMapping("/community/write_question")
	public String write() {
		return "community/write_question";
	}
	
	@PostMapping("/community/write_question")
	public String write_pro() {
		return "redirect:/community/read_question";
	}
	
	//@GetMapping("")
	public String modify() {
		return "";
	}
	
	//@PostMapping("")
	public String modify_pro() {
		return "";
	}
	
}
