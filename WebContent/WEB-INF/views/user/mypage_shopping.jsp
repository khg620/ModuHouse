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
                           <svg class="navigation-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#757575" d="M3 4h18v2H3V4zm0 7h18v2H3v-2zm0 7h18v2H3v-2z"></path></svg>
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
                        <input type="text" placeholder="스토어 검색" class="navigation-search-input"/>
                        <a href="#" class="navigation__icon">
                           <svg class="navigation-icon" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#757575" stroke-width="2" preserveAspectRatio="xMidYMid meet"><path d="M22 22l-5-5"></path><circle cx="11" cy="11" r="8"></circle></svg>
                        </a>
                        <a href="#" class="navigation__icon mobile-hide">
                           <svg class="navigation-icon" width="24" height="24" stroke="#757575" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="none" stroke-width="2" d="M3 20.967zm0 0V2.5a.5.5 0 01.5-.5h17a.5.5 0 01.5.5v18.467l-8.057-4.309a2 2 0 00-1.886 0L3 20.968z"></path></svg>
                        </a>
                        <a href="" class="navigation__icon mobile-hide">
									<svg class="navigation-icon" width="24" height="24" stroke="#757575" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.04 4.19C10.16 3.16 10.6 2 12.05 2c1.35 0 1.78 1.11 1.9 2.13C21.05 5.25 21 13.43 21 19H3c0-5.48-.05-13.48 7.04-14.81zM10 19c0 1.66.9 3 2 3s2-1.34 2-3"></path></svg>
								</a>
                        <a href="#" class="navigation__icon"> 
									<svg class="navigation-icon" width="24" height="24" viewBox="0 0 24 24" stroke="#757575" fill="none" stroke-linejoin="round" stroke-width="2" preserveAspectRatio="xMidYMid meet"><path stroke-linecap="round" d="M4 5h18l-2.6 10.5a2 2 0 0 1-2 1.5H8.6a2 2 0 0 1-2-1.5L4 5zm4 15.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0zm7 0a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0z"></path><path d="M1 2h3v3"></path></svg>
								</a>
                        <a href="" class="navigation-sign-in">로그인</a>
                        <a href="" class="navigation-sign-up">회원가입</a>
                        <!--로그인 한 유저의 경우 보임-->
                        <div class="navigation-user-menu">
                           <button type="button" class="navigation-user mobile-hide">
                              <img src="/image/user_icon.jpg" alt="user-menu" class="navigation-user-icon"/>
                              <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down" class="svg-inline--fa fa-caret-down fa-w-10 drop-down" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path fill="#757575" d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z"></path></svg>
                              <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down" class="svg-inline--fa fa-caret-down fa-w-10 drop-down hover" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path fill="#35c5f0" d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z"></path></svg>
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
                        <a href="" class="menu-link">나의 리뷰</a></li>
                     <li class="navigation-bar-secondary__list">
                        <a href="" class="menu-link">설정</a></li>
                  </ul>
               </div>
            </div>
         </div>
      </nav>
      <nav class="">
         <ul>
            <li>주문배송내역 조회</li>
            <li>상품 스크랩북</li>
            <li>상품문의내역</li>
         </ul>
      </nav>
   </section>
   <section>
      <div>
         <a href="">
            <svg class="order-list__info__wrap__content__icon--coupon" width="51" height="29" viewBox="0 0 51 29" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M46.493 1a3.5 3.5 0 012.48 1.025A3.482 3.482 0 0150 4.497h0v20.006A3.501 3.501 0 0146.493 28h0H4.507a3.5 3.5 0 01-2.48-1.025A3.482 3.482 0 011 24.503h0V4.497A3.501 3.501 0 014.507 1h0z" stroke="#757575" fill="#FFF"></path><path fill="#757575" d="M7.167 1.06h1.111v26.32H7.167z"></path><path d="M32.722 12.26c-.926-1.73-2.658-2.8-4.706-2.8h0c-2.895 0-5.294 2.382-5.294 5.6 0 2.658 2.4 5.04 5.294 5.04 2.048 0 3.78-1.07 4.706-2.8" stroke="#757575" stroke-width="3" stroke-linecap="round"></path></g></svg>
         </a>
         <a href="">
            <svg class="order-list__info__wrap__content__icon--point" width="40" height="29" viewBox="0 0 40 29" preserveAspectRatio="xMidYMid meet"><title>icon/ic_point</title><g transform="translate(-5 .5)" stroke="#757575" fill="none" fill-rule="evenodd"><g transform="translate(23.889 6.16)" fill="#FFF"><path d="M.5 3.86h20.111v13.585c0 .316-.248.59-.599.852-.5.374-1.234.705-2.14.986-1.873.581-4.46.937-7.316.937-2.857 0-5.444-.356-7.316-.937-.907-.281-1.642-.612-2.14-.986-.351-.263-.6-.536-.6-.852h0V3.86z"></path><ellipse cx="10.556" cy="3.36" rx="10.056" ry="2.86"></ellipse><path d="M0 12.88c0 1.856 4.602 3.36 10.278 3.36h0c5.676 0 10.278-1.504 10.278-3.36M0 7.84c0 1.856 4.602 3.36 10.278 3.36h0c5.676 0 10.278-1.504 10.278-3.36"></path></g><ellipse fill="#FFF" cx="18.889" cy="14" rx="13.389" ry="13.5"></ellipse><path d="M13.889 15.68h6.667c1.756.415 3.333-1.182 3.333-3.36 0-1.759-1.572-3.36-3.333-3.36h-3.334v11.2" stroke-linecap="round" stroke-width="3"></path></g></svg>
         </a>
         <a href="">
            <svg class="order-list__info__wrap__content__icon--rating" width="44" height="29" viewBox="0 0 44 29" preserveAspectRatio="xMidYMid meet"><g stroke="#757575" fill="none" fill-rule="evenodd"><g fill="#FFF"><path d="M20.797 10.59l3.46 9.584-19.742 7.243v-5.175l-3.48-4.402 19.762-7.25z"></path><path d="M23.203 10.59l-3.46 9.584 19.742 7.243v-5.175l3.48-4.402-19.762-7.25z"></path></g><path d="M24.967.466l.093.012a.499.499 0 01.307.214h0l1.235 1.884a1.499 1.499 0 001.39.672h0l2.228-.202a.499.499 0 01.54.432h0l.303 2.25a1.499 1.499 0 00.956 1.203h0l2.105.797a.499.499 0 01.299.62h0l-.698 2.17a1.499 1.499 0 00.339 1.491h0l1.561 1.647a.499.499 0 010 .688h0l-1.561 1.647a1.499 1.499 0 00-.34 1.492h0l.699 2.168a.499.499 0 01-.299.621h0l-2.105.797a1.499 1.499 0 00-.956 1.203h0l-.303 2.25a.499.499 0 01-.54.432h0l-2.228-.202a1.499 1.499 0 00-1.39.672h0l-1.235 1.884a.499.499 0 01-.676.155h0l-1.917-1.155a1.499 1.499 0 00-1.548 0h0l-1.917 1.155a.499.499 0 01-.676-.155h0l-1.235-1.884a1.499 1.499 0 00-1.39-.672h0l-2.228.202a.499.499 0 01-.54-.432h0l-.303-2.25a1.499 1.499 0 00-.956-1.203h0l-2.105-.797a.499.499 0 01-.299-.62h0l.698-2.17a1.499 1.499 0 00-.339-1.491h0l-1.561-1.647a.499.499 0 010-.688h0l1.561-1.647a1.499 1.499 0 00.34-1.492h0L9.576 8.35a.499.499 0 01.299-.621h0l2.105-.797a1.499 1.499 0 00.956-1.203h0l.303-2.25a.499.499 0 01.54-.432h0l2.228.202a1.499 1.499 0 001.39-.672h0L18.633.692a.499.499 0 01.307-.214h0l2.286 1.214a1.499 1.499 0 001.548 0h0L24.69.537a.499.499 0 01.37-.059z" fill="#FFF"></path><g stroke-linecap="round" stroke-linejoin="round" stroke-width="3"><path d="M16.444 10.64l2.778 7.28L22 10.64M22 10.64l2.777 7.28 2.778-7.28"></path></g></g></svg>
         </a>
      </div>
      <div>
         <ul>
            <li><a href="">입금대기</a></li>
            <li><a href="">결제완료</a></li>
            <li><a href="">배송준비</a></li>
            <li><a href="">배송중</a></li>
            <li><a href="">배송완료</a></li>
            <li><a href="">구매확정</a></li>
         </ul>
      </div>
      <div class="filter">
         <button>
            기간
            <svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path></svg>
         </button>
         <button>
            주문상태
            <svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path></svg>
         </button>
      </div>
      <article>
         <div>
            <div>주문번호|2021.02.08</div>
            <a href="">상세보기</a>
         </div>
         <div>
            <img src="" alt="">
            <div>
               <strong>지엠퍼니처</strong>
               <h1>FW 화이트 원형테이블 600 size</h1>
               <p>FW600화이트+화이트</p>
               <p>52,900원|1개</p>
               <p>취소완료|화물택배배송</p>
            </div>
         </div>
         <div>
            <span>무료배송</span>
            <span>
               (주)빅퍼스
               <a href="tel:02-0000-8888">02-0000-8888</a>
            </span>
         </div>
      </article>
   </section>
   <footer>
      푸터푸터
   </footer>
</body>
</html>