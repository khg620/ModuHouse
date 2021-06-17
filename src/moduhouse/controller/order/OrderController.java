package moduhouse.controller.order;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.order.DeliveryBean;
import moduhouse.bean.order.OrderBean;
import moduhouse.bean.user.UserBean;
import moduhouse.service.order.OrderService;

@Controller
@RequiredArgsConstructor
public class OrderController {
	
	private final OrderService orderService;
	private final UserBean signInUserBean;
	/*
	@GetMapping("/order")
	public String order(@ModelAttribute OrderBean orderBean) {
		return "order/order";
	}
	*/
	
	@PostMapping("/order")
	public String order(@ModelAttribute OrderBean orderBean, @ModelAttribute DeliveryBean deliveryBean, Model model) {
		
		String email1 = signInUserBean.getUser_email1();
		String email2 = signInUserBean.getUser_email2();
		model.addAttribute("email1",email1);
		model.addAttribute("email2",email2);
		
		/*
		orderBeanList.getOrderBeanList().forEach(x -> System.out.println(x.getOption1_idx()));
		orderBeanList.getOrderBeanList().forEach(x -> System.out.println(x.getOption2_idx()));
		orderBeanList.getOrderBeanList().forEach(x -> System.out.println(x.getProduct_idx()));
		orderBeanList.getOrderBeanList().forEach(x -> System.out.println(x.getOrder_qty()));*/
		
		System.out.println(orderBean.getOption1_idx());
		System.out.println(orderBean.getOption2_idx());
		System.out.println(orderBean.getProduct_idx());
		System.out.println(orderBean.getOrder_qty());
		
		return "order/order";
	}
	
	@PostMapping("/order_proc/order")
	public String orderProc(@ModelAttribute OrderBean orderBean) {
		System.out.println("order");
		System.out.println(orderBean.getOrderer_email1());
		orderBean.setUser_idx(6);
		orderBean.setProduct_idx(300);
		orderService.saveOrderInfo(orderBean);
		
		return "order";
	}
	
	@PostMapping("/order_proc/delivery")
	public void SavedeliveryInfo(@ModelAttribute DeliveryBean deliveryBean) {
		System.out.println("delivery");
		System.out.println(deliveryBean.getReceiver_name());
		orderService.saveDeliveryInfo(deliveryBean);
	}
}
