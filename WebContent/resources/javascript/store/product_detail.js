//닫기버튼
/*
const close_btn = document.querySelectorAll('.close-btn');
close_btn.forEach(x => x.addEventListener('click', (e) => {
   e.target.parentElement.parentElement.parentElement.parentElement.remove();
}));*/

function deleteOption(event){
	const nav_option = document.querySelector('.selected-option-box--nav');
	const top_option = document.querySelector('.selected-option-box');
	const top_option_box = Array.from(top_option.querySelectorAll('.selected-option-box > div'));
	const nav_option_box = Array.from(nav_option.querySelectorAll('.selected-option-box--nav > div'));
	const close_btn = Array.from(document.querySelectorAll('.close-btn'));
	
	let idx = close_btn.indexOf(event.target);
	
	if(top_option.contains(event.target)) { //클릭한 닫기버튼이 상단 옵션 소속이면
		let option_price = event.target.parentElement.parentElement.parentElement.querySelector('.price-detail').innerText;
		
		nav_option_box[idx].remove();
		event.target.parentElement.parentElement.parentElement.remove();
		subtractPrice(option_price);
		
	} else if(nav_option.contains(event.target)) {//클릭한 닫기버튼이 사이드에 있는 옵션 소속이면
		let option_price = event.target.parentElement.parentElement.parentElement.querySelector('.price-detail').innerText;
		
		top_option_box[idx-close_btn.length/2].remove();
		event.target.parentElement.parentElement.parentElement.remove();
		subtractPrice(option_price);
	}
}

function subtractPrice(option_price) {
	let total_price = document.querySelectorAll('.total-price');
	total_price.forEach(x => x.innerText = Number(x.innerText) - Number(option_price));
}