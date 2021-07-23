package moduhouse.controller.store;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

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
		
		//오늘의 딜
		List<ProductBean> todayDealList = storeMainService.getTodayDealList();
		model.addAttribute("todayDealList",todayDealList);
		
		//인기상품
		List<ProductBean> popularList = storeMainService.getPopularList();
		model.addAttribute("popularList",popularList);
		
		return "store/store_main";
	}
	
	//검색
	@GetMapping("/search")
	public ModelAndView SearchProduct(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String word = request.getParameter("word");
		System.out.println(word);
    mav.addObject(storeMainService.SearchProduct(word));
		mav.setViewName("store/store_search");
		return mav;
	}

}
