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
   <link rel="stylesheet" href="${root }css/commons/utils.css"/>
   <link rel="stylesheet" href="${root }css/store/main.css">
   <link rel="stylesheet" href="${root }css/user/mypage_edit_home.css">
   <link rel="stylesheet" href="${root }css/commons/footer.css">
   <link rel="preconnect" href="https://fonts.gstatic.com">
   <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
   <link rel="icon" href="${root }image/icons/favicon.ico">
   <link rel="apple-touch-icon" href="${root }image/icons/favicon.ico">
   <link rel="short icon" type="image/x-icon" href="${root }image/icons/favicon.ico">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
   <title>누구나 멋진 인테리어, 모두의 집</title>
   <script src="https://kit.fontawesome.com/7218b951ec.js" crossorigin="anonymous"></script>
   <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<script src="${root }javascript/user/mypage_edit.js" defer></script>
</head>

<body>
   <section class="store-main__header">
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
               <form:label path="user_nickname" class="input-label">
               	<span>별명</span>
               	<span class="input_required">*필수항목</span>
               </form:label>
               <div class="input-group">               
               <form:input path="user_nickname" class="input-control" required="required" minlength="2" maxlength="14"/>
               <p class="duplicated-nickname">이미 사용 중인 별명입니다.</p>
               <p class="regexp-error">별명은 2 ~ 5자로 영문, 한글, 숫자만 사용할 수 있습니다.</p> 
               <form:errors path="user_nickname" style="color:#ff7777; position: absolute; top: 100%; font-size: 13px"/>
               </div>
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
                  <img src="${root }image/icons/user_icon.jpg" alt="upload user profile image" class="user_image">
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
   
   <script>
   	const origin_nickname = '${signInUserBean.user_nickname}'; //로그인 한 사용자의 별명
   	const user_nickname = document.querySelector('#user_nickname'); //별명 input
   	const duplicated_message = document.querySelector('.duplicated-nickname'); //중복 시 에러메세지
   	const valid_result= document.getElementById('user_nickname.errors'); //유효성 검사 불만족 시 에러메세지(서버)
   	const regexp_message = document.querySelector('.regexp-error'); //유효성 검사 불만족 시 에러메세지(javascript)
   	const regexp = /^[a-zA-Z가-힣]{2,15}$/; //유효성 체크식
   	
   	const checkNickname = (e) => {
   		const user_nickname = e.target;
   		const space_reg=/(\s*)/g;
   		const user_nickname_val = user_nickname.value.replace(space_reg,'');
   		
   		$.ajax({
   			url:"${root}user/checkNicknameExist/"+user_nickname_val,
   			type:"get",
   			dataType:"text",
   			success:function(result) {
   				
   				if(valid_result !== null){
   					valid_result.remove();
   				}
   				if(origin_nickname !== user_nickname_val){   					
   					if(result.trim() === "0" && regexp.test(user_nickname_val)) {
   						user_nickname.classList.remove('error');
   						duplicated_message.classList.remove('show');
   						regexp_message.classList.remove('show');
   					} else if(result.trim() ==="1"){
   						user_nickname.classList.add('error');
   						duplicated_message.classList.add('show');
   						regexp_message.classList.remove('show');
   					} else if(regexp.test(user_nickname_val) === false) {
   						duplicated_message.classList.remove('show');
   						regexp_message.classList.add('show');
   					}	
   				} else if(origin_nickname === user_nickname_val){
   					user_nickname.classList.remove('error');
						duplicated_message.classList.remove('show');
						regexp_message.classList.remove('show');
   				}
   			}
   		})
   	};
   	user_nickname.addEventListener('input',checkNickname);
 
   </script>
</body>

</html>