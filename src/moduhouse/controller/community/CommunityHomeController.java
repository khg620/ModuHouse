package moduhouse.controller.community;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.PageBean;
import moduhouse.bean.community.ContentBean;
import moduhouse.service.community.QnAService;

@Controller
@RequiredArgsConstructor
public class CommunityHomeController {
	
	private final QnAService qnaService;

	@GetMapping("/community/question") //일단 community 내의 '질문과 답변 페이지'를 커뮤니티 메뉴의 메인으로 함
	public String main(Model model, @RequestParam(value="page", defaultValue="1") int page) {
		
		//키워드 
		//ArrayList<KeywordsBean> allKeywordsList = qnaService.getAllKeywords();

		//게시글 목록
		ArrayList<ContentBean> allContentList = qnaService.getAllContent(page);
		//게시글 키워드
		//qnaService.getContentKeywords(int content_idx);ㄴㄴ
		
		//페이징
		PageBean pageBean = qnaService.getContentCnt(page);
		
		model.addAttribute("allContentList",allContentList);
		model.addAttribute("pageBean",pageBean);
		model.addAttribute("page",page);
		
		return "community/question";
	}
	

}
