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
   <link rel="stylesheet" href="${root }css/user/sign_in.css">
   <link rel="preconnect" href="https://fonts.gstatic.com">
   <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
   <link rel="icon" href="${root }image/icons/favicon.ico">
   <link rel="apple-touch-icon" href="${root }image/icons/favicon.ico">
   <link rel="short icon" type="image/x-icon" href="${root }image/icons/favicon.ico">
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
               <a href="#"><img src="${root }image/icons/main_home_icon.png" alt="go main page"></a>
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
                  <svg class="icon" width="48" height="48" viewBox="0 0 48 48" preserveAspectRatio="xMidYMid meet">
<g fill="none" fill-rule="evenodd">
<path fill="#3B5998" d="M0 24C0 10.745 10.745 0 24 0s24 10.745 24 24-10.745 24-24 24S0 37.255 0 24z"/>
<path fill="#FFF" d="M25.77 35V24h3.384v-3.385h-3.385v-2.538c-.012-.756.08-1.285 1.693-1.692h1.692V13h-3.385c-3.25 0-4.52 1.84-4.23 5.077v2.538H19V24h2.538v11h4.231z"/>
</g>
</svg>
               </a>
               <a href="">
                  <svg class="icon" width="48" height="48" viewBox="0 0 48 48" preserveAspectRatio="xMidYMid meet">
<g fill="none" fill-rule="evenodd">
<path fill="#00C63B" d="M0 24C0 10.745 10.745 0 24 0s24 10.745 24 24-10.745 24-24 24S0 37.255 0 24z"/>
<path fill="#FFF" d="M21 25.231V34h-7V15h7l6 8.769V15h7v19h-7l-6-8.769z"/>
</g>
</svg>
               </a>
               <a href="">
                  <svg class="icon" width="48" height="48" viewBox="0 0 48 48" preserveAspectRatio="xMidYMid meet">
<g fill="none" fill-rule="evenodd">
<path fill="#FFEB00" d="M0 24C0 10.745 10.745 0 24 0s24 10.745 24 24-10.745 24-24 24S0 37.255 0 24z"/>
<path fill="#3C2929" d="M24 11.277c8.284 0 15 5.306 15 11.85 0 6.545-6.716 11.85-15 11.85-.92 0-1.822-.066-2.697-.191l-6.081 4.105a.43.43 0 0 1-.674-.476l1.414-5.282C11.777 31.031 9 27.335 9 23.127c0-6.544 6.716-11.85 15-11.85zm6.22 8.407c-.416 0-.718.297-.718.707v5.939c0 .41.289.686.718.686.41 0 .718-.295.718-.686v-1.932l.515-.526 1.885 2.57c.277.374.426.54.691.568.037.003.075.005.112.005.154 0 .66-.04.716-.563.038-.293-.137-.52-.348-.796l-2.043-2.675 1.727-1.743.176-.196c.234-.26.353-.39.353-.587.009-.422-.34-.652-.687-.661-.274 0-.457.15-.57.262l-2.528 2.634v-2.3c0-.422-.288-.706-.717-.706zm-9.364 0c-.56 0-.918.432-1.067.837l-2.083 5.517a.84.84 0 0 0-.065.315c0 .372.31.663.706.663.359 0 .578-.162.69-.51l.321-.97h2.999l.313.982c.111.335.34.498.7.498.367 0 .655-.273.655-.62 0-.056-.017-.196-.081-.369l-2.019-5.508c-.187-.53-.577-.835-1.069-.835zm-2.92.064h-4.452c-.417 0-.642.337-.642.654 0 .3.168.652.642.652h1.51v5.21c0 .464.274.752.716.752.443 0 .718-.288.718-.751v-5.21h1.508c.474 0 .643-.352.643-.653 0-.317-.225-.654-.643-.654zm7.554-.064c-.442 0-.717.287-.717.75v5.707c0 .497.28.794.75.794h2.674c.434 0 .677-.321.686-.627a.642.642 0 0 0-.17-.479c-.122-.13-.3-.2-.516-.2h-1.99v-5.195c0-.463-.274-.75-.717-.75zm-4.628 1.306l.008.01 1.083 3.265h-2.192L20.842 21a.015.015 0 0 1 .028 0z"/>
</g>
</svg>
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