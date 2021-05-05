package moduhouse.controller.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.user.UserBean;
import moduhouse.service.community.BoardService;

@Controller
@RequiredArgsConstructor
public class BoardController {
	
	private final BoardService boardService;
	private final UserBean signInUserBean;
	
	//@GetMapping("")
	public String read() {
		return "";
	}
	
	//@GetMapping("")
	public String write() {
		return "";
	}
	
	//@PostMapping("")
	public String write_pro() {
		return "";
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
