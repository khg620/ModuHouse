package moduhouse.controller.community;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.keywords.KeywordsBean;
import moduhouse.service.community.QnAService;

@Controller
@RequiredArgsConstructor
public class CommunityHomeController {
	
	private final QnAService qnaService;

	@GetMapping("/community/question")
	public String main(Model model) {
		
		ArrayList<KeywordsBean> allKeywordsBean = qnaService.getAllKeywords();
		model.addAttribute("allKeywordsBean",allKeywordsBean);
		
		return "community/question";
	}
}
