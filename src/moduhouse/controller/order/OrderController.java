package moduhouse.controller.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.order.OrderBean;

@Controller
@RequiredArgsConstructor
public class OrderController {
	
	@RequestMapping(method = {RequestMethod.GET,RequestMethod.POST}, value="/order")
	public String orderPro(@ModelAttribute OrderBean orderBean) {
		return "order/order";
	}
}
