package moduhouse.controller.community;

import java.util.ArrayList;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	
	private final UserBean signInUserBean;
	private final QnAService qnaService;
	
	@GetMapping("/read_question")
	public String read(@RequestParam int content_idx, @RequestParam int board_info_idx, @ModelAttribute("writeCommentBean") CommentBean writeCommentBean, Model model) {
		
		//게시글 조회
		ContentBean readContentBean = qnaService.getContentInfo(content_idx);
		//게시글 키워드 조회
		ArrayList<KeywordsBean> contentKeywordsBean = qnaService.getContentKeywords(content_idx);
		//게시글 덧글 조회
		ArrayList<CommentBean> readCommentBean = qnaService.getContentComments(content_idx);
		
		writeCommentBean.setContent_idx(content_idx);
		writeCommentBean.setBoard_info_idx(board_info_idx);
		
		model.addAttribute("signInUserBean",signInUserBean);
		model.addAttribute("comment_cnt",qnaService.getCommentCnt(content_idx));
		model.addAttribute("readContentBean",readContentBean);
		model.addAttribute("contentKeywordsBean",contentKeywordsBean);
		model.addAttribute("readCommentBean",readCommentBean);
		
		return "community/read_question";
	}
	
	@GetMapping("/write_question")
	public String write(@RequestParam int board_info_idx, @ModelAttribute("writeContentBean") ContentBean writeContentBean) {
		writeContentBean.setBoard_info_idx(board_info_idx);
		
		return "community/write_question";
	}
	
	@PostMapping("/write_question")
	public String write_pro(@Valid @ModelAttribute("writeContentBean") ContentBean writeContentBean, BindingResult result) {
		if(result.hasErrors()) {
			return "community/write_question";
		}
	
		qnaService.addQnAContent(writeContentBean);
		
		//등록 후 글읽기 페이지로 가기 위함
		int content_idx = writeContentBean.getContent_idx();
		int board_info_idx = writeContentBean.getBoard_info_idx();
		return "redirect:/community/read_question?content_idx="+content_idx+"&board_info_idx="+board_info_idx;
	}
	
	@GetMapping("/edit_question")
	public String edit(@RequestParam int board_info_idx, @RequestParam int content_idx, @ModelAttribute("editContentBean") ContentBean editContentBean, Model model) {
		editContentBean = qnaService.getContentInfo(content_idx);
		model.addAttribute("editContentBean",editContentBean);
		model.addAttribute("board_info_idx",content_idx);
		return "community/edit_question";
	}
	
	@PostMapping("/edit_question")
	public String edit_pro(@Valid @ModelAttribute("editContentBean") ContentBean editContentBean, BindingResult result) {
		if(result.hasErrors()) {
			return "community/edit_question";
		}
		
		qnaService.updateQnAContent(editContentBean);
		int board_info_idx = editContentBean.getBoard_info_idx();
		int content_idx = editContentBean.getContent_idx();
		return "redirect:/community/read_question?board_info_idx="+board_info_idx+"&content_idx="+content_idx;
	}
	
	@GetMapping("/delete_question")
	public String delete(@RequestParam int board_info_idx, @RequestParam int content_idx) {
		System.out.println(content_idx + " " + board_info_idx);
		qnaService.deleteContent(board_info_idx,content_idx);
		return "redirect:/community/question";
	}
	
	@GetMapping("/not_writer")
	public String not_writer() {
		return "community/not_writer";
	}
	
}