package moduhouse.mapper.user;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import moduhouse.bean.user.UserBean;
@Component
public interface UserMapper {

	//회원가입
	@Insert("insert into user_tb "
	        + "(user_idx,"
	        + "user_email1,"
	        + "user_email2,"
	        + "user_pw1,"
	        + "user_nickname,"
	        + "user_terms_agree,"
	        + "user_promotion_yn,"
	        + "user_joining_date,"
	        + "user_del_yn)"
			    + "values "
			    + "(user_seq.nextval,"
			    + "#{user_email1},"
			    + "#{user_email2},"
			    + "#{user_pw1},"
			    + "#{user_nickname},"
			    + "'1',"
			    + "#{user_promotion_yn},"
			    + "sysdate,"
			    + "'0')")
	void addUserInfo(UserBean signUpUserBean);
	
	//중복검사
	@Select("select user_email1 "
			+ "from user_tb "
			+ "where user_email1 = #{user_email1} "
			+ "and user_email2 = #{user_email2}")
	String checkUserEmailExist(@Param(value = "user_email1") String user_email1, @Param(value="user_email2") String user_email2);

	@Select("select count(*) "
			+ "from user_tb "
			+ "where user_nickname = #{user_nickname}")
	int checkNicknameExist(String user_nickname);

	//로그인
	@Select("select user_idx, "
			 +  "user_nickname "
			 + " from user_tb"
			 + " where user_email1 = #{user_email1}"
			 + " and user_email2 = #{user_email2}"
			 + " and user_pw1 = #{user_pw1}")
	UserBean getSignInUserInfo(UserBean tempSignInUserBean);
}
