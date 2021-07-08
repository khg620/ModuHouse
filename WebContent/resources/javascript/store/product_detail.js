//닫기버튼
function deleteOption(event) {
	const nav_option = document.querySelector('.selected-option-box--nav');
	const top_option = document.querySelector('.selected-option-box');
	const top_option_box = Array.from(top_option.querySelectorAll('.selected-option-box > div'));
	const nav_option_box = Array.from(nav_option.querySelectorAll('.selected-option-box--nav > div'));
	const close_btn = Array.from(document.querySelectorAll('.close-btn'));

	let idx = close_btn.indexOf(event.target);

	if (top_option.contains(event.target)) { //클릭한 닫기버튼이 상단 옵션 소속이면
		let option_price = event.target.parentElement.parentElement.parentElement.querySelector('.price-detail').innerText;

		nav_option_box[idx].remove();
		event.target.parentElement.parentElement.parentElement.remove();
		subtractPrice(option_price);

	} else if (nav_option.contains(event.target)) {//클릭한 닫기버튼이 사이드에 있는 옵션 소속이면
		let option_price = event.target.parentElement.parentElement.parentElement.querySelector('.price-detail').innerText;

		top_option_box[idx - close_btn.length / 2].remove();
		event.target.parentElement.parentElement.parentElement.remove();
		subtractPrice(option_price);
	}
}

function subtractPrice(option_price) {
	let total_price = document.querySelectorAll('.total-price');
	total_price.forEach(x => x.innerText = Number(x.innerText) - Number(option_price));
}

//장바구니 버튼
function addCart() {
	if (document.querySelector('.option1') != null && document.querySelector('.selected-option-box > div') == null
		|| document.querySelector('.option2') != null && document.querySelector('.selected-option-box > div') == null
	) {
		alert('옵션을 선택해주세요');
		return;
	}

	const cart_form = document.querySelector('#cartBean');
	const total_price = document.querySelector('.total-price').innerText; 
	const top_option = document.querySelector('.selected-option-box');
	const option_name = Array.from(top_option.querySelectorAll('.selected-option-box .selected-option')); //선택한 상품명(옵션명 포함)
	const each_price = Array.from(top_option.querySelectorAll('.selected-option-box .price-detail')); //선택한 상품에 해당하는 가격
	
	for(let i = 0; i < option_name.length; i++) {
		let input_option_name = document.createElement('input');
		let input_each_price = document.createElement('input');	
		input_option_name.setAttribute("name","option_name");
		input_option_name.setAttribute("value",option_name[i].innerText);
		input_each_price.setAttribute("name", "each_price");
		input_each_price.setAttribute("value",each_price[i].innerText);
		cart_form.append(input_option_name);
		cart_form.append(input_each_price);
	}
	
	let input_total_price = document.createElement('input');
	input_total_price.setAttribute("name", 'total_price');
	input_total_price.setAttribute("value", total_price);
	cart_form.append(input_total_price); 

	const option1_idx = document.querySelectorAll('.product-selling-overview .option1_idx'); //사용자 선택값

	for (let i = 0; i < option1_idx.length; i++) {
		let input_option1 = document.createElement('input'); //폼에 option1값을 갖는 인풋요소 생성
		input_option1.setAttribute('name', 'option1_idx');
		input_option1.setAttribute('value', option1_idx[i].innerText);
		cart_form.append(input_option1);
	}

	const option2_idx = document.querySelectorAll('.product-selling-overview .option2_idx'); //사용자 선택값
	if (document.querySelector('.option2') != null) {
		for (let i = 0; i < option2_idx.length; i++) {
			let input_option2 = document.createElement('input'); //폼에 option2값을 갖는 인풋요소 생성
			input_option2.setAttribute('name', 'option2_idx');
			input_option2.setAttribute('value', option2_idx[i].innerText);
			cart_form.append(input_option2);
		}
	}
	const order_qty = document.querySelectorAll('.product-selling-overview .qty-option'); //구매 수량

	for (let i = 0; i < order_qty.length; i++) {
		let input_qty = document.createElement('input'); //폼에 order_qty 추가
		input_qty.setAttribute('name','order_qty');
		input_qty.setAttribute('value',order_qty[i].options[order_qty[i].selectedIndex].value);
		cart_form.append(input_qty);
	}
	
	let send_form = $("#cartBean").serialize();

	$.ajax({
		url: "/ModuHouse/order/cart",
		type: "post",
		data: send_form,
		success: function(data) {
			if(data === "ok") {
				alert("상품이 장바구니에 담겼습니다.");
				//헤더 카트 아이콘에 개수 표시
			} else {
				alert("장바구니에 동일한 상품이 존재합니다.");
			}
		}
	})


}


//바로구매 버튼
const buy_btn = document.querySelectorAll('.buy-btn');
buy_btn.forEach(x => x.addEventListener('click', proceedOrder));

function proceedOrder() {
	const form = document.querySelector('#order');
	const product_idx = document.querySelector('.overview__content .product-idx').innerText;
	const top_option = document.querySelector('.selected-option-box');
	const selected_option = Array.from(top_option.querySelectorAll('.selected-option-box .selected-option'));
	const option1_idx = Array.from(top_option.querySelectorAll('.option1_idx'));
	const option2_idx = Array.from(top_option.querySelectorAll('.option2_idx'));
	const selected_qty = Array.from(top_option.querySelectorAll('.selected-option-box .qty-option'));
	const selected_price = Array.from(top_option.querySelectorAll('.selected-option-box .price-detail'));
	const total_price = document.querySelector('.total-price').innerText;

	if (selected_option.length === 0) {
		alert('옵션을 선택해주세요');
		return;
	}

	let input1 = document.createElement('input');
	let input4 = document.createElement('input');


	input1.setAttribute('name', 'idx');
	input1.setAttribute('value', product_idx);

	input4.setAttribute('name', 'price');
	input4.setAttribute('value', total_price);


	form.append(input1);

	form.append(input4);

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

		form.submit();

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
		form.submit();
	}


}

