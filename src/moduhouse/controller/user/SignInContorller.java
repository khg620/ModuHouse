package moduhouse.controller.user;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.user.UserBean;
import moduhouse.service.user.UserService;

@Controller
@RequiredArgsConstructor
public class SignInContorller {
	
	private final UserService userService;

	@GetMapping("/user/sign_in")
	public String signIn(@ModelAttribute("signInUserBean") UserBean signInUserBean, Model model) {
		
		return "user/sign_in";
	}
	
	@PostMapping("/user/sign_in")
	public String signIn_pro(@Valid @ModelAttribute("signInUserBean") UserBean signInUserBean, BindingResult result) {
		
		if(result.hasErrors()) {
			System.out.println(result + ", " + signInUserBean.getUser_pw1() + signInUserBean.getUser_pw2());
			return "user/sign_in";
		}
		
		
		return "main";
	}
	
}
