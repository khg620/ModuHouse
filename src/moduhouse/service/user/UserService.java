package moduhouse.service.user;

import java.util.Optional;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.user.UserBean;
import moduhouse.dao.user.UserDao;

@Service
@RequiredArgsConstructor
public class UserService {
	
	private final UserDao userDao;
	//@Resource(name="signInUserBean")
	private final UserBean signInUserBean;

	//회원가입
	public void addUserInfo(UserBean signUpUserBean) {
		userDao.addUserInfo(signUpUserBean);
	}
	
  //회원가입 중복검사 -이메일
	public Optional<String> checkUserEmailExist(String user_email1, String user_email2) {
		return userDao.checkUserEmailExist(user_email1, user_email2);
	}
	
  //회원가입 중복검사 -닉네임
	public int checkNicknameExist(String user_nickname) {
		
		return userDao.checkNicknameExist(user_nickname);
	}
	
	//사용자 단건 조회 - 로그인
	public void getSignInUserInfo(UserBean tempSignInUserBean) {
		Optional<UserBean> tempSignInUserBean2 = userDao.getSignInUserInfo(tempSignInUserBean);
		if(tempSignInUserBean2.isPresent()) {
			signInUserBean.setUser_idx(tempSignInUserBean2.get().getUser_idx());
			signInUserBean.setUser_nickname(tempSignInUserBean2.get().getUser_nickname());
			signInUserBean.setUser_email1(tempSignInUserBean2.get().getUser_email1());
			signInUserBean.setUser_email2(tempSignInUserBean2.get().getUser_email2());
			signInUserBean.setUser_homepage(tempSignInUserBean2.get().getUser_homepage());
			signInUserBean.setUser_gender(tempSignInUserBean2.get().getUser_gender());
			signInUserBean.setUser_birthday(tempSignInUserBean2.get().getUser_birthday());
			signInUserBean.setUser_profile_image(tempSignInUserBean2.get().getUser_profile_image());
			signInUserBean.setUser_introduce(tempSignInUserBean2.get().getUser_introduce());
			signInUserBean.setUserSignIn(true);
		} else {
			tempSignInUserBean.setUserSignInFail(true);
		}
	}
	
	//회원 단건 조회 - 회원 모든 정보 조회
	public void getEditUserInfo(UserBean editUserBean) {
		UserBean tempEditUserBean = userDao.getEditUserInfo(signInUserBean.getUser_idx());
		
		editUserBean.setUser_email1(tempEditUserBean.getUser_email1());
		editUserBean.setUser_email2(tempEditUserBean.getUser_email2());
		editUserBean.setUser_pw1(tempEditUserBean.getUser_pw1());
		editUserBean.setUser_nickname(tempEditUserBean.getUser_nickname());
		editUserBean.setUser_homepage(tempEditUserBean.getUser_homepage());
		editUserBean.setUser_gender(tempEditUserBean.getUser_gender());
		editUserBean.setUser_birthday(tempEditUserBean.getUser_birthday());
		editUserBean.setUser_profile_image(tempEditUserBean.getUser_profile_image());
		editUserBean.setUser_introduce(tempEditUserBean.getUser_introduce());
	}
	
	//회원 정보 수정 - 프로필
	public void editUserInfo(UserBean editUserBean) {
		editUserBean.setUser_idx(signInUserBean.getUser_idx());
		userDao.editUserInfo(editUserBean);
	}

	//회원 정보 수정 - 비밀번호
	public void editUserPwd(UserBean editUserBean) {
		editUserBean.setUser_idx(signInUserBean.getUser_idx());
		userDao.editUserPwd(editUserBean);
	}

}
