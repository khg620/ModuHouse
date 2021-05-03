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
	
	//회원가입
	public void addUserInfo(UserBean signUpUserBean) {
		userMapper.addUserInfo(signUpUserBean);
	}
	
	//회원가입 중복검사 -이메일
	public Optional<String> checkUserEmailExist(String user_email1, String user_email2) {
		
		return Optional.ofNullable(userMapper.checkUserEmailExist(user_email1, user_email2));
	}
	//회원가입 중복검사 -닉네임
	public int checkNicknameExist(String user_nickname) {
		
		return userMapper.checkNicknameExist(user_nickname);
	}

	//사용자 단건 조회 - 로그인
	public Optional<UserBean> getSignInUserInfo(UserBean tempSignInUserBean) {
		return Optional.ofNullable(userMapper.getSignInUserInfo(tempSignInUserBean));
	}

	//회원 단건 조회 - 회원 모든 정보 조회
	public UserBean getEditUserInfo(int user_idx) {
		
		return userMapper.getEditUserInfo(user_idx);
	}
	
	//회원 정보 수정
	public void editUserInfo(UserBean editUserBean) {
		userMapper.editUserInfo(editUserBean);
	}
	
}
