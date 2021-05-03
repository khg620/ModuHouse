<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
         <form action="">
            <div class="form-item-group user-email">
               <div class="form-item-wrap">
                  <label for="user_email1" class="input-label"><span>이메일</span><span class="input_required"> *
                        필수항목</span></label>
                  <div class="input-wrap">
                     <input type="text" id="user_email1" class="input-control">
                     <span class="email-separator">@</span>
                     <select id="user_email2">
                        <option value="" selected disabled>선택해주세요</option>
                        <option value="naver.com">naver.com</option>
                        <option value="hanmail.net">hanmail.net</option>
                        <option value="daum.net">daum.net</option>
                        <option value="gmail.com">gmail.com</option>
                        <option value="nate.com">nate.com</option>
                        <option value="hotmail.com">hotmail.com</option>
                        <option value="outlook.com">outlook.com</option>
                        <option value="icloud.com">icloud.com</option>
                     </select>
                  </div>
               </div>
               <span class="edit_notice">이메일을 변경하시려면 운영자에게 이메일을 보내주세요.</span>
            </div>
            <div class="form-item-group user_nickname">
               <label for="user_nickname" class="input-label"><span>별명</span><span class="input_required"> *
                     필수항목</span></label>
               <input type="text" id="user_nickname" class="input-control">
            </div>
            <div class="form-item-group user_homepage">
               <label for="user_homepage" class="input-label">홈페이지</label>
               <input type="text" placeholder="https://" id="user_homepage" class="input-control">
            </div>
            <div class="user_gender form-item-group">
               <label for="user_gender" class="input-label">성별</label>
               <div class="input-wrap">
                  <span class="user_gender_radio"><input type="radio" id="user_gender" name="user_gender"/>남성</span>
                  <span class="user_gender_radio"><input type="radio" id="user_gender" name="user_gender"/>여성</span>
               </div>
            </div>
            <div class="form-item-group user_birthday ">
               <label for="user_birthday" class="input-label">생년월일</label>
               <input type="date" class="input-control">
            </div>
            <div class="form-item-group user_image">
               <label for="user_image" class="input-label">프로필 이미지</label>
               <button type="button" class="user_image__btn">
                  <img src="${root }image/user_icon.jpg" alt="upload user profile image" class="user_image">
               </button>
            </div>
            <div class="form-item-group">
               <label for="user_introduce" class="input-label">한줄 소개</label>
               <input type="text" class="input-control">
            </div>
            <button type="submit" class="edit-btn button--color-skyblue button-size-50">회원 정보 수정</button>
         </form>
      </div>
   </section>
   <!-- footer -->
   <c:import url="/WEB-INF/views/include/footer.jsp"/>
   
</body>

</html>