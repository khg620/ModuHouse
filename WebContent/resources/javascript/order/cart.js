const checkall = document.querySelector('.cart__header-left .checkall');
const checkboxes = document.querySelectorAll('.checkbox');

//초기 기본 전체선택
window.onload = function() {
	checkall.checked = true;
	checkboxes.forEach(x => { x.checked = true });
}

//장바구니 상품 목록 전체선택/해제
checkall.addEventListener('click', (e) => {
	if (e.target.checked === true) {
		checkboxes.forEach(x => { x.checked = true })
	} else {
		checkboxes.forEach(x => { x.checked = false })
	}
})

//개별 체크 -> 전체선택/해제
function checkAll() {
	let cnt = 0;

	for (let i = 0; i < checkboxes.length; i++) {
		if (checkboxes[i].checked === false) {
			cnt = 1;
		}
	}

	if (cnt > 0) {
		checkall.checked = false;
	} else {
		checkall.checked = true;
	}

}

checkall.addEventListener('click', checkAll);
checkboxes.forEach(x => x.addEventListener('click', checkAll));

//바로구매 버튼
function proceedOrder() {
	//전체 체크 시 : user_idx 이용할 것
	//일부 체크 시 : 체크된 상품의 인덱스 전송
	let cnt = 0;
	let idxArr = [];
	const form = document.querySelector('.total-price-group #orderBean');
	
	for (let i = 0; i < checkboxes.length; i++) {
		if (checkboxes[i].checked == true) {
			cnt++;
			idxArr[i] = i;
		}
	}

	if (cnt == 0) { //미체크
		alert("주문하실 상품을 선택해주세요");
		return;
	} else {
		checkboxes.forEach(x => {
			if(x.checked == true) {
				
				(x.parentElement.parentElement.parentElement.querySelectorAll('.product_idx'))	
					.forEach(x => {
						
						let input = document.createElement('input');
						input.setAttribute('name','product_idx');
						input.setAttribute('value',x.innerText);
						form.append(input);
						
					});
				
			}
		});
	}

	form.submit();
}


//장바구니 선택삭제
const delItembtn = document.querySelector('.cart__header-right'); //선택삭제 버튼
delItembtn.addEventListener('click', () => {
	//체크된 상품 삭제
	checkboxes.forEach(x => {
		if (x.checked == true) {
			x.parentElement.parentElement.parentElement.remove(); //체크한 상품 삭제한다
		}
	});
	
	//삭제되지 않은 상품의 정보를 파라미터로 넘긴다.
	let product_idxes = document.querySelectorAll('.product_idx');
	let option1_idxes = document.querySelectorAll('.option1_idx');
	let option2_idxes = document.querySelectorAll('.option2_idx');
	let delivery_company= document.querySelectorAll('#delivery_company');
	let product_image= document.querySelectorAll('#product_image');
	let product_brand= document.querySelectorAll('#product_brand');
	let product_name= document.querySelectorAll('#product_name');
	let product_shipping_fee= document.querySelectorAll('#product_shipping_fee');
	let delivery_method= document.querySelectorAll('#delivery_method');
	let each_price= document.querySelectorAll('#each_price');
	let option_name= document.querySelectorAll('#option_name');
	let qty= document.querySelectorAll('#option_qty');

	
	//전체 삭제된 경우
	if (document.querySelector('.cart__content') == null) {
		const cartbox = document.querySelector('.cart__content-group')
		cartbox.innerText = "장바구니가 비었습니다.";
		cartbox.style.textAlign = 'center';
		cartbox.style.lineHeight = '250px';

		document.querySelectorAll('.cart__price dd').forEach(x => x.innerText = '0');
		document.querySelector('.total-price .qty').innerHTML = '0';
		document.querySelector('.total-price .price').innerHTML = '0';
		
		$.ajax({
			url: "/ModuHouse/delete_cart",
			success: function(r) {
				if(r === "ok") {
					alert('장바구니를 비웠습니다.');
				}	
			}
		})
	} else { //일부 삭제하는 경우, 삭제하지 않는 상품 정보를 넘김
		const form = document.querySelector('.cart__header-wrap #cartOrderBean');
	  
	   for(let i = 0; i < product_idxes.length; i++) {
	   	
	     const input1 = document.createElement('input');
	     input1.setAttribute('name','product_idx');
	     input1.setAttribute('value',product_idxes[i].innerText);
	     input1.style.display = 'none';
	     
	     form.append(input1);
	     
	     const input2 = document.createElement('input');
	     input2.setAttribute('name','option1_idx');
	     input2.setAttribute('value',option1_idxes[i].innerText);
	     input2.style.display = 'none';
	     
	     form.append(input2);
	     
	     const input3 = document.createElement('input');
	     input3.setAttribute('name','option2_idx');
	     input3.setAttribute('value',option2_idxes[i].innerText);
	     input3.style.display = 'none';
	     
	     form.append(input3);
	     
	     const input4 = document.createElement('input');
	     input4.setAttribute('name','delivery_company');
	     input4.setAttribute('value',delivery_company[i].innerText);
	     input4.style.display = 'none';
	     
	     form.append(input4);
	    
	     const input5 = document.createElement('input');
	     input5.setAttribute('name','product_image');
	     input5.setAttribute('value',product_image[i].innerText);
	     input5.style.display = 'none';
	     
	     form.append(input5);
	     
	     const input6 = document.createElement('input');
	     input6.setAttribute('name','product_brand');
	     input6.setAttribute('value',product_brand[i].innerText);
	     input6.style.display = 'none';
	     
	     form.append(input6);
	     
	     const input7 = document.createElement('input');
	     input7.setAttribute('name','product_name');
	     input7.setAttribute('value',product_name[i].innerText);
	     input7.style.display = 'none';
	     
	     form.append(input7);
	     
	     const input8 = document.createElement('input');
	     input8.setAttribute('name','product_shipping_fee');
	     input8.setAttribute('value',product_shipping_fee[i].innerText);
	     input8.style.display = 'none';
	     
	     form.append(input8);
	     
	     const input9 = document.createElement('input');
	     input9.setAttribute('name','delivery_method');
	     input9.setAttribute('value',delivery_method[i].innerText);
	     input9.style.display = 'none';
	     
	     form.append(input9);
	     
	     const input10 = document.createElement('input');
	     input10.setAttribute('name','each_price');
	     input10.setAttribute('value',each_price[i].innerText);
	     input10.style.display = 'none';
	     
	     form.append(input10);
	     
	     const input11 = document.createElement('input');
	     input11.setAttribute('name','option_name');
	     input11.setAttribute('value',option_name[i].innerText);
	     input11.style.display = 'none';
	     
	     form.append(input11);
	     
	     const input12 = document.createElement('input');
	     input12.setAttribute('name','option_qty');
	     input12.setAttribute('value',qty[i].options[qty[i].selectedIndex].value);
	     input12.style.display = 'none';
	     
	     form.append(input12);
	   }
	   
	  
	  form.submit();
	}
	
});

