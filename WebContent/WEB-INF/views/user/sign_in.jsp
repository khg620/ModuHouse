<%@ page language="java" contentType="text/html;charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html lang="ko">

<head>
   <meta charset="UTF-8">
   <meta name="description" content="인테리어 플랫폼" />
   <meta name="keywords" content="인테리어, 집꾸미기" />
   <meta name="author" content="Hyun gyung" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="../css/sign_in.css">
   <link rel="preconnect" href="https://fonts.gstatic.com">
   <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
   <link rel="icon" href="../image/favicon.ico">
   <link rel="apple-touch-icon" href="../image/favicon.ico">
   <link rel="short icon" type="image/x-icon" href="./image/favicon.ico">
   <title>누구나 멋진 인테리어, 모두의 집</title>
   <script src="https://kit.fontawesome.com/7218b951ec.js" crossorigin="anonymous"></script>
</head>

<body>
   <header>
   </header>
   <main role="main">
      <div class="sign-in-form-wrap">
         <div class="sign-in-form">
            <div class="sign-in-form__title">
               <a href="#"><img src="${root }image/main_home_icon.png" alt="go main page"></a>
               <h1><a href="${root}">모두의 집</a></h1>
            </div>
            <form:form action="${root }user/sign_in" method="post" modelAttribute="tempSignInUserBean" class="sign-in-form__form">
               <form:input path="user_email2" type="email" placeholder="이메일" required="required"/>
               <form:password path="user_pw1" placeholder="비밀번호" autocomplete="off" required="required"/>
               <form:errors path="user_pw1" style="color:red; display:block; margin-bottom: 7px; font-size: 13px"/>
               <form:button>로그인</form:button>
            </form:form>
         </div>
         <div class="sign-in-form__action">
            <div class="sign-in-form__container">
               <a href="#" class="sign-in-form__action__entry">비밀번호 재설정</a>
               <a href="${root }user/sign_up" class="sign-in-form__action__entry">회원가입</a>
            </div>
         </div>
         <section class="sign-in-form__sns">
            <h2>SNS 계정으로 간편 로그인/회원가입</h2>
            <div class="sign-in-form__button">
               <a href="">
                  <img src="${root }image/facebook.png" alt="login with facebook" class="facebook-sign">
               </a>
               <a href="">
                  <img src="${root }image/naver.png" alt="login with naver" class="naver-sign">
               </a>
               <a href="">
                  <img src="${root }image/kakao.png" alt="login with kakaotalk" class="kakao-sign">
               </a> 
            </div>
         </section>
         </div>
   </main>
   <footer>
      <div class="container">
         <a href="#" class="policy">©Bucketplace Inc.</a>
         <span class="policy">
            All Rights Reserved
         </span>
        </div>
   </footer>
  
  
 	<script>
 		const sign_in_fail = ${tempSignInUserBean.userSignInFail };
 		
 		const user_email = '${tempSignInUserBean.user_email1}'+'@'+'${tempSignInUserBean.user_email2}';
 		const input_email = document.getElementById('user_email2');
 		const input_pw = document.getElementById('user_pw1');
 		
 		if(sign_in_fail){
 			input_email.value = user_email;
 			if(input_email.value.indexOf('@') === 0) {
 				input_email.value = input_email.value.substr(1);
 			}
 			input_email.classList.add('sign-in-fail');
 			input_pw.classList.add('sign-in-fail');
 		} else {
 			input_email.classList.remove('sign-in-fail');
 			input_pw.classList.remove('sign-in-fail');
 		}
	</script>
	

</body>

</html>