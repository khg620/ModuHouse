package moduhouse.controller.community;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.community.ContentBean;
import moduhouse.bean.keywords.KeywordsBean;
import moduhouse.service.community.QnAService;

@Controller
@RequiredArgsConstructor
public class CommunityHomeController {
	
	private final QnAService qnaService;

	@GetMapping("/community/question") //일단 community 내의 '질문과 답변 페이지'를 커뮤니티 메뉴의 메인으로 함
	public String main(Model model) {
		
		//키워드 
		//ArrayList<KeywordsBean> allKeywordsList = qnaService.getAllKeywords();

		//게시글 목록
		ArrayList<ContentBean> allContentList = qnaService.getAllContent();
		//게시글 키워드
		//qnaService.getContentKeywords(int content_idx);ㄴㄴ
		
		model.addAttribute("allContentList",allContentList);
		
		return "community/question";
	}
}
