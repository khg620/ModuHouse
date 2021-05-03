<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var = "root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html lang="ko">

<head>
   <meta charset="UTF-8">
   <meta name="description" content="인테리어 플랫폼" />
   <meta name="keywords" content="인테리어, 집꾸미기" />
   <meta name="author" content="Hyun gyung" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="${root }css/utils.css"/>
   <link rel="stylesheet" href="${root }css/main.css">
   <link rel="stylesheet" href="${root }css/mypage_edit_home.css">
   <link rel="stylesheet" href="${root }css/footer.css">
   <link rel="preconnect" href="https://fonts.gstatic.com">
   <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
   <link rel="icon" href="${root }image/favicon.ico">
   <link rel="apple-touch-icon" href="${root }image/favicon.ico">
   <link rel="short icon" type="image/x-icon" href="${root }image/favicon.ico">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
   <title>누구나 멋진 인테리어, 모두의 집</title>
   <script src="https://kit.fontawesome.com/7218b951ec.js" crossorigin="anonymous"></script>
</head>

<body>
   <section>
      <!--header-->
      <c:import url="/WEB-INF/views/include/header.jsp"/>

      <!--mypage nav menu-->
      <c:import url="/WEB-INF/views/include/mypage_nav.jsp"/>
      
      <!-- edit menu -->
      <c:import url="/WEB-INF/views/include/mypage_edit_menu.jsp"/>
   </section>
   
   <!-- edit-form -->
   <section id="edit_user_info">
      <div class="form-container">
         <div class="edit_user_header">
            <h1 class="header__title">회원정보수정</h1>
            <span class="header__withdrawals"><a href="">탈퇴하기</a></span>
         </div>
         <form:form action="${root }user/edit" method="post" modelAttribute="editUserBean">
            <div class="form-item-group user-email">
               <div class="form-item-wrap">
               	<form:label path="user_email1" class="input-label">
                  	<span>이메일</span>
                  	<span class="input_required">*필수항목</span>
                  </form:label>
                  <div class="input-wrap">
                  	<form:input path="user_email1" class="input-control" readonly="true"/>
                     <span class="email-separator">@</span>
                     <form:input path="user_email2" readonly="true"/>                    
                  </div>
               </div>
               <span class="edit_notice">이메일을 변경하시려면 운영자에게 이메일을 보내주세요.</span>
            </div>
            <div class="form-item-group user_nickname">
               <form:label path="user_nickname" class="input-label"><span>별명</span><span class="input_required"> *
                     필수항목</span></form:label>
               <form:input path="user_nickname" class="input-control"/>
               <form:errors></form:errors>
            </div>
            <div class="form-item-group user_homepage">
               <form:label path="user_homepage" class="input-label">홈페이지</form:label>
               <form:input placeholder="https://" path="user_homepage" class="input-control"/>
            </div>
            <div class="user_gender form-item-group">
               <form:label path="user_gender" class="input-label">성별</form:label>
               <div class="input-wrap">
                  <span class="user_gender_radio"><form:radiobutton path="user_gender" value="M"/>남성</span>
                  <span class="user_gender_radio"><form:radiobutton path="user_gender" value="F"/>여성</span>
               </div>
            </div>
            <div class="form-item-group user_birthday ">
               <form:label path="user_birthday" class="input-label">생년월일</form:label>
               <form:input type="date" path="user_birthday" class="input-control"/>
            </div>
            <div class="form-item-group user_image">
               <form:label path="user_profile_image" class="input-label">프로필 이미지</form:label>
               <button type="button" class="user_image__btn">
                  <img src="${root }image/user_icon.jpg" alt="upload user profile image" class="user_image">
               </button>
            </div>
            <div class="form-item-group">
               <form:label path="user_introduce" class="input-label">한줄 소개</form:label>
               <form:input path="user_introduce" class="input-control"/>
            </div>
            <form:button class="edit-btn button--color-skyblue button-size-50">회원 정보 수정</form:button>
         </form:form>
      </div>
   </section>
   <!-- footer -->
   <c:import url="/WEB-INF/views/include/footer.jsp"/>
   
</body>

</html>