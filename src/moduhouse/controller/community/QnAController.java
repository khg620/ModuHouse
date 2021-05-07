package moduhouse.controller.community;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.community.CommentBean;
import moduhouse.bean.community.ContentBean;
import moduhouse.bean.keywords.KeywordsBean;
import moduhouse.bean.user.UserBean;
import moduhouse.service.community.QnAService;

@Controller
@RequestMapping("/community")
@RequiredArgsConstructor
public class QnAController {
	
	private final QnAService qnaService;
	private final UserBean signInUserBean;
	
	@GetMapping("/read_question")
	public String read(@RequestParam int content_idx, @ModelAttribute("writeCommentBean") CommentBean writeCommentBean, Model model) {
		model.addAttribute("content_idx",content_idx);
		
		//게시글
		ContentBean readContentBean = qnaService.getContentInfo(content_idx);
		//게시글 키워드
		ArrayList<KeywordsBean> contentKeywordsBean = qnaService.getContentKeywords(content_idx);
		//게시글 덧글
		ArrayList<CommentBean> readCommentBean = qnaService.getContentComments(content_idx);
		
		model.addAttribute("readContentBean",readContentBean);
		model.addAttribute("contentKeywordsBean",contentKeywordsBean);
		model.addAttribute("readCommentBean",readCommentBean);
		System.out.println(readCommentBean);
		
		return "community/read_question";
	}
	
	@GetMapping("/write_question")
	public String write() {
		return "community/write_question";
	}
	
	@PostMapping("/write_question")
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
