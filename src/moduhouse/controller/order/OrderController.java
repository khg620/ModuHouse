package moduhouse.controller.order;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.order.DeliveryBean;
import moduhouse.bean.order.OrderBean;
import moduhouse.bean.order.OrderBeanList;
import moduhouse.bean.user.UserBean;
import moduhouse.service.order.OrderService;
import moduhouse.service.store.ProductDetailService;

@Controller
@RequiredArgsConstructor
public class OrderController {
	
	private final OrderService orderService;
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
				
				String email1 = signInUserBean.getUser_email1();
				String email2 = signInUserBean.getUser_email2();
				orderBean.setOrderer_email1(email1);
				orderBean.setOrderer_email2(email2);

			}
/*		System.out.println(session.getAttribute("orderInfo"));
		System.out.println(orderBeanList);
		System.out.println(orderBeanList.getOrderBeanList());
		System.out.println(orderBeanList.getOrderBeanList().get(0).getProduct_name());
		System.out.println(orderBeanList.getOrderBeanList().get(0).getProduct_brand());
*/		 
		return "order/order";
	}
	
	
	@PostMapping(value="/order") //주문 요청
	public String order(@ModelAttribute OrderBean orderBean, @ModelAttribute OrderBeanList orderBeanList, @ModelAttribute DeliveryBean deliveryBean, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		List<OrderBean> tempList = new ArrayList<OrderBean>();
		
		String email1 = signInUserBean.getUser_email1();
		String email2 = signInUserBean.getUser_email2();
		orderBean.setOrderer_email1(email1);
		orderBean.setOrderer_email2(email2);
		
		if(request.getParameterValues("opt1_idx") == null) { //옵션이 아예 없는 상품의 경우
			orderBean = new OrderBean();
			
			orderBean.setProduct_idx(Integer.parseInt(request.getParameter("idx")));
			orderBean.setProduct_brand(request.getParameter("brand"));
			orderBean.setProduct_name(request.getParameter("name"));
			orderBean.setProduct_image(productDetailService.getProductInfo(orderBean.getProduct_idx()).getProduct_image());
			orderBean.setTotal_price(Integer.parseInt(request.getParameter("price")));
			orderBean.setOption_name(request.getParameterValues("opt_name")[0]);
			orderBean.setOrder_qty(Integer.parseInt(request.getParameterValues("qty")[0]));
			orderBean.setEach_price(Integer.parseInt(request.getParameterValues("option_price")[0]));
			orderBean.setProduct_shipping_fee(request.getParameter("shipping_fee"));
			
			tempList.add(orderBean);
			orderBeanList.setOrderBeanList(tempList);
			
			
		} else if(request.getParameterValues("opt1_idx") != null) { //옵션1이 존재하면
			int product_cnt = request.getParameterValues("opt1_idx").length;
			
			for(int i = 0; i < product_cnt; i++) {
				orderBean = new OrderBean();
				
				orderBean.setProduct_idx(Integer.parseInt(request.getParameter("idx")));
				orderBean.setProduct_brand(request.getParameter("brand"));
				orderBean.setProduct_name(request.getParameter("name"));
				orderBean.setProduct_image(productDetailService.getProductInfo(orderBean.getProduct_idx()).getProduct_image());
				orderBean.setTotal_price(Integer.parseInt(request.getParameter("price")));
				orderBean.setOption1_idx(Integer.parseInt(request.getParameter("opt1_idx")));
				
				if(request.getParameter("opt2_idx") != null) {	 //옵션2가 존재하면			
					orderBean.setOption2_idx(Integer.parseInt(request.getParameter("opt2_idx")));
				}
				orderBean.setOption_name(request.getParameterValues("opt_name")[i]);
				orderBean.setOrder_qty(Integer.parseInt(request.getParameterValues("qty")[i]));
				orderBean.setEach_price(Integer.parseInt(request.getParameterValues("option_price")[i]));
				orderBean.setProduct_shipping_fee(request.getParameter("shipping_fee"));
				
				tempList.add(orderBean);
				orderBeanList.setOrderBeanList(tempList);
				
				
			}
			
		}
		
		if(signInUserBean.isUserSignIn() == false) { //로그인 상태가 아니라면 로그인 페이지로
			session.setAttribute("orderInfo", orderBeanList);
			session.setAttribute("url", "/order");
			return "redirect:/user/sign_in";
			
		}
		
		
		return "order/order";
	}
	
	@PostMapping("/order_proc/order")
	public String orderProc(@ModelAttribute OrderBeanList orderBeanList) {
		
		
		
		
		
		return "order";
	}
	
	@PostMapping("/order_proc/delivery")
	public void SavedeliveryInfo(@ModelAttribute DeliveryBean deliveryBean) {
		System.out.println("delivery");
		System.out.println(deliveryBean.getReceiver_name());
		orderService.saveDeliveryInfo(deliveryBean);
	}
}
