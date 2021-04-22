package moduhouse.service.user;

import java.util.Optional;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.user.UserBean;
import moduhouse.dao.user.UserDao;

@Service
@RequiredArgsConstructor
public class UserService {
	
	private final UserDao userDao;

	public void addUserInfo(UserBean signUpUserBean) {
		userDao.addUserInfo(signUpUserBean);
	}
	
	public Optional<String> checkUserEmailExist(String user_email1, String user_email2) {
		return userDao.checkUserEmailExist(user_email1, user_email2);
	}

	public int checkNicknameExist(String user_nickname) {
		
		return userDao.checkNicknameExist(user_nickname);
	}

}
