package moduhouse.controller.store;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.store.ProductBean;
import moduhouse.bean.store.ProductDetailBean;
import moduhouse.service.store.ProductDetailService;

@Controller
@RequiredArgsConstructor
public class ProductDetailController {
	
	private final ProductDetailService productDetailService;

	@GetMapping("/store/product")
	public String product_detail(@RequestParam("product_idx") int product_idx, Model model) {
		
		List<ProductDetailBean> imageList = productDetailService.getProductImage(product_idx);
		ProductBean productInfo = productDetailService.getProductInfo(product_idx);
		int price = productInfo.getProduct_price() * productInfo.getProduct_discount_rate() / 100;
		model.addAttribute("price", price); //할인 적용 가격
		model.addAttribute("list",imageList);
		model.addAttribute("productInfo",productInfo);
		return "store/product_detail";
	}
}
