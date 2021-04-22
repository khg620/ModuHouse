<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Document</title>
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