package moduhouse.controller.store;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.order.OrderBean;
import moduhouse.bean.store.ProductOption2Bean;
import moduhouse.service.store.ProductDetailService;

@RestController
@RequiredArgsConstructor
public class StoreRestController {
	
	private final ProductDetailService productDetailService;

	//옵션1의 하위 옵션2 조회
	@GetMapping("/option/{product_idx}/{option1_idx}")
	public ResponseEntity<List<ProductOption2Bean>> getProductOption2(@PathVariable int product_idx, @PathVariable int option1_idx) {
		List<ProductOption2Bean> optionList2 = productDetailService.getProductOption2(product_idx, option1_idx);
		ResponseEntity<List<ProductOption2Bean>> entity = new ResponseEntity<List<ProductOption2Bean>>(optionList2, HttpStatus.OK);
		
		return entity;
	}
	
	//가격 조회
	@GetMapping("/price/{option1_idx}/{option2_idx}")
	public String getPrice(@PathVariable int option1_idx, @PathVariable int option2_idx) {
		
		OrderBean tempPrice = productDetailService.getPrice(option1_idx, option2_idx);
		int price = tempPrice.getOption1_price() + tempPrice.getOption2_price();
	
		return String.valueOf(price);
	}
}
