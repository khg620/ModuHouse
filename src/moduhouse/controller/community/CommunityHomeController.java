package moduhouse.controller.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class CommunityHomeController {

	@GetMapping("/community/question")
	public String main() {
		return "community/question";
	}
}
