package moduhouse.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.SessionScope;

import moduhouse.bean.user.UserBean;

@Configuration
public class RootAppContext {
	@Bean("signInUserBean")
	@SessionScope
	public UserBean signInUserBean() {
		
		return new UserBean();
	}
}
