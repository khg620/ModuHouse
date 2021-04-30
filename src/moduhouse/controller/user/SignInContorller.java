package moduhouse.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.user.UserBean;
import moduhouse.service.user.UserService;

@Controller
@RequestMapping("/user")
@RequiredArgsConstructor
public class SignInContorller {
	
	private final UserService userService;
	private final UserBean signInUserBean;

	@GetMapping("/sign_in")
	public String signIn(@ModelAttribute("tempSignInUserBean") UserBean tempsignInUserBean, Model model) {
		
		return "user/sign_in";
	}
	
	@PostMapping("/sign_in")
	public String signIn_pro(HttpServletRequest request, @Valid @ModelAttribute("tempSignInUserBean") UserBean tempSignInUserBean, BindingResult result) {
		
		if(result.hasErrors()) {
			tempSignInUserBean.setUserSignInFail(true);
			return "user/sign_in";
		}
		String[] inputEmail = tempSignInUserBean.getUser_email2().split("@");		
		tempSignInUserBean.setUser_email1(inputEmail[0]);
		tempSignInUserBean.setUser_email2(inputEmail[1]);
		
		userService.getSignInUserInfo(tempSignInUserBean);	
		
		if(signInUserBean.isUserSignIn()) {
			HttpSession session = request.getSession();
			session.setAttribute("signInUserBean", signInUserBean);
			return "redirect:/store";
		} else {
			return "user/sign_in";
		}
	}
	
	@GetMapping("/sign_out")
	public String signOut() {
		signInUserBean.setUserSignIn(false);
		return "redirect:/store";
	}
	
	@GetMapping("/not_signIn")
	public String not_signIn() {
		return "user/sign_in";
	}
}
