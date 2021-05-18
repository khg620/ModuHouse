<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <meta name="description" content="인테리어 플랫폼" />
   <meta name="keywords" content="인테리어, 집꾸미기" />
   <meta name="author" content="Hyun gyung" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="${root }css/utils.css"/>
   <link rel="stylesheet" href="${root }css/main.css">
   <link rel="stylesheet" href="${root }css/community/write_question.css">
   <link rel="stylesheet" href="${root }css/footer.css">
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
	<script src="${root }javascript/community/write_question.js" defer></script>
</head>
<body>
	<header class="qna-write-header">
      <div class="qna-write-container">
         <h1 class="qna-write-head">
         	<a href="${root }" class="qna-home-link">
         	<span class="home-icon" style="background-image: url(${root}image/icons/favicon.ico)"></span>
         	모두의집
         	</a>
         </h1>
      </div>
   </header>
   <main class="qna-write">
      <div class="qna-write-container">
         <form:form action="${root }community/write_question" method="post" modelAttribute="writeContentBean" encType="multipart/form-data" class="qna-write__form">
            <form:hidden path="board_info_idx"/>
            <fieldset class="qna-write__form-group">
               <legend class="qna-write__form__header">
                  <span class="qna-write__form__head">질문하기</span>
                  <span class="qna-write__form__cs">상품구매, 배송 관련 문의가 필요하시다면 <a class="cs-link" href="">문의하러 가기</a></span>
               </legend>
               <form:input path="content_subject" class="qna-write__title" minlength="7" placeholder="제목을 적어주세요."/>
               <form:errors path="content_subject" style="display: block; margin-bottom: 8px; color: #ff7777; font-size: 12px"/>
               <form:textarea class="qna-write__text" path="content_text"
                  placeholder="내용을 적어주세요. 
참고가 되는 사진을 같이 공유해주시면 더 좋은 답변을 얻을 수 있습니다.
※ 비슷한 어려움을 겪는 유저를 위해 답변자에게 포인트를 지급하며,
답변이 달린 질문글은 삭제할 수 없습니다. 
※ 인테리어와 관련 없는 질문은 숨김 및 삭제될 수 있습니다."/>
					<form:errors path="content_text" style="display: block; margin-top: 7px; color: #ff7777; font-size: 12px"/>
            </fieldset>
            <div class="question__keywords">
               <div class="keywords-wrap">
                  <ul class="keywords-list">
                     <li class="keywords-item" role="button">키워드</li>
                  </ul>
                  <button type="button" class="select-keyword-btn">
                     클릭하여 주요 키워드를 입력해주세요.
                  </button>
               </div>
               <div class="keywords-counter">
                  <span class="current-count">0개</span>
                  <span class="max-count">최대 5개</span>
               </div>
            </div>
            <div class="upload-btn-wrap">
            	<div class="upload-image-btn-wrap">            	
            		<div class="upload-image-btn" style="background-image:url(${root}image/icons/camera.png)"></div>
            		사진추가
            	</div>
               <form:input type="file" path="content_file2"/>
               <form:button class="submit-question-btn">질문 저장하기</form:button>
            </div>
         </form:form>
      </div>
   </main>
</body>
</html>