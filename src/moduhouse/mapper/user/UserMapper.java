package moduhouse.mapper.user;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
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
			 +  "user_nickname, "
			 +  "user_email1, "
			 +  "user_email2, "
			 +  "user_homepage, "
			 +  "user_gender, "
			 +  "user_birthday, "
			 +  "user_profile_image, "
			 +  "user_introduce, "
			 +  "user_point, "
			 +  "user_membership "
			 + " from user_tb"
			 + " where user_email1 = #{user_email1}"
			 + " and user_email2 = #{user_email2}"
			 + " and user_pw1 = #{user_pw1}")
	UserBean getSignInUserInfo(UserBean tempSignInUserBean);
	
	//회원 정보 수정 - 회원 단건 조회 - 수정할 회원의 정보 전부 조회
	@Select("select "
			+ "user_idx, "
			+ "user_email1, "
			+ "user_email2, "
			+ "user_pw1, "
			+ "user_nickname, "
			+ "user_homepage, "
			+ "user_gender, "
			+ "user_birthday, "
			+ "user_profile_image, "
			+ "user_introduce, "
			+ "user_point, "
			+ "user_membership "
			+ "from user_tb "
			+ "where user_idx = #{user_idx}")
	UserBean getEditUserInfo(int user_idx);
	
	//회원 정보 수정 - 프로필
	@Update("update user_tb "
			+ "set "
			+ "		 user_nickname = #{user_nickname}, "
			+ "    user_homepage=#{user_homepage}, "
			+ "    user_gender=#{user_gender}, "
			+ "    user_birthday= #{user_birthday}, "
			+ "    user_profile_image=#{user_profile_image}, "
			+ "    user_introduce=#{user_introduce} "
			+ "where "
			+ "		 user_idx=#{user_idx}")
	void editUserInfo(UserBean editUserBean);

	//회원 정보 수정 - 비밀번호
	@Update("update user_tb "
			+ "set user_pw1 = #{user_pw1} "
			+ "where user_idx = #{user_idx}")
	void editUserPwd(UserBean editUserBean);
	
	
}
