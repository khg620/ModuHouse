package moduhouse.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import moduhouse.bean.user.UserBean;

public class UserValidator implements Validator	 {

	@Override
	public boolean supports(Class<?> clazz) {
		
		return UserBean.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		UserBean user = (UserBean) target;
		
		String beanName = errors.getObjectName();
		
		if(beanName.equals("signUpUserBean")||beanName.equals("modifyUserBean")) {
			if(user.getUser_pw1().equals(user.getUser_pw2()) == false) {
				errors.rejectValue("user_pw2","NotEquals");
			}
			
		}
	}
}
