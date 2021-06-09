<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="${root }css/commons/user_profile.css">
<link rel="stylesheet" href="${root }css/user/mypage_question.css">
<link rel="stylesheet" href="${root }css/commons/footer.css">
<link rel="stylesheet" href="${root }css/commons/utils.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="icon" href="${root }image/icons/favicon.ico">
<link rel="apple-touch-icon" href="${root }image/icons/favicon.ico">
<link rel="short icon" type="image/x-icon" href="${root }image/icons/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<title>누구나 멋진 인테리어, 모두의 집</title>
<script src="https://kit.fontawesome.com/7218b951ec.js" crossorigin="anonymous"></script>
</head>

<body>
	<section class="store-main__header">
		<!--header-->
		<c:import url="/WEB-INF/views/include/header.jsp" />
		<!-- mypage top-nav menu -->
		<c:import url="/WEB-INF/views/include/mypage_nav.jsp" />

		<nav class="mypage_edit_menu">
			<ul>
				<li class="edit_menu_item">
					<a href="${root }user/home">모두보기</a>
				</li>
				<li class="edit_menu_item">
					<a href="${root }">집들이</a>
				</li>
				<li class="edit_menu_item">
					<a href="${root }user/question">질문과 답변</a>
				</li>
			</ul>
		</nav>
	</section>
	<main>
		<!--my page profile menu - user profile-->
		<c:import url="/WEB-INF/views/include/mypage_profile_user.jsp" />

		<section class="my-question">
			<div class="my-question__links">
				<div class="link-wrap">				
				<a class="my-question__link">나의 질문</a>
				<a class="my-question__link">나의 덧글</a>
				</div>
				<a class="my-question__link button--color-skyblue">질문과 답변 바로가기</a>
			</div>

			<article class="qna__shorts__content">
				<a href="${root }" class="my-question-link-overlay"></a>
				<p class="content__title">제목제목제목</p>
				<p class="content__content">내용내용내용</p>
				<div class="meta-wrap">
					<ul class="content__meta">
						<li class="meta-info">작성자닉넴</li>
						<li class="meta-info">2021.05.19</li>
						<li class="meta-info">
							댓글
							<span class="cnt">0</span>
						</li>
						<li class="meta-info">
							조회
							<span class="cnt grey">0</span>
						</li>
					</ul>
					<div class="content__keywords">
						<a href="" class="keyword">기타</a>
						<a href="" class="keyword">페인트</a>
					</div>
				</div>
			</article>
		</section>
	</main>
	<!-- footer -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>