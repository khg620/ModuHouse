package moduhouse.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import moduhouse.bean.user.UserBean;

//로그인 시에만 보여야 하는 페이지들 인터셉터로 처리
public class CheckSignInInterceptor implements HandlerInterceptor {
	
	private UserBean signInUserBean;

	public CheckSignInInterceptor(UserBean signInUserBean) {
		this.signInUserBean = signInUserBean;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		if(signInUserBean.isUserSignIn() == false) {
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/user/sign_in");
			return false;
		}
		return true;
	}
}
