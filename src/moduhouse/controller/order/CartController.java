package moduhouse.controller.order;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.order.OrderBean;
import moduhouse.bean.order.OrderBeanList;
import moduhouse.bean.store.ProductBean;
import moduhouse.bean.user.UserBean;
import moduhouse.service.order.CartService;
import moduhouse.service.store.ProductDetailService;

@Controller
@RequiredArgsConstructor
public class CartController {

	private final UserBean signInUserBean;
	private final ProductDetailService productDetailService;
	private final CartService cartService;

	// (상품 페이지에서) 장바구니에 상품 담기 요청
	@PostMapping("/order/cart")
	@ResponseBody
	public String addCart(OrderBean cartBean, @ModelAttribute("cartBeanList") OrderBeanList cartBeanList,
			HttpServletRequest request) {

		HttpSession session = request.getSession();
		List<OrderBean> tempList = new ArrayList<OrderBean>();
		String result = "";

		if (signInUserBean.isUserSignIn() == false) { // 비로그인 상태
			// 세션에 cartBean 저장할 것
			// 세션에 이미 저장된 내역이 있는 경우
			if (session.getAttribute("cartList") != null) {

				OrderBeanList sessionCartBeanList = (OrderBeanList) session.getAttribute("cartList");
				List<OrderBean> savedCartBeanList = sessionCartBeanList.getOrderBeanList(); // 기존에 장바구니 담기 내역

				result = addCart(savedCartBeanList, cartBean, cartBeanList, request);

			} else {
				result = addCart(tempList, cartBean, cartBeanList, request);
			}

		} else if (signInUserBean.isUserSignIn() == true) {
			List<OrderBean> userCart = cartService.getUserCartList(signInUserBean.getUser_idx()); // 유저 정보로 저장된 장바구니 내역

			if (userCart != null) {
				result = addCart(userCart, cartBean, cartBeanList, request);

			} else {
				result = addCart(tempList, cartBean, cartBeanList, request);
			}
		}

		return result;
	}

	private String addCart(List<OrderBean> list/* 기존 저장내역 or 빈 리스트 */, OrderBean cartBean,
			OrderBeanList cartBeanList/* 새 내역 */, HttpServletRequest request) {

		HttpSession session = request.getSession();
		// List<OrderBean> newList = new ArrayList<OrderBean>(); // 기존에 담긴 것이 있을 경우 중복
		// 체크를 위해 빈 array 준비

		// 옵션이 없는 경우
		if (request.getParameterValues("option1_idx") == null) {

			setProductInfo(cartBean, request);
			cartBean.setEach_price(Integer.parseInt(request.getParameterValues("each_price")[0]));
			cartBean.setOption_name(request.getParameterValues("option_name")[0]);
			cartBean.setOrder_qty(Integer.parseInt(request.getParameterValues("order_qty")[0]));

			if (checkDuplicate(list, cartBean) == 0) {
				list.add(cartBean);
			} else {
				return "duplicated";
			}

			cartBeanList.setOrderBeanList(list);

		} else if (request.getParameterValues("option1_idx") != null) {// 옵션1만 있는 경우

			for (int i = 0; i < request.getParameterValues("option1_idx").length; i++) {
				cartBean = new OrderBean();
				setProductInfo(cartBean, request);
				cartBean.setOption1_idx(Integer.parseInt(request.getParameterValues("option1_idx")[i]));
				cartBean.setOption1_price(
						productDetailService.getOption1Price(Integer.parseInt(request.getParameterValues("option1_idx")[i])));

				// 옵션2도 있는 경우
				if (request.getParameterValues("option2_idx") != null) {
					cartBean.setOption2_idx(Integer.parseInt(request.getParameterValues("option2_idx")[i]));
					cartBean.setOption2_price(
							productDetailService.getOption2Price(Integer.parseInt(request.getParameterValues("option2_idx")[i])));
				}

				cartBean.setEach_price(Integer.parseInt(request.getParameterValues("each_price")[i]));
				cartBean.setOption_name(request.getParameterValues("option_name")[i]);
				cartBean.setOrder_qty(Integer.parseInt(request.getParameterValues("order_qty")[i]));

				if (checkDuplicate(list, cartBean) == 0) {
					list.add(cartBean);
				} else {
					return "duplicated";
				}
				cartBeanList.setOrderBeanList(list);
			}
		}

		// 로그인을 했을 경우에는 테이블에 저장
		if (signInUserBean.isUserSignIn()) {
			cartBeanList.getOrderBeanList().forEach(x -> {
				x.setUser_idx(signInUserBean.getUser_idx());
				cartService.saveCartList(x);
			});

		} else {
			// 비로그인 상태는 장바구니 내역을 세션에 저장
			session.setAttribute("cartList", cartBeanList);

		}
		return "ok";

	}

	// 중복된 상품 검사
	private int checkDuplicate(List<OrderBean> list, OrderBean cartBean) {

		int result = 0;

		if (list.size() > 0) { // 기존에 저장된 내역이 있는 경우

			for (int i = 0; i < list.size(); i++) {
				if (list.get(i).getProduct_idx() == cartBean.getProduct_idx()
						&& list.get(i).getOption1_idx() == cartBean.getOption1_idx()
						&& list.get(i).getOption2_idx() == cartBean.getOption2_idx()) {
					result++;
				}
			}
		}

		return result;
	}

	private void setProductInfo(OrderBean cartBean, HttpServletRequest request) {
		cartBean.setProduct_idx(Integer.parseInt(request.getParameter("product_idx")));

		ProductBean productBean = productDetailService.getProductInfo(cartBean.getProduct_idx());
		cartBean.setProduct_brand(productBean.getProduct_brand());
		cartBean.setProduct_name(productBean.getProduct_name());
		cartBean.setProduct_image(productBean.getProduct_image());
		cartBean.setTotal_price(Integer.parseInt(request.getParameter("total_price")));
		cartBean.setDelivery_method(productBean.getProduct_delivery_method());
		cartBean.setDelivery_company(productBean.getProduct_shipping_company());
		cartBean.setProduct_shipping_fee(productBean.getProduct_shipping_fee());
	}

	// 장바구니 페이지 요청
	@GetMapping("/cart")
	public String cart(HttpServletRequest request) {

		// OrderBeanList cartBeanList = new OrderBeanList();

		HttpSession session = request.getSession();
		List<OrderBean> savedCartBean = null;
		List<OrderBean> sessionCartBean = null;
		List<OrderBean> cartBean = new ArrayList<OrderBean>();

		// 로그인 했을 경우에는 테이블에서 조회
		if (signInUserBean.isUserSignIn()) {

			savedCartBean = cartService.getUserCartList(signInUserBean.getUser_idx());

			if (savedCartBean == null) {
				return "order/cart0";
			} else {
				cartBean.addAll(savedCartBean);
				request.setAttribute("cartBeanList", cartBean);
			}

		} else { // 비로그인 시에는 세션에 저장된 내역 있는지 확인
			// 장바구니에 저장된 상품이 하나도 없는 경우
			if (session.getAttribute("cartList") == null) {
				return "order/cart0";
			} else {
				sessionCartBean = ((OrderBeanList) session.getAttribute("cartList")).getOrderBeanList(); // 세션에 저장된 내역
				cartBean.addAll(sessionCartBean);

				request.setAttribute("cartBeanList", cartBean);
			}
		}

		// 화면 우측 총상품 금액 등 표시하기 위해
		Map<String, Integer> paymentMap = null;

		paymentMap = getPayment(0, cartBean); // 기존에 담긴 내역이 상품 1건인 경우

		if (cartBean.size() > 1) { // 1건 이상인 경우

			int i = cartBean.size();
			paymentMap = getPayment(i, cartBean);
		}

		request.setAttribute("orgPrice", paymentMap.get("orgPrice"));
		request.setAttribute("discountPrice", paymentMap.get("discountPrice"));
		request.setAttribute("totalPayment", paymentMap.get("totalPayment"));
		request.setAttribute("totalShippingFee", paymentMap.get("totalShippingFee"));

		return "order/cart";
	}

	public Map<String, Integer> getPayment(int i, List<OrderBean> cartBean) {

		// 화면 우측 총 상품금액, 총 배송비, 총 할인금액, 결제금액
		int orgPrice = 0; // 할인 전 금액(총 상품금액) ※ orderBean의 total_price는 할인이 적용된 가격이므로 할인 전 금액을 계산하여
											// request에 바인딩
		int discountPrice = 0; // 할인금액
		int totalPayment = 0; // 최종 총 결제금액
		int totalShippingFee = 0; // 총 배송비

		ProductBean product = productDetailService.getProductInfo(cartBean.get(0).getProduct_idx());
		
		int discountRate = product.getProduct_discount_rate();
		//orgPrice = cartBean.get(0).getTotal_price() * (100 + discountRate) / 100;
		
		orgPrice = (product.getProduct_price() + (cartBean.get(0).getOption1_idx() != 0 ? productDetailService.getOption1Price(cartBean.get(0).getOption1_idx()) : 0 )+ (cartBean.get(0).getOption2_idx() != 0 ? productDetailService.getOption2Price(cartBean.get(0).getOption2_idx()) : 0));
		//discountPrice = (orgPrice - cartBean.get(0).getTotal_price());
		totalPayment = (cartBean.get(0).getEach_price() + cartBean.get(0).getProduct_shipping_fee());
		discountPrice = (orgPrice - totalPayment);

		totalShippingFee = cartBean.get(0).getProduct_shipping_fee();

		if (i > 0) { // 장바구니에 추가된 상품 목록이 한 개 이상인 경우

			for (int j = 1; j < i; j++) {
			//	for (int k = 0; k < j; k++) {

					// if (cartBean.get(j - 1).getProduct_idx() != cartBean.get(j).getProduct_idx()){
					// 같은 상품idx는 중목으로 금액을 더하지 않도록 한다
					if (true) {
						product = productDetailService.getProductInfo(cartBean.get(j).getProduct_idx());
						discountRate = productDetailService.getProductInfo(cartBean.get(j).getProduct_idx())
								.getProduct_discount_rate();
						//orgPrice += (cartBean.get(j).getTotal_price() * (100 + discountRate) / 100);
						orgPrice += (product.getProduct_price() + (cartBean.get(j).getOption1_idx() != 0 ? productDetailService.getOption1Price(cartBean.get(j).getOption1_idx()) : 0 )+ (cartBean.get(j).getOption2_idx() != 0 ? productDetailService.getOption2Price(cartBean.get(j).getOption2_idx()) : 0));
						
						
						totalPayment += (cartBean.get(j).getEach_price() + cartBean.get(j).getProduct_shipping_fee());
						
						discountPrice = (orgPrice - totalPayment);

						totalShippingFee += cartBean.get(j).getProduct_shipping_fee();
					}
				//}
			}
		}

		Map<String, Integer> paymentMap = new HashMap<String, Integer>();
		paymentMap.put("orgPrice", orgPrice);
		paymentMap.put("discountPrice", discountPrice);
		paymentMap.put("totalPayment", totalPayment);
		paymentMap.put("totalShippingFee", totalShippingFee);
		return paymentMap;
	}
}