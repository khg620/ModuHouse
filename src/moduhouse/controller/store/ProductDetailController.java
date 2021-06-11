package moduhouse.controller.store;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.order.OrderBean;
import moduhouse.bean.store.ProductBean;
import moduhouse.bean.store.ProductDetailBean;
import moduhouse.bean.store.ProductOption1Bean;
import moduhouse.bean.store.ProductOption2Bean;
import moduhouse.service.store.ProductDetailService;

@Controller
@RequiredArgsConstructor
public class ProductDetailController {
	
	private final ProductDetailService productDetailService;

	@GetMapping("/store/product")
	public String product_detail(@ModelAttribute OrderBean orderBean, @RequestParam("product_idx") int product_idx, Model model) {
		
	  //상품 상세 이미지
		List<ProductDetailBean> imageList = productDetailService.getProductImage(product_idx); 
		//상품 정보
		ProductBean productInfo = productDetailService.getProductInfo(product_idx); 
		int price = productInfo.getProduct_price() * productInfo.getProduct_discount_rate() / 100;
		
		//상품 옵션1
		List<ProductOption1Bean> optionList1 = productDetailService.getProductOption1(product_idx);
		//상품 옵션2 존재 여부
		int option2Cnt = productDetailService.getOption2Cnt(product_idx);
		
		model.addAttribute("price", price); //할인 적용 가격
		model.addAttribute("list",imageList); //상품 상세 이미지
		model.addAttribute("productInfo",productInfo); //상품 정보
		model.addAttribute("optionList1",optionList1); //옵션1
		model.addAttribute("option2Cnt",option2Cnt); //옵션2 여부
		
		return "store/product_detail";
	}
}
