<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding ="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!-- 마이페이지 공통 nav menu -->
<nav class="navigation-bar-secondary">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<ul class="navigation-bar-secondary__menu">
					<li class="navigation-bar-secondary__list">
						<a href="${root }user/home" class="menu-link">프로필</a>
					</li>
					<li class="navigation-bar-secondary__list">
						<a href="${root }user/shopping/order_list" class="menu-link"> 나의 쇼핑 </a>
					</li>
					<li class="navigation-bar-secondary__list">
						<a href="${root }product_reviews" class="menu-link">나의 리뷰</a>
					</li>
					<li class="navigation-bar-secondary__list">
						<a href="${root }user/edit" class="menu-link">설정</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</nav>