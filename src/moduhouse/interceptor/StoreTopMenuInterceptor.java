package moduhouse.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import moduhouse.bean.include.StoreTopMenuBean;
import moduhouse.bean.user.UserBean;
import moduhouse.service.include.StoreTopMenuService;

public class StoreTopMenuInterceptor implements HandlerInterceptor{
	
	private StoreTopMenuService storeTopMenuService;
	
	public StoreTopMenuInterceptor(StoreTopMenuService storeTopMenuService) {
		this.storeTopMenuService = storeTopMenuService;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		List<StoreTopMenuBean> storeTopMenuList = storeTopMenuService.getStoreTopMenuList();
		
		request.setAttribute("storeTopMenuList", storeTopMenuList);
		
		return true;
	}

}
