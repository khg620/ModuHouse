package moduhouse.controller.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.user.UserBean;
import moduhouse.service.community.QnAService;

@Controller
@RequestMapping("/community")
@RequiredArgsConstructor
public class QnACommentController {
	
	private final QnAService qnaService;
	private final UserBean signInUserBean;

	
}
