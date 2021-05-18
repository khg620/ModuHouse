package moduhouse.controller.store;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.store.CategoryBean;
import moduhouse.bean.store.ProductBean;
import moduhouse.bean.user.UserBean;
import moduhouse.service.store.StoreMainService;

@Controller
@RequiredArgsConstructor
public class StoreMainController {
	
	private final StoreMainService storeMainService;
	private final UserBean signInUserBean;
	
	@GetMapping("/store")
	public String main(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.setAttribute("signInUserBean", signInUserBean);
		
		//상품 카테고리
		List<CategoryBean> storeMainCategoryList = storeMainService.getAllCategory();
		model.addAttribute("storeMainCategoryList",storeMainCategoryList);
		
		//상품 정보
		List<ProductBean> productList = storeMainService.getProductList();
		model.addAttribute("productList",productList);
		return "store_main";
	}

}
