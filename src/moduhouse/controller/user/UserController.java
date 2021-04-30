package moduhouse.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
	
	//마이페이지 홈
	//@GetMapping("/user/{user_idx}")
	@GetMapping("/user/home")
	public String userPage() {
		return "user/mypage_home";
	}
	
	//나의 쇼핑 홈
	@GetMapping("/user/shopping/order_list")
	public String userShopping() {
		return "user/mypage_shopping";
	}
	
	//나의 쇼핑 - 상품 스크랩
	//@GetMapping("/user/{user_idx}/collection?filter=production")
	@GetMapping("/user/collection?filter=production")
	public String userProductCollect() {
		return "";
	}
	
	//나의 쇼핑 - 포인트
	@GetMapping("/user/shopping/mileages")
	public String userMileages() {
		return "";
	}
	//나의 쇼핑 - 고객센터
	@GetMapping("/contact_us")
	public String ContactCS() {
		return "";
	}
	
	//나의 리뷰 - 작성 
	@GetMapping("/product_reviews/write")
	public String writeProductReview() {
		return "user/mypage_review_write";
	}
	
	@PostMapping("/product_reviews/write")
	public String writeProductReview_pro() {
		return "redirect:/user/mypage_review_write";
	}
	
	//나의 리뷰 - 보기
	@GetMapping("/product_reviews")
	public String productReview() {
		return "user/mypage_review";
	}
	
	//설정 - 회원정보 수정
	@GetMapping("/user/edit")
	public String userEdit() {
		return "user/mypage_edit";
	}
	
	@PostMapping("/user/edit")
	public String userEdit_pro() {
		return "redirect:/user/mypage_edit";
	}
	
	//설정 - 비밀번호
	@GetMapping("/user/edit_password")
	public String editPassword() {
		return "user/mypage_edit_password";
	}
	
	@PostMapping("/user/edit_pssword")
	public String editPassword_pro() {
		return "redirect:/user/mypage_edit_password";
	}
	
	//설정 - 알림 설정
	@GetMapping("/push_setting")
	public String pushSetting() {
		return "user/mypage_edit_push";
	}
	
	@PostMapping("/push_setting")
	public String pushSetting_pro() {
		return "redirect:/user/mypage_edit_push";
	}

}
