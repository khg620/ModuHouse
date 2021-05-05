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
   <link rel="stylesheet" href="${root }css/question.css">
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
	<script src="${root }javascript/question.js" defer></script>
</head>

<body>
   <!--header -->
   <c:import url="/WEB-INF/views/include/header.jsp"/>
   <!-- nav -->
   <c:import url="/WEB-INF/views/include/store_top_menu.jsp"/>
   
   <!--질문과 답변-->
   <!--search form-->
   <section class="question__search">
      <div class="search-container">
         <h1 class="question__search-title">질문과 답변</h1>
         <p class="question__search-desc">모두의집 인테리어 고수들에게 조언을 받으세요.</p>
         <form action="#" method = "GET" class="search-form">
            <div class="question__input-wrap">
               <input type="text" placeholder="궁금한 것을 검색해보세요." class="question__input">
               <button type="submit" class="question__form-btn">
                  <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="svg-inline--fa fa-search fa-w-16 fa-fw"><path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z" class=""></path></svg>
               </button>
            </div>
         </form>
         <!--search keywords-->
         <div class="question__keywords-wrap">
            <div class="question__keywords-top">
               <div class="question__keywords-group">
                  <h2 class="question__keywords-title">인기</h2>
                  <ul class="question__keywords__list">
                     <li class="question__keywords__item" role="button">리모델링/올수리</li>
                     <li class="question__keywords__item" role="button">20평대</li>
                     <li class="question__keywords__item" role="button">아파트</li>
                     <li class="question__keywords__item" role="button">도배</li>
                  </ul>
               </div>
            </div>
            <div class="question__keywords-all">
               <div class="question__keywords-group">
                  <h2 class="question__keywords-title">일반</h2>
                  <ul class="question__keywords__list">
                     <li class="question__keywords__item" role="button">리모델링/올수리</li>
                     <li class="question__keywords__item" role="button">견적</li>
                     <li class="question__keywords__item" role="button">셀프인테리어</li>
                     <li class="question__keywords__item" role="button">디자인 추천</li>
                  </ul>
               </div>
               <div class="question__keywords-group">
                  <h2 class="question__keywords-title">가구</h2>
                  <ul class="question__keywords__list">
                     <li class="question__keywords__item" role="button">가구배치/이동</li>
                     <li class="question__keywords__item" role="button">블라인드</li>
                     <li class="question__keywords__item" role="button">식탁</li>
                     <li class="question__keywords__item" role="button">소파</li>
                     <li class="question__keywords__item" role="button">TV</li>
                  </ul>
               </div>
               <div class="question__keywords-group">
                  <h2 class="question__keywords-title">공간</h2>
                  <ul class="question__keywords__list">
                     <li class="question__keywords__item" role="button">단독주택</li>
                     <li class="question__keywords__item" role="button">아파트</li>
                     <li class="question__keywords__item" role="button">상가</li>
                     <li class="question__keywords__item" role="button">원룸</li>
                  </ul>
               </div>
               <div class="question__keywords-group">
                  <h2 class="question__keywords-title">평수</h2>
                  <ul class="question__keywords__list">
                     <li class="question__keywords__item" role="button">10평미만</li>
                     <li class="question__keywords__item" role="button">10평대</li>
                     <li class="question__keywords__item" role="button">20평대</li>
                     <li class="question__keywords__item" role="button">30평대</li>
                     <li class="question__keywords__item" role="button">40평대</li>
                     <li class="question__keywords__item" role="button">50평대</li>
                  </ul>
               </div>
               <div class="question__keywords-group">
                  <h2 class="question__keywords-title">실내공간</h2>
                  <ul class="question__keywords__list">
                     <li class="question__keywords__item" role="button">화장실</li>
                     <li class="question__keywords__item" role="button">베란다</li>
                     <li class="question__keywords__item" role="button">거실</li>
                     <li class="question__keywords__item" role="button">주방</li>
                     <li class="question__keywords__item" role="button">현관</li>
                  </ul>
               </div>
               <div class="question__keywords-group">
                  <h2 class="question__keywords-title">기타</h2>
                  <ul class="question__keywords__list">
                     <li class="question__keywords__item" role="button">기타</li>
                  </ul>
               </div>
            </div>
            <div class="question__keywords-fold">
               <button class="more-btn show">키워드 더보기</button>
               <button class="fold-btn">키워드 접기</button>
            </div>
         </div>
      </div>

   </section>
   <!--question order-->
   <section class="question__order">
      <div class="question__order-container">
         <div class="order-wrap">
            <button class="order-btn">
               <span class="order-label">
                  정렬
                  <svg class="arrow-icon" width="10" height="7" fill="currentColor" viewBox="0 0 12 7" preserveAspectRatio="xMidYMid meet">
                  <path d="M11 0L5 6l1 1 6-6z"></path>
                  <path d="M6 7L0 1l1-1 6 6z"></path>
                  </svg>
               </span>
               <span class="order-by">최신순</span>
            </button>
            <div class="order-container">
               <div class="order-by__header-group">
                  <h1 class="order-by__header">정렬</h1>
                  <i class="fas fa-times order-by-close"></i>
               </div>
               <ul class="question__order-list">
                  <li class="question__order-item" role="button">인기순</li>
                  <li class="question__order-item" role="button">최신순</li>
                  <li class="question__order-item" role="button">최근 답변순</li>
               </ul>
            </div>
         </div>
         <div class="question__write">
            <a href="#" class="question__write-link button--color-skyblue button-size-30">질문하기</a>
         </div>
      </section>
      <section class="question__notice">
         <div class="notice-container">
            <ul class="question__notice-list">
               <li class="question__notice-item">
                  <a href="#" class="notice-title">공지1</a>
               </li>
               <li class="question__notice-item">
                  <a href="#" class="notice-title">공지1</a>
               </li>
               <li class="question__notice-item">
                  <a href="#" class="notice-title">공지1</a>
               </li>
            </ul>
         </div>
      </div>
   </section>

   <!--question list-->
   <section class="question__content">
      <div class="article-container">
         <article class="question__content-article">
            <a href="#" class="question__article-overlay"></a>
            <div class="content-wrap">
               <div class="content-summary-wrap">
                  <h1 class="content__title">글제목</h1>
                  <p class="content__text">글내용</p>
               </div>
               <div class="content__image-wrap" style="background-image: url(${root}image/items/hanger.jpg)"></div>
            </div>
            <footer class="content__footer">
               <div class="content-meta-wrap">
                  <div class="content-writer-image-wrap" style="background-image: url(${root}image/user_icon.jpg)"></div>
                  <span class="content-author">작성자</span>
                  <span class="content-meta">
                     <time class="content-date">9분전</time>
                     <span class="content-reply">댓글</span>
                     <span class="content-read-count">조회</span>
                  </span>
               </div>
               <ul class="content__keywords">
                  <li class="content-keyword-item">키워드</li>
                  <li class="content-keyword-item">키워드</li>
                  <li class="content-keyword-item">키워드</li>
                  <li class="content-keyword-item">키워드</li>
                  <li class="content-keyword-item">키워드</li>
               </ul>
            </footer>
         </article>
      </div>
   </section>
   <div class="questions__paginator">
      <ul class="paginator-list">
         <li class="paginator-item prev" role="button">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 40" x="0px" y="0px"><title>030-Prev</title><g data-name="030-Prev"><path d="M22.29,30.71l-14-14a1,1,0,0,1,0-1.42l14-14a1,1,0,1,1,1.42,1.42L10.41,16l13.3,13.29a1,1,0,0,1-1.42,1.42Z"/></g></svg>
         </li>
         <li class="paginator-item selected">
            <a href="#" class="paginator-link selected">1</a>
         </li>
         <li class="paginator-item">
            <a href="#" class="paginator-link">2</a>
         </li>
         <li class="paginator-item">
            <a href="#" class="paginator-link">3</a>
         </li>
         <li class="paginator-item">
            <a href="#" class="paginator-link">4</a>
         </li>
         <li class="paginator-item">
            <a href="#" class="paginator-link">5</a>
         </li>
         <li class="paginator-item next show" role="button">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 100 125" enable-background="new 0 0 100 100" xml:space="preserve"><g><path d="M72.655,50.921c0.029-0.056,0.062-0.11,0.086-0.168c0.026-0.063,0.041-0.128,0.06-0.193   c0.017-0.059,0.038-0.117,0.05-0.177c0.012-0.064,0.016-0.129,0.022-0.194c0.006-0.063,0.015-0.125,0.015-0.188   s-0.009-0.125-0.015-0.188c-0.006-0.065-0.009-0.13-0.022-0.194c-0.012-0.06-0.032-0.118-0.05-0.177   c-0.019-0.065-0.035-0.13-0.06-0.193c-0.024-0.058-0.056-0.112-0.086-0.168c-0.031-0.06-0.059-0.121-0.097-0.178   c-0.037-0.055-0.083-0.105-0.125-0.158c-0.037-0.045-0.067-0.094-0.108-0.137l-41.779-43c-0.771-0.793-2.036-0.811-2.828-0.041   c-0.792,0.77-0.811,2.036-0.041,2.828L68.101,50L27.676,91.606c-0.77,0.792-0.751,2.058,0.041,2.828   C28.105,94.812,28.608,95,29.11,95c0.521,0,1.042-0.203,1.435-0.606l41.779-43c0.042-0.043,0.072-0.091,0.108-0.137   c0.043-0.052,0.089-0.102,0.125-0.158C72.596,51.042,72.623,50.981,72.655,50.921z"/></g></svg>
         </li>
      </ul>
   </div>

   <!--footer-->
   <c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>