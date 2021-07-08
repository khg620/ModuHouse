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
	<main class="cart" style="background-color: #fff; height: 50%;">
		<!-- main > top -->
		<div class="cart__container">

			
		장바구니에 담긴 상품이 없습니다.
		</div>
		<!--container-->
	</main>

	<!--footer-->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>