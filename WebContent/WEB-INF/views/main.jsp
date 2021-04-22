<%@ page language="java" contentType="text/html;charset=UTF-8" 
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
   <link rel="stylesheet" href="./css/main.css">
   <link rel="preconnect" href="https://fonts.gstatic.com">
   <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
   <link rel="icon" href="./image/favicon.ico">
   <link rel="apple-touch-icon" href="./image/favicon.ico">
   <link rel="short icon" type="image/x-icon" href="./image/favicon.ico">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
   <title>누구나 멋진 인테리어, 모두의 집</title>
   <script src="https://kit.fontawesome.com/7218b951ec.js" crossorigin="anonymous"></script>
</head>

<body>
	<!-- header -->
   <!-- top_menu.jsp -->
   <c:import url="/WEB-INF/views/include/top_menu.jsp"/>
   <!--banner-->
   <section class="store-main__banner-wrap">
      <div class="container">
         <div class="row">
            <div class="col-12">
               <article class="store-main__banner">
                  <div class="store-main__banner-image-wrap">
                     <!--banner image-->
                  </div>
                  <div class="store-main__banner-content-wrap">
                     <h2 class="banner-content-title"></h2>
                     <a href="" class="banner-content-more"></a>
                  </div>
               </article>
            </div>
         </div>
      </div>
   </section>
   <!--category-->
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <ul class="category-wrap">
                  <li class="category-item">
                     <img src="./image/category/furniture.jpg" class="category-item__image" alt="">
                     <span>가구</span>
                  </li>
                  <li class="category-item">
                     <img src="./image/category/fabric.png" class="category-item__image" alt="">
                     <span>패브릭</span>
                  </li>
                  <li class="category-item">
                     <img src="./image/category/home_deco.jpg" class="category-item__image" alt="">
                     <span>홈데코</span>
                  </li>
                  <li class="category-item">
                     <img src="./image/category/storage_tools.png" class="category-item__image" alt="">
                     <span>수납/정리</span>
                  </li>
                  <li class="category-item">
                     <img src="./image/category/household_goods.png" class="category-item__image" alt="">
                     <span>생활용품</span>
                  </li>
                  <li class="category-item">
                     <img src="./image/category/appliances.jpg" class="category-item__image" alt="">
                     <span>가전</span>
                  </li>
                  <li class="category-item">
                     <img src="./image/category/kitchen.png" class="category-item__image" alt="">
                     <span>주방</span>
                  </li>
                  <li class="category-item">
                     <img src="./image/seemoreicon.png" class="category-item__image" alt="">
                     <span>더보기</span>
                  </li>
               </ul>
            </div>
         </div>
      </div>
   </section>
   <!--today-deal-->
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <h1>오늘의 딜</h1>
               <p>더보기</p>
            </div>
         </div>
         <div class="row">
            <div class="col-12 col-md-4 col-lg-3">
               <article>
                  <img src="./image/items/wood_blind.jpg" alt="Nubes wood blind">
                  <div>
                     <h1>
                        <span>누베스</span>
                        <span>오동나무 우드 블라인드 셀프 블라인드</span>
                     </h1>
                     <p>
                        <i class="fas fa-star"></i>
                        <strong class="avg">
                           4.6
                        </strong>
                        <span class="review">리뷰 231</span>
                     </p>
                  </div>
               </article>
            </div>

            <div class="col-12 col-md-4 col-lg-3">
               <article>
                  <img src="./image/items/stepper.jpg" alt="">
                  <div>
                     <h1>
                        <span>미드브로</span>
                        <span>스텝퍼 실내 계단 오르기 운동기구</span>
                     </h1>
                     <p>
                        <i class="fas fa-star"></i>
                        <strong class="avg">
                           4.6
                        </strong>
                        <span class="review">리뷰 231</span>
                     </p>
                  </div>
               </article>
            </div>

            <div class="col-12 col-md-4 col-lg-3">
               <article>
                  <img src="./image/items/LGcinebim.jpg" alt="LG cinebim">
                  <div>
                     <h1>
                        <span>LG전자</span>
                        <span>LG 시네빔 베스트</span>
                     </h1>
                     <p>
                        <i class="fas fa-star"></i>
                        <strong class="avg">
                           4.6
                        </strong>
                        <span class="review">리뷰 231</span>
                     </p>
                  </div>
               </article>
            </div>

            <div class="col-12 col-md-4 col-lg-3">
               <article>
                  <img src="./image/items/bed.jpg" alt="modern baroque bed">
                  <div>
                     <h1>
                        <span>모던바로크</span>
                        <span>LED 수납 침대 시리즈</span>
                     </h1>
                     <p>
                        <i class="fas fa-star"></i>
                        <strong class="avg">
                           4.6
                        </strong>
                        <span class="review">리뷰 231</span>
                     </p>
                  </div>
               </article>
            </div>
         </div>
      </div>
   </section>
   <!--keywords-->
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <h1>인기키워드</h1>
            </div>
         </div>
         <div class="row">
            <div class="col-6 col-md-3">
               <a href="">
                  <img src="./image/keywords/round_table.png" alt="round table category">
                  <span>#원형테이블</span>
               </a>
            </div>

            <div class="col-6 col-md-3">
               <a href="">
                  <img src="./image/keywords/air_cleaner.png" alt="air cleaner category">
                  <span>#공기청정기</span>
               </a>
            </div>

            <div class="col-6 col-md-3">
               <a href="">
                  <img src="./image/keywords/Recliner.png" alt="recliner category">
                  <span>#리클라이너 소파</span>
               </a>
            </div>

            <div class="col-6 col-md-3">
               <a href="">
                  <img src="./image/keywords/keyword_fabric.jpg" alt="fabric category">
                  <span>#패브릭 포스터</span>
               </a>
            </div>
         </div>
      </div>
   </section>
   <!--product-->
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12"><h1>인기상품</h1></div>
         </div>
         <div class="row">
            <div class="col-6 col-md-3">
               <article>
                  <a href="">
                     <img src="./image/items/livart_sofa.jpg" alt="livart sofa">
                     <div>
                        <h1>
                           <span>리바트</span>
                           <span>올 뉴탐 3인/1인용 패브릭 소파</span>
                        </h1>
                     </div>
                  </a>
               </article>
            </div>
         </div>
      </div>
   </section>
</body>

</html>