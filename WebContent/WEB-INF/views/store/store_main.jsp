<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
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
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="icon" href="${root }image/icons/favicon.ico">
<link rel="apple-touch-icon" href="${root }image/icons/favicon.ico">
<link rel="short icon" type="image/x-icon" href="${root }image/icons/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<title>누구나 멋진 인테리어, 모두의 집</title>
<script src="${root }javascript/store/store_main.js" defer></script>
<script src="https://kit.fontawesome.com/7218b951ec.js" crossorigin="anonymous"></script>
</head>

<body>
	<section class="store-main__header">
		<!-- header -->
		<c:import url="/WEB-INF/views/include/header.jsp" />
		<!-- store_top_menu.jsp -->
		<c:import url="/WEB-INF/views/include/store_top_menu.jsp" />
	</section>
	
	<!--banner-->
   <section class="store-main__banner-wrap" style="background-image:url(${root}image/banner/banner1_1.jpg)">
   </section>
   <section class="store-main__banner-list mobile-hide">
      <div class="container">
         <div class="row">
            <div class="col-12">
               <ul class="banner__list">
                  <li class="banner__item">한샘 브랜드 위크</li>
                  <li class="banner__item">삼성 가전 페스타</li>
                  <li class="banner__item">가정의달 특집</li>
                  <li class="banner__item">홈오피스 데스커 브랜드 위크</li>
                  <li class="banner__item">1일 1홈트 시작하기</li>
                  <li class="banner__item">원목 가구 브랜드 10</li>
                  <li class="banner__item">스마트 홈오피스 만들기</li>
                  <li class="banner-prev"></li>
                  <li class="banner-next"></li>
               </ul>
            </div>
         </div>
      </div>
   </section>

	<!--category-->
	<div class="layout">
		<section class="store-main__category">
			<div class="container">
				<div class="row">
					<div class="col-12" style="height: 100%;">
						<h1 id="menu-title" class="category-title">카테고리</h1>
						<div class="category-box">
							<div class="mobile-hide prev" onclick="movePrev()">
								<div class="category-list-prev">
									<button type="button">
										<svg class="prev-btn" width="32" height="32" viewBox="0 0 32 32" preserveAspectRatio="xMidYMid meet">
											<g fill="none" fill-rule="evenodd">
											<rect width="32" height="32" fill="#000" fill-opacity=".26" rx="16"></rect>
											<path fill="#FFF" fill-rule="nonzero" d="M20 10.87l-1.5-1.54L12 16l6.5 6.67 1.5-1.54L15 16z"></path></g></svg>
									</button>
								</div>
							</div>
							<ul class="category-wrap" data-position="0">
								<c:forEach var="category" items="${storeMainCategoryList }">
								<li class="category-item">
									<a href="">
										<img src="${root}image/category/${category.main_category_image}" class="category-item__image" alt="">
										<span>${category.main_category_name }</span>
									</a>
								</li>
								</c:forEach>						
							</ul>
							<div class="mobile-hide next show" onclick="moveNext()">
								<div class="category-list-next">
									<button type="button">
										<svg class="next-btn" width="32" height="32" viewBox="0 0 32 32" preserveAspectRatio="xMidYMid meet">
											<g fill="none" fill-rule="evenodd">
											<rect width="32" height="32" fill="#000" fill-opacity=".26" rx="16"></rect>
											<path fill="#FFF" fill-rule="nonzero" d="M12 21.13l1.5 1.54L20 16l-6.5-6.67-1.5 1.54L17 16z"></path></g></svg>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!--today-deal-->
		<section class="store-main__today-deal">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="title-container">
							<h1 id="menu-title" class="today-deal-title">오늘의 딜</h1>
							<a>더보기</a>
						</div>
					</div>
				</div>
				<div class="row">
					<c:forEach var="product" items="${todayDealList }">
					<div class="col-12 col-md-4 col-lg-3">
						<article class="product-item">
							<a href="${root }store/product" class="product-item-overlay"></a>
							<div class="product-item__image-wrap">
								<img class="product-item__image" src="${root}image/products/${product.product_image}" alt="Nubes wood blind">
							</div>
							<div class="product-item__content">
								<div class="product-item__content-wrap">
									<h1 class="today-deal-item__header product-item-header">
										<span class="today-deal-item__brand product-brand">${product.product_brand}</span>
										<span class="today-deal-item__name product-name">${product.product_name }</span>
									</h1>
									<p class="today-deal-item__review product-review">
										<svg class="star-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" fill="currentColor">
                                 <path fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z">
                                 </path>
                              </svg>
										<strong class="avg"> 4.6 </strong>
										<span class="review">리뷰 231</span>
									</p>
									<div class="product-price">
										<span class="product-discount-rate">${product.product_discount_rate }%</span>
										<span class="product-discount-price">${product.product_price} 외</span>
									</div>
								</div>
							</div>
						</article>
					</div>
					</c:forEach>
				</div>
				<div class="row">
					<div class="col-12">
						<a href="" class="today-deal__more-btn">
							오늘의딜 더보기
							<svg class="right-icon" width="10" height="10" viewBox="0 0 10 10" fill="currentColor" preserveAspectRatio="xMidYMid meet">
								<path d="M2.5 8.2L5.63 5 2.5 1.8l.94-.97L7.5 5 3.44 9.17z"></path></svg>
						</a>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!--keywords-->
	<section class="store-main__keywords">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1 id="menu-title" class="keyword-title">인기키워드</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-6 col-md-3">
					<a href="" class="main-keywords__keyword">
						<div class="keyword-image" style="background-image: url(${root}image/keywords/round_table.png)"></div>
						<span>#원형테이블</span>
					</a>
				</div>

				<div class="col-6 col-md-3">
					<a href="" class="main-keywords__keyword">
						<div class="keyword-image" style="background-image: url(${root}image/keywords/air_cleaner.png)"></div>
						<span>#공기청정기</span>
					</a>
				</div>

				<div class="col-6 col-md-3">
					<a href="" class="main-keywords__keyword">
						<div class="keyword-image" style="background-image: url(${root}image/keywords/Recliner.png)"></div>
						<span>#리클라이너 소파</span>
					</a>
				</div>

				<div class="col-6 col-md-3">
					<a href="" class="main-keywords__keyword">
						<div class="keyword-image" style="background-image: url(${root}image/keywords/keyword_fabric.jpg)"></div>
						<span>#패브릭 포스터</span>
					</a>
				</div>
			</div>
		</div>
	</section>

	<!--product-->
	<section class="store-main__best-product">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1 id="menu-title" class="product-title">인기상품</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="filter-bar">
						<div class="filter-left">
							<button class="product-filter-btn-all">
								<svg class="filter-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
									<path fill="#BDBDBD" d="M18.284 4H5.716a.7.7 0 0 0-.61.362.668.668 0 0 0 0 .724l3.963 6.978c.353.632.97 1.348.971 2.076v6.181c.002.24-.054.388.149.558.203.17.343.118.444.095l3.29-1.257c.283-.095.321-.369.317-.676v-4.9c0-.73.338-1.445.69-2.077l3.963-6.978a.668.668 0 0 0 0-.724.7.7 0 0 0-.61-.362z"></path></svg>
							</button>
							<button class="product-filter-btn-delivery">
								배송
								<svg class="arrow-icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
									<path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path></svg>
							</button>
							<div class="toggle-btn-wrap">
								<div class="toggle-btn">
									<div class="btn-layout">
										<span class="filter-option">무료배송만 보기</span>
										<label class="switch">
											<input type="checkbox">
											<span class="slider round"></span>
										</label>
									</div>
								</div>
							</div>
						</div>
						<div class="filter-right">
							<span class="current-order">
								인기순
							</span>
							<svg class="caret" width="8" height="8" viewBox="0 0 8 8" preserveAspectRatio="xMidYMid meet">
									<path fill="#BDBDBD" d="M0 2l4 4 4-4z"></path></svg>
							<div class="filter-modal-container">
								<div class="filter-modal">
									<h1>정렬</h1>
									<ul class="order-menu">
										<li class="order-list">
											<button class="order-list-btn">판매순</button>
										</li>
										<li class="order-list">
											<button class="order-list-btn">인기순</button>
										</li>
										<li class="order-list">
											<button class="order-list-btn">많은 리뷰순</button>
										</li>
										<li class="order-list">
											<button class="order-list-btn">높은 가격순</button>
										</li>
										<li class="order-list">
											<button class="order-list-btn">낮은 가격순</button>
										</li>
										<li class="order-list">
											<button class="order-list-btn">최신순</button>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
					<c:forEach var="product" items="${popularList }">
				<div class="col-6 col-md-3">
					<article class="product-item">
						<a href="${root }store/product?product_idx=${product.product_idx}" class="product-item-overlay"></a>
						<div class="product-item__image-wrap">
							<img src="${root }image/products/${product.product_image}" alt="" class="product-item__image">
						</div>
						<div class="product-item__content">
							<div class="product-item__content-wrap">
								<h1 class="today-deal-item__header product-item-header">
									<span class="today-deal-item__brand product-brand">${product.product_brand }</span>
									<span class="today-deal-item__name product-name">${product.product_name }</span>
								</h1>
								<div class="product-price">
									<span class="product-discount-rate">${product.product_discount_rate }%</span>
									<span class="product-discount-price">${product.product_price } 외</span>
								</div>
								<p class="today-deal-item__review product-review">
									<svg class="star-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" fill="currentColor">
                                 <path fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z">
                                 </path>
                              </svg>
									<strong class="avg"> 4.6 </strong>
									<span class="review">리뷰 231</span>
								</p>
							</div>
						</div>
					</article>
				</div>
					</c:forEach>			
			</div>
		</div>
	</section>
	<!-- footer  -->
	<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>

</html>