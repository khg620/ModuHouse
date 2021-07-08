<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
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
<link rel="stylesheet" href="${root }css/order/cart.css">
<link rel="stylesheet" href="${root }css/commons/footer.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="icon" href="${root }image/icons/favicon.ico">
<link rel="apple-touch-icon" href="${root }image/icons/favicon.ico">
<link rel="short icon" type="image/x-icon" href="${root }image/icons/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<title>누구나 멋진 인테리어, 모두의 집</title>
<script src="${root }javascript/store/store_main.js" defer></script>
<script src="${root }javascript/order/cart.js" defer></script>
<script src="https://kit.fontawesome.com/7218b951ec.js" crossorigin="anonymous"></script>
</head>
<body>
	<!--head-->
	<section class="store-main__header">
		<!-- header -->
		<c:import url="/WEB-INF/views/include/header.jsp" />

	</section>

	<!-- main -->
	<main class="cart">
		<!-- main > top -->
		<div class="cart__container">

			<div class="cart__header-wrap">
				<div class="cart__header-left">
					<input type="checkbox" class="checkall">
					<label>모두선택</label>
				</div>
				<div>
					<button type="button" class="cart__header-right">선택삭제</button>
				</div>
			</div>
			<section class="cart__group">
				<div class="cart__content-group">
					<c:forEach var="item" items="${cartBeanList }">
						<section class="cart__content">
							<h1>장바구니</h1>
							<!--숨김처리-->
							<div class="cart__content__header">${item.delivery_company }</div>
							<div class="cart__content__product">
								<div class="product-wrap">
									<input type="checkbox" class="checkbox">
									<div class="product-img" style="background-image: url(${root}image/products/${item.product_image });"></div>
									<div class="product-wrap--col">
										<h2>
											<span class="brand">${item.product_brand }</span>
											<span class="product-name">${item.product_name }</span>
										</h2>
										<div class="product-wrap--row">
											<span class="shipping-fee">${item.product_shipping_fee }</span>
											<span class="delivery-method">${item.delivery_method }</span>
										</div>
									</div>
									<button class="delete-btn">
										<svg width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
											<path fill-rule="nonzero" d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg>
									</button>
								</div>

								<div class="option-wrap">
									<div class="option-group">
										<div class="option__top">
											<span class="option-name">${item.option_name }</span>
											<button class="delete-btn grey">
												<svg width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
													<path fill-rule="nonzero" d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg>
											</button>
										</div>
										<div class="option__bottom">
											<select class="option__qty">
												<option value="1"<c:if test="${item.order_qty == 1 }">selected</c:if>>1</option>
												<option value="2"<c:if test="${item.order_qty == 2 }">selected</c:if>>2</option>
												<option value="3"<c:if test="${item.order_qty == 3 }">selected</c:if>>3</option>
												<option value="4"<c:if test="${item.order_qty == 4 }">selected</c:if>>4</option>
												<option value="5"<c:if test="${item.order_qty == 5 }">selected</c:if>>5</option>
												<option value="6"<c:if test="${item.order_qty == 6 }">selected</c:if>>6</option>
												<option value="7"<c:if test="${item.order_qty == 7 }">selected</c:if>>7</option>
												<option value="8"<c:if test="${item.order_qty == 8 }">selected</c:if>>8</option>
												<option value="9"<c:if test="${item.order_qty == 9 }">selected</c:if>>9</option>
												<option value="10"<c:if test="${item.order_qty >= 10 }">selected</c:if>>10+</option>
												<!--10개 이상 선택 시 입력받는 인풋창-->
											</select>
											<strong class="price">${item.each_price }</strong>
										</div>
									</div>
								</div>

								<div class="content__bottom">
									<div class="button-wrap">
										<button class="button">옵션변경</button>
										<button class="button">바로구매</button>
									</div>
									<strong class="price">${item.each_price * item.order_qty }</strong>
								</div>
							</div>
							<div class="cart__content__shipping-fee">${item.product_shipping_fee }</div>
						</section>

					</c:forEach>
				</div>

				<section class="cart__price">
					<dl>
						<div class="price-group">
							<dt class="price-detail">총 상품금액</dt>
							<dd class="price">${orgPrice }</dd>
						</div>
						<div class="price-group">
							<dt class="price-detail">총 배송비</dt>
							<dd class="price plus">${totalShippingFee }</dd>
						</div>
						<div class="price-group">
							<dt class="price-detail">총 할인금액</dt>
							<dd class="price subtract">${discountPrice}</dd>
						</div>
						<div class="price-group">
							<dt class="price-detail">결제금액</dt>
							<dd class="price">${totalPayment  }</dd>
						</div>
					</dl>
					<div class="total-price-group">
						<div class="total-price">
							<span class="qty">1</span>
							<span class="price">${totalPayment }</span>
						</div>
						<button class="button--color-skyblue buy-btn">바로구매</button>
					</div>
				</section>
			</section>
		</div>
		<!--container-->
	</main>

	<!--footer-->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>