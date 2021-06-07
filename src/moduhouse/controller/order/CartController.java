package moduhouse.controller.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class CartController {

	@GetMapping("/order/cart")
	public String cart() {
		return "order/cart";
	}
}
