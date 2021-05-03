<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<footer>
   <div class="footer__cs">
      <span>고객센터</span>
      <svg class="icon" aria-hidden="true" width="1em" height="1em" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="nonzero" d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path></svg>
      <a href="tel:1111-1111" class="cs-tel">1111-1111</a>
      <span class="cs-time">평일 09:00 ~ 18:00 (주말 & 공휴일 제외)</span>
   </div>
   <ul class="footer__shortcut">
      <li><a href="${root }" class="footer-item">브랜드 스토리</a></li>
      <li><a href="${root }" class="footer-item">회사소개</a></li>
      <li><a href="${root }" class="footer-item">채용정보</a></li>
      <li><a href="${root }" class="footer-item">이용약관</a></li>
      <li><a href="${root }" class="footer-item">개인정보처리방침</a></li>
      <li><a href="${root }" class="footer-item">공지사항</a></li>
      <li><a href="${root }" class="footer-item">고객센터</a></li>
      <li><a href="${root }" class="footer-item">고객의 소리</a></li>
      <li><a href="${root }" class="footer-item">전문가 등록</a></li>
      <li><a href="${root }" class="footer-item">사업자 구매회원</a></li>
      <li><a href="${root }" class="footer-item">제휴/광고 문의</a></li>
      <li><a href="${root }" class="footer-item">입점신청 문의</a></li>
   </ul>
   <address>
      <dl class="footer-info">
         <span class="footer-info-item">
            <dt>상호명</dt>
            <dd>(주)모두플레이스</dd>
         </span>
         <span class="footer-info-item">
            <dt>이메일</dt>
            <dd><a href="mailto:khg620@gmail.com" class="link">(고객문의) khg620@gmail.com</a></dd>
            <dd><a href="mailto:khg620@gmail.com" class="link">(제휴문의) khg620@gmail.com</a></dd>
         </span>
         <span class="footer-info-item">
            <dt>대표이사</dt>
            <dd>KHG</dd>
         </span>
         <span class="footer-info-item">
            <dt>사업자등록번호</dt>
            <dd>111-11-11111</dd>
         </span>
         <span class="footer-info-item">
            <dt>통신판매업신고번호</dt>
            <dd>제2000-서울서초-0000호</dd>
         </span>
         <span class="footer-info-item">
            <dt>주소</dt>
            <dd>서울 서초구 서초대로74길 4 삼성생명서초타워 00층</dd>
         </span>
      </dl>
      <dl class="footer-info">
         <dt>우리은행 채무지급보증안내
         <dd>
            (주)모두플레이스는 고객님이 현금결제한 금액에 대해 우리은행과 채무지급보증 계약을 체결하여 안전거래를 보장하고 있습니다. <a class="link">서비스가입사실 확인</a>
         </dd>
      </dl>
   </address>
   <p class="footer-info-item">
      (주)모두플레이스는 통신판매중개자로서 통신판매의 당사자가 아니며, 입점업체가 등록한 상품, 상품정보 및 거래에 대하여 (주)모두플레이스는 일체 책임을 지지 않습니다.</dt>
   </p>    
   <p class="footer-copyright">
      Copyright 2014. bucketplace, Co., Ltd. All rights reserved
   </p>
</footer>
    