package moduhouse.controller.community;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.community.CommentBean;
import moduhouse.bean.user.UserBean;
import moduhouse.service.community.QnAService;

@Controller
@RequestMapping("/community")
@RequiredArgsConstructor
public class QnACommentController {
	
	private final QnAService qnaService;
	private final UserBean signInUserBean;
	
	@PostMapping("/write_comment")
	public String writeComment_pro(@RequestParam int content_idx, @RequestParam int board_info_idx, @ModelAttribute("writeCommentBean") CommentBean writeCommentBean, Model model) {
		writeCommentBean.setComment_writer_idx(signInUserBean.getUser_idx());
		writeCommentBean.setContent_idx(content_idx);
		writeCommentBean.setBoard_info_idx(board_info_idx);
		
		model.addAttribute("content_idx",content_idx);
		model.addAttribute("board_info_idx",board_info_idx);
		
		//댓글 저장하기
		qnaService.addQnAComment(writeCommentBean);
		
		return "redirect:/community/read_question";
	}

	
}
