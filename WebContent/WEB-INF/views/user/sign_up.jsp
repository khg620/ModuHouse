<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="description" content="인테리어 플랫폼" />
<meta name="keywords" content="인테리어, 집꾸미기" />
<meta name="author" content="Hyun gyung" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${root }css/user/sign_up.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link rel="icon" href="${root }image/icons/favicon.ico">
<link rel="apple-touch-icon" href="${root }image/icons/favicon.ico">
<link rel="short icon" type="image/x-icon" href="${root }image/icons/favicon.ico">
<title>누구나 멋진 인테리어, 모두의 집</title>
<script src="https://kit.fontawesome.com/7218b951ec.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
</head>

<body>
	<section class="container sign-up">
		<div class="main-link">
			<h2>
				<a href="${root }" class="main-icon"> <img
					src="${root }image/icons/main_home_icon.png" class="main-img"
					alt="go main page"> 모두의 집
				</a>
			</h2>
		</div>
		<div class="sign-up-form-wrap">
			<div class="sign-up-form__sns">
				<h1>회원가입</h1>
				<div class="sign-up-form__button">
					<p>SNS계정으로 간편하게 회원가입</p>
					<ul class="sign-up-form__button-list">
						<li>
							<a href="#"> 
								<img src="${root }image/icons/facebook.png" alt="login with facebook" class="sns-sign"/>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="${root }image/icons/naver.png" alt="login with naver" class="sns-sign"/>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="${root }image/icons/kakao.png"
								alt="login with kakaotalk" class="sns-sign"/>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- sign-up form -->
			<form:form action="${root }user/sign_up" method="POST"
				modelAttribute="signUpUserBean" class="sign-up-form__form">
				<div class="sign-up-form__form-group">
					<form:label path="user_email1">이메일</form:label>
					<form:input path="user_email1" placeholder="이메일" required="required" onkeypress="resetMessage()" />
					<span class="email-input-separator">@</span>
					<form:select path="user_email2" required="required" onclick="checkUserEmailExist()">
						<form:option value="" selected="selected" disabled="disabled" label="선택해주세요" />
						<form:option value="naver.com" label="naver.com" />
						<form:option value="hanmail.com" label="hanmail.com" />
						<form:option value="daum.net" label="daum.net" />
						<form:option value="gmail.com" label="gmail.com" />
						<form:option value="nate.com" label="nate.com" />
						<form:option value="hotmail.com" label="hotmail.com" />
						<form:option value="outlook.com" label="outlook.com" />
						<form:option value="icloud.com" label="icloud.com" />
					</form:select>
					<form:errors path="user_email1" style="color:#ff7777; display:block; margin-top: 7px; font-size: 13px" />
				</div>
				<div class="sign-up-form__form-group">
					<form:label path="user_pw1">비밀번호</form:label>
					<span class="description">영문, 숫자, 특수문자(-, _, !) 포함 8 ~ 15자로 입력해주세요.</span>
					<form:password path="user_pw1" minlength="8" maxlength="15" placeholder="비밀번호" required="required" />
					<form:errors path="user_pw1" style="color:#ff7777; display:block; margin-top: 7px; font-size: 13px" />
				</div>
				<div class="sign-up-form__form-group">
					<form:label path="user_pw2">비밀번호 확인</form:label>
					<form:password path="user_pw2" minlength="8" maxlength="15"	placeholder="비밀번호 확인" required="required" />
					<form:errors path="user_pw2" style="color:#ff7777; display:block; margin-top: 7px; font-size: 13px" />
				</div>
				<div class="sign-up-form__form-group">
					<form:label path="user_nickname">별명</form:label>
					<span class="description">다른 유저와 겹치지 않는 별명을 입력해주세요.</span>
					<form:input path="user_nickname" minlength="2" maxlength="14" placeholder="별명(2~15자)" required="required"/>
					<form:errors path="user_nickname" style="color:#ff7777; display:block; margin-top: 7px; font-size: 13px" />
				</div>
				<div class="sign-up-form__form-group">
					<form:label path="user_terms_agree">약관 동의</form:label>
					<div class="sign-up-form__policy">
						<div class="checkbox">
							<form:label path="user_terms_agree" class="terms_accept_all">전체동의</form:label>
							<form:checkbox path="user_terms_agree" value="1" class="terms_check_all"/>
						</div>
						<div class="checkbox">
							<form:label path="user_terms_agree">만 14세 이상입니다.
								<span class="agree-required">(필수)</span>
							</form:label>
							<form:checkbox path="user_terms_agree" value="1" required="required" class="terms_list"/>
						</div>
						<div class="checkbox">
							<form:label path="user_terms_agree">
								<a href="#">이용약관</a>
								<span class="agree-required">(필수)</span>
							</form:label>
							<form:checkbox path="user_terms_agree" value="1" required="required" class="terms_list"/>
						</div>
						<div class="checkbox">
							<form:label path="user_terms_agree">
								<a href="#">개인정보수집 및 이용동의</a>
								<span class="agree-required">(필수)</span>
							</form:label>
							<form:checkbox path="user_terms_agree" value="1" required="required" class="terms_list"/>
						</div>
						<div class="checkbox">
							<form:label path="user_promotion_yn">
								이벤트, 프로모션 알림 메일 및 SMS 수신
								<span class="agree-choose">(선택)</span>
							</form:label>
							<form:checkbox path="user_promotion_yn" value="1" class="terms_list" />
						</div>
					</div>
				</div>
				<form:button>회원가입 완료</form:button>
			</form:form>
			<p class="sign-in">
				이미 아이디가 있으신가요?<a href="${root }user/sign_in">로그인</a>
			</p>
		</div>
	</section>

	<script>
		//전체 선택
    	const user_terms_agree1 = document.querySelector('.terms_accept_all')
    	const user_terms_agree2 = document.querySelector('.terms_check_all');
		const terms_list = document.querySelectorAll('.terms_list');
    	let checkCount1 = 0; 

    	const checkAllList = (e) => {
		   	if(checkCount1 === 0) {
          	// for(let i = 0; i < terms_list.length; i++){
          	//    terms_list[i].checked = true;
          	// }
          	user_terms_agree2.checked = true;
          	terms_list.forEach(v => v.checked = true);
          	checkCount1++;
          	} else {
          	user_terms_agree2.checked = false;
          	terms_list.forEach(v => v.checked = false);
          	checkCount1 = 0;
          	console.log(checkCount1)
       	}
    	}
   
    	user_terms_agree1.addEventListener('click',checkAllList);
    	user_terms_agree2.addEventListener('click',checkAllList);
    
    	//개별체크 -> 전체체크 버튼 활성/비활성
    	const checkAllbtn = (e) => {
         let checkCount2 = 0;
       
       	terms_list.forEach(v => {
          		if(v.checked === false){
             		checkCount2 = 1;
          		}
       	});
         if(checkCount2 > 0) {
            user_terms_agree2.checked = false;
         } else if(checkCount2 === 0) {
            user_terms_agree2.checked = true;
         }
    	}
    	terms_list.forEach(v => v.addEventListener('click',checkAllbtn));
	
		//email
		//중복검사
		function checkUserEmailExist() {
			const user_email1 = $("#user_email1").val().trim();
			const user_email2 = $("#user_email2").val();
			
			$.ajax({
				url:"${root}user/checkUserEmailExist/"+user_email1+"/"+user_email2,
				type:"get",
				dataType:"text",
				success:function(result){
					if(result.trim()==="true"){
						$("#user_email2").parent().children('p').remove();
						$("#user_email2").parent().append('<p style="color:#ff7777; font-size: 13px; margin-top: 7px">이미 사용 중인 이메일입니다.</p>');	
						$("#user_email2").select();
					} else {
						$("#user_email2").parent().children('p').remove();
						//$("#user_email2").parent().append('<p style="color:#23b3df; font-size: 13px; margin-top: 7px">사용 가능한 이메일입니다.</p>');
					}
				}
			})
		}
		window.addEventListener('click',checkUserEmailExist);
		window.addEventListener('keyup',checkUserEmailExist);
		
		function resetMessage() {
			$("#user_email2").parent().children('p').remove();
		}
		//유효성 검사 실패 후 다시 되돌와왔을 때 에러메세지 삭제
		const email_regexp = /^[a-z0-9][a-z0-9-_]{4,64}$/;
		const email_input = document.querySelector('#user_email1');
		const email_input2 = document.querySelector('#user_email2');
		
		email_input.addEventListener('input',() => {
			
			if(email_regexp.test(email_input.value)) {
				if(document.querySelector('#user_email2+span') !== null) {
					document.querySelector('#user_email2+span').remove();
				}
			}
		});
		
		
		//password
	   const password1 = document.getElementById('user_pw1');
	   const password2 = document.getElementById('user_pw2');
	   const pwd_regexp = /(?=.*[a-z])(?=.*[0-9])(?=.*[-_!]).{8,15}/;

	   const box1 = document.createElement('p');
	   const box2 = document.createElement('p');
	   box1.classList.add('check_message');
	   box2.classList.add('check_message');
	      
	   const checkPassword1 = (event) => {
	      password1.parentElement.appendChild(box1);

	      if(pwd_regexp.test(event.target.value)) {
	         password1.classList.remove('input_error');
	         box1.classList.remove('error');
	         box1.classList.add('ok');
	         box1.innerText = "사용 가능한 패스워드입니다."
	      } else {
	         password1.classList.add('input_error');
	         box1.classList.remove('ok');
	         box1.classList.add('error');
	         box1.innerText = "비밀번호는 8 ~ 15자로 영문, 숫자, 특수문자(-, _, !)를 포함하여야 합니다.";
	      }
	   }

	   const checkPassword2 = (event) => {
	      password2.parentElement.appendChild(box2);

	      if(password1.value === password2.value) {
	        password2.classList.remove('input_error');
	        box2.classList.remove('error');
	        box2.classList.add('ok');
	        box2.innerText = "비밀번호가 일치합니다."
	      } else {
	         password2.classList.add('input_error');
	         box2.classList.remove('ok');
	         box2.classList.add('error');
	         box2.innerText = "비밀번호가 일치하지 않습니다."
	      }
	   }

	   password1.addEventListener('input', checkPassword1);
	   password2.addEventListener('input', checkPassword2);
		
	   //nickname
	   const user_nickname = document.getElementById('user_nickname');
	   
		const checkNickname = (event) => {
			const user_nickname = event.target.value;
			const regexp = /^[a-zA-Z가-힣0-9]{2,}$/;
			
			$.ajax({
				url:"${root}user/checkNicknameExist/"+user_nickname,
				type:"get",
				dataType:"text",
				success:function(result) {
					if(result.trim() === "0" && regexp.test(user_nickname)) {
						$("#user_nickname").parent().children('p').remove();
					   $("#user_nickname").removeClass("input_error");
					   //console.log(regexp.test(user_nickname));
						$("#user_nickname").parent().append('<p style="color:#23b3df; font-size: 13px; margin-top: 7px">사용 가능한 별명입니다.</p>');
					} else if(result.trim() === "1") {
						$("#user_nickname").parent().children('p').remove();
						$("#user_nickname").addClass("input_error");
						$("#user_nickname").parent().append('<p style="color:#ff7777; font-size: 13px; margin-top: 7px">이미 사용 중인 별명입니다.</p>');
						$("#user_nickname").select();						
					} else {
						$("#user_nickname").parent().children('p').remove();
						$("#user_nickname").addClass("input_error");
						$("#user_nickname").parent().append('<p style="color:#ff7777; font-size: 13px; margin-top: 7px">별명은 2 ~ 5자로 영문, 한글, 숫자만 사용할 수 있습니다.</p>');
					}
				}
			})
		} 
		
		user_nickname.addEventListener('input', checkNickname);		
	</script>
</body>

</html>