//search form 키워드 펼치기
const keywords_spread = document.querySelector('.question__keywords-all');
const keywords_spread_btn = document.querySelector('.question__keywords-fold>.more-btn')
const keywords_fold_btn = document.querySelector('.question__keywords-fold>.fold-btn');

keywords_spread_btn.addEventListener('click',()=> {
   keywords_spread.classList.add('show');
   keywords_fold_btn.classList.add('show');
   keywords_spread_btn.classList.remove('show');
});
keywords_fold_btn.addEventListener('click',()=> {
   keywords_spread.classList.remove('show');
   keywords_fold_btn.classList.remove('show');
   keywords_spread_btn.classList.add('show');
})

//글 정렬
const order_btn = document.querySelector('.order-wrap > .order-btn');
const order_list = document.querySelector('.order-container');
const order_list_close = document.querySelector('.order-by-close');
const order_list_item = document.querySelectorAll('.question__order-item');
const current_order = document.querySelector('.order-wrap .order-by');

order_btn.addEventListener('click',()=> {
   order_list.classList.toggle('show');
})
//정렬 모달 닫기(모바일)
order_list_close.addEventListener('click',()=> {
   order_list.classList.remove('show');
})
//정렬 기준 선택
const selectOrder = (e) => {
   current_order.innerText = e.target.innerText;
   order_list.classList.remove('show');
}

order_list_item.forEach(x=>x.addEventListener('click',(e)=> {
   setTimeout(selectOrder(e),1000);
}));

window.addEventListener('click',(e)=> {
   
})
console.log(order_list_item)
