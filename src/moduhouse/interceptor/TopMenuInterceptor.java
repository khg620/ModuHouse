package moduhouse.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import moduhouse.bean.include.TopMenuBean;
import moduhouse.bean.user.UserBean;
import moduhouse.service.include.TopMenuService;

public class TopMenuInterceptor implements HandlerInterceptor{
	
	private TopMenuService topMenuService;
	private UserBean signInUserBean;
	
	public TopMenuInterceptor(TopMenuService topMenuService, UserBean signInUserBean) {
		this.topMenuService = topMenuService;
		this.signInUserBean = signInUserBean;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		List<TopMenuBean> topMenuList = topMenuService.getTopMenuList();
		int a = 0; 
		System.out.println(signInUserBean + ""+  (a++));
		request.setAttribute("topMenuList", topMenuList);
		
		return true;
	}

}
