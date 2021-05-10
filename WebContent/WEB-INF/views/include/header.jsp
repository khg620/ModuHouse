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
                           	<img src="${root }image/favicon.ico" alt="go main page" class="main-home-icon">
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
                              <img src="${root }image/user_icon.jpg" alt="user profile image" class="image">
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
                                 <a href="${root }/community/question">커뮤니티</a>
                              </li>
                              <li class="navigation-drawer__list second-list">
                                 <a href="${root }/community/question">질문과답변</a> <!-- 일단 '커뮤니티' 메인을 '질문과 답변'으로 함 -->
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
                            <a href="${root }community/write_question">질문하기</a>
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
                             <img src="${root }/image/user_icon.jpg" alt="user-menu" class="navigation-user-icon"/>
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
                       <button class="navigation-upload mobile-hide">글쓰기</button><!-- 누르면 어느 카테고리의 게시판에 쓸 건지 모달 -->
                       <!-- 글쓰기 드롭다운 -->
                       <div class="upload-list-wrap">
                           <ul class="upload-list">
                              <li class="upload-item">
                                 <a href="${root }product/review" class="upload-link">
                                 <svg class="upload-link-img" width="36" height="36" viewBox="0 0 36 36" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h36v36H0z"></path><g stroke-linejoin="round" transform="translate(2 3)"><rect width="4" height="8" x="3" y="21" fill="#FFB787" stroke="#000" rx="2"></rect><rect fill="#FFE2C7" width="24" height="25" rx="3"></rect><rect fill="#ffe2c7" width="24" height="25" rx="3"></rect><rect stroke="#000" width="24" height="25" rx="3" stroke-width="1.2"></rect><rect width="6" height="3" x="9" y="5" fill="#DB9F77" stroke="#FFF" rx="1.5"></rect><rect width="6" height="3" x="9" y="17" fill="#DB9F77" stroke="#FFF" rx="1.5"></rect><path fill="#FFDB92" stroke="#EDC29B" d="M1.5 12.5h21"></path></g><path fill="#35C5F0" d="M26.25 31.53l-3.7 1.32a1 1 0 01-1.34-.97l.1-3.93a.99.99 0 00-.2-.64l-2.4-3.11a1 1 0 01.51-1.57l3.77-1.12a1 1 0 00.55-.39l2.22-3.24a1 1 0 011.65 0l2.22 3.24a1 1 0 00.55.4l3.77 1.1a1 1 0 01.5 1.58l-2.4 3.11a1 1 0 00-.2.64l.11 3.93a1 1 0 01-1.33.97l-3.71-1.32a1 1 0 00-.67 0z"></path><path fill="#9AE2F7" d="M27.15 17.61a1 1 0 01.26.26l2.22 3.25c.06.09.13.16.22.23l-8.59 8.58.06-1.98a.99.99 0 00-.21-.64l-2.4-3.11a1 1 0 01.51-1.57l3.77-1.12a1 1 0 00.55-.39l2.22-3.24a1 1 0 011.39-.26z"></path><path stroke="#000" d="M26.29 30.85l-3.31 1.17a.9.9 0 01-1.2-.86l.1-3.51c0-.2-.06-.4-.18-.57l-2.14-2.78a.9.9 0 01.45-1.4l3.37-.99a.9.9 0 00.48-.35l1.99-2.9a.9.9 0 011.47 0l1.99 2.9c.11.17.28.3.48.35l3.37 1a.9.9 0 01.45 1.4l-2.14 2.77a.89.89 0 00-.18.57l.1 3.5a.9.9 0 01-1.2.87l-3.3-1.17a.9.9 0 00-.6 0z" stroke-width="1.2"></path></g></svg>
                                 <div class="item-desc-group">
                                    <strong class="upload-item-category">상품 리뷰 쓰기</strong>
                                    <span class="upload-item-desc">상품 리뷰를 작성하고 포인트도 받아보세요</span>
                                 </div>
                                 </a>
                              </li>
                              <li class="upload-item">
                                 <a href="${root }community/write_question?board_info_idx=2" class="upload-link">
                                 <svg class="upload-link-img" width="36" height="36" viewBox="0 0 36 36" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h36v36H0z"></path><path fill="#E4F2F6" d="M18 5c8.28 0 15 5.8 15 12.96 0 7.16-6.72 12.96-15 12.96-2.76 0-5.35-.65-7.58-1.77l-5.37 2.37 2-4.7A12.03 12.03 0 013 17.95C3 10.8 9.72 5 18 5z" fill-rule="nonzero"></path><path fill="#CAE5EC" d="M33 17.96c0 7.16-6.72 12.96-15 12.96-2.76 0-5.35-.65-7.58-1.77l-5.38 2.37 2-4.7a12.46 12.46 0 01-3.68-6.03c3.25 3.22 10.05 3.96 16.87 1.48 5.69-2.07 9.92-5.85 11.42-9.7A11.46 11.46 0 0133 17.96z"></path><path stroke="#000" stroke-linecap="round" stroke-linejoin="round" d="M18 5c8.28 0 15 5.76 15 12.86S26.28 30.7 18 30.7c-2.76 0-5.35-.64-7.58-1.75L5.06 31.3l2-4.67A11.9 11.9 0 013 17.86C3 10.76 9.72 5 18 5z"></path><g fill="#000" fill-rule="nonzero" stroke="#FFF"><path d="M18 22.12a1.6 1.6 0 011.13 2.73 1.6 1.6 0 11-2.26-2.26 1.6 1.6 0 011.13-.47zm.26-10.82c1.02 0 1.86.3 2.5.76a3.5 3.5 0 011.35 2.11c.17.82.07 1.72-.35 2.56a4.85 4.85 0 01-1.88 1.97c-.23.13-.38.31-.49.56-.13.32-.19.73-.19 1.24a1.2 1.2 0 11-2.4 0c0-.93.16-1.72.46-2.36.32-.67.8-1.18 1.43-1.52.42-.25.72-.56.9-.89.18-.33.25-.67.2-.98-.06-.3-.22-.57-.48-.75-.26-.2-.62-.3-1.05-.3-.68 0-1.2.11-1.54.4-.33.28-.48.72-.52 1.3a1.2 1.2 0 01-1.3 1.1 1.2 1.2 0 01-1.1-1.29c.1-1.27.57-2.24 1.33-2.9a4.62 4.62 0 013.13-1.01z"></path></g></g></svg>
                                 <div class="item-desc-group">
                                    <strong class="upload-item-category">인테리어 질문하기</strong>
                                    <span class="upload-item-desc">인테리어 고수들에게 질문해보세요</span>
                                 </div>
                                 </a>
                              </li>
                              <li class="upload-item">
                                 <a href="${root }contact_us" class="upload-link">
                                 <svg class="upload-link-img" width="36" height="36" viewBox="0 0 36 36" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><g transform="translate(2 3)"><g fill-rule="nonzero" stroke-linecap="round" stroke-linejoin="round"><path fill="#cae5ec" d="M19 0a3 3 0 013 3v12a3 3 0 01-3 3H7.67L5.7 19.47 5 20v-2H3a3 3 0 01-3-3V3a3 3 0 013-3h16z"></path><path stroke="#000" d="M19-.5A3.5 3.5 0 0122.5 3h0v12a3.5 3.5 0 01-3.5 3.5h0H7.83l-1.82 1.37L4.5 21v-2.5H3A3.5 3.5 0 01-.5 15h0V3A3.5 3.5 0 013-.5h0z"></path></g><rect width="20.03" height="13.89" x=".99" y="1.64" rx="2" ry="2" fill="#e4f2f6"></rect><path d="M0 0h36v36H0z"></path><rect width="15" height="2" x="3.5" y="5" stroke="#FFF" rx="1"></rect><rect width="15" height="2" x="3.5" y="8.5" stroke="#FFF" rx="1"></rect><rect width="8" height="2" x="3.5" y="12" stroke="#FFF" rx="1"></rect><rect width="14" height="1" x="4" y="5.5" fill="#000" rx=".5"></rect><rect width="14" height="1" x="4" y="9" fill="#000" rx=".5"></rect><rect width="7" height="1" x="4" y="12.5" fill="#000" rx=".5"></rect></g><g transform="translate(16 18)"><g fill-rule="nonzero" stroke-linecap="round" stroke-linejoin="round"><path fill="#ededed" d="M15 0a3 3 0 013 3v7a3 3 0 01-3 3h-3v2l-2.67-2H3a3 3 0 01-3-3V3a3 3 0 013-3h12z"></path><path stroke="#000" d="M15-.5A3.5 3.5 0 0118.5 3h0v7a3.5 3.5 0 01-3.5 3.5h0-2.5V16l-3.33-2.5H3A3.5 3.5 0 01-.5 10h0V3A3.5 3.5 0 013-.5h0z"></path></g><rect width="16.01" height="8.94" x="1.07" y="1.4" rx="2" ry="2" fill="#fff"></rect><rect width="3" height="2" x="3.5" y="5.5" stroke="#FFF" rx="1"></rect><rect width="2" height="1" x="4" y="6" fill="#000" rx=".5"></rect><rect width="2" height="1" x="8" y="6" fill="#000" rx=".5"></rect><rect width="2" height="1" x="12" y="6" fill="#000" rx=".5"></rect><rect width="3" height="2" x="7.5" y="5.5" stroke="#FFF" rx="1"></rect><rect width="3" height="2" x="11.5" y="5.5" stroke="#FFF" rx="1"></rect></g></g></svg>
                                 <div class="item-desc-group">
                                    <strong class="upload-item-category">고객센터</strong>
                                    <span class="upload-item-desc">궁금하신 사항을 남겨주시면 빠르게 안내해드릴게요</span>
                                 </div>
                                 </a>
                              </li>
                           </ul>
                        </div>
                    </div>
                 </div>
              </div>
           </div>
        </div>
</header>
<script src="${root }javascript/header.js" defer></script>
			