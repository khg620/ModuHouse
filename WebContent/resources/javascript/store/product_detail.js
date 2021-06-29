//닫기버튼
/*
const close_btn = document.querySelectorAll('.close-btn');
close_btn.forEach(x => x.addEventListener('click', (e) => {
   e.target.parentElement.parentElement.parentElement.parentElement.remove();
}));*/

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





	/*
	let optionList = [];
	let optionInfo = '';
	for(let i = 0; i < selected_option.length;i++) {
		optionInfo = new OptionInfo({selected_option: selected_option[i].innerText,selected_qty: selected_qty[i].value, selected_price: selected_price[i].innerText});
		optionList.push(optionInfo);
	}
	
	let productInfo = new ProductInfo({product_idx: product_idx, product_name: product_name, total_price: total_price});
	
	optionList.push(productInfo);
	
	
	$.ajax({
		url: "/ModuHouse/order",
		type:"POST",
		data: JSON.stringify(optionList), 
		contentType:"application/json; charset=UTF-8",
		dataType:"html",
		success: function(){console.log('success')},
		error: function(){console.log('error')}
	})
	*/

}

