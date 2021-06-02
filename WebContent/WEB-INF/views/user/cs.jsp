<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value="${pageContext.request.contextPath }/"/>
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
<link rel="stylesheet" href="${root }css/user/cs.css">
<link rel="stylesheet" href="${root }css/commons/footer.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="icon" href="${root }image/icons/favicon.ico">
<link rel="apple-touch-icon" href="${root }image/icons/favicon.ico">
<link rel="short icon" type="image/x-icon" href="${root }image/icons/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<title>누구나 멋진 인테리어, 모두의 집</title>
<script src="${root }javascript/store/store_main.js" defer></script>
<script src="https://kit.fontawesome.com/7218b951ec.js" crossorigin="anonymous"></script>
</head>
<body>
   <!--header & nav-->
   <section class="store-main__header">
		<!-- header -->
		<c:import url="/WEB-INF/views/include/header.jsp" />
		<!-- store_top_menu.jsp -->
		<c:import url="/WEB-INF/views/include/store_top_menu.jsp" />
	</section>
	
   <!-- 대표 faq -->
   <section class="faq_top">
      <div class="container">
         <div class="row">
            <div class="col-12">
               <h1 class="faq_top_head">고객센터</h1>
            </div>
         </div>
         <div class="row">
            <div class=" mobile-hide col-12 col-md-6">
               <div class="contact-us">
                  <span class="title">운영시간</span>
                  <span class="text">평일 09:00 ~ 18:00 (주말 & 공휴일 제외)</span>
               </div>
               <div class="contact-us">
                  <span class="title">이메일</span>
                  <a href="mailto:khg620@gmail.com" class="text">cs@cs.com</a>
               </div>
               <div class="contact-us">
                  <span class="title">전화</span>
                  <a href="tel:0000-0000" class="text">0000-0000</a>
               </div>
               <button class="contact-us__btn">이메일 문의하기</button>
            </div>
            <div class="col-12 col-md-6">
               <ul class="faq__top__list">
                  <li><a href="" class="faq-navigation-item">배송은 얼마나 걸리나요?</a></li>
                  <li><a href="" class="faq-navigation-item">주문 취소는 어떻게 하나요?</a></li>
                  <li><a href="" class="faq-navigation-item">제품의 자세한 정보를 알고 싶어요.</a></li>
                  <li><a href="" class="faq-navigation-item">제품이 불량일 때는?</a></li>
               </ul>
            </div>
         </div>
      </div>
   </section>

   <section class="faq">
      <div class="container">
         <!-- 문의 버튼 -->
         <div class="cs-write row">
            <div class="col-12">
               <p class="cs-time">
                  운영시간 : 평일 09:00 ~ 18:00 (주말 & 공휴일 제외)
               </p>
               <a class="question-btn">1 : 1 채팅 상담하기</a>
               <a class="question-btn">이메일 문의하기</a>
               <a class="question-btn">전화 문의하기</a>
            </div>
         </div>

         <!-- 메뉴별 faq -->
         <div class="row">
            <div class="col-12">
               <ul class="faq__menu">
                  <li><a href="" class="faq__menu__nav active">전체</a></li>
                  <li><a href="" class="faq__menu__nav">주문/결제</a></li>
                  <li><a href="" class="faq__menu__nav">배송관련</a></li>
                  <li><a href="" class="faq__menu__nav">취소/환불</a></li>
                  <li><a href="" class="faq__menu__nav">반품/교환</a></li>
                  <li><a href="" class="faq__menu__nav">증빙서류발급</a></li>
                  <li><a href="" class="faq__menu__nav">회원정보변경</a></li>
                  <li><a href="" class="faq__menu__nav">서비스/기타</a></li>
               </ul>
               <div class="faq__contents-group">
                  <article class="faq__contents">
                     <p class="faq__title">주문 내역은 어떻게 확인할 수 있나요?</p>
                     <p class="faq__answer">우측 상단 프로필 사진을 클릭 후 [나의쇼핑]을 통해 확인 가능합니다</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">결제 방법은 어떤 것이 있나요?</p>
                     <p class="faq__answer">신용카드 및 체크카드, 무통장 입금, 휴대폰 소액결제, 네이버페이를 이용해 결제 가능합니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">비회원주문 및 전화주문이 가능한가요?</p>
                     <p class="faq__answer">전화주문은 준비중에 있습니다.<br>
                        비회원 주문은 가능하지만 일부 상품에 한해 제한되어있습니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">신용카드 무이자 할부가 되나요?</p>
                     <p class="faq__answer">각 카드사 별로 상이하며, 카드사를 통해 확인 가능합니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">신용카드 결제 후 할부 개월 수를 변경 가능한가요?</p>
                     <p class="faq__answer">결제 후 결제 정보 변경은 불가능 합니다.<br>단, 결제 완료 단계에서는 취소 후 재주문을 통해 변경 가능합니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">가상계좌 은행을 변경 할 수 있나요?</p>
                     <p class="faq__answer">한번 발급 받은 계좌번호는 변경이 불가능합니다.<br>재주문을 통해 새로운 계좌를 발급 받으신 후 입금 부탁드립니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">주문 후 결제 방법을 변경하고 싶은데 어떻게 해야 하나요?</p>
                     <p class="faq__answer">결제 후 결제 정보 변경은 불가능 합니다.<br>단, 입금 대기 및 결제 완료 단계에서는 취소 후 재주문을 통해 변경 가능합니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">신용카드 안전결제(ISP)는 무엇인가요?</p>
                     <p class="faq__answer">국민카드, BC카드는 인터넷 안전결제(ISP)로 결제가 진행됩니다.<br>결제진행시 나타나는 안내에 따라 결제하실 카드번호와 사용하시는
                        이메일
                        및 비밀번호를 입력하여 인터넷 안전결제(ISP)등록 후 결제를 진행해 주시면 됩니다.<br>단, 30만원 이상 결제 시에는 공인인증서가 필요합니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">가상계좌 입금은 언제 확인 되나요?</p>
                     <p class="faq__answer">입금 후 24시간 이내에 확인됩니다.<br>24시간 이후에도 입금확인이 되지 않는 경우 결제 금액과 입금한 금액이 같은지, 올바른 계좌로
                        입금하였는지 확인 후[나의쇼핑 > 고객센터 > 1:1 채팅 상담하기]를 통해 문의 부탁드립니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">가상계좌 입금인을 다르게 적은경우 어떻게 해야하나요?</p>
                     <p class="faq__answer">입금인이 달라도 가상계좌번호만 같으면 문제없습니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">배송비는 얼마인가요?</p>
                     <p class="faq__answer">오늘의집은 상품정보 중계 및 판매 매체이며, 판매 업체 별로 배송비 정책이 상이합니다. 각 상품상세페이지에서 배송비를 확인하실 수
                        있습니다.
                     </p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">배송확인은 어떻게 하나요?</p>
                     <p class="faq__answer">우측 상단 프로필의 [나의쇼핑]을 통해 배송단계를 한눈에 보실 수 있습니다.<br>또한 배송이 시작되면 카카오톡 알림톡 또는 SMS로
                        안내메시지가 발송됩니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">배송은 얼마나 걸리나요?</p>
                     <p class="faq__answer">상품 배송 기간은 배송 유형에 따라 출고 일자 차이가 있습니다.자세한 사항은 구매하신 상품의 상세 페이지에서 확인 가능하며, 배송 유형
                        별
                        기본 출고 기간은 아래와 같습니다.<br>
                        ∙ 일반 택배 / 화물 택배 : 결제 후 1~3 영업일 이내 출고됩니다.<br>
                        ∙ 업체 직접 배송 : 배송 지역에 따라 배송 일자가 상이할 수 있으므로 상품 상세 페이지에서 확인 해주세요.<br>
                        ※ 영업일은 주말, 공휴일을 제외한 기간입니다.<br>
                        ※ 제조사의 사정에 따라 출고일은 지연될 수 있는 점 양해 부탁드립니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">여러 상품을 묶음 배송 받으려면 어떻게 해야하나요?</p>
                     <p class="faq__answer">각 상품별로 배송처가 상이할 수 있기 때문에 묶음 배송은 어렵습니다.<br>단, 배송처가 같은 경우 배송처의 정책에 따라 가능 할 수
                        있습니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">원하는 날짜로 맞춰서 배송을 받을수 있나요?</p>
                     <p class="faq__answer">각 배송처 정책에 따라 상이할 수 있습니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">배송 시작 알림 메시지를 받았는데, 배송추적이 되지 않습니다. 어떻게 해야하나요?</p>
                     <p class="faq__answer">송장번호 등록 후 1영업일 이내 또는 실제 상품배송이 진행됨과 동시에 배송추적이 가능합니다.<br>※ 배송처에서 배송이 시작되기 전,
                        송장을
                        먼저 출력 후 송장번호를 입력하는 경우가 있습니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">배송조회를 해보면 배송완료로 확인되는데 택배를 받지 못했습니다. 어떻게 해아하나요?</p>
                     <p class="faq__answer">경비실 또는 무인택배함을 먼저 확인 부탁드립니다.<br>별도의 위탁 장소가 없는 경우 배송기사님께서 임의의 장소에 보관하셨을 수 있으니,
                        기사님께 문의 부탁드립니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">해외배송이 가능한가요?</p>
                     <p class="faq__answer">현재는 국내배송만 진행하고 있습니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">주문 취소는 어떻게 하나요?</p>
                     <p class="faq__answer">판매처에서 주문을 확인하기 전이라면 언제든 취소하실 수 있으며, [나의 쇼핑 > 주문배송내역 조회 > 주문상세보기]에서 직접 주문취소하실
                        수
                        있습니다.<br>※ 이미 판매처에서 상품을 확인해 준비 중이라면, 직접 취소가 어렵습니다. 상세 페이지에 확인되는 판매자 연락처 또는 오늘의집 고객센터로 문의 부탁드립니다.
                     </p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">취소 후 환불은 언제되나요?</p>
                     <p class="faq__answer">신용카드 및 체크카드의 경우 카드사에서 확인 절차를 거치는 관계로 평균 3~7일 영업일 이내 환불처리가 완료됩니다.<br>무통장 입금의
                        경우
                        평균 3영업일 이내 요청 하신 계좌로 환불됩니다.<br>휴대폰 소액결제의 경우 평균 3영업일 이내 환불 또는 취소 처리가 완료됩니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">여러 개의 상품을 주문했는데, 일부만 취소할 수도 있나요?</p>
                     <p class="faq__answer">신용카드 및 체크카드 또는 무통장 입금의 경우 배송 상태에 따라 결제후 부분 취소가 가능하며,배송상태에 따른 취소 가능 여부는 아래와
                        같습니다.<br>- 입금대기 및 결제완료 단계: 우측 상단 프로필 사진을 클릭 후 [나의쇼핑 > 주문배송내역 조회]에서 즉시취소가능합니다.<br>- 배송준비중: 우측 상단
                        프로필
                        사진을 클릭 후 [나의쇼핑 > 고객센터 > 1:1 채팅 상담하기]로 취소 가능 여부 문의 부탁드립니다.<br>- 배송중 : 주문 취소가 불가능합니다. 수령후 반품 처리
                        부탁드립니다.<br>※ 단, 가상계좌로 입금 전이라면 부분 취소처리가 불가능하므로 재주문 부탁드립니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">제품이 불량입니다. 반품 혹은 교환은 어떻게 하나요?</p>
                     <p class="faq__answer">업체(브랜드)마다 발송처 및 반품절차가 다릅니다.<br>- 우측 상단 프로필 사진을 클릭 후 [나의쇼핑] 페이지에서 원하는 주문의
                        상세보기
                        버튼을 클릭 후 교환/반품 접수 후 진행 할수 있습니다. 교환/반품 접수 없이 임의로 반송한 경우에는 처리가 늦어질 수 있습니다.<br>- 교환/반품 접수 시 원활한 처리를
                        위해
                        불량 사진이 필요하오니, 가급적 사진을 첨부하여 주시기 바랍니다.<br>단, 구매확정 이후 교환/반품을 원하시는 경우 판매 업체에 교환/반품 가능 여부를 먼저 문의
                        부탁드립니다.
                     </p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">제품의 교환 또는 반품을 할 수 있나요?</p>
                     <p class="faq__answer">상품을 수령하신 후 7일 이내에 교환, 반품이 가능합니며, 고객님의 변심에 의한 교환/반품의 경우 배송비용이 부과될 수
                        있습니다.<br>※
                        단, 아래의 경우 교환/반품이 불가능합니다.<br>- 고객님의 책임 사유로 인해 상품 등이 멸실 또는 훼손된 경우<br>- 개봉 및 포장이 훼손으로 상품가치가 현저히 상실된
                        경우<br>- 시간 경과에 의해 재판매가 어려울정도로 상품 가치가 현저히 저하된 경우<br>- 고객주문 확인 후 상품제작에 들어가는 주문 제작 상품<br>- 직접
                        조립하는(DIY) 상폼을 조립 한 경우</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">제품의 교환 또는 반품은 어떻게 신청 할 수 있나요?</p>
                     <p class="faq__answer">업체(브랜드)마다 발송처 및 반품절차가 다릅니다.<br>- 우측 상단 프로필 사진을 클릭 후 [나의쇼핑 > 주문 상세보기] 페이지에서
                        원하는
                        주문의 상세보기 버튼을 클릭 후 교환/반품 접수 후 진행 할수 있습니다.<br>교환/반품 접수 없이 임의로 반송한 경우에는 처리가 늦어질 수 있습니다.<br>- 반품을
                        보내실때는
                        제품이 훼손되지 않도록 안전하게 충분히 포장 부탁드립니다.<br> 단, 구매확정 이후 교환/반품을 원하시는 경우 판매 업체에 교환/반품 가능 여부를 먼저 문의 부탁드립니다.
                     </p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">반품 시, 사은품도 같이 반품해야 하나요?</p>
                     <p class="faq__answer">사은품도 같이 동봉하여 반품해 주셔야 반품처리가 완료됩니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">주문한 것과 다른 상품이 왔습니다. 어떻게 해아하나요?</p>
                     <p class="faq__answer">우측 상단 프로필 사진을 클릭 후 [나의쇼핑 > 고객센터]를 통해 문의 주시면 확인 도움드리겠습니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">세금계산서를 받고 싶은데 어떻게 해야 하나요?</p>
                     <p class="faq__answer">세금계산서 발급은 어려우며, 결제 시 지출증빙 또는 현금영수증 발행은 가능합니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">주문 후 지출증빙/현금영수증 발행이 가능한가요?</p>
                     <p class="faq__answer">주문 완료 후 지출증빙/현금영수증 발행은 불가능합니다. /n지출증빙/현금영수증을 원하사는 경우 반드시 주문 시 "입금자 정보 입력"란에
                        지출증빙/소득공제 발행 신청을 선택 후 요청정보(주민등록번호/현금영수증 카드번호/휴대폰번호/사업자등록번호)를 입력하셔야 합니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">현금영수증 발급을 다른 사람으로 하고 싶습니다.</p>
                     <p class="faq__answer">타인의 명의로 현금영수증 발급을 원하실경우 상품 주문 시 발급 받으실 고객님의 정보(주민등록번호/현금영수증 카드번호/휴대폰번호)를
                        입력해주시면
                        됩니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">주문건의 결제 금액을 나눠서 영수증 발행이 가능한가요?</p>
                     <p class="faq__answer">주문하신 내역 중 일부 상품에 대해서만 분할로 영수증을 발급 받으실 수는 없습니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">비밀번호 변경은 어떻게하나요?</p>
                     <p class="faq__answer">우측 상단 프로필 사진을 클릭 후 [마이홈 > 설정 > 비밀번호 변경] 페이지에서 비밀번호 변경이 가능합니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">회원탈퇴 후 재가입이 가능한가요?</p>
                     <p class="faq__answer">재가입은 언제든지 가능합니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">회원정보를 수정하고 싶은데 어떻게 해야하나요?</p>
                     <p class="faq__answer">우측 상단 프로필 사진을 클릭 후 [마이홈 > 설정 > 회원정보수정] 페이지에서 회원 정보 수정이 가능합니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">회원탈퇴는 어떻게 하나요?</p>
                     <p class="faq__answer">
                        PC 웹사이트: 우측 상단 프로필 사진 클릭 후 [마이페이지 > 설정 > 회원정보수정] 상단의 탈퇴하기 버튼 클릭해주세요.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">"좋아요"를 누른 콘텐츠(사진/집들이/노하우/등)들은 어디서 볼 수 있나요?</p>
                     <p class="faq__answer">우측 상단 프로필 사진을 클릭 후 [마이홈 > 좋아요] 페이지에서 확인 가능합니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">제품의 자세한 정보는 어떻게 알 수 있나요?</p>
                     <p class="faq__answer">각 제품의 상세 페이지에서 확인 가능하며, 더욱 자세한 정보는 제품상세페이지 내 문의하기를 통해 판매 업체에 문의 가능합니다.</p>
                  </article>
                  <article class="faq__contents">
                     <p class="faq__title">좋지않은 댓글을 받았습니다. 어떻게 해야하나요?</p>
                     <p class="faq__answer">댓글 아래에 신고 버튼을 눌러 댓글 신고가 가능합니다.</p>
                  </article>
               </div>
            </div>
         </div>
      </div>
   </section>


   <!--footer-->
   <c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>

</html>