package moduhouse.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import moduhouse.bean.include.TopMenuBean;
import moduhouse.service.include.TopMenuService;

public class TopMenuInterceptor implements HandlerInterceptor{
	
	private TopMenuService topMenuService;
	
	public TopMenuInterceptor(TopMenuService topMenuService) {
		this.topMenuService = topMenuService;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		List<TopMenuBean> topMenuList = topMenuService.getTopMenuList();
		System.out.println(topMenuList);
		request.setAttribute("topMenuList", topMenuList);
		
		return true;
	}

}
