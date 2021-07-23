package moduhouse.controller.order;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.order.DeliveryBean;
import moduhouse.bean.order.OrderBean;
import moduhouse.bean.order.OrderBeanList;
import moduhouse.bean.store.ProductBean;
import moduhouse.bean.user.DefaultAddressBean;
import moduhouse.bean.user.UserBean;
import moduhouse.service.order.CartService;
import moduhouse.service.order.OrderService;
import moduhouse.service.store.ProductDetailService;

@Controller
@RequiredArgsConstructor
public class OrderController {
	
	private final OrderService orderService;
	private final CartService cartService;
	private final ProductDetailService productDetailService;
	private final UserBean signInUserBean;
	
	@GetMapping("/order") //로그인 안 된 상태에서 주문 요청 시 로그인 후 인입
	public String re_order(@ModelAttribute OrderBean orderBean, @ModelAttribute DeliveryBean deliveryBean, HttpServletRequest request) {
		HttpSession session = request.getSession(); 
		OrderBeanList orderBeanList = new OrderBeanList();
		//System.out.println(orderBeanList);
		if(session.getAttribute("url") != null && session.getAttribute("url").equals("/order")) {
				orderBeanList=((OrderBeanList)session.getAttribute("orderInfo"));
				request.setAttribute("orderBeanList", orderBeanList);
				session.removeAttribute("url");
				
				//로그인 사용자의 이메일, 현재 포인트를 주문자 란에 출력하기 위해
				setUserInfo(orderBean, request);
				
				//적립 예정 포인트 출력
				orderBeanList.getOrderBeanList().forEach(x -> {
					int point = signInUserBean.getUser_membership().equals("WELCOME") ?  x.getTotal_price() *1/100 : x.getTotal_price() *3/100 ;
					x.setProduct_point(point);
				});

				//기본 배송정보 조회
				DefaultAddressBean defaultAddressBean = orderService.getDefaultAddress(signInUserBean.getUser_idx());
				request.setAttribute("defaultAddressBean", defaultAddressBean);
			}

		return "order/order";
	}
	
	
	@PostMapping(value="/order") //주문 페이지 요청
	public String order(@ModelAttribute OrderBean orderBean, @ModelAttribute OrderBeanList orderBeanList, @ModelAttribute DeliveryBean deliveryBean, HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		
		List<OrderBean> tempList = new ArrayList<OrderBean>();
		
		setUserInfo(orderBean, request);
		
		//기본 배송 정보 조회
		//설정된 기본 배송 정보가 있다면 화면에 출력한다.
		DefaultAddressBean defaultAddressBean = orderService.getDefaultAddress(signInUserBean.getUser_idx());
		request.setAttribute("defaultAddressBean", defaultAddressBean);
		
		//상품 상세에서 넘겨지는 상품 정보를 받아서 orderBean에 세팅한다
		if(request.getParameterValues("opt1_idx") == null) {    //옵션이 아예 없는 상품의 경우
			
			setOrderInfo(orderBean, request);
			orderBean.setOption_name(request.getParameterValues("opt_name")[0]);
			orderBean.setOrder_qty(Integer.parseInt(request.getParameterValues("qty")[0]));
			orderBean.setEach_price(Integer.parseInt(request.getParameterValues("option_price")[0]));
			
			tempList.add(orderBean);
			orderBeanList.setOrderBeanList(tempList);	
			
		} else if(request.getParameterValues("opt1_idx") != null) {   //옵션1이 존재하면
			int product_cnt = request.getParameterValues("opt1_idx").length;
			
			for(int i = 0; i < product_cnt; i++) {
				
				orderBean = new OrderBean();
				
				setOrderInfo(orderBean, request);
	
				orderBean.setOption1_idx(Integer.parseInt(request.getParameterValues("opt1_idx")[i]));	
				orderBean.setOption1_price(productDetailService.getOption1Price(Integer.parseInt(request.getParameterValues("opt1_idx")[i])));
				
				if(request.getParameter("opt2_idx") != null) {	 //옵션2가 존재하면			
					orderBean.setOption2_idx(Integer.parseInt(request.getParameterValues("opt2_idx")[i]));
					orderBean.setOption2_price(productDetailService.getOption2Price(Integer.parseInt(request.getParameterValues("opt2_idx")[i])));
				}
				orderBean.setOption_name(request.getParameterValues("opt_name")[i]);
				orderBean.setOrder_qty(Integer.parseInt(request.getParameterValues("qty")[i]));
				orderBean.setEach_price(Integer.parseInt(request.getParameterValues("option_price")[i]));
				
				tempList.add(orderBean);
			}
			orderBeanList.setOrderBeanList(tempList);			
			
		}
	  
		session.setAttribute("orderInfo", orderBeanList); //주문상세에서 넘어온 선택 상품들을 세션빈에 저장한다
		
		if(signInUserBean.isUserSignIn() == false) { //로그인 상태가 아니라면 로그인 페이지로
			session.setAttribute("url", "/order");
			return "redirect:/user/sign_in";
		}
		
		//적립 예정 포인트 출력
		orderBeanList.getOrderBeanList().forEach(x -> {
			int point = signInUserBean.getUser_membership().equals("WELCOME") ?  x.getTotal_price() *1/100 : x.getTotal_price() *3/100 ;
			x.setProduct_point(point);
		});
		
		//orderBeanList.getOrderBeanList().forEach(x->System.out.println("상세에서 주문"+x));
		//우측 결제금액 부분 
		//총 상품 금액
		int total_price = 0;
		int total_ship_fee = 0;
		int save_up_point = 0;
		for(OrderBean o : tempList) {
			total_price += o.getTotal_price();
			total_ship_fee += o.getProduct_shipping_fee();
			o.setProduct_point((int)(o.getEach_price() * o.getOrder_qty() * (signInUserBean.getUser_membership().equals("WELCOME") ? (double)1/100 : (double)3/100)));
			save_up_point += o.getProduct_point();
			System.out.println(o.getEach_price() + " " + o.getOrder_qty());
		}
		request.setAttribute("total_price", total_price);
		request.setAttribute("total_ship_fee", total_ship_fee);
		request.setAttribute("save_up_point", save_up_point);
		return "order/order";
	}

	@PostMapping("/order_proc/order")
	public String orderProc(@ModelAttribute OrderBean orderBean, @ModelAttribute DeliveryBean deliveryBean, HttpServletRequest request) {
		HttpSession session = request.getSession();
		OrderBeanList orderBeanList = (OrderBeanList) session.getAttribute("orderInfo");
		
		for(int i = 0; i < orderBeanList.getOrderBeanList().size();i++) {
			String order_number = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss")) + signInUserBean.getUser_idx();//주문 번호
			orderBeanList.getOrderBeanList().get(i).setOrder_number(order_number);
			deliveryBean.setOrder_number(order_number); //배송정보에 같은 주문번호 저장
			orderBeanList.getOrderBeanList().get(i).setUser_idx(signInUserBean.getUser_idx());
			orderBeanList.getOrderBeanList().get(i).setOrderer_name(orderBean.getOrderer_name());
			orderBeanList.getOrderBeanList().get(i).setOrderer_email1(orderBean.getOrderer_email1());
			orderBeanList.getOrderBeanList().get(i).setOrderer_email2(orderBean.getOrderer_email2());
			orderBeanList.getOrderBeanList().get(i).setOrderer_hp1(orderBean.getOrderer_hp1());
			orderBeanList.getOrderBeanList().get(i).setOrderer_hp2(orderBean.getOrderer_hp2());
			
			//포인트 사용 등 할인 적용된 최종 결제 금액
			int price = orderBeanList.getOrderBeanList().get(i).getTotal_price() - orderBean.getUsed_point();
			orderBeanList.getOrderBeanList().get(i).setTotal_price(price);				
			orderBeanList.getOrderBeanList().get(i).setPayment_method(orderBean.getPayment_method());		
			
			//적립예정 포인트
			int point = signInUserBean.getUser_membership().equals("WELCOME") ?  orderBeanList.getOrderBeanList().get(i).getEach_price()*orderBeanList.getOrderBeanList().get(i).getOrder_qty()*1/100 : orderBeanList.getOrderBeanList().get(i).getEach_price()*orderBean.getOrder_qty()*3/100;
			orderBeanList.getOrderBeanList().get(i).setProduct_point(point);
			//결제 시 사용한 포인트
			orderBeanList.getOrderBeanList().get(i).setUsed_point(orderBean.getUsed_point());
						
		}
		
		//사용자의 포인트 차감,
		//최종결제금액에 대한 적립 예정 포인트 적립
		int point = signInUserBean.getUser_membership().equals("WELCOME") ?  orderBeanList.getOrderBeanList().get(0).getTotal_price()*1/100 : orderBeanList.getOrderBeanList().get(0).getTotal_price()*3/100; 
		signInUserBean.setUser_point(signInUserBean.getUser_point() - orderBean.getUsed_point() + point);
		
		//orderBeanList.getOrderBeanList().forEach(x->System.out.println("주문결제 클릭"+x));
		orderBeanList.getOrderBeanList().forEach(
			x-> {orderService.saveOrderInfo(x);  //주문 정보 테이블에 저장
					 if(cartService.checkSameProduct(x) > 0) {	 //장바구니에 담긴 것이었다면 삭제
						 cartService.removeItem(x); 
					 }
			}
		); 
		
		SavedeliveryInfo(deliveryBean);
		orderService.changeUserPoint(signInUserBean);
		
		
		return "order";
	}
	
	public void SavedeliveryInfo(DeliveryBean deliveryBean) {
		//기본 배송지로 저장 체크 시 DEFAULT_ADDRESS_TB에 저장
		if(deliveryBean.isDefault_address_yn()) {
			DefaultAddressBean defaultAddressBean = new DefaultAddressBean();
			
			defaultAddressBean.setDelivery_address1(deliveryBean.getDelivery_address1());
			defaultAddressBean.setDelivery_address2(deliveryBean.getDelivery_address2());
			defaultAddressBean.setDelivery_message(deliveryBean.getDelivery_message());
			defaultAddressBean.setDelivery_zipcode(deliveryBean.getDelivery_zipcode());
			defaultAddressBean.setReceiver_hp1(deliveryBean.getReceiver_hp1());
			defaultAddressBean.setReceiver_hp2(deliveryBean.getReceiver_hp2());
			defaultAddressBean.setReceiver_name(deliveryBean.getReceiver_name());
			defaultAddressBean.setUser_idx(signInUserBean.getUser_idx());
			//이미 저장된 정보가 있다면 수정
			if(orderService.getDefaultAddress(signInUserBean.getUser_idx()) != null) {
				orderService.changeDefaultAddress(defaultAddressBean);
			} else { //기본 배송지 정보가 없다면 저장
				orderService.saveDefaultAddress(defaultAddressBean);				
			}
			
		}
		
		orderService.saveDeliveryInfo(deliveryBean);
	}
	
	//중복 로직
	//주문자 정보에 로그인 유저의 이메일, 포인트 출력
	private void setUserInfo(OrderBean orderBean, HttpServletRequest request) {
		
		String email1 = signInUserBean.getUser_email1();
		String email2 = signInUserBean.getUser_email2();
		int user_point = signInUserBean.getUser_point();
		orderBean.setOrderer_email1(email1);
		orderBean.setOrderer_email2(email2);
		System.out.println(orderBean.getOrderer_email1());
		request.setAttribute("user_point", user_point);
	}
	
	//상품 상세 페이지에서 선택한 상품 정보 출력 위해 orderBean에 파라미터값 세팅
	public void setOrderInfo(OrderBean orderBean, HttpServletRequest request) {
		
		orderBean.setProduct_idx(Integer.parseInt(request.getParameter("idx")));
		/*orderBean.setProduct_brand(request.getParameter("brand"));
		orderBean.setProduct_name(request.getParameter("name"));
		orderBean.setProduct_image(productDetailService.getProductInfo(orderBean.getProduct_idx()).getProduct_image());
		orderBean.setTotal_price(Integer.parseInt(request.getParameter("price")));*/
		
		ProductBean productBean = productDetailService.getProductInfo(orderBean.getProduct_idx());
		orderBean.setProduct_brand(productBean.getProduct_brand());
		orderBean.setProduct_name(productBean.getProduct_name());
		orderBean.setProduct_image(productBean.getProduct_image());
		orderBean.setTotal_price(Integer.parseInt(request.getParameter("price")));
		orderBean.setProduct_shipping_fee(productBean.getProduct_shipping_fee());
	}
	
	
	

}
