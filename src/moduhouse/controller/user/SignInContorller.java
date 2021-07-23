package moduhouse.controller.user;

import java.util.List;

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
import moduhouse.bean.order.CartBean;
import moduhouse.bean.order.OrderBean;
import moduhouse.bean.order.OrderBeanList;
import moduhouse.bean.user.UserBean;
import moduhouse.service.order.CartService;
import moduhouse.service.user.UserService;

@Controller
@RequestMapping("/user")
@RequiredArgsConstructor
public class SignInContorller {

	private final UserService userService;
	private final UserBean signInUserBean;
	private final CartService cartService;

	@GetMapping("/sign_in")
	public String signIn(@ModelAttribute("tempSignInUserBean") UserBean tempsignInUserBean, HttpServletRequest request) {
		
		return "user/sign_in";
	}

	@PostMapping("/sign_in")
	public String signIn_pro(HttpServletRequest request,
			@Valid @ModelAttribute("tempSignInUserBean") UserBean tempSignInUserBean, BindingResult result) {

		if (result.hasErrors()) {
			tempSignInUserBean.setUserSignInFail(true);
			return "user/sign_in";
		}
		String[] inputEmail = tempSignInUserBean.getUser_email2().split("@");
		tempSignInUserBean.setUser_email1(inputEmail[0]);
		tempSignInUserBean.setUser_email2(inputEmail[1]);

		userService.getSignInUserInfo(tempSignInUserBean);

		if (signInUserBean.isUserSignIn()) {
			HttpSession session = request.getSession();
			session.setAttribute("signInUserBean", signInUserBean);

			//로그인 시 비로그인 상태에서 장바구니에 담은 상품이 있는지 확인하고 장바구니 테이블로 저장
			addCartList(session);
			
			if (session.getAttribute("url") != null && session.getAttribute("url").equals("/order")) {
				// 비로그인 상태에서 주문 요청 시 세션에 주문정보 저장 후 로그인 페이지로 인입
				// 다시 주문 진행할 수 있도록 order 페이지 요청
				return "redirect:/order";
			} 
			if(session.getAttribute("url") != null && session.getAttribute("url").equals("/cart_order")) {
				//비로그인 상태에서 장바구니에 담은 상품을 주문 요청(바로구매 버튼 클릭) 시 로그인 페이지로 리다이렉트
				//장바구니 내역은 상품을 장바구니에 담기 클릭 시 이미 세션에 저장이 되어 있는 상태
				//로그인 성공 후 세션에서 url 속성이 /cart_order인 경우 다시 cart/order_proc 요청하여 주문 진행
				return "redirect:/cart/order_proc";
			}
			
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
	
	
	public void addCartList(HttpSession session) {
		if (session.getAttribute("cartList") != null) {
			
			// 로그인 시에 세션에 저장된 장바구니 정보가 있다면 테이블로 저장한다.
			// < 장바구니 로직 : 비로그인 시에는 세션에서 작업, 로그인 시에는 테이블에서 작업하는 것으로 함
		List<OrderBean> cartBeanList = ((OrderBeanList)session.getAttribute("cartList")).getOrderBeanList();
		//cartBeanList.forEach(x -> System.out.println(x));
		
			// 테이블 저장 내역과 세션 내역이 중복 상품이 있는지 체크한다
			for (int i = 0; i < cartBeanList.size(); i++) {
				cartBeanList.get(i).setUser_idx(signInUserBean.getUser_idx());
				int dup = cartService.checkSameProduct(cartBeanList.get(i));
				//System.out.println(i + " " + dup);
				if (dup > 0) {
					cartBeanList.remove(cartBeanList.get(i));
				}
			}
			//cartBeanList.forEach(x -> System.out.println(x)); 
			cartBeanList.forEach(x -> {
				x.setUser_idx(signInUserBean.getUser_idx());
				cartService.saveCartList(x);
			});
		}
	}
}
