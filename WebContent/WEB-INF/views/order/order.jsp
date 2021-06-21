<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="description" content="인테리어 플랫폼" />
<meta name="keywords" content="인테리어, 집꾸미기" />
<meta name="author" content="Hyun gyung" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${root }css/commons/utils.css">
<link rel="stylesheet" href="${root }css/store/main.css">
<link rel="stylesheet" href="${root }css/order/order.css">
<link rel="stylesheet" href="${root }css/commons/footer.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="icon" href="${root }image/icons/favicon.ico">
<link rel="apple-touch-icon" href="${root }image/icons/favicon.ico">
<link rel="short icon" type="image/x-icon" href="${root }image/icons/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<title>누구나 멋진 인테리어, 모두의 집</title>
<script src="${root }javascript/store/store_main.js" defer></script>
<script src="${root }javascript/order/order.js" defer></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://kit.fontawesome.com/7218b951ec.js" crossorigin="anonymous"></script>
</head>
<body>
	<!--head-->
	<section class="store-main__header">
		<!-- header -->
		<c:import url="/WEB-INF/views/include/header.jsp" />

	</section>
	<!-- main -->
	<main>
		<section class="main-container">
			<!--주문자-->
			<section class="main-container__left">
				<h1 class="main__header">주문/결제</h1>
				<section class="order-info__container">
					<div class="order-info">
						<div class="order-info__head">
							<div class="title-wrap">
								<h1 class="title">주문자</h1>
								<button class="arrow-btn">
									<svg class="arrow" fill="none" viewBox="0 0 16 10" preserveAspectRatio="xMidYMid meet">
                              <path d="M1.75.833L8 6.873l6.25-6.04L15.5 1.98 8 9.167.5 1.98 1.75.833z"></path>
                           </svg>
								</button>
							</div>
						</div>
						<div class="order__input">
							<form:form action="${root }/order_proc/order" method="POST" modelAttribute="orderBean">
								<div class="input-box">
									<label>이름</label>
									<form:input type="text" path="orderer_name"/>
								</div>
								<div class="input-box">
									<div class="input-wrap">
										<label>이메일</label>
										<div class="input-binding">
											<div class="input-email">
												<form:input type="text" class="email" value="${orderBean.orderer_email1 }" path="orderer_email1"/>
												<span>@</span>
											</div>
											<form:select name="orderBean" class="email2" path="orderer_email2">
												<form:option value="" disabled="disabled" selected="selected">선택해주세요</form:option>
												<form:option value="naver.com">naver.com</form:option>
												<form:option value="hanmail.net">hanmail.net</form:option>
												<form:option value="daum.net">daum.net</form:option>
												<form:option value="gmail.com">gmail.com</form:option>
												<form:option value="nate.com">nate.com</form:option>
												<form:option value="hotmail.com">hotmail.com</form:option>
												<form:option value="outlook.com">outlook.com</form:option>
												<form:option value="icloud.com">icloud.com</form:option>
											</form:select>
										</div>
									</div>
								</div>
								<div class="input-box">
									<label>휴대전화</label>
									<div class="input-line">
										<select class="width-85">
											<option value="010">010</option>
											<option value="010">011</option>
											<option value="010">016</option>
											<option value="010">017</option>
											<option value="010">018</option>
											<option value="010">019</option>
										</select>
										<input type="tel" required placeholder="입력해주세요"/>
									</div>
								</div>
								<div class="input-btn-wrap">
									<button type="button" class="button--color-skyblue show">인증번호 발송</button>
								</div>
							</form:form>
						</div>
					</div>
				</section>
				<!--배송-->
				<section class="order-info__container delivery">
					<div class="order-info">
						<div class="order-info__head">
							<div class="title-wrap">
								<h1 class="title">배송지</h1>
								<button type="button">위와 동일하게 채우기</button>
							</div>
						</div>
						<div class="order__input">
							<form:form action="${root }order_proc/delivery" method="POST" modelAttribute="deliveryBean">
								<div class="input-box">
									<label>받는 사람</label>
									<form:input type="text" path="receiver_name"/>
								</div>
								<div class="input-box">
									<label>연락처</label>
									<div class="input-line">
										<select class="width-85">
											<option value="010">010</option>
											<option value="010">011</option>
											<option value="010">016</option>
											<option value="010">017</option>
											<option value="010">018</option>
											<option value="010">019</option>
										</select>
										<input type="tel" required placeholder="입력해주세요"/>
									</div>
								</div>
								<div class="input-box">
									<label class="address-label">주소</label>
									<div class="address-wrap">
										<div class="line">
											<button class="button--color-skyblue-inverted width-85">주소찾기</button>
											<input class="zipcode" type="number" readonly/>
										</div>
										<div class="line">
											<input type="text" placeholder="상세주소 입력"/>
										</div>
										<div class="checkbox-wrap">
											<input type="checkbox">
											<label>기본 배송지로 저장</label>
										</div>
									</div>
								</div>
								<div class="input-box message-wrap">
									<form:textarea class="message" path="delivery_message" maxlength="50" rows="1" placeholder="배송 요청사항을 입력해주세요"></form:textarea>
									<div class="text-limit">0/50</div>
								</div>
								<div class="input-box">
									<form:select path="delivery_message" class="select-message">
										<form:option value="" disabled="true" selected="true">배송시 요청사항을 선택해주세요</form:option>
										<form:option value="">부재 시 문 앞에 놓아주세요</form:option>
										<form:option value="">배송 전에 미리 연락주세요</form:option>
										<form:option value="">부재 시 경비실에 맡겨주세요</form:option>
										<form:option value="">부재 시 연락주세요</form:option>
										<form:option value="">직접입력</form:option>
									</form:select>
								</div>
							</form:form>
						</div>
					</div>
				</section>
				<!--주문상품-->
				<section class="order-info__container">
					<div class="order-info">
						<div class="order-info__head">
							<div class="title-wrap">
								<h1 class="title">주문상품</h1>
								<button class="arrow-btn">
									<svg class="arrow" fill="none" viewBox="0 0 16 10" preserveAspectRatio="xMidYMid meet">
                              <path d="M1.75.833L8 6.873l6.25-6.04L15.5 1.98 8 9.167.5 1.98 1.75.833z"></path>
                           </svg>
								</button>
							</div>
						</div>
						<c:forEach items="${orderBeanList.getOrderBeanList() }" var="item">
						<div class="order-content">
							<div class="order-content__head">
								<div class="content-title">${item.product_brand }</div>
								<div>
									<span class="content-title grey">배송비 </span>
									<span class="price">${item.product_shipping_fee }</span>
						
								</div>
							</div>
							<div class="order-content__main">
								<div class="product-img" style="background-image: url(${root}image/products/${item.product_image });"></div>
								<div class="product-info">
									<h2 class="product-name">${item.product_name }</h2>
									<p class="product-option">${item.option_name }</p>
									<p class="product-price-qty">
										<span class="content-title">${item.each_price }</span>
										<span class="qty">${item.order_qty }</span>
									</p>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
				</section>
				<!--쿠폰-->
				<section class="order-info__container coupon">
					<div class="order-info">
						<div class="order-info__head">
							<div class="title-wrap">
								<h1 class="title">쿠폰</h1>
								<div class="not-available">사용 가능한 쿠폰이 없습니다</div>
							</div>
						</div>
						<div class="coupon-use">
							<div class="coupon-use__head">
								쿠폰코드가 있으신가요?
								<svg class="arrow" fill="none" viewBox="0 0 16 10" preserveAspectRatio="xMidYMid meet">
                           <path d="M1.75.833L8 6.873l6.25-6.04L15.5 1.98 8 9.167.5 1.98 1.75.833z"></path>
                        </svg>
							</div>
							<div class="input-box coupon-use__check show">
								<form action="" method="post">
									<input type="text" />
									<button class="button--color-skyblue">확인</button>
								</form>
							</div>
						</div>
					</div>
				</section>
				<!--포인트-->
				<section class="order-info__container point">
					<div class="order-info">
						<div class="order-info__head">
							<div class="title-wrap">
								<h1 class="title">포인트</h1>
								<div class="not-available"">사용 가능한 포인트가 없습니다</div>
							</div>
						</div>
						<div class="input-box point">
							<input type="number" placeholder="0" class="not available">
							<button class="button--color-skyblue-inverted--not-available">전액사용</button>
						</div>
						<div class="available-point">
							사용 가능 포인트
							<span class="point">0 </span>
						</div>
					</div>
				</section>
				<!--결제금액(992px 이하)-->
				<section class="order-info__container pay">
					<div class="order-info">
						<div class="order-info__head">
							<div class="title-wrap">
								<h1 class="title">결제금액</h1>
							</div>
						</div>
						<div class="payment-content">
							<div class="content-wrap">
								<div class="line">
									<span>총 상품 금액</span>
									<span class="payment">${orderBeanList.getOrderBeanList()[0].total_price}</span>
								</div>
								<div class="line">
									<span>배송비</span>
									<span class="payment delivery">${orderBeanList.getOrderBeanList()[0].product_shipping_fee}</span>
								</div>
								<div class="line">
									<span>쿠폰 사용</span>
									<span class="payment">0</span>
								</div>
								<div class="line">
									<span>포인트 사용</span>
									<span class="payment">00000</span>
								</div>
							</div>
							<div class="order-info__footer">
								<strong class="title">최종 결제 금액</strong>
								<div class="total-price">
									<strong class="payment skyblue">0000</strong>
									<span class="save-up-point">00</span>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!--결제수단-->
				<section class="order-info__container payment-method">
					<div class="order-info">
						<div class="order-info__head payment-method">
							<div class="title-wrap">
								<h1 class="title">결제 수단</h1>
							</div>
						</div>
						<div class="payment-method-wrap">
							<button type="button" class="payment-method selected">
								<img src="${root }image/icons/order/img_card.png" alt="">
								<div>카드</div>
							</button>
							<button type="button" class="payment-method">
								<img src="${root }image/icons/order/img_vbank.png" alt="">
								<div>무통장입금</div>
							</button>
							<button type="button" class="payment-method">
								<img class="payment-method__img" src="${root }image/icons/order/img_kakaopay.png" alt="">
								<div>카카오페이</div>
							</button>
							<button type="button" class="payment-method">
								<img src="${root }image/icons/order/img_chai.png" alt="">
								<div>차이</div>
							</button>
							<button type="button" class="payment-method">
								<img src="${root }image/icons/order/img_payco.png" alt="">
								<div>페이코</div>
							</button>
							<button type="button" class="payment-method">
								<img src="${root }image/icons/order/img_naver.png" alt="">
								<div>네이버페이</div>
							</button>
							<button type="button" class="payment-method">
								<img src="${root }image/icons/order/img_toss.png" alt="">
								<div>토스</div>
							</button>
							<button type="button" class="payment-method">
								<img src="${root }image/icons/order/img_phone.png" alt="">
								<div>핸드폰</div>
							</button>
						</div>
					</div>
				</section>
				<!--결제 이용 약관(992px 이하)-->
				<section class="order-info__container payment-terms">
					<div class="order-info">
						<div class="order-info__head">
							<div class="title-wrap">
								<input type="checkbox">
								<label>아래 내용에 모두 동의합니다. (필수)</label>
							</div>
						</div>
					</div>
					<div class="terms">
						<div class="terms__head">
							개인정보 제 3자 제공 및 결제대행 서비스 표준 이용약관
							<svg class="arrow" fill="none" viewBox="0 0 16 10" preserveAspectRatio="xMidYMid meet">
                        <path d="M1.75.833L8 6.873l6.25-6.04L15.5 1.98 8 9.167.5 1.98 1.75.833z"></path>
                     </svg>
						</div>
						<div class="terms__main">
							<ul>
								<li>
									<span>개인정보 제3자 제공</span>
									<button>
										약관보기
										<svg class="arrow-right" fill="none" viewBox="0 0 16 10" preserveAspectRatio="xMidYMid meet">
                                 <path d="M1.75.833L8 6.873l6.25-6.04L15.5 1.98 8 9.167.5 1.98 1.75.833z"></path>
                              </svg>
									</button>
								</li>
								<li>
									<span>개인정보 수집 및 이용</span>
									<button>
										약관보기
										<svg class="arrow-right" fill="none" viewBox="0 0 16 10" preserveAspectRatio="xMidYMid meet">
                                 <path d="M1.75.833L8 6.873l6.25-6.04L15.5 1.98 8 9.167.5 1.98 1.75.833z"></path>
                              </svg>
									</button>
								</li>
							</ul>
							<p>본인은 만 14세 이상이고, 위 내용을 확인하였습니다.</p>
						</div>
					</div>
				</section>
				<!--최종 결제 버튼(992px 이하)-->
				<section class="pay-btn">
					<button class="button--color-skyblue submit-btn">0000</button>
				</section>
			</section>


			<!--결제금액, 약관, 버튼(992px 이상)-->
			<section class="main-container__right">
				<div class="right__wrap">
					<!--결제금액-->
					<section class="order-info__container pay aside">
						<div class="order-info">
							<div class="order-info__head">
								<div class="title-wrap">
									<h1 class="title">결제금액</h1>
								</div>
							</div>
							<div class="payment-content">
								<div class="content-wrap">
									<div class="line">
										<span>총 상품 금액</span>
										<span class="payment">${orderBeanList.getOrderBeanList()[0].total_price}</span>
									</div>
									<div class="line">
										<span>배송비</span>
										<span class="payment delivery">${orderBeanList.getOrderBeanList()[0].product_shipping_fee}</span>
									</div>
									<div class="line">
										<span>쿠폰 사용</span>
										<span class="payment">0</span>
									</div>
									<div class="line">
										<span>포인트 사용</span>
										<span class="payment">00000</span>
									</div>
								</div>
								<div class="order-info__footer">
									<strong class="title">최종 결제 금액</strong>
									<div class="total-price">
										<strong class="payment skyblue">0000</strong>
										<span class="save-up-point">00</span>
									</div>
								</div>
							</div>
						</div>
					</section>
					<!--결제 이용 약관-->
					<section class="order-info__container payment-terms aside">
						<div class="order-info">
							<div class="order-info__head">
								<div class="title-wrap">
									<input type="checkbox">
									<label>아래 내용에 모두 동의합니다. (필수)</label>
								</div>
							</div>
						</div>
						<div class="terms">
							<div class="terms__head">
								개인정보 제 3자 제공 및 결제대행 서비스 표준 이용약관
								<svg class="arrow" fill="none" viewBox="0 0 16 10" preserveAspectRatio="xMidYMid meet">
                           <path d="M1.75.833L8 6.873l6.25-6.04L15.5 1.98 8 9.167.5 1.98 1.75.833z"></path>
                        </svg>
							</div>
							<div class="terms__main">
								<ul>
									<li>
										<span>개인정보 제3자 제공</span>
										<button>
											약관보기
											<svg class="arrow-right" fill="none" viewBox="0 0 16 10" preserveAspectRatio="xMidYMid meet">
                                    <path d="M1.75.833L8 6.873l6.25-6.04L15.5 1.98 8 9.167.5 1.98 1.75.833z"></path>
                                 </svg>
										</button>
									</li>
									<li>
										<span>개인정보 수집 및 이용</span>
										<button>
											약관보기
											<svg class="arrow-right" fill="none" viewBox="0 0 16 10" preserveAspectRatio="xMidYMid meet">
                                    <path d="M1.75.833L8 6.873l6.25-6.04L15.5 1.98 8 9.167.5 1.98 1.75.833z"></path>
                                 </svg>
										</button>
									</li>
								</ul>
								<p>본인은 만 14세 이상이고, 위 내용을 확인하였습니다.</p>
							</div>
						</div>
					</section>
					<!--최종 결제 버튼-->
					<section class="pay-btn aside">
						<button class="button--color-skyblue submit-btn">0000</button>
					</section>
				</div>
			</section>
		</section>
	</main>

	<!--footer-->
	<c:import url="/WEB-INF/views/include/footer.jsp" />

	<script>
   const email2_option = document.querySelector('.email2');
   
   const email2 = "${orderBean.orderer_email2}";
   console.log(email2_option.options[email2_option.selectedIndex].innerText);
   console.log(email2);
  
	for(let i = 0; i < email2_option.options.length-1; i++) {
		   console.log(email2_option.options[i].innerText);
		if(email2_option.options[i].innerText === email2) {
			   email2_option.options.selectedIndex = i; 
		}
	}
   
   </script>
</body>
</html>