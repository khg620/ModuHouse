package moduhouse.controller.user;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import moduhouse.service.user.UserService;

@RestController
@RequiredArgsConstructor
public class RestApiController {

	private final UserService userService;
	
	@GetMapping("/user/checkUserEmailExist/{user_email1}/{user_email2}")
	public String checkUserEmailExist(@PathVariable String user_email1, @PathVariable String user_email2) {
		Optional<String> optChk = userService.checkUserEmailExist(user_email1,user_email2);
		
		return optChk.isPresent() + "";
	}

	@GetMapping("/user/checkNicknameExist/{user_nickname}")
	public String checkNicknameExist(@PathVariable String user_nickname) {
		int chk = userService.checkNicknameExist(user_nickname);
		return chk + "";
	}
	
}
