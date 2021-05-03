<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<nav class="mypage_edit_menu">
	<ul>
		<li class="edit_menu_item">
			<a href="${root }user/edit" target="_self">회원정보수정</a>
		</li>
		<li class="edit_menu_item">
			<a href="${root }user/edit_password" target="_self">비밀번호 변경</a>
		</li>
		<li class="edit_menu_item">
			<a href="${root }push_setting" target="_self">알림 설정</a>
		</li>
	</ul>
</nav>