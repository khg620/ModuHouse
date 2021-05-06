<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="description" content="인테리어 플랫폼" />
<meta name="keywords" content="인테리어, 집꾸미기" />
<meta name="author" content="Hyun gyung" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${root }css/main.css">
<link rel="stylesheet" href="${root }css/mypage_edit_home.css">
<link rel="stylesheet" href="${root }css/mypage_edit_password.css">
<link rel="stylesheet" href="${root }css/footer.css">
<link rel="stylesheet" href="${root }css/utils.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="icon" href="${root }image/favicon.ico">
<link rel="apple-touch-icon" href="${root }image/favicon.ico">
<link rel="short icon" type="image/x-icon" href="${root }image/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<title>누구나 멋진 인테리어, 모두의 집</title>
<script src="https://kit.fontawesome.com/7218b951ec.js" crossorigin="anonymous"></script>
<script src="${root }javascript/mypage_edit.js" defer></script>
</head>

<body>
	<section class="store-main__header">
		<!--header-->
		<c:import url="/WEB-INF/views/include/header.jsp" />

		<!--mypage nav menu-->
		<c:import url="/WEB-INF/views/include/mypage_nav.jsp" />

		<!-- edit menu -->
		<c:import url="/WEB-INF/views/include/mypage_edit_menu.jsp" />
	</section>

	<!--update password form-->
	<section id="update-password">
		<div class="update-password-form-wrap">
			<h1 class="update-password__title">비밀번호 변경</h1>
			<form:form path="${root }user/edit_password" modelAttribute="editUserBean" method="POST" class="update-password__form">
				<div class="input-group">
					<form:label path="user_pw1">새 비밀번호</form:label>
					<span class="subtitle">8자 이상 입력해주세요.</span>
					<form:password path="user_pw1" class="update-password__input1" minlength="8" maxlength="15" />
					<form:errors path="user_pw1" style="display:block; margin-bottom: 20px; color:#ff7777; font-size: 12px" />
					<span class="regexp-error-msg">영문, 숫자, 특수문자(-, _, !) 포함 8 ~ 15자로 입력해주세요.</span>
				</div>
				<div class="input-group">
					<form:label path="user_pw2">새 비밀번호</form:label>
					<form:password path="user_pw2" class="update-password__input2" minlength="8" maxlength="15" />
					<form:errors path="user_pw2" style="display:block; margin-bottom: 20px; color:#ff7777; font-size: 12px" />
					<span class="pwd-not-same-msg">비밀번호가 일치하지 않습니다.</span>
				</div>
				<form:button class="button--color-skyblue button-size-50">비밀번호 변경</form:button>
			</form:form>
		</div>
	</section>

	<!-- footer -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />

	<script>
   	const user_pw1 = document.getElementById('user_pw1'); //비밀번호1 인풋
   	const user_pw2 = document.getElementById('user_pw2'); //비밀번호2 인풋
   	const regexp_error_msg = document.querySelector('.regexp-error-msg'); //정규식 불일치 메세지
   	const not_same_msg = document.querySelector('.pwd-not-same-msg'); //비밀번호 불일치 메세지
   	const pwd_regexp = /(?=.*[a-z])(?=.*[0-9])(?=.*[-_!]).{8,15}/;
   	
   	const checkRegexp = (e) => {
   		if(pwd_regexp.test(e.target.value) === false){
   	   	e.target.classList.add('error');
   	   	regexp_error_msg.classList.add('show');
   	   } else {
   	   	e.target.classList.remove('error');
   	   	regexp_error_msg.classList.remove('show');
   	   }
   	};
   	
   	user_pw1.addEventListener('input',(e) => {
   		checkRegexp(e);
   	});
   	
   	user_pw2.addEventListener('input',(e) => {
   		if(user_pw1.value !== user_pw2.value) {
   			user_pw2.classList.add('error');
   			not_same_msg.classList.add('show');
   		} else {
   			user_pw2.classList.remove('error');		
   			not_same_msg.classList.remove('show');
   		}
   	});
   </script>
</body>

</html>