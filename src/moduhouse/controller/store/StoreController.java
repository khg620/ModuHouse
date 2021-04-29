package moduhouse.controller.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.user.UserBean;

@Controller
@RequiredArgsConstructor
public class StoreController {
	
	private final UserBean signInUserBean;
	
	@GetMapping("/main")
	public String main(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.setAttribute("signInUserBean", signInUserBean);
		
		return "main";
	}

}
