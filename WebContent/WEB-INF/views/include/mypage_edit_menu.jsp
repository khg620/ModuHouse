<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<nav class="">
	<ul>
		<li>
			<a href="${root }user/edit">회원정보수정</a>
		</li>
		<li>
			<a href="${root }user/edit_password">비밀번호 변경</a>
		</li>
		<li>
			<a href="${root }push_setting">알림 설정</a>
		</li>
	</ul>
</nav>