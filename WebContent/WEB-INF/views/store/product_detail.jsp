<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="description" content="인테리어 플랫폼" />
<meta name="keywords" content="인테리어, 집꾸미기" />
<meta name="author" content="Hyun gyung" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${root }css/commons/utils.css">
<link rel="stylesheet" href="${root }css/store/main.css">
<link rel="stylesheet" href="${root }css/store/product_detail.css">
<link rel="stylesheet" href="${root }css/commons/footer.css">
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
		<!-- header -->
		<c:import url="/WEB-INF/views/include/header.jsp" />
		<!-- store_top_menu.jsp -->
		<c:import url="/WEB-INF/views/include/store_top_menu.jsp" />
	</section>
   <!--main-->
   <!--nav-->
   <section class="product-category">
      <nav class="category-nav">
         <ol class="product-category-breadcrumb">
            <li class="entry"><a class="link" href="">패브릭</a></li>
            <li class="entry"><a class="link" href="">커튼/블라인드</a></li>
         </ol>
      </nav>
   </section>
      <!--detail-->
   <section class="product-selling-overview">
      <div class="row">
         <div class="product-carousel-wrap col-12 col-md-6 col-lg-7">
            <div class="carousel-list-entry">
               <div class="carousel-list__image">
                  <img class="carousel" src="${root }image/products/${productInfo.product_image}" alt="product image">
               </div>
               <ul class="carousel-list__list">
                  <li class="carousel-list-btn"><span class="carousel-paginator"></span></li>
                  <li class="carousel-list-btn"><span class="carousel-paginator"></span></li>
               </ul>
            </div>
         </div>
         <div class="overview__content col-12 col-md-6 col-lg-5">
            <div class="header">
               <div class="title-wrap">
                  <div class="title-group">
                     <strong class="brand">${productInfo.product_brand }</strong>
                     <h1 class="title">${productInfo.product_name }</h1>
                  </div>
                  <div class="icon-group">
                     <button class="icon-wrap scrab">
                        <svg class="icon--stroke" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path></svg>
                        <span class="scrab-cnt">870</span>
                     </button>
                     <button class="icon-wrap share">
                        <svg class="icon" aria-label="공유하기" width="24" height="24" viewBox="0 0 24 24" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path d="M9.64 14.646a4.5 4.5 0 1 1 0-5.292l4.54-2.476a4.5 4.5 0 1 1 .63.795l-4.675 2.55c.235.545.365 1.146.365 1.777s-.13 1.232-.365 1.777l4.675 2.55a4.5 4.5 0 1 1-.63.795l-4.54-2.476zM18 8a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM6 15.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM18 23a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"></path></svg>
                     </button>
                  </div>
               </div>
               <span class="review">
                  <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-1.000" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
                  <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-1.000" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
                  <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-1.000" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
                  <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-1.000" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
                  <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-1.000" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-1.000"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
               </span>
               <span class="review">(564)</span>
               <div>
                  <span class="discount">${productInfo.product_discount_rate }%</span><span class="discount price">${productInfo.product_price }원</span>
               </div>
               <strong class="price">${price}</strong><span class="price">원</span>
               <button class="coupon">
                  <div class="coupon-left">최대 10% 할인쿠폰</div>
                  <svg width="28" height="46" fill="none" preserveAspectRatio="xMidYMid meet"><g><path d="M0 1h7.468c.592 0 1.191.215 1.864.595.452.255.857.534 1.294.834l.004.003c.251.173.514.353.801.54.88.572 1.937.903 3.069.903s2.19-.331 3.069-.903c.287-.187.548-.367.8-.54l.005-.003c.437-.3.842-.579 1.294-.834.673-.38 1.273-.595 1.864-.595H29V0h-7.468c-1.386 0-2.603.835-3.777 1.64a35.96 35.96 0 01-.732.494 4.617 4.617 0 01-2.523.741 4.617 4.617 0 01-2.524-.741 35.92 35.92 0 01-.731-.494C10.07.835 8.854 0 7.468 0H0v1zM7.468 45H0v1h7.468c1.386 0 2.603-.835 3.777-1.64l.002-.002c.245-.168.488-.334.73-.492a4.617 4.617 0 012.523-.741c.935 0 1.804.273 2.523.741.243.158.485.324.73.492l.002.002c1.174.805 2.391 1.64 3.777 1.64H29v-1h-7.468c-.591 0-1.191-.215-1.864-.595a17.204 17.204 0 01-1.294-.834 37.248 37.248 0 00-.805-.543 5.618 5.618 0 00-3.069-.903c-1.132 0-2.19.331-3.069.903-.289.188-.552.37-.805.543-.437.3-.842.579-1.294.834-.673.38-1.272.595-1.864.595z" fill="#6CD5F4"></path><path d="M14.5 4v38" stroke="#DADCE0" stroke-dasharray="5 3"></path></g></svg>
                  <div class="coupon-right"><svg class="icon" aria-label="다운로드" width="30" height="30" fill="none" preserveAspectRatio="xMidYMid meet"><path d="M30 15c0 8.284-6.716 15-15 15-8.284 0-15-6.716-15-15C0 6.716 6.716 0 15 0c8.284 0 15 6.716 15 15z" fill="#E5F9FF"></path><path d="M17.5 13.5h3.333L15 19.333 9.167 13.5H12.5v-5h5v5zM9.167 22.667V21h11.666v1.667H9.167z" fill="#35C5F0"></path></svg></div>
               </button>
               <div class="info-wrap">
                  <div class="overview__info">
                     <span class="info__title">혜택</span>
                     <span class="info">${productInfo.product_point }P 적립 </span>
                     <span class="info-detail">(WELCOME 0.3% 적립)</span>
                  </div>
                  <div class="overview__info">
                     <span class="info__title">배송</span>
                     <div class="info-group">
                     <c:choose>
                     	<c:when test="${productInfo.product_shipping_fee == 0 }">
                        <span class="info">무료배송</span>
                        </c:when>
                        <c:otherwise>
                        <span class="info">${productInfo.product_shipping_fee }원</span>
                        </c:otherwise>
                     </c:choose>
                        <span class="info-other">
                           <svg class="check-icon" width="10" height="9" fill="none" preserveAspectRatio="xMidYMid meet"><path d="M1 3.83l2.153 3.03a1 1 0 001.627.005L9 1" stroke="#BDBDBD" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path></svg>
                           제주도/도서산간 지역 5,000원
                        </span>
                     </div>
                  </div>
                  <div class="info__seller">
                     <svg class="icon" width="24" height="24" fill="none" preserveAspectRatio="xMidYMid meet"><path d="M3.972 8.694c0-.26.212-.472.472-.472h12.278a.472.472 0 010 .945H4.444a.472.472 0 01-.472-.473z" fill="#35C5F0"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M17.51 5.5H6.492a1 1 0 00-.93.632l-.99 2.5A1 1 0 005.498 10h13.004a1 1 0 00.927-1.368l-.99-2.5a1 1 0 00-.93-.632zM3.642 8.263a2.002 2.002 0 001.397 2.684V17.5a2.5 2.5 0 002.5 2.5H16.474a2.5 2.5 0 002.487-2.5v-6.553a2.002 2.002 0 001.398-2.684l-.99-2.5a2 2 0 00-1.86-1.263H6.493a2 2 0 00-1.86 1.263l-.99 2.5zM6.04 17.5V11h11.921v6.5a1.5 1.5 0 01-1.487 1.5v-4a2 2 0 00-2-2h-.97a2 2 0 00-2 2v4H7.54a1.5 1.5 0 01-1.5-1.5zm6.464 1.5h2.97v-4a1 1 0 00-1-1h-.97a1 1 0 00-1 1v1h.847a.5.5 0 110 1h-.847v2zM8 13h1.5v1.5H8V13zm-1 0a1 1 0 011-1h1.5a1 1 0 011 1v1.5a1 1 0 01-1 1H8a1 1 0 01-1-1V13z" fill="#3F474D"></path></svg>
                     ${productInfo.product_brand }
                  </div>
               </div>
            </div>
            <div class="product-selling-order">
               <div class="product-selling-option">
                  <select class="option" name="" id="">
                     <option value="1">1차옵션</option>
                     <option value="color">색상</option>
                     <option value="size">사이즈</option>
                  </select>
                  <select class="option">
                     <option value="2">2차옵션</option>
                     <option value="">2차옵션</option>
                     <option value="">2차옵션</option>     
                  </select>
                  <p class="order-price">
                     <span>주문금액</span>
                     <span class="total-price">0원</span>
                  </p>
               </div>
               <div class="order-btn">
                  <button class="button--color-skyblue-inverted button-size-55">장바구니</button>
                  <button class="button--color-skyblue button-size-55 buy-btn">바로구매</button>
               </div>
            </div>
         </div>
      </div>
   </section>

   <section class="product-desc">
      <div class="nav-wrap">
         <nav class="product-desc__nav">
            <ol class="nav-list">
               <li class="menu"><a class="nav-link" href="">상품정보</a></li>
               <li class="menu"><a class="nav-link" href="">리뷰</a></li>
               <li class="menu"><a class="nav-link" href="">문의</a></li>
               <li class="menu"><a class="nav-link" href="">배송/환불</a></li>
               <li class="menu"><a class="nav-link" href="">추천</a></li>
            </ol>
         </nav>
      </div>
   </section>
   <div class="selling-content-wrap">
      <div class="product-desc-wrap">
         <section class="product-desc">
            <div class="product-desc__content">
               <div class="content-wrap">
                  <div class="content-img">
                  <c:forEach var="list" items="${list }">
                     <img src="${root }image/product_detail/${productInfo.product_brand }/${productInfo.product_idx }/${list.product_image}" alt="">
                  </c:forEach> 
                  </div>
                  <button class="button--color-skyblue button-size-60">펼치기</button>
               </div>
            </div>
         </section>
         
            <!--review-->
         <section class="product-selling">
            <div class="selling-container">
               <div class="review-bar">
                  <div class="selling-header">
                     <div class="cnt-wrap">
                        <span>리뷰</span>
                        <span class="cnt">564</span>
                     </div>
                     <span class="write-btn">리뷰쓰기</span>
                  </div>
                  <div class="review-feed">
                     <div class="star-badge">
                        <span class="point">4.7</span>
                        <div class="star-icon">
                           <span>
                              <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-0" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-0"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-0" fill="#DBDBDB"></use><use clip-path="url(#star-clip-0)" xlink:href="#star-path-0"></use></svg>
                              <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-0" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-0"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-0" fill="#DBDBDB"></use><use clip-path="url(#star-clip-0)" xlink:href="#star-path-0"></use></svg>
                              <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-0" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-0"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-0" fill="#DBDBDB"></use><use clip-path="url(#star-clip-0)" xlink:href="#star-path-0"></use></svg>
                              <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-0" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-0"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-0" fill="#DBDBDB"></use><use clip-path="url(#star-clip-0)" xlink:href="#star-path-0"></use></svg>
                              <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-0" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-0"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-0" fill="#DBDBDB"></use><use clip-path="url(#star-clip-0)" xlink:href="#star-path-0"></use></svg>
                           </span>
                        </div>
                     </div>
                     <div class="review-avg">
                        <div class="review-avg-group">
                           <div class="point top">5점</div>
                           <div class="review-avg-bar-wrap">
                              <div class="review-avg-bar"></div>
                              <div class="review-avg-bar color"></div>
                           </div>
                           <div class="review-cnt top">420</div>
                        </div>
                        <div class="review-avg-group">
                           <div class="point">4점</div>
                           <div class="review-avg-bar-wrap">
                              <div class="review-avg-bar"></div>
                              <div class="review-avg-bar color"></div>
                           </div>
                           <div class="review-cnt">420</div>
                        </div>
                        <div class="review-avg-group">
                           <div class="point">3점</div>
                           <div class="review-avg-bar-wrap">
                              <div class="review-avg-bar"></div>
                              <div class="review-avg-bar color"></div>
                           </div>
                           <div class="review-cnt">420</div>
                        </div>
                        <div class="review-avg-group">
                           <div class="point">2점</div>
                           <div class="review-avg-bar-wrap">
                              <div class="review-avg-bar"></div>
                              <div class="review-avg-bar color"></div>
                           </div>
                           <div class="review-cnt">420</div>
                        </div>
                        <div class="review-avg-group">
                           <div class="point">1점</div>
                           <div class="review-avg-bar-wrap">
                              <div class="review-avg-bar"></div>
                              <div class="review-avg-bar color"></div>
                           </div>
                           <div class="review-cnt">420</div>
                        </div>
                     </div>
                  </div>
               </div>
      
               <!--filter-->
               <div class="filter">
                  <button class="filter-order">베스트순</button>
                  <button class="filter-order">최신순</button>
                  <button class="filter-order">
                     <svg class="icon" width="18" height="18" viewBox="0 0 18 18" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" d="M15.821 3a.67.67 0 0 1 .679.672v10.656a.67.67 0 0 1-.679.672H2.18a.67.67 0 0 1-.679-.672V3.672c0-.375.3-.672.679-.672H15.82zm-.679 1.344H2.858v8.14L7.01 7.781c.094-.125.284-.125.394 0l2.321 2.657c.048.046.063.109.048.156l-.3 1.375c-.016.11.11.172.173.094l2.369-2.579a.202.202 0 0 1 .284 0l2.842 3.094V4.344zm-2.526 3.61a1.1 1.1 0 0 1-1.105-1.095 1.1 1.1 0 0 1 1.105-1.093 1.1 1.1 0 0 1 1.105 1.093 1.1 1.1 0 0 1-1.105 1.094z"></path></svg>
                     사진리뷰
                  </button>
                  <button class="filter-option">
                     <svg class="production-review-feed__filter__option__icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#BDBDBD" d="M18.284 4H5.716a.7.7 0 0 0-.61.362.668.668 0 0 0 0 .724l3.963 6.978c.353.632.97 1.348.971 2.076v6.181c.002.24-.054.388.149.558.203.17.343.118.444.095l3.29-1.257c.283-.095.321-.369.317-.676v-4.9c0-.73.338-1.445.69-2.077l3.963-6.978a.668.668 0 0 0 0-.724.7.7 0 0 0-.61-.362z"></path></svg>
                     필터
                  </button>
               </div>
      
               <!--user review-->
               <div class="user-review-wrap">
                  <article class="user-review-container">
                     <div class="user-review__writer">
                        <div class="user-img-wrap">
                           <img class="user-img" src="${root }image/icons/user_icon.jpg" alt="">
                        </div>
                        <div class="user-info">
                           <span class="user-nickname">닉네임</span>
                           <div class="user-review-head">
                              <div class="user-review-icon">
                                 <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-0" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-0"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-0" fill="#DBDBDB"></use><use clip-path="url(#star-clip-0)" xlink:href="#star-path-0"></use></svg>
                                 <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-0" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-0"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-0" fill="#DBDBDB"></use><use clip-path="url(#star-clip-0)" xlink:href="#star-path-0"></use></svg>
                                 <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-0" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-0"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-0" fill="#DBDBDB"></use><use clip-path="url(#star-clip-0)" xlink:href="#star-path-0"></use></svg>
                                 <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-0" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-0"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-0" fill="#DBDBDB"></use><use clip-path="url(#star-clip-0)" xlink:href="#star-path-0"></use></svg>
                                 <svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-0" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-0"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-0" fill="#DBDBDB"></use><use clip-path="url(#star-clip-0)" xlink:href="#star-path-0"></use></svg>
                              </div>
                              <div>
                                 <span class="user-review-date">2021.03.10</span>
                              </div>
                           </div>
                        </div>
                     </div><!--user, star-->
         
                     <div class="review-content-wrap">
                        <div class="review-content-img" style="background-image: url(/image/items/curtain.jpg);">
                        </div>
                        <p class="review-content">블라인드 두개 시켰는데 둘다 너무 마음에 들어요! 흰색이 완전 화이트가 아니라 나무 느낌이 나는 화이트라 더 예쁜거 같네요. 사이즈도 생각했던 사이즈고 설치도 생각보다 어렵지 않아요 저는 전동드릴 없이도 했는데 튼튼하게 잘 됐어요!</p>
                     </div>
                  </article>
               </div>
            </div>
      
            <div class="selling-paginator">
               <ol class="list">
                  <li class="prev">
                     <svg class="prev-icon" width="26" height="26" viewBox="0 0 26 26" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd" transform="matrix(-1 0 0 1 26 0)"><rect width="25" height="25" x=".5" y=".5" stroke="#DCDCDC" rx="4"></rect><g stroke="#424242" stroke-linecap="square" stroke-width="2"><path d="M14.75 8.263L10.25 13M10.25 13l4.5 4.737"></path></g></g></svg>
                  </li>
                  <li class="link current">1</li>
                  <li class="link">2</li>
                  <li class="next">
                     <svg width="26" height="26" viewBox="0 0 26 26" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd" transform="matrix(-1 0 0 1 26 0)"><rect width="25" height="25" x=".5" y=".5" stroke="#DCDCDC" rx="4"></rect><g stroke="#424242" stroke-linecap="square" stroke-width="2"><path d="M14.75 8.263L10.25 13M10.25 13l4.5 4.737"></path></g></g></svg>
                  </li>
               </ol>
            </div>
         </section>
           
         <!--qna-->
         <section class="product-selling">
            <div class="selling-container">
               <div class="selling-header">
                  <h1 class="selling-title">문의 <span class="cnt">10</span></h1>
                  <span class="write-btn">문의하기</span>
               </div>
         
               <div>
                  <div class="question-feed">
                     <span class="status">구매</span>
                     <span class="status">배송</span>
                     <span class="status">미답변</span>
                  </div>
                  <div class="question-feed">
                     <span class="writer">닉네임</span>
                     <span class="date">2021년 05월 20일 12시 43분</span>
                  </div>
                  <div class="question-content">
                    <p class="content">5월 10일 주문번호 56831186
           혹시 언제쯤 배송되는지 알 수 있을까요?
                    </p>
                  </div>
                  <div class="question-answer">
                     <div class="answer-wrap">
                        <div class="answer-feed">
                           <span class="answer-writer">누베스</span>
                           <span class="date">2021년 05월 20일 13시 43분</span>
                        </div>
                        <p class="answer-content">안녕하세요. 누베스입니다.
            고객님께서 문의주신 내용 답변드리겠습니다.
            네 고객님 주문건 다음주 수~목 중 출고예정입니다. 좋은상품으로 빠르게 발송될 수 있도록 하겠습니다. 감사합니다.
      
            더 궁금한 사항 있으시면 언제든지 문의해주세요.
            항상 저희 누베스를 이용해 주셔서 감사합니다.
                        </p>
                     </div>
                  </div>
               </div>
            </div>  
      
            <div class="selling-paginator">
               <ol class="list">
                  <li class="prev">
                     <svg class="prev-icon" width="26" height="26" viewBox="0 0 26 26" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd" transform="matrix(-1 0 0 1 26 0)"><rect width="25" height="25" x=".5" y=".5" stroke="#DCDCDC" rx="4"></rect><g stroke="#424242" stroke-linecap="square" stroke-width="2"><path d="M14.75 8.263L10.25 13M10.25 13l4.5 4.737"></path></g></g></svg>
                  </li>
                  <li class="link current">1</li>
                  <li class="link">2</li>
                  <li class="next">
                     <svg width="26" height="26" viewBox="0 0 26 26" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd" transform="matrix(-1 0 0 1 26 0)"><rect width="25" height="25" x=".5" y=".5" stroke="#DCDCDC" rx="4"></rect><g stroke="#424242" stroke-linecap="square" stroke-width="2"><path d="M14.75 8.263L10.25 13M10.25 13l4.5 4.737"></path></g></g></svg>
                  </li>
               </ol>
            </div>
         </section>
         
            <!--delivery-->
         <section class="product-selling delivery">
            <div class="selling-container">
               <div class="selling-header">
                  <h1 class="selling-title">배송</h1>
               </div>
               <table class="selling-table">
                  <tbody>
                     <tr>
                        <th>배송</th>
                        <td>일반택배</td>
                     </tr>
                     <tr>
                        <th>배송비</th>
                        <td>무료배송</td>
                     </tr>
                     <tr>
                        <th>배송</th>
                        <td>일반택배</td>
                     </tr>
                     <tr>
                        <th>도서산간 추가 배송비</th>
                        <td>5000원</td>
                     </tr>
                     <tr>
                        <th>배송불가 지역</th>
                        <td>배송불가 지역이 없습니다.</td>
                     </tr>
                  </tbody>
               </table>
            </div>
         </section>
         
         <!--exchange/refund-->
         <section class="product-selling">
            <div class="selling-container">
               <div class="selling-header">
                  <h1 class="selling-title">교환/환불</h1>
               </div>
               <table class="selling-table">
                  <tbody>
                     <tr>
                        <th>반품배송비</th>
                        <td>8,000원(최초 배송비가 무료인 경우 16,000원 부과)</td>
                     </tr>
                     <tr>
                        <th>교환배송비</th>
                        <td>16000원</td>
                     </tr>
                     <tr>
                        <th>보내실 곳</th>
                        <td>(42701)대구 달서구 성서로 258 (장동) 누베스</td>
                     </tr>
                  </tbody>
               </table>
      
               <div>
                  <div class="selling-header">
                     <h2 class="selling-title">반품/교환 사유에 따른 요청 가능 기간</h2>
                  </div>
                  <p class="refund-note">
                     반품 시 먼저 판매자와 연락하셔서 반품사유, 택배사, 배송비, 반품지 주소 등을 협의하신 후 반품상품을 발송해 주시기 바랍니다.
                  </p>
                  <ol class="refund-list">
                     <li>구매자 단순 변심은 상품 수령 후 7일 이내 (구매자 반품배송비 부담)</li>
                     <li>표시/광고와 상이, 상품하자의 경우 상품 수령 후 3개월 이내 혹은 표시/광고와 다른 사실을 안 날로부터 30일 이내.
                        둘 중 하나 경과 시 반품/교환 불가 (판매자 반품배송비 부담)</li>
                  </ol>
               </div>
      
               <div>
                  <div class="selling-header">
                     <h1 class="selling-title">반품/교환 불가능 사유</h1>
                  </div>
                  <p class="refund-note">아래와 같은 경우 반품/교환이 불가능합니다.</p>
                  <ol class="refund-list">
                     <li>반품요청기간이 지난 경우</li>
                     <li>구매자의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우 (단, 상품의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외)</li>
                     <li>포장을 개봉하였으나 포장이 훼손되어 상품가치가 현저히 상실된 경우 (예: 식품, 화장품)</li>
                     <li>구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우 (라벨이 떨어진 의류 또는 태그가 떨어진 명품관 상품인 경우)
                     </li>
                     <li>시간의 경과에 의하여 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우 (예: 식품, 화장품)</li>
                     <li>고객주문 확인 후 상품제작에 들어가는 주문제작상품</li>
                     <li>복제가 가능한 상품 등의 포장을 훼손한 경우 (CD/DVD/GAME/도서의 경우 포장 개봉 시)</li>
                  </ol>
               </div>
            </div>
         </section>
            <!--seller info-->
         <section class="product-selling seller-info">
            <div class="selling-container">
               <div class="selling-header">
                  <h1 class="selling-title">판매자 정보</h1>
               </div>
               <table class="selling-table">
                  <tbody>
                     <tr>
                        <th>상호</th>
                        <td>누베스 주식회사</td>
                     </tr>
                     <tr>
                        <th>대표자</th>
                        <td>신도균</td>
                     </tr>
                     <tr>
                        <th>사업장소재지</th>
                        <td>대구 달서구 성서로 258 누베스주식회사</td>
                     </tr>
                     <tr>
                        <th>고객센터 전화번호</th>
                        <td>1899-9783</td>
                     </tr>
                     <tr>
                        <th>E-mail</th>
                        <td>nubes2016@naver.com</td>
                     </tr>
                     <tr>
                        <th>사업자 등록번호</th>
                        <td>832-88-01345</td>
                     </tr>
                  </tbody>
               </table>
            </div>
         </section>
         <div class="selling-bottom">
            <div class="btn-wrap">
               <svg class="icon--stroke" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path></svg>
               <span class="scrab-cnt">8,707</span>
            </div>
            <button class="button--color-skyblue buy-btn">구매하기</button>
         </div>
         <!--recommend-->
      </div>
   
      <!--side bar(desktop)-->
      <section class="product-selling-sidebar">
         <div class="product-selling-order">
            <div class="product-selling-option">
               <select class="option" name="" id="">
                  <option value="1">1차옵션</option>
                  <option value="color">색상</option>
                  <option value="size">사이즈</option>
               </select>
               <select class="option">
                  <option value="2">2차옵션</option>
                  <option value="">2차옵션</option>
                  <option value="">2차옵션</option>     
               </select>
               <p class="order-price">
                  <span>주문금액</span>
                  <span class="total-price">0원</span>
               </p>
            </div>
            <div class="order-btn">
               <button class="button--color-skyblue-inverted button-size-55">장바구니</button>
               <button class="button--color-skyblue button-size-55 buy-btn">바로구매</button>
            </div>
         </div>
      </section>
   </div>
   <!--footer-->
   <c:import url="/WEB-INF/views/include/footer.jsp"/>
   
   <script>
   const root = ${root}
   const buy_btn = document.querySelectorAll('.buy-btn');

   buy_btn.forEach(x => x.addEventListener('click',()=>{location.href=root+"order"}));
   </script>
</body>
</html>