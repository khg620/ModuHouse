<%@ page language="java" contentType="text/html;charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
	<section>
		<!-- header -->
		<c:import url="/WEB-INF/views/include/header.jsp"/>
   	<!-- store_top_menu.jsp -->
   	<c:import url="/WEB-INF/views/include/store_top_menu.jsp"/>
   	</section>
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
   <div class="layout">
	<section id="main-category">
         <div class="container">
            <div class="row">
               <div class="col-12" style="height: 100%;">
                  <h1 class="category-title">카테고리</h1>
                  <div class="category-box">
                     <div class="mobile-hide prev" onclick="movePrev()">
                        <div class="category-list-prev">
                           <button type="button">
                              <svg class="prev-btn" width="32" height="32" viewBox="0 0 32 32" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><rect width="32" height="32" fill="#000" fill-opacity=".26" rx="16"></rect><path fill="#FFF" fill-rule="nonzero" d="M20 10.87l-1.5-1.54L12 16l6.5 6.67 1.5-1.54L15 16z"></path></g></svg>
                           </button>
                        </div>
                     </div>
                  <ul class="category-wrap" data-position="0">
                     
                     <li class="category-item">
                        <a href="">
                           <img src="./image/category/furniture.jpg" class="category-item__image" alt="">
                           <span>가구</span>
                        </a>
                     </li>
                     <li class="category-item">
                        <a href="">
                           <img src="./image/category/fabric.png" class="category-item__image" alt="">
                           <span>패브릭</span>
                        </a>
                     </li>
                     <li class="category-item">
                        <a href="">
                           <img src="./image/category/home_deco.jpg" class="category-item__image" alt="">
                           <span>홈데코</span>
                        </a>
                     </li>
                     <li class="category-item">
                        <a href="">
                           <img src="./image/category/storage_tools.png" class="category-item__image" alt="">
                           <span>수납/정리</span>
                        </a>
                     </li>
                     <li class="category-item">
                        <a href="">
                           <img src="./image/category/household_goods.png" class="category-item__image" alt="">
                           <span>생활용품</span>
                        </a>
                     </li>
                     <li class="category-item">
                        <a href="">
                           <img src="./image/category/appliances.jpg" class="category-item__image" alt="">
                           <span>가전</span>
                        </a>
                     </li>
                     <li class="category-item">
                        <a href="">
                           <img src="./image/category/kitchen.png" class="category-item__image" alt="">
                           <span>주방</span>
                        </a>
                     </li>
                     <li class="category-item mobile-show">
                        <a href="">
                           <svg class="more-btn" width="42" height="42" viewBox="0 0 42 42" preserveAspectRatio="xMidYMid meet"><path id="a" d="M21 21v21h-1V21H0v-1h20V0h1v20h21v1H21z" fill="#000" fill-opacity=".74" fill-rule="nonzero"></path></svg>
                           <span>더보기</span>
                        </a>
                     </li>
                     <li class="category-item">
                        <a href="">
                           <img src="./image/category/pet.png" class="category-item__image" alt="">
                           <span>반려동물</span>
                        </a>
                     </li>
                     <li class="category-item">
                        <a href="">
                           <img src="./image/category/bedroom_furniture.png" class="category-item__image" alt="">
                           <span>침실가구</span>
                        </a>
                     </li>
                     <li class="category-item">
                        <a href="">
                           <img src="./image/category/table.png" class="category-item__image" alt="">
                           <span>식탁/테이블</span>
                        </a>
                     </li>
                     <li class="category-item">
                        <a href="">
                           <img src="./image/category/carpet.png" class="category-item__image" alt="">
                           <span>러그/카페트</span>
                        </a>
                     </li>
                     <li class="category-item">
                        <a href="">
                           <img src="./image/category/curtain_blind.jpg" class="category-item__image" alt="">
                           <span>커튼/블라인드</span>
                        </a>
                     </li>
                     <li class="category-item">
                        <a href="">
                           <img src="./image/category/necessity.jpg" class="category-item__image" alt="">
                           <span>생필품</span>
                        </a>
                     </li>
                     <li class="category-item">
                        <a href="">
                           <img src="./image/category/camping.jpg" class="category-item__image" alt="">
                           <span>캠핑용품</span>
                        </a>
                     </li>
                     <li class="category-item">
                        <a href="">
                           <img src="./image/category/diy.png" class="category-item__image" alt="">
                           <span>DIY/공구</span>
                        </a>
                     </li>
                  </ul>
                  <div class="mobile-hide next show" onclick="moveNext()">
                     <div class="category-list-next">
                        <button type="button">
                           <svg  class="next-btn" width="32" height="32" viewBox="0 0 32 32" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><rect width="32" height="32" fill="#000" fill-opacity=".26" rx="16"></rect><path fill="#FFF" fill-rule="nonzero" d="M12 21.13l1.5 1.54L20 16l-6.5-6.67-1.5 1.54L17 16z"></path></g></svg>
                        </button>
                     </div>
                  </div>
               </div>
               </div>
            </div>
         </div>
      </section>
   <!--today-deal-->
    <section id="main-today-deal">
         <div class="container">
            <div class="row">
               <div class="col-12">
                  <div class="title-container">
                     <h1 class="today-deal-title">오늘의 딜</h1>
                     <a>더보기</a>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-12 col-md-4 col-lg-3">
                  <article class="today-deal-item">
                     <div class="today-deal-item__image-wrap">
                        <img class="today-deal-item__image" src="./image/items/wood_blind.jpg" alt="Nubes wood blind">
                     </div>
                     <div class="today-deal-item__content">
                        <div class="today-deal-item__content-wrap">
                           <h1 class="today-deal-item__header">
                              <span class="today-deal-item__brand">누베스</span>
                              <span class="today-deal-item__name">오동나무 우드 블라인드 셀프 블라인드</span>
                           </h1>
                           <p class="today-deal-item__review">
                              <svg class="star-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" fill="currentColor"><path fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
                              <strong class="avg">
                                 4.6
                              </strong>
                              <span class="review">리뷰 231</span>
                           </p>
                           <div class="production-item-price">
                              <span class="production-discount-rate">49%</span>
                              <span class="production-discount-price">70,900 외</span>
                           </div>
                        </div>  
                     </div>
                  </article>
               </div>
   
               <div class="col-12 col-md-4 col-lg-3">
                  <article class="today-deal-item">
                     <div class="today-deal-item__image-wrap">
                        <img class="today-deal-item__image" src="./image/items/stepper.jpg" alt="">
                     </div>
                     <div class="today-deal-item__content">
                        <div class="today-deal-item__content-wrap">
                           <h1 class="today-deal-item__header">
                              <span class="today-deal-item__brand">미드브로</span>
                              <span class="today-deal-item__name">스텝퍼 실내 계단 오르기 운동기구</span>
                           </h1>
                           <p class="today-deal-item__review">
                              <svg class="star-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" fill="currentColor"><path fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
                              <strong class="avg">
                                 4.6
                              </strong>
                              <span class="review">리뷰 231</span>
                           </p>
                           <div class="production-item-price">
                              <span class="production-discount-rate">49%</span>
                              <span class="production-discount-price">70,900 외</span>
                           </div>
                        </div>
                     </div>
                  </article>
               </div>
   
               <div class="col-12 col-md-4 col-lg-3">
                  <article class="today-deal-item">
                     <div class="today-deal-item__image-wrap">
                        <img class="today-deal-item__image" src="./image/items/LGcinebim.jpg" alt="LG cinebim">
                     </div>
                     <div class="today-deal-item__content">
                        <div class="today-deal-item__content-wrap">
                           <h1 class="today-deal-item__header">
                              <span class="today-deal-item__brand">LG전자</span>
                              <span class="today-deal-item__name">LG 시네빔 베스트</span>
                           </h1>
                           <p class="today-deal-item__review">
                              <svg class="star-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" fill="currentColor"><path fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
                              <strong class="avg">
                                 4.6
                              </strong>
                              <span class="review">리뷰 231</span>
                           </p>
                           <div class="production-item-price">
                              <span class="production-discount-rate">49%</span>
                              <span class="production-discount-price">70,900 외</span>
                           </div>
                        </div>
                     </div>
                  </article>
               </div>
   
               <div class="col-12 col-md-4 col-lg-3">
                  <article class="today-deal-item">
                     <div class="today-deal-item__image-wrap">
                        <img class="today-deal-item__image" src="./image/items/bed.jpg" alt="modern baroque bed">
                     </div>
                     <div class="today-deal-item__content">
                        <div class="today-deal-item__content-wrap">
                           <h1 class="today-deal-item__header">
                              <span class="today-deal-item__brand">모던바로크</span>
                              <span class="today-deal-item__name">LED 수납 침대 시리즈</span>
                           </h1>
                           <p class="today-deal-item__review">
                              <svg class="star-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" fill="currentColor"><path fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
                              <strong class="avg">
                                 4.6
                              </strong>
                              <span class="review">리뷰 231</span>
                           </p>
                           <div class="production-item-price">
                              <span class="production-discount-rate">49%</span>
                              <span class="production-discount-price">70,900 외</span>
                           </div>
                        </div>
                     </div>
                  </article>
               </div>
            </div>
            <div class="row">
               <div class="col-12">
                  <a href="" class="today-deal__more-btn">
                     오늘의딜 더보기
                     <svg class="right-icon" width="10" height="10" viewBox="0 0 10 10" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path d="M2.5 8.2L5.63 5 2.5 1.8l.94-.97L7.5 5 3.44 9.17z"></path></svg>
                  </a>
               </div>
            </div>
         </div>
      </section>
   </div>
 
   <!--keywords-->
   <section id="main-keywords">
      <div class="container">
         <div class="row">
            <div class="col-12">
               <h1 class="category-title">인기키워드</h1>
            </div>
         </div>
         <div class="row">
            <div class="col-6 col-md-3">
               <a href="" class="main-keywords__keyword">
                  <div class="keyword-image" style="background-image: url(./image/keywords/round_table.png)"></div>
                  <span>#원형테이블</span>
               </a>
            </div>

            <div class="col-6 col-md-3">
               <a href="" class="main-keywords__keyword">
                  <div class="keyword-image" style="background-image: url(./image/keywords/air_cleaner.png)"></div>
                  <span>#공기청정기</span>
               </a>
            </div>

            <div class="col-6 col-md-3">
               <a href="" class="main-keywords__keyword">
                  <div class="keyword-image" style="background-image: url(./image/keywords/Recliner.png)"></div>
                  <span>#리클라이너 소파</span>
               </a>
            </div>

            <div class="col-6 col-md-3">
               <a href="" class="main-keywords__keyword">
                  <div class="keyword-image" style="background-image: url(./image/keywords/keyword_fabric.jpg)"></div>
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
 	<script>
 		//헤더 user 아이콘 drop-down 메뉴
 		let cnt = 0;
 		const dropdown_menu = document.querySelector('.navigation-user__dropdown-menu');
 		function showUserMenu(){
 			if(cnt === 0){ 				
 				dropdown_menu.classList.add('click');
 				cnt++;
 			} else {
 				dropdown_menu.classList.remove('click');
 				cnt = 0;
 			}
 		}
 		
 		//navigation-drawer-button
 		const nav_draw_btn = document.querySelector('.navigation-draw-button');
 		const drawer_container = document.querySelector('.navigation-drawer-container');

 		nav_draw_btn.addEventListener('click',()=> {
 		   document.body.classList.add('not-scroll');
 		   drawer_container.style.display = 'block';
 		});

 		drawer_container.addEventListener('click',(e) => {
 		   console.log(e.target);
 		   if(e.target.contains(drawer_container)) {   
 		      document.body.classList.remove('not-scroll');
 		      drawer_container.style.display = 'none';
 		   }
 		});

 		//navigation-drawer-menu
 		const main_menu = document.getElementsByClassName('navigation-drawer__list main-list');//메인메뉴 ul(커뮤니티/스토어)

 		const openEvent = (e) => {
 		   const second_menu = e.target.parentElement.querySelector('.navigation-drawer__list.second');
 		   const other_second_menu = document.querySelector('.navigation-drawer__list.second.open');
 		   if(other_second_menu !== null) {

 		      if(other_second_menu !== second_menu) {
 		         other_second_menu.previousElementSibling.style.color = 'var(--color-black)';
 		         other_second_menu.classList.remove('open');
 		      }
 		   }
 		   second_menu.previousElementSibling.style.color = 'var(--color-skyblue)';
 		   second_menu.classList.toggle("open");
 		}

 		for(var i = 0; i < main_menu.length; i++) {
 		   main_menu[i].addEventListener('click',openEvent);
 		}		
 		
 		//category
 		const category_wrap = document.querySelector('.category-wrap');
 		const prev_btn = document.querySelector('.mobile-hide.prev');
 		const next_btn = document.querySelector('.mobile-hide.next');

 		const moveNext = (e) => {
 			next_btn.classList.remove('show');
 		   prev_btn.classList.add('show');

 		   category_wrap.style.transition = 'transform 1s';
 		   category_wrap.style.transform = 'translateX(-50%)';
 		}

 		const movePrev = (e) => {
 			prev_btn.classList.remove('show');
 			next_btn.classList.add('show');

 			category_wrap.style.transition = 'transform 1s';
 			category_wrap.style.transform = 'translateX(0%)';
 		}

 	</script>
</body>

</html>