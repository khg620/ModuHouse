package moduhouse.bean.user;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
public class UserBean {
	
	private int user_idx;
	@Pattern(regexp="^[a-z0-9][a-z0-9-_]{4,64}$")
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
	
	private boolean userSignInFail; //로그인 성공 실패 검사
	private boolean userSignIn; //로그인 중인지 아닌지 여부를 검사
	
	public UserBean() {
		this.userSignInFail = false;
		this.userSignIn = false;
	}

}
