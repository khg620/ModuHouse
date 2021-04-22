package moduhouse.bean.user;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class UserBean {
	
	private int user_idx;
	@Pattern(regexp="^[a-z0-9][a-z0-9-_]*$")
	private String user_email1;
	private String user_email2;
	@Pattern(regexp="(?=.*[a-z])(?=.*[0-9])(?=.*[-_!]).{8,15}")
	private String user_pw1;
	private String user_pw2;
	@Size(min=2, max=5)
	@Pattern(regexp = "^[a-zA-Z가-힣0-9]+$")
	private String user_nickname;
	private String user_birthday;
	private String user_terms_agree;
	private String user_promotion_yn;
	private String user_joining_date;
	private String user_del_yn; //탈퇴여부
	
	private boolean userSignIn; //로그인 검사
	
	public UserBean() {}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public String getUser_email1() {
		return user_email1;
	}

	public void setUser_email1(String user_email1) {
		this.user_email1 = user_email1;
	}

	public String getUser_email2() {
		return user_email2;
	}

	public void setUser_email2(String user_email2) {
		this.user_email2 = user_email2;
	}

	public String getUser_pw1() {
		return user_pw1;
	}

	public void setUser_pw1(String user_pw1) {
		this.user_pw1 = user_pw1;
	}

	public String getUser_pw2() {
		return user_pw2;
	}

	public void setUser_pw2(String user_pw2) {
		this.user_pw2 = user_pw2;
	}

	public String getUser_nickname() {
		return user_nickname;
	}

	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}

	public String getUser_birthday() {
		return user_birthday;
	}

	public void setUser_birthday(String user_birthday) {
		this.user_birthday = user_birthday;
	}

	public String getUser_terms_agree() {
		return user_terms_agree;
	}

	public void setUser_terms_agree(String user_terms_agree) {
		this.user_terms_agree = user_terms_agree;
	}

	public String getUser_promotion_yn() {
		return user_promotion_yn;
	}

	public void setUser_promotion_yn(String user_promotion_yn) {
		this.user_promotion_yn = user_promotion_yn;
	}

	public String getUser_joining_date() {
		return user_joining_date;
	}

	public void setUser_joining_date(String user_joining_date) {
		this.user_joining_date = user_joining_date;
	}

	public String getUser_del_yn() {
		return user_del_yn;
	}

	public void setUser_del_yn(String user_del_yn) {
		this.user_del_yn = user_del_yn;
	}

	public boolean isUserSignIn() {
		return userSignIn;
	}

	public void setUserSignIn(boolean userSignIn) {
		this.userSignIn = userSignIn;
	}
	
}
