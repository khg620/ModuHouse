//banner
const banner_img = document.querySelector('.store-main__banner-wrap');
const banner_prev_btn = document.querySelector('.store-main__banner-list .banner-prev');
const banner_next_btn = document.querySelector('.store-main__banner-list .banner-next');
const banner__items = document.querySelectorAll('.banner__list .banner__item');

banner__items[0].classList.add('click');
//다음 이미지로
let count = 1;
const bannerMoveNext = () => {
	if (count >= 7) {
		count = 0;
	}
	count++;
	banner_img.style.backgroundImage = 'url(image/banner/banner1_' + count + '.jpg)';
	banner__items.forEach(x=>{if(x.classList.contains('click')){x.classList.remove('click')}})
	banner__items[count-1].classList.add('click');
}
//이전 이미지로
const bannerMovePrev = () => {
	if (count > 1) {
		count--;
	} else {
		count = 7;
	}
	banner_img.style.backgroundImage = 'url(image/banner/banner1_' + count + '.jpg)';
   banner__items.forEach(x=>{if(x.classList.contains('click')){x.classList.remove('click')}})
	banner__items[count-1].classList.add('click');
}

//배너 자동 넘김
window.onload = setInterval(bannerMoveNext, 3000);

banner_next_btn.addEventListener('click', () => {
	bannerMoveNext();
});

banner_prev_btn.addEventListener('click', () => {
	bannerMovePrev();
})

//배너버튼 클릭 시 해당 아이템 색상 변경
const changeBackground = (e) => {
	banner__items.forEach(x => {
		if(x.classList.contains('click')){
			x.classList.remove('click')
		}
	})
	e.target.classList.add('click');
};

//배너 버튼 클릭하여 이미지 이동
for (let i = 0; i < banner__items.length; i++) {
	banner__items[i].addEventListener('click', (e) => {
		banner_img.style.backgroundImage = 'url(image/banner/banner1_' + (i + 1) + '.jpg)';
		changeBackground(e);
	});
}



//category
const category_wrap = document.querySelector('.category-wrap');
const prev_btn = document.querySelector('.mobile-hide.prev');
const next_btn = document.querySelector('.mobile-hide.next');

const moveNext = (e) => {
	next_btn.classList.remove('show');
	prev_btn.classList.add('show');

	category_wrap.style.transition = 'transform 1s';
	category_wrap.style.transform = 'translateX(-50%)';
}

const movePrev = (e) => {
	prev_btn.classList.remove('show');
	next_btn.classList.add('show');

	category_wrap.style.transition = 'transform 1s';
	category_wrap.style.transform = 'translateX(0%)';
}

//product(인기상품)
//왼쪽 필터 - 토글버튼(배송옵션)
const toggle_btn = document.querySelector('.product-filter-btn-delivery');
const arrow_icon = toggle_btn.querySelector('.arrow-icon');
const filter_left_background = document.querySelector('.store-main__best-product .toggle-btn-wrap');
const filter_left_modal = document.querySelector('.store-main__best-product .toggle-btn');
const slider_btn = document.querySelector('.store-main__best-product input');

toggle_btn.addEventListener('click', () => {
	if (arrow_icon.style.transform === 'rotate(180deg)') {
		arrow_icon.style.transform = 'rotate(' + 0 + 'deg)';
	} else {
		arrow_icon.style.transform = 'rotate(' + 180 + 'deg)';
	}
	filter_left_background.classList.toggle('show');
	filter_left_modal.classList.toggle('show');
});

filter_left_background.addEventListener('click', (e) => {
	if (e.target.contains(filter_left_background)) {
		arrow_icon.style.transform = 'rotate(' + 0 + 'deg)';
		filter_left_background.classList.remove('show');
		filter_left_modal.classList.remove('show');
	}
});

slider_btn.addEventListener('change', () => {
	setTimeout(() => {
		arrow_icon.style.transform = 'rotate(' + 0 + 'deg)';
		filter_left_background.classList.remove('show');
		filter_left_modal.classList.remove('show');
	}, 200)
});


//우측 필터
const modal_container = document.querySelector('.store-main__best-product .filter-modal-container'); //우측 정렬모달
const filter_modal = document.querySelector('.store-main__best-product .filter-modal');//우측 정렬모달
const current_order = document.querySelector('.filter-right .current-order');//현재 정렬 기준
const caret = document.querySelector('.filter-right .caret');//우측 정렬요소 화살표
const order_list = document.querySelectorAll('.order-list');//정렬 모달

	//화살표 방향 회전
current_order.addEventListener('click', () => {
	if (caret.style.transform === 'rotate(180deg)') {
		caret.style.transform = 'rotate(' + 0 + 'deg)';
	} else {
		caret.style.transform = 'rotate(' + 180 + 'deg)';
	}
	modal_container.classList.toggle('show');
	filter_modal.classList.toggle('show');
	console.log(caret.style.transform)
})

	//모달 닫힘
window.addEventListener('click', (e) => {
	if (e.target !== current_order) {
		caret.style.transform = 'rotate(' + 0 + 'deg)';
		modal_container.classList.remove('show');
		filter_modal.classList.remove('show');
	}
}, true)

	//우측 정렬요소 - 선택한 텍스트로 변경
order_list.forEach(x => x.addEventListener('click',(e) => {
   current_order.innerText = e.target.innerText;
}));


