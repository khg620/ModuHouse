<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value='${pageContext.request.contextPath }/' />
<!--header-->
<header class="navigation-bar-primary">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="navigation-bar__header">
					<div class="navigation-bar-left">
						<button type="button" class="navigation-draw-button">
							<svg class="navigation-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#757575" d="M3 4h18v2H3V4zm0 7h18v2H3v-2zm0 7h18v2H3v-2z"></path></svg>
						</button>
					</div>
					
					<!--navigation-draw-button-menu-->
					<div class="navigation-drawer-container">
                  <div class="navigation-drawer">
                     <div class="navigation-drawer__header">
                        <h1 class="navigation-drawer__logo">
                           <a href="${root }">
                           	<img src="./image/favicon.ico" alt="go main page" class="main-home-icon">
                           	모두의집
                           </a>
                        </h1>
                        <div class="navigation-drawer__user">
                           <!--비로그인 시-->
                           <c:choose>
                           <c:when test="${signInUserBean.userSignIn == false }">
                           <div class="navigation-drawer__sign-in">
                              <a href="${root }user/sign_in" class="button button--color-white">로그인</a>
                              <a href="${root }user/sign_up" class="button button--color-skyblue">회원가입</a>
                           </div>
                           </c:when>
                           <%-- 로그인 시 --%>                        
                           <c:otherwise>                           
                           <span class="navigation-drawer__user-image">
                              <img src="./image/user_icon.jpg" alt="user profile image" class="image">
                           </span>
                           <span class="navigation-drawer__user-nickname">
                              ${signInUserBean.user_nickname }
                           </span>    
                           </c:otherwise>
                           </c:choose>
                        </div>
                     </div>
   
                     <ul class="navigation-drawer__menu">
                        <li class="navigation-drawer__list main-list">
                           <svg class="icon" width="24" height="24" viewBox="0 0 24 24"
                              preserveAspectRatio="xMidYMid meet">
                              <g fill="none" fill-rule="evenodd">
                                 <path d="M1 1h22v22H1z"></path>
                                 <path fill="#424242" fill-rule="nonzero"
                                    d="M5.5 11.5v7.6h13v-7.6h-13zM4 10h16v10.6H4V10z"></path>
                                 <path fill="#424242" fill-rule="nonzero"
                                    d="M17.92 4.1H6.08l-2 6h15.84l-2-6zM5 2.6h14l3 9H2l3-9z"></path>
                                 <path stroke="#424242" stroke-width="1.5" d="M13.25 19.85h-2.5v-4.5h2.5v4.5z">
                                 </path>
                              </g>
                           </svg>
                           커뮤니티
                           <svg class="arrow-icon" width="12" height="7" fill="currentColor" viewBox="0 0 12 7"
                              preserveAspectRatio="xMidYMid meet">
                              <path d="M11 0L5 6l1 1 6-6z"></path>
                              <path d="M6 7L0 1l1-1 6 6z"></path>
                           </svg>
                        </li>
                        <li class="navigation-drawer__list second close">
                           <ul class="navigation-drawer__second-menu">
                              <li class="navigation-drawer__list second-list">
                                 <a href="${root }">홈</a>
                              </li>
                              <li class="navigation-drawer__list second-list">
                                 <a href="${root }">커뮤니티</a>
                              </li>
                              <li class="navigation-drawer__list second-list">
                                 <a href="${root }">질문과답변</a>
                              </li>
                           </ul>
                        </li>
                      </ul>

                      <ul class="navigation-drawer__menu">
                         <li class="navigation-drawer__list main-list">
                            <svg class="icon" width="24" height="24" viewBox="0 0 24 24"
                               preserveAspectRatio="xMidYMid meet">
                               <g fill="none" fill-rule="evenodd">
                                  <path d="M1 1h22v22H1z"></path>
                                  <path stroke="#424242" stroke-width="1.5" d="M19 12v8H5v-8"></path>
                                  <path stroke="#424242" stroke-width="1.5"
                                     d="M3.25 3.75v6a2.5 2.5 0 0 0 2.5 2.5h.5a2.5 2.5 0 0 0 2.5-2.5v-6h-5.5zm6 0v6a2.5 2.5 0 0 0 2.5 2.5h.5a2.5 2.5 0 0 0 2.5-2.5v-6h-5.5zm6 0v6a2.5 2.5 0 0 0 2.5 2.5h.5a2.5 2.5 0 0 0 2.5-2.5v-6h-5.5z">
                                  </path>
                                  <path fill="#424242" d="M5.5 3H18v1.03H5.5z"></path>
                               </g>
                            </svg>
                            스토어
                            <svg class="arrow-icon" width="12" height="7" fill="currentColor" viewBox="0 0 12 7"
                               preserveAspectRatio="xMidYMid meet">
                               <path d="M11 0L5 6l1 1 6-6z"></path>
                               <path d="M6 7L0 1l1-1 6 6z"></path>
                            </svg>
                         </li>
                         <li class="navigation-drawer__list second close">
                            <ul class="navigation-drawer__second-menu">
                               <li class="navigation-drawer__list second-list">
                                  <a href="${root }">스토어홈</a>
                               </li>
                               <li class="navigation-drawer__list second-list">
                                  <a href="${root }">카테고리</a>
                               </li>
                               <li class="navigation-drawer__list second-list">
                                  <a href="${root }">오늘의딜</a>
                               </li>
                            </ul>
                         </li>
                      </ul>
   
                      <ul class="navigation-drawer__user-menu">
                         <li class="navigation-drawer__list">
                            <a href="${root }user/home">마이페이지</a>
                         </li>
                         <li class="navigation-drawer__list">
                            <a href="${root }user/shopping/order_list">나의 쇼핑</a>
                         </li>
                         <li class="navigation-drawer__list">
                            <a href="${root }">스크랩북</a>
                         </li>
                         <li class="navigation-drawer__list">
                            <a href="${root }">사진 올리기</a>
                         </li>
                         <li class="navigation-drawer__list">
                            <a href="${root }product_reviews/write">상품 리뷰 쓰기</a>
                         </li>
                         <li class="navigation-drawer__list">
                            <a href="${root }">질문하기</a>
                         </li>
                         <c:choose>
                         <c:when test="${signInUserBean.userSignIn == true }">
                         <li class="navigation-drawer__list">
                            <a href="${root }user/sign_out">로그아웃</a>
                         </li>
                         </c:when>
                         </c:choose>
                      </ul>
                   </div>
               </div><!--navigation-draw-button-menu end-->
					
					<h1 class="main-title">
						<a href="${root }" class="main-title-link">모두의집</a>
					</h1>
					<div class="header-right">
						<div class="navigation-search"></div>
						<input type="text" placeholder="스토어 검색" class="navigation-search-input" /> 
							<a href="${root }" class="navigation__icon"> 
								<svg class="navigation-icon" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#757575" stroke-width="2" preserveAspectRatio="xMidYMid meet"><path d="M22 22l-5-5"></path><circle cx="11" cy="11" r="8"></circle></svg>
							</a> 
							<c:choose>
							<c:when test="${signInUserBean.userSignIn == true }">
							<a href="${root }" class="navigation__icon mobile-hide">								
								<svg class="navigation-icon" width="24" height="24" stroke="#757575" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="none" stroke-width="2" d="M3 20.967zm0 0V2.5a.5.5 0 01.5-.5h17a.5.5 0 01.5.5v18.467l-8.057-4.309a2 2 0 00-1.886 0L3 20.968z"></path></svg>
							</a>
							<a href="${root }" class="navigation__icon mobile-hide">
								<svg class="navigation-icon" width="24" height="24" stroke="#757575" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.04 4.19C10.16 3.16 10.6 2 12.05 2c1.35 0 1.78 1.11 1.9 2.13C21.05 5.25 21 13.43 21 19H3c0-5.48-.05-13.48 7.04-14.81zM10 19c0 1.66.9 3 2 3s2-1.34 2-3"></path></svg>
							</a>
							<a href="${root }" class="navigation__icon"> 
								<svg class="navigation-icon" width="24" height="24" viewBox="0 0 24 24" stroke="#757575" fill="none" stroke-linejoin="round" stroke-width="2" preserveAspectRatio="xMidYMid meet"><path stroke-linecap="round" d="M4 5h18l-2.6 10.5a2 2 0 0 1-2 1.5H8.6a2 2 0 0 1-2-1.5L4 5zm4 15.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0zm7 0a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0z"></path><path d="M1 2h3v3"></path></svg>
							</a> 
							</c:when>
							<c:otherwise>	
							<a href="${root }user/sign_in" class="navigation-sign-in">로그인</a>
							<a href="${root }user/sign_up" class="navigation-sign-up">회원가입</a>
							</c:otherwise>
							</c:choose>
						<!--로그인 한 유저의 경우 보임-->
						<c:choose>	
							<c:when test="${signInUserBean.userSignIn == true }">								
								<div class="navigation-user-menu" onclick="showUserMenu()">
                          <button type="button" class="navigation-user mobile-hide">
                             <img src="././image/user_icon.jpg" alt="user-menu" class="navigation-user-icon"/>
                             <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down" class="svg-inline--fa fa-caret-down fa-w-10 drop-down" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path fill="#757575" d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z"></path></svg>
                          </button>
                          <div class="navigation-user__dropdown-menu">
                             <ul class="navigation-user__menu-list">
                                <li class="my-menu">
                                   <a href="${root }user/home">마이페이지</a>
                                </li>
                                <li class="my-menu">
                                   <a href="${root }user/shopping/order_list">나의쇼핑</a>
                                </li>
                                <li class="my-menu">
                                   <a href="${root }">이벤트</a>
                                </li>
                                <li class="my-menu">
                                   <a href="${root }user/sign_out">로그아웃</a>
                                </li>
                             </ul>
                          </div>
                       </div>
                      </c:when>						
						</c:choose>
                       <button class="navigation-upload mobile-hide">글쓰기</button>
                    </div>
                 </div>
              </div>
           </div>
        </div>
</header>
			