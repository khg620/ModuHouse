package moduhouse.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import moduhouse.bean.user.UserBean;

public class HeaderInterceptor implements HandlerInterceptor{
	
	private UserBean signInUserBean;
	
	public HeaderInterceptor(UserBean signUserBean) {
		this.signInUserBean = signUserBean;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		return true;
	}
}
