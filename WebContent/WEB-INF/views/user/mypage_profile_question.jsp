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
                        <a href="mypage_shopping.html" class="menu-link">
                           나의 쇼핑
                        </a>
                     </li>
                     <li class="navigation-bar-secondary__list">
                        <a href="mypage_review.html" class="menu-link">나의 리뷰</a>
                     </li>
                     <li class="navigation-bar-secondary__list">
                        <a href="mypage_edit_info.html" class="menu-link">설정</a>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </nav>
      <nav class="">
         <ul>
            <li>
               <a href="">
                  모두보기
               </a>
            </li>
            <li>
               <a href="">
                  집들이
               </a>
            </li>
            <li>
               <a href="">질문과답변</a>
            </li>
         </ul>
      </nav>
   </section>
   <!--profile은 마이페이지 nav 프로필 탭에서 공통-->
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12 col-mg-3">
               <div>
                  <img src="" alt="user profile">
                  <div>
                     <h1>유저닉네임</h1>
                     <dl>
                        <div>
                           <dt>팔로워</dt>
                           <dd>0</dd>
                        </div>
                        <div>
                           <dt>팔로잉</dt>
                           <dd>0</dd>
                        </div>
                     </dl>
                  </div>
                  <a href="mypage_edit_info.html">설정</a>
                  <div>
                     <div>
                        <a href="">
                           <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path fill-rule="evenodd" transform="matrix(1 0 0 -1 0 23.033)" d="M12.943 6.342a2 2 0 0 1-1.886 0L3 2.032V20.5a.5.5 0 0 0 .5.5h17a.5.5 0 0 0 .5-.5V2.033l-8.057 4.309zm-.471-.882l8.056-4.31A1 1 0 0 1 22 2.034V20.5a1.5 1.5 0 0 1-1.5 1.5h-17A1.5 1.5 0 0 1 2 20.5V2.033a1 1 0 0 1 1.472-.882l8.056 4.31a1 1 0 0 0 .944 0z"></path></svg>
                           <span>스크랩북</span>
                           <span>0</span>
                        </a>
                     </div>
                     <div>
                        <a href="">
                           <svg width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" d="M22.971 7.638c-.548-5.17-7.119-7.135-10.57-2.488a.5.5 0 0 1-.802 0C8.148.503 1.577 2.469 1.029 7.625.642 12.451 3.897 17.183 12 21.436c8.104-4.252 11.36-8.984 10.972-13.798zm.996-.093c.428 5.319-3.137 10.446-11.738 14.899a.5.5 0 0 1-.46 0C3.169 17.99-.395 12.864.034 7.532.656 1.67 7.904-.683 12 4.052 16.096-.683 23.344 1.67 23.967 7.545z"></path></svg>
                           <span>좋아요</span>
                           <span>0</span>
                        </a>
                     </div>
                     <div>
                        <a href="">
                           <svg width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#424242" fill-rule="nonzero" d="M22.588 3H1.413C.633 3 0 3.638 0 4.426L0 9.53l.605-.088c.12-.017.243-.026.367-.026 1.413 0 2.558 1.157 2.558 2.584S2.385 14.584.972 14.584c-.124 0-.247-.009-.367-.026L0 14.47l.001 5.104C.001 20.362.633 21 1.413 21h21.175c.78 0 1.412-.638 1.412-1.426V4.426C24 3.638 23.368 3 22.588 3zM1.413 4.07h21.175c.195 0 .353.159.353.356v15.148c0 .197-.158.357-.353.357H1.413l-.071-.008c-.161-.033-.282-.176-.282-.349l-.002-3.923-.086.002c1.997 0 3.617-1.635 3.617-3.653l-.004-.182C4.493 9.945 3.006 8.443 1.152 8.35l-.094-.003.002-3.922c0-.197.158-.357.353-.357zm14.646 2.138c.293 0 .53.237.53.53v1.614c0 .292-.237.53-.53.53-.292 0-.53-.238-.53-.53V6.737c0-.292.238-.53.53-.53zm0 4.455c.293 0 .53.237.53.53v1.614c0 .293-.237.53-.53.53-.292 0-.53-.237-.53-.53v-1.614c0-.293.238-.53.53-.53zm0 4.456c.293 0 .53.237.53.53v1.614c0 .292-.237.53-.53.53-.292 0-.53-.238-.53-.53v-1.615c0-.292.238-.53.53-.53z"></path></svg>
                           <span>내쿠폰</span>
                           <span>0</span>
                        </a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12 col-lg-8">
               <div>
                  <div>
                     <a href="">나의 질문</a>
                     <a href="">나의 답변</a>
                     <a href="board.html">질문과답변 바로가기</a>
                  </div>
                  <div>
                     나의 질문 리스트가 오나 봄
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <footer>
      푸터푸터
   </footer>
</body>
</html>