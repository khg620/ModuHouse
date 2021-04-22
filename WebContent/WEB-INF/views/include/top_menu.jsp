<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value='${pageContext.request.contextPath }/' />
<section>
	<!--header-->
	<header class="navigation-bar-primary">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="navigation-bar__header">
						<div class="navigation-bar-left">
							<button href="" class="navigation-draw-button">
								<i class="fas fa-bars navigation-icon"></i>
							</button>
						</div>
						<h1 class="main-title">
							<a href="${root }" class="main-title-link"> 모두의집 </a>
						</h1>
						<div class="header-right">
							<div class="navigation-search"></div>
							<input type="text" placeholder="스토어 검색"
								class="navigation-search-input" /> <a href="#"
								class="navigation-search-icon"> <i
								class="fas fa-search navigation-icon"></i>
							</a> <a href="#" class="navigation-cart"> <i
								class="fas fa-cart-arrow-down navigation-icon"></i>
							</a> <a href="${root }user/sign_in" class="navigation-sign-in">로그인</a>
							<a href="${root }user/sign_up" class="navigation-sign-up">회원가입</a>
							<!--로그인 한 유저의 경우 보임-->
							<c:choose>	
								<c:when test="${signInUser.userSignIn == true }">								
									<a href="" class="navigation-user mobile-hide"> 
										<i class="fas fa-user navigation-user-icon"></i>
									</a> 
								</c:when>						
							</c:choose>
							<a href="" class="navigation-upload mobile-hide">글쓰기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!--navmenu-->
	<nav class="navigation-bar-secondary">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<ul class="navigation-bar-secondary__menu">
						<c:forEach var="obj" items="${topMenuList }">
							<li class="navigation-bar-secondary__list">
								<a href="${root }menu/${obj.main_menu_idx}" class="menu-link">${obj.main_menu_name }</a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</nav>
</section>