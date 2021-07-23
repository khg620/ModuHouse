package moduhouse.controller.user;

import java.util.HashMap;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.user.UserBean;
import moduhouse.service.user.UserService;

@RestController
@RequiredArgsConstructor
public class RestApiController {

	private final UserBean signInUserBean;
	private final UserService userService;
	private KakaoApi kakaoApi = new KakaoApi();
	
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
	
	@GetMapping("/user/userMembership")
	public String userMembership() {
		return signInUserBean.getUser_membership().equals("WELCOME") ? "1" : "3";
	}
	
	//카카오 로그인
	/*
	@RequestMapping("/user/kakao_sign_in")
	public ModelAndView kakaoSignIn(@RequestParam("code") String code, HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		//1번 인증코드 요청 전달
		String accessToken = kakaoApi.getAccessToken(code);
		//2번 인증코드로 토큰 전달
		HashMap<String, Object> userInfo = kakaoApi.getUserInfo(accessToken);
		
		System.out.println("login info : " + userInfo);
		
		if(userInfo.get("email") != null) {
			session.setAttribute("userId", userInfo.get("email"));
			session.setAttribute("accessToken", accessToken);
		}
		mav.addObject("userId",userInfo.get("email"));
		mav.setViewName("user/sign_in");
		return mav;
	}
	
	//카카오 로그아웃
	@GetMapping("/kakao/sign_out")
	public ModelAndView signout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		kakaoApi.kakaoSignOut((String)session.getAttribute("accessToken"));
		session.removeAttribute("accessToken");
		session.removeAttribute("userId");
		mav.setViewName("user/sign_in");
		return mav;
	}*/
}
