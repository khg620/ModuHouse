package moduhouse.dao.user;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.user.UserBean;
import moduhouse.mapper.user.UserMapper;

@Repository
@RequiredArgsConstructor
public class UserDao {
	
	private final UserMapper userMapper;

	public void addUserInfo(UserBean signUpUserBean) {
		userMapper.addUserInfo(signUpUserBean);
	}
	
	public Optional<String> checkUserEmailExist(String user_email1, String user_email2) {
		
		return Optional.ofNullable(userMapper.checkUserEmailExist(user_email1, user_email2));
	}

	public int checkNicknameExist(String user_nickname) {
		
		return userMapper.checkNicknameExist(user_nickname);
	}

}
