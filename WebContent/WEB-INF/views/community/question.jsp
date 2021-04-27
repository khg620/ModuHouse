<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   <style>
      .write {
         border: 1px solid black;
      }
      article {
         border : 1px solid black;
      }
      .questions-paginator {
         border: 1px solid black;
      }
   </style>
</head>

<body>
   <!-- 상단메뉴 동일 -->
   <div class="search">
      <form action="#" method = "GET">
         <input type="text">
         <button type="submit">검색</button>
      </form>
      <span>키워드1</span>
      <span>키2</span>
      <span>키3</span>
      <span>키4</span>
   </div>
   <div class="filter">정렬</div>
   <div class="write">
      <a href="#">질문하기</a>
   </div>
   <div class="notice">
      <ul>
         <li>
            <a href="#">공지1</a>
         </li>
         <li>
            <a href="#">공지1</a>
         </li>
         <li>
            <a href="#">공지1</a>
         </li>
      </ul>
   </div>
   <section class="question-list">
      <a href="">
         <article>
            <h1>글제목</h1>
            <p>글내용</p>
            <footer>
               <span class="author">작성자</span>
               <span class="meta">
                  <time>9분전</time>
               </span>
               <span>댓글</span>
               <span>조회수</span>
               <ul>
                  <li>키워드</li>
               </ul>
            </footer>
         </article>
      </a>
   </section>
   <div class="questions-paginator">
      <nav>
         <ul>
            <li>1</li>
         </ul>
      </nav>
   </div>
   <!--footer-->
</body>
</html>