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
   <link rel="stylesheet" href="${root }css/community/read_question.css">
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
      <div class="qna-article-wrap">
         <div class="qna__container">
            <header class="qna__content__header">
               <div class="content__header-title">
                  <a href="${root }community/question" class="qna-link">질문과 답변</a>
                  <h1 class="content-title">${readContentBean.content_subject }</h1>
               </div>
               <div class="content__header-writer">
                  <div class="writer-wrap">
                     <div class="writer-image" style="background-image: url(${root}image/user/avatar.png);"></div>
                     <div class="writer-nickname">${readContentBean.writer_nickname }</div>
                  </div>
                  <button type="button" class="button--color-gray button-size-30 follow-btn">팔로우</button>
               </div>
            </header>
            <main>
               <div class="content__body">
                  <p class="content__text">
                    ${readContentBean.content_text }
                  </p>
                  <div class="content__img-wrap">
                  <c:if test="${readContentBean.content_file != null }">
                     <img src="${root }upload/${readContentBean.content_file}" alt="content image" class="content__img">
                  </c:if>
                  </div>
               </div>
            </main>
   
            <footer class="content__footer">
               <ul class="content__keywords-list">
               <c:forEach var = "keyword" items="${contentKeywordsBean }">
                  <li class="keywords-item"><a href="" class="keywords-link">${contentKeywordsBean.keywords_item }</a></li>
               </c:forEach>
               </ul>
               <button class="button--color-gray-inverted content__share" type="button">
                  <svg class="content-share-icon" aria-label="공유하기" width="28" height="28" viewBox="0 0 28 28"
                     preserveAspectRatio="xMidYMid meet">
                     <g fill="none" fill-rule="evenodd">
                        <g transform="translate(-124 -11)">
                           <path d="M124 11h28v28h-28z"></path>
                           <g stroke="#757575" transform="translate(126 12)">
                              <circle cx="5" cy="13" r="4.5"></circle>
                              <circle cx="19" cy="21" r="4.5"></circle>
                              <circle cx="19" cy="5" r="4.5"></circle>
                              <path stroke-linecap="square" d="M8.5 10.5l6-4M8.5 15.5l6 4"></path>
                           </g>
                        </g>
                     </g>
                  </svg>
                  공유
               </button>
               <div class="content__metadata">
                  <time class="content-meta-info">${readContentBean.content_date }</time>
                  <span class="content-meta-info">조회<span class="content-meta-info">
                  ${readContentBean.read_count }</span></span>
                  <span class="content-meta-info">스크랩<span class="content-meta-info">${readContentBean.clip_count }</span></span>
               </div>
            </footer>
         </div>
   
         <!-- qna comment -->
         <section class="qna__comment">
   
            <div class="qna__container">
               <h1 class="comment__header">댓글 <span class="comment__cnt">${comment_cnt}</span></h1>
               <form:form action="${root }community/write_comment" method="post" modelAttribute="writeCommentBean" class="comment__form">
                 	<form:hidden path="content_idx"/>
                 	<form:hidden path="board_info_idx"/>
                  <div class="comment__writer-img">
                     <img class="profile-img" src="${root }image/user/avatar.png" alt="user profile image">
                  </div>
                  <form:input path="comment_text" class="comment__input" type="text" placeholder="댓글을 남겨 보세요."/>
                  <div class="comment__upload-btn">
                     <button class="comment__picture-btn">
                        <svg width="24" height="20" viewBox="0 0 24 20" preserveAspectRatio="xMidYMid meet">
                           <path fill="#292929" fill-rule="nonzero"
                              d="M3.22 20C1.446 20 0 18.547 0 16.765V6.176c0-1.782 1.446-3.235 3.22-3.235h3.118L7.363.377A.586.586 0 0 1 7.903 0h8.195c.24.003.453.152.54.377l1.024 2.564h3.118c1.774 0 3.22 1.453 3.22 3.235v10.589C24 18.547 22.554 20 20.78 20H3.22zm0-1.176h17.56a2.037 2.037 0 0 0 2.05-2.06V6.177c0-1.15-.904-2.058-2.05-2.058h-3.512a.585.585 0 0 1-.54-.368l-1.024-2.574H8.296L7.27 3.75a.585.585 0 0 1-.54.368H3.22a2.037 2.037 0 0 0-2.05 2.058v10.589c0 1.15.904 2.059 2.05 2.059zM12 17.059c-3.064 0-5.561-2.51-5.561-5.588 0-3.08 2.497-5.589 5.561-5.589s5.561 2.51 5.561 5.589c0 3.079-2.497 5.588-5.561 5.588zm0-1.177a4.392 4.392 0 0 0 4.39-4.411A4.392 4.392 0 0 0 12 7.059a4.392 4.392 0 0 0-4.39 4.412A4.392 4.392 0 0 0 12 15.882z">
                           </path>
                        </svg>
                     </button>
                     <form:button type="submit" class="comment__input-btn">등록</form:button>
                  </div>
               </form:form>
   
               <ul class="comment__list">
               <c:forEach var="comment" items="${readCommentBean }">
                  <li class="comment__item">
                     <article class="comment__article">
                        <div class="comment__writer-img">
                        	<img class="profile-img" src="${root }image/user/avatar.png" alt="user profile image">
                        </div>
                        <div class="comment__article-wrap">
                           <strong class="comment__nickname">${comment.user_nickname }</strong>
                           <p class="comment__text">${comment.comment_text }</p>
                           <footer class="comment__metadata">
                              <time class="comment-meta-info">${comment.comment_date }</time>
                              <span class="comment-meta-info like">
                                 <svg class="likes" width="15" height="14" preserveAspectRatio="xMidYMid meet"
                                    stroke="currentColor">
                                    <path fill-rule="evenodd" class="heart"
                                       d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z">
                                    </path>
                                 </svg>
                                 좋아요
                              </span>
                              <span class="comment-meta-info write">답글 달기</span>
                              	<!-- 클릭 시 상대 아이디가 value로 들어오고, 덧글 인풋창 모양 동일, 등록 후 들여쓰기 표현 -->
                              <span class="comment-meta-info report">신고</span>
                           </footer>
                        </div>
                     </article>
                  </li>
   					</c:forEach>          
               </ul>
   
               <!--comment paginator-->
               <ul class="comment__paginator"><!-- 페이징 처리 할 것 -->
                  <li class="comment__paginator-item" role="button">1</li>
                  <li class="comment__paginator-item" role="button">2</li>
                  <li class="comment__paginator-item" role="button">3</li>
               </ul>
   
               <!--qna write link-->
               <div class="write-qna__link">
                  <p class="write-qna__link__header">인테리어 궁금한 것 물어보세요!</p>
                  <a href="${root }community/write_question" class="qna-write-btn button--color-skyblue button-size-60">질문하러 가기</a>
               </div>
   
               <!--write comment button-->
               <div class="sticky-comment-btn">
                  <svg class="comment-share-icon" aria-label="공유하기" width="28" height="28" viewBox="0 0 28 28"
                     preserveAspectRatio="xMidYMid meet">
                     <g fill="none" fill-rule="evenodd">
                        <g transform="translate(-124 -11)">
                           <path d="M124 11h28v28h-28z"></path>
                           <g stroke="#757575" transform="translate(126 12)">
                              <circle cx="5" cy="13" r="4.5"></circle>
                              <circle cx="19" cy="21" r="4.5"></circle>
                              <circle cx="19" cy="5" r="4.5"></circle>
                              <path stroke-linecap="square" d="M8.5 10.5l6-4M8.5 15.5l6 4"></path>
                           </g>
                        </g>
                     </g>
                  </svg>
                  <button type="button" class="qna-share-btn button--color-skyblue button-size-50">댓글 달기</button>
               </div>
   
            </div>
         </section>
      </div>
      
      <section class="qna__content__nav mobile-hide">
         <div class="content-writer">
            <div class="writer-wrap">
               <div class="writer-image" style="background-image: url(${root}image/user/avatar.png);"></div>
               <div class="writer-nickname">${readContentBean.writer_nickname }</div>
            </div>
            <button type="button" class="button--color-gray button-size-30 follow-btn">팔로우</button>
         </div>
   
         <div class="write-qna__link">
            <p class="write-qna__link__header">인테리어 궁금한 것 물어보세요!</p>
            <a href="${root }community/write_question" class="qna-write-btn button--color-skyblue button-size-60">질문하러 가기</a>
         </div>
   
         <button class="button--color-gray-inverted content__share" type="button">
            <svg class="content-share-icon" aria-label="공유하기" width="28" height="28" viewBox="0 0 28 28"
               preserveAspectRatio="xMidYMid meet">
               <g fill="none" fill-rule="evenodd">
                  <g transform="translate(-124 -11)">
                     <path d="M124 11h28v28h-28z"></path>
                     <g stroke="#757575" transform="translate(126 12)">
                        <circle cx="5" cy="13" r="4.5"></circle>
                        <circle cx="19" cy="21" r="4.5"></circle>
                        <circle cx="19" cy="5" r="4.5"></circle>
                        <path stroke-linecap="square" d="M8.5 10.5l6-4M8.5 15.5l6 4"></path>
                     </g>
                  </g>
               </g>
            </svg>
            공유
         </button>
      </section>
      
   </section>

   <!--비슷한 질문과 답변-->
   
   <!-- footer -->
   <c:import url="/WEB-INF/views/include/footer.jsp"/>
   
</body>
</html>