package moduhouse.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import moduhouse.bean.community.ContentBean;
import moduhouse.bean.user.UserBean;
import moduhouse.service.community.QnAService;

public class CheckWriterInterceptor implements HandlerInterceptor{ 

	private UserBean signInUserBean;
	private QnAService qnaService;
	
	public CheckWriterInterceptor(UserBean signInUserBean, QnAService qnaService) {
		this.signInUserBean = signInUserBean;
		this.qnaService = qnaService;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		//로그인 사용자와 글 작성자 일치 여부 확인
		
		int content_idx = Integer.parseInt(request.getParameter("content_idx"));
		
		ContentBean contentBean = qnaService.getContentInfo(content_idx);
		
		if(contentBean.getContent_writer_idx() != signInUserBean.getUser_idx()) {
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/community/not_writer");
			System.out.println(contextPath);
			return false;
		}
		return true;
	}
	
}
