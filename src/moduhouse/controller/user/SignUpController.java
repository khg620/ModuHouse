package moduhouse.controller.user;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.user.UserBean;
import moduhouse.service.user.UserService;
import moduhouse.validator.UserValidator;

@Controller
@RequestMapping("/user/sign_up")
@RequiredArgsConstructor
public class SignUpController {
	
	private final UserService userService;

	@GetMapping
	public String signUp(@ModelAttribute("signUpUserBean") UserBean signUpUserBean) {
		return "user/sign_up";
	}
	
	@PostMapping
	public String signUpPro(@Valid @ModelAttribute("signUpUserBean") UserBean signUpUserBean,
													 BindingResult result) {
		
		if(result.hasErrors()) {
			System.out.println(result);
			return "user/sign_up";
		}
		
		userService.addUserInfo(signUpUserBean);
		return "redirect:/store_main";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		UserValidator userValidator = new UserValidator();
		binder.addValidators(userValidator);
	}
}
