<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value='${pageContext.request.contextPath }/' />										
	<!--navmenu-->
	<nav class="navigation-bar-secondary">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<ul class="navigation-bar-secondary__menu">
						<c:forEach var="obj" items="${storeTopMenuList }">
							<li class="navigation-bar-secondary__list">
								<a href="${root }menu/${obj.main_menu_idx}" class="menu-link">${obj.main_menu_name }</a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</nav>
