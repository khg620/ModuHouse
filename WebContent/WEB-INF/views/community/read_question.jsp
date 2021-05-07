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
   <link rel="stylesheet" href="${root }css/">
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
   <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<script src="${root }" defer></script>
</head>
<body>
	<section class="store-main__header">	
		<!-- header -->
		<c:import url="/WEB-INF/views/include/header.jsp"/>
		<!-- nav -->
		<c:import url="/WEB-INF/views/include/store_top_menu.jsp"/>
	</section>

	<!--qna content-->
   <section class="qna__content">
      <div class="container">
         <header>
            <div class="content__header-title">
               <strong>질문과 답변</strong>
               <h1>${readContentBean.content_subject }</h1>
            </div>
            <div class="content__header-writer">
               <div class="writer-wrap">
                  <div class="writer-image"></div>
                  <div class="writer-nickname">${readContentBean.writer_nickname }</div>
               </div>
               <button type="button">팔로우</button>
            </div>
         </header>
         <main>
            <div class="content__main">
               <p class="content__text">
                  ${readContentBean.content_text }
               </p>
               <div class="content__img"></div>
            </div>
         </main>
         <footer>
            <ul class="content__keywords-list">
            	<c:forEach var="keyword" items="${contentKeywordsBean }">            	
               <li class="keywords-item">${keyword.keywords_item }</li>
            	</c:forEach>
            </ul>
            <button type="button">공유</button>
            <div class="content__metadata">
               <time>${readContentBean.content_date }</time>
               <span>조회<span>${readContentBean.read_count }</span></span>
               <span>스크랩<span>${readContentBean.clip_count }</span></span>
               <span>신고</span>
            </div>
         </footer>
      </div>
   </section>
   
   <!-- qna comment -->
   <section>

      <div class="container">
         <h1>댓글<span>11</span></h1>
         <form:form method="post" modelAttribute="writeCommentBean">
            <div class="comment__writer-img"></div>
            <form:input path="comment_text" placeholder="댓글을 남겨 보세요."/>
            <form:button>등록</form:button>
         </form:form>

         <ul class="comment__list">
         	<c:forEach var="comment" items="${readCommentBean }">  	
            <li class="comment__item">
               <article class="comment__article">
                  <div class="comment__writer-img"></div>
                  <div class="comment__article-wrap">
                     <strong>${comment.user_nickname }</strong>
                     <p class="comment__text">${comment.comment_text }</p>
                  </div>
                  <footer class="comment__item__footer">
                     <time class="comment-time">${comment.comment_date }</time>
                     <span class="comment-likes">
                        <svg class="badge" width="15" height="14" preserveAspectRatio="xMidYMid meet"><path fill-rule="evenodd" class="heart" d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z"></path></svg>
                        좋아요
                     </span>
                     <span class="comment-reply">답글 달기</span>
                     <span class="comment-report">신고</span>
                  </footer>
               </article>
            </li>
         	</c:forEach>
         </ul>

         <!--comment paginator-->
         <ul class="comment__paginator">
            <li class="comment__paginator-item" role="button">1</li>
            <li class="comment__paginator-item" role="button">2</li>
            <li class="comment__paginator-item" role="button">3</li>
         </ul>

         <!--qna write link-->
         <div class="write-qna__link">
            <p>인테리어 궁금한 것 물어보세요!</p>
            <button class="button--color-skyblue">질문하러 가기</button>
         </div>

         <!--write comment-->
         <div class="bottom-write-comment-btn">
            <svg class="qna-detail-actions__action__icon" aria-label="공유하기" width="28" height="28" viewBox="0 0 28 28" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><g transform="translate(-124 -11)"><path d="M124 11h28v28h-28z"></path><g stroke="#757575" transform="translate(126 12)"><circle cx="5" cy="13" r="4.5"></circle><circle cx="19" cy="21" r="4.5"></circle><circle cx="19" cy="5" r="4.5"></circle><path stroke-linecap="square" d="M8.5 10.5l6-4M8.5 15.5l6 4"></path></g></g></g></svg>
            <button type="button" class="button--color-skyblue">댓글 달기</button>
         </div>
      </div>
   </section>
   
   <!-- footer -->
   <c:import url="/WEB-INF/views/include/footer.jsp"/>
   
</body>
</html>