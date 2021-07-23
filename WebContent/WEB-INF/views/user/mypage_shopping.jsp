<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="${root }css/store/main.css">
<link rel="stylesheet" href="${root }css/commons/footer.css">
<link rel="stylesheet" href="${root }css/user/mypage_shopping.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="icon" href="${root }image/icons/favicon.ico">
<link rel="apple-touch-icon" href="${root }image/icons/favicon.ico">
<link rel="short icon" type="image/x-icon" href="${root }image/icons/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<title>누구나 멋진 인테리어, 모두의 집</title>
<script src="https://kit.fontawesome.com/7218b951ec.js" crossorigin="anonymous"></script>
</head>

<body>
   <section class="store-main__header">
      <!--header-->
      <c:import url="/WEB-INF/views/include/header.jsp"/>

       <!--navmenu-->
        <c:import url="/WEB-INF/views/include/mypage_nav.jsp"/>
      <nav class="sub-navigation">
         <ul class="sub-navigation__menu">
            <li class="sub-navigation__list"><a class="link" href="">주문배송내역 조회</a></li>
            <li class="sub-navigation__list"><a class="link" href="">상품 스크랩북</a></li>
            <li class="sub-navigation__list"><a class="link" href="">상품문의내역</a></li>
         </ul>
      </nav>
   </section>
   <section class="user-shopping-info">
      <div class="info__wrap">
         <a class="info__content" href="">
            <svg class="content__icon" width="51" height="29" viewBox="0 0 51 29" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M46.493 1a3.5 3.5 0 012.48 1.025A3.482 3.482 0 0150 4.497h0v20.006A3.501 3.501 0 0146.493 28h0H4.507a3.5 3.5 0 01-2.48-1.025A3.482 3.482 0 011 24.503h0V4.497A3.501 3.501 0 014.507 1h0z" stroke="#757575" fill="#FFF"></path><path fill="#757575" d="M7.167 1.06h1.111v26.32H7.167z"></path><path d="M32.722 12.26c-.926-1.73-2.658-2.8-4.706-2.8h0c-2.895 0-5.294 2.382-5.294 5.6 0 2.658 2.4 5.04 5.294 5.04 2.048 0 3.78-1.07 4.706-2.8" stroke="#757575" stroke-width="3" stroke-linecap="round"></path></g></svg>
            <span class="content__name">쿠폰</span>
            <span class="content__value">0</span>
         </a>
         <a class="info__content" href="">
            <svg class="content__icon" width="40" height="29" viewBox="0 0 40 29" preserveAspectRatio="xMidYMid meet"><title>icon/ic_point</title><g transform="translate(-5 .5)" stroke="#757575" fill="none" fill-rule="evenodd"><g transform="translate(23.889 6.16)" fill="#FFF"><path d="M.5 3.86h20.111v13.585c0 .316-.248.59-.599.852-.5.374-1.234.705-2.14.986-1.873.581-4.46.937-7.316.937-2.857 0-5.444-.356-7.316-.937-.907-.281-1.642-.612-2.14-.986-.351-.263-.6-.536-.6-.852h0V3.86z"></path><ellipse cx="10.556" cy="3.36" rx="10.056" ry="2.86"></ellipse><path d="M0 12.88c0 1.856 4.602 3.36 10.278 3.36h0c5.676 0 10.278-1.504 10.278-3.36M0 7.84c0 1.856 4.602 3.36 10.278 3.36h0c5.676 0 10.278-1.504 10.278-3.36"></path></g><ellipse fill="#FFF" cx="18.889" cy="14" rx="13.389" ry="13.5"></ellipse><path d="M13.889 15.68h6.667c1.756.415 3.333-1.182 3.333-3.36 0-1.759-1.572-3.36-3.333-3.36h-3.334v11.2" stroke-linecap="round" stroke-width="3"></path></g></svg>
            <span class="content__name">포인트</span>
            <span class="content__value point">${signInUserBean.user_point }</span>
         </a>
         <a class="info__content" href="">
            <svg class="content__icon" width="44" height="29" viewBox="0 0 44 29" preserveAspectRatio="xMidYMid meet"><g stroke="#757575" fill="none" fill-rule="evenodd"><g fill="#FFF"><path d="M20.797 10.59l3.46 9.584-19.742 7.243v-5.175l-3.48-4.402 19.762-7.25z"></path><path d="M23.203 10.59l-3.46 9.584 19.742 7.243v-5.175l3.48-4.402-19.762-7.25z"></path></g><path d="M24.967.466l.093.012a.499.499 0 01.307.214h0l1.235 1.884a1.499 1.499 0 001.39.672h0l2.228-.202a.499.499 0 01.54.432h0l.303 2.25a1.499 1.499 0 00.956 1.203h0l2.105.797a.499.499 0 01.299.62h0l-.698 2.17a1.499 1.499 0 00.339 1.491h0l1.561 1.647a.499.499 0 010 .688h0l-1.561 1.647a1.499 1.499 0 00-.34 1.492h0l.699 2.168a.499.499 0 01-.299.621h0l-2.105.797a1.499 1.499 0 00-.956 1.203h0l-.303 2.25a.499.499 0 01-.54.432h0l-2.228-.202a1.499 1.499 0 00-1.39.672h0l-1.235 1.884a.499.499 0 01-.676.155h0l-1.917-1.155a1.499 1.499 0 00-1.548 0h0l-1.917 1.155a.499.499 0 01-.676-.155h0l-1.235-1.884a1.499 1.499 0 00-1.39-.672h0l-2.228.202a.499.499 0 01-.54-.432h0l-.303-2.25a1.499 1.499 0 00-.956-1.203h0l-2.105-.797a.499.499 0 01-.299-.62h0l.698-2.17a1.499 1.499 0 00-.339-1.491h0l-1.561-1.647a.499.499 0 010-.688h0l1.561-1.647a1.499 1.499 0 00.34-1.492h0L9.576 8.35a.499.499 0 01.299-.621h0l2.105-.797a1.499 1.499 0 00.956-1.203h0l.303-2.25a.499.499 0 01.54-.432h0l2.228.202a1.499 1.499 0 001.39-.672h0L18.633.692a.499.499 0 01.307-.214h0l2.286 1.214a1.499 1.499 0 001.548 0h0L24.69.537a.499.499 0 01.37-.059z" fill="#FFF"></path><g stroke-linecap="round" stroke-linejoin="round" stroke-width="3"><path d="M16.444 10.64l2.778 7.28L22 10.64M22 10.64l2.777 7.28 2.778-7.28"></path></g></g></svg>
            <span class="content__name">구매등급</span>
            <span class="content__value">${signInUserBean.user_membership }</span>
         </a>
      </div>
      <div class="order-status">
         <ul class="order-status__wrap">
            <li class="order-status__list"><a class="status__title" href="">입금대기</a><div class="status__value">0</div></li>
            <li class="order-status__list"><a class="status__title" href="">결제완료</a><div class="status__value">0</div></li>
            <li class="order-status__list"><a class="status__title" href="">배송준비</a><div class="status__value">0</div></li>
            <li class="order-status__list"><a class="status__title" href="">배송중</a><div class="status__value">0</div></li>
            <li class="order-status__list"><a class="status__title" href="">배송완료</a><div class="status__value">0</div></li>
            <li class="order-status__list"><a class="status__title" href="">구매확정</a><div class="status__value">0</div></li>
         </ul>
      </div>
      <div class="order-list">
         <div class="order-filter">
            <svg class="icon desktop-hide" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#BDBDBD" d="M18.284 4H5.716a.7.7 0 0 0-.61.362.668.668 0 0 0 0 .724l3.963 6.978c.353.632.97 1.348.971 2.076v6.181c.002.24-.054.388.149.558.203.17.343.118.444.095l3.29-1.257c.283-.095.321-.369.317-.676v-4.9c0-.73.338-1.445.69-2.077l3.963-6.978a.668.668 0 0 0 0-.724.7.7 0 0 0-.61-.362z"></path></svg>
            <button class="filter-btn">
               기간
               <svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path></svg>
            </button>
            <button class="filter-btn">
               주문상태
               <svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path></svg>
            </button>
         </div>
         <c:forEach var="item" items="${orderList }">
         <article class="order-item__wrap">
            <div class="order-item__top">
               <div class="top__info"><span class="order-number">${item.order_number }</span><span class="order-date">${item.order_date }</span></div>
               <a class="detail-btn" href="">상세보기</a>
            </div>
            <div class="order-item__content">
               <picture class="item-image-wrap">
                  <img class="item-image" src="${root }image/products/${item.product_image }" alt="">
               </picture>
               <div class="item-info-wrap">
                  <div class="item-info">
                     <strong class="item-brand">${item.product_brand }</strong>
                     <h1 class="item-name">${item.product_name }</h1>
                  
                     <p class="option-name">${item.option_name }</p>
                     <p class="item-price-wrap"><span class="item-price">${item.each_price }</span><span class="item-qty">${item.order_qty }개</span></p>
                  </div>
                  <div class="item-info">
                     <p class="item-etc"><span class="item-status">${item.order_status }</span><span class="item-delivery">택배배송</span></p>
                  </div>
               </div>
            </div>
         </article>
         </c:forEach>
      </div>
   </section>
   <!-- footer -->
   <c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>