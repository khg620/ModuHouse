//배송 주소 api
const find_address_btn = document.querySelector('.postcode');
var element_wrap = document.getElementById('wrap');
find_address_btn.addEventListener('click', execDaumPostcode);

function foldDaumPostcode() {
	// iframe을 넣은 element를 안보이게 한다.
	element_wrap.style.display = 'none';
}

function execDaumPostcode() {
	var currentScroll = document.querySelector('.zipcode').getBoundingClientRect().top;
	new daum.Postcode({
		oncomplete: function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var roadAddr = data.roadAddress; // 도로명 주소 변수
			var extraRoadAddr = ''; // 참고 항목 변수

			// 법정동명이 있을 경우 추가한다. (법정리는 제외)
			// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
				extraRoadAddr += data.bname;
			}
			// 건물명이 있고, 공동주택일 경우 추가한다.
			if (data.buildingName !== '' && data.apartment === 'Y') {
				extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			}
			// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			if (extraRoadAddr !== '') {
				extraRoadAddr = ' (' + extraRoadAddr + ')';
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.querySelector('.zipcode').value = data.zonecode;
			document.querySelector(".address").value = roadAddr;
			document.querySelector(".address").value = data.jibunAddress;

			// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
			if (roadAddr !== '') {
				document.querySelector(".address").value += extraRoadAddr;
			} else {
				document.querySelector(".address").value += '';
			}

			
			document.querySelector('.address-detail').focus();
			// iframe을 넣은 element를 안보이게 한다.
			// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
			element_wrap.style.display = 'none';

			// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
			document.body.scrollTop = currentScroll;
		},
		onresize: function(size) {
			element_wrap.style.height = size.height + 'px';
		},
		width: '100%',
		height: '100%'
	}).embed(element_wrap);

	// iframe을 넣은 element를 보이게 한다.
	element_wrap.style.display = 'block';
}

//'위와 동일하게 채우기' 버튼
const same_info = document.querySelector('.same-info');
same_info.addEventListener('click', () => {
	const orderer_name = document.querySelector('#orderer_name').value;
	const orderer_hp1 = document.querySelector('#orderer_hp1').options[document.querySelector('#orderer_hp1').selectedIndex].value;
	const orderer_hp2 = document.querySelector('#orderer_hp2').value;

	const receiver_name = document.querySelector('#receiver_name');
	const receiver_hp1 = document.querySelector('#receiver_hp1').options[document.querySelector('#receiver_hp1').selectedIndex];
	const receiver_hp2 = document.querySelector('#receiver_hp2');

	receiver_name.value = orderer_name;
	receiver_hp1.value = orderer_hp1;
	receiver_hp2.value = orderer_hp2;

})

//배송 메세지 직접 입력 선택 시 textarea 노출
const delivery_msg_option = document.querySelector('.select-message');

delivery_msg_option.addEventListener('change', (e) => {
	const input_msg = document.querySelector('.message-wrap');
	if (e.target.options[e.target.selectedIndex].innerText === '직접입력') {
		input_msg.classList.add('show');
	} else {
		input_msg.classList.remove('show');
	}
})

//포인트가 1000 미만일 시 입력 금지, 버튼 비활성화
const point = document.querySelector('.available-point .point');
const initial_point = Number(point.innerText);
const use_point = document.querySelector('.input-box.point input');
const point_use_btn = document.querySelector('.input-box.point .button--color-skyblue-inverted');
const initial_total_price = Number(document.querySelector('.payment.total').innerText);
const shipping_fee = Number(document.querySelector('.payment.delivery').innerText);

const payment_point = document.querySelectorAll('.payment.point'); //우측 최종 결제금액 부분
const total_payment = document.querySelectorAll('.total-price .payment.skyblue'); //우측 최종 결제금액 부분
const save_point = document.querySelectorAll('.total-price .save-up-point'); //우측 최종 결제금액 부분
const submit_btn = document.querySelectorAll('.submit-btn'); //결제하기 버튼

if (point.innerText < 1000) {
	point.classList.add('not-available');
	point.readOnly = true;
	point_use_btn.classList.add('point-not-available');
} else {
	point_use_btn.addEventListener('click', () => {
		use_point.value = initial_point;
		payment_point.forEach(x => x.innerText = initial_point);
		point.innerText = 0;
		total_payment.forEach(x => x.innerText = initial_total_price - initial_point + shipping_fee);//최종결제금액
		save_point.forEach(x => x.innerText = Math.floor((Number(total_payment[0].innerText) - shipping_fee) * Number(membershipPoint()) / 100))//적립 포인트
	})
}

//포인트 사용 입력 시 사용가능 포인트 변경
use_point.addEventListener('keyup', (e) => {

	point.innerText = initial_point - e.target.value;
	if (Number(e.target.value) > initial_point) {
		alert(initial_point + '까지만 사용 가능합니다.');
		e.target.value = initial_point;
		point.innerText = initial_point - e.target.value;
	}

	//우측 최종 결제금액부분 - 금액, 사용/적립 포인트 변경
	payment_point.forEach(x => x.innerText = e.target.value); //사용 포인트
	total_payment.forEach(x => x.innerText = initial_total_price - Number(e.target.value) + shipping_fee); //최종 금액
	submit_btn.forEach(x => x.innerText = initial_total_price - Number(e.target.value) + shipping_fee)//최종 금액
	save_point.forEach(x => x.innerText = Math.floor((Number(total_payment[0].innerText) - shipping_fee) * Number(membershipPoint()) / 100))//적립 포인트
});

function membershipPoint() {
	let membership;
	$.ajax({
		url: "/ModuHouse/user/userMembership",
		type: "get",
		async: false,
		success: function(result) {
			membership = result;
		}
	})
	return membership;
}

//결제 수단 css
const payment_method = document.querySelectorAll('.payment-method-wrap .payment-method');
window.onload = function() { payment_method[0].classList.add('selected') };

payment_method.forEach(x => x.addEventListener('click', (e) => {
	selectPayment(e);
}, true)
);

function selectPayment(e) {
	payment_method.forEach(x => x.classList.remove('selected'));
	e.target.parentElement.classList.add('selected');
}

//결제 버튼 클릭 시
submit_btn.forEach(x => x.addEventListener('click', orderProc));

function orderProc() {
	const terms_agree = Array.from(document.querySelectorAll('.terms-agree'));

	if (terms_agree[0].checked === true || terms_agree[1].checked === true) {
	} else {
		alert('결제 진행 필수사항을 동의해주세요');
		return;
	}

	let used_point = document.querySelector('#used_point');
	used_point.value = payment_point[0].innerText;

	let payment_method = document.querySelector('#payment_method');
	let selected_payment_method = document.querySelector('.payment-method.selected div').innerText;
	payment_method.value = selected_payment_method;

	let order_data = $("#orderBean,#deliveryBean").serialize();
	//let delivery_data = $("#deliveryBean").serialize();

	sendOrderInfo(order_data);
	//sendDeliveryInfo(delivery_data);

}
/*
function addProductInfo() {
	const form = document.querySelector('#order');
	
	const product_brand = document.querySelector('.order-content__head .content-title').innerText;
	const product_name = document.querySelector('.order-content__main .product-name').innerText;
	const product_shipping_fee = document.querySelector('.order-content__head .price').innerText;
	const selected_option = Array.from(document.querySelectorAll('.selected-option-box .selected-option'));
	const option1_idx = Array.from(document.querySelectorAll('.option1_idx'));
	const option2_idx = Array.from(document.querySelectorAll('.option2_idx'));
	const selected_qty = Array.from(document.querySelectorAll('.selected-option-box .qty-option'));
	const selected_price = Array.from(document.querySelectorAll('.selected-option-box .price-detail'));
	const total_price = document.querySelector('.total-price').innerText;
	
	
	let input2 = document.createElement('input');
	let input3 = document.createElement('input');
	let input4 = document.createElement('input');
	let input5 = document.createElement('input');

	input2.setAttribute('name', 'brand');
	input2.setAttribute('value', product_brand);
	input3.setAttribute('name', 'name');
	input3.setAttribute('value', product_name);
	input4.setAttribute('name', 'price');
	input4.setAttribute('value', total_price);
	input5.setAttribute('name', 'shipping_fee');
	input5.setAttribute('value', product_shipping_fee);
	
	form.append(input1);
	form.append(input2);
	form.append(input3);
	form.append(input4);
	form.append(input5);
	
	if (option1_idx.length === 0) {
		let input6 = document.createElement('input');
		let input7 = document.createElement('input');
		let input8 = document.createElement('input');

		input6.setAttribute('name', 'opt_name');
		input6.setAttribute('value', selected_option[0].innerText);
		input7.setAttribute('name', 'qty');
		input7.setAttribute('value', selected_qty[0].value);
		input8.setAttribute('name', 'option_price');
		input8.setAttribute('value', selected_price[0].innerText);
		
		form.append(input6);
		form.append(input7);
		form.append(input8);
		
	} else if (option1_idx.length > 0) {
		for (let i = 0; i < selected_option.length; i++) {

			let input6 = document.createElement('input');
			let input7 = document.createElement('input');
			let input8 = document.createElement('input');
			let input9 = document.createElement('input');
			let input10 = document.createElement('input');

			input6.setAttribute('name', 'opt1_idx');
			input6.setAttribute('value', option1_idx[i].innerText);
			if (option2_idx.length > 0) {
				input7.setAttribute('name', 'opt2_idx');
				input7.setAttribute('value', option2_idx[i].innerText);
				form.append(input7);
			}
			input8.setAttribute('name', 'opt_name');
			input8.setAttribute('value', selected_option[i].innerText);
			input9.setAttribute('name', 'qty');
			input9.setAttribute('value', selected_qty[i].value);
			input10.setAttribute('name', 'option_price');
			input10.setAttribute('value', selected_price[i].innerText);
			input10.style.display = 'none';

			form.append(input6);

			form.append(input8);
			form.append(input9);
			form.append(input10);

		}
	}
}*/

function sendOrderInfo(order_data) {
	$.ajax({
		url: "/ModuHouse/order_proc/order",
		type: "POST",
		data: order_data,
		success: function(result) {

		}
	});
}
/*
function sendDeliveryInfo(delivery_data) {
	$.ajax({
		url: "/ModuHouse/order_proc/delivery",
		type: "POST",
		data: delivery_data,
		success: function(result) {

		}
	});
}*/