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
</head>

<body>
   <section>
      <!--header-->
      <header class="navigation-bar-primary">
         <div class="container">
            <div class="row">
               <div class="col-12">
                  <div class="navigation-bar__header">
                     <div class="navigation-bar-left">
                        <button href="" class="navigation-draw-button">
                           <svg class="navigation-icon" width="24" height="24" viewBox="0 0 24 24"
                              preserveAspectRatio="xMidYMid meet">
                              <path fill="#757575" d="M3 4h18v2H3V4zm0 7h18v2H3v-2zm0 7h18v2H3v-2z"></path>
                           </svg>
                        </button>
                     </div>
                     <h1 class="main-title">
                        <a href="" class="main-title-link">
                           모두의집
                        </a>
                     </h1>
                     <div class="header-right">
                        <div class="navigation-search">

                        </div>
                        <input type="text" placeholder="스토어 검색" class="navigation-search-input" />
                        <a href="#" class="navigation__icon">
                           <svg class="navigation-icon" width="24" height="24" viewBox="0 0 24 24" fill="none"
                              stroke="#757575" stroke-width="2" preserveAspectRatio="xMidYMid meet">
                              <path d="M22 22l-5-5"></path>
                              <circle cx="11" cy="11" r="8"></circle>
                           </svg>
                        </a>
                        <a href="#" class="navigation__icon mobile-hide">
                           <svg class="navigation-icon" width="24" height="24" stroke="#757575" viewBox="0 0 24 24"
                              preserveAspectRatio="xMidYMid meet">
                              <path fill="none" stroke-width="2"
                                 d="M3 20.967zm0 0V2.5a.5.5 0 01.5-.5h17a.5.5 0 01.5.5v18.467l-8.057-4.309a2 2 0 00-1.886 0L3 20.968z">
                              </path>
                           </svg>
                        </a>
                        <a href="" class="navigation__icon mobile-hide">
                           <svg class="navigation-icon" width="24" height="24" stroke="#757575" viewBox="0 0 24 24"
                              preserveAspectRatio="xMidYMid meet">
                              <path fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                 d="M10.04 4.19C10.16 3.16 10.6 2 12.05 2c1.35 0 1.78 1.11 1.9 2.13C21.05 5.25 21 13.43 21 19H3c0-5.48-.05-13.48 7.04-14.81zM10 19c0 1.66.9 3 2 3s2-1.34 2-3">
                              </path>
                           </svg>
                        </a>
                        <a href="#" class="navigation__icon">
                           <svg class="navigation-icon" width="24" height="24" viewBox="0 0 24 24" stroke="#757575"
                              fill="none" stroke-linejoin="round" stroke-width="2" preserveAspectRatio="xMidYMid meet">
                              <path stroke-linecap="round"
                                 d="M4 5h18l-2.6 10.5a2 2 0 0 1-2 1.5H8.6a2 2 0 0 1-2-1.5L4 5zm4 15.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0zm7 0a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0z">
                              </path>
                              <path d="M1 2h3v3"></path>
                           </svg>
                        </a>
                        <a href="" class="navigation-sign-in">로그인</a>
                        <a href="" class="navigation-sign-up">회원가입</a>
                        <!--로그인 한 유저의 경우 보임-->
                        <div class="navigation-user-menu">
                           <button type="button" class="navigation-user mobile-hide">
                              <img src="/image/user_icon.jpg" alt="user-menu" class="navigation-user-icon" />
                              <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down"
                                 class="svg-inline--fa fa-caret-down fa-w-10 drop-down" role="img"
                                 xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
                                 <path fill="#757575"
                                    d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z">
                                 </path>
                              </svg>
                              <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down"
                                 class="svg-inline--fa fa-caret-down fa-w-10 drop-down hover" role="img"
                                 xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
                                 <path fill="#35c5f0"
                                    d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z">
                                 </path>
                              </svg>
                           </button>
                           <div class="navigation-user__dropdown-menu">
                              <ul class="navigation-user__menu-list">
                                 <li class="my-menu">
                                    <a href="">마이페이지</a>
                                 </li>
                                 <li class="my-menu">
                                    <a href="">나의쇼핑</a>
                                 </li>
                                 <li class="my-menu">
                                    <a href="">이벤트</a>
                                 </li>
                                 <li class="my-menu">
                                    <a href="">로그아웃</a>
                                 </li>
                              </ul>
                           </div>
                        </div>
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
                     <li class="navigation-bar-secondary__list">
                        <a href="" class="menu-link">프로필</a>
                     </li>
                     <li class="navigation-bar-secondary__list">
                        <a href="" class="menu-link">
                           나의 쇼핑
                        </a>
                     </li>
                     <li class="navigation-bar-secondary__list">
                        <a href="" class="menu-link">나의 리뷰</a>
                     </li>
                     <li class="navigation-bar-secondary__list">
                        <a href="" class="menu-link">설정</a>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </nav>
      <nav class="">
         <ul>
            <li>회원정보수정</li>
            <li>비밀번호 변경</li>
            <li>알림 설정</li>
         </ul>
      </nav>
   </section>
   <section>
      <div>
         <h1>이벤트 및 혜택 알림</h1>
         <p>특가, 쿠폰 등 이벤트 정보를 빠르게 알려드릴게요.</p>
      </div>
      <ul>
         <li>
            이메일
            <input type="checkbox"/>
         </li>
         <li>
            문자 메시지
            <input type="checkbox">
         </li>
      </ul>
   </section>
   <footer>
      푸터푸터
   </footer>
</body>

</html>