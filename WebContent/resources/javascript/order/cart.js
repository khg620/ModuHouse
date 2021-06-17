//장바구니 상품 목록 전체선택/해제
const checkall = document.querySelector('.cart__header-left .checkall');
const checkboxes = document.querySelectorAll('.checkbox')

checkall.addEventListener('click',(e) => {
   if(e.target.checked === true) {
      checkboxes.forEach(x => {x.checked=true})
   } else {
      checkboxes.forEach(x => {x.checked=false})
   }
})

//개별 체크 -> 전체선택/해제
function checkAll() {
   let cnt = 0;
   
     for(let i = 0; i < checkboxes.length; i++){
        if(checkboxes[i].checked === false) {
           cnt=1;
        } 
     }

     console.log(cnt)
     if(cnt > 0){
        checkall.checked = false;
     } else {
        checkall.checked = true;
     }
  
}

checkall.addEventListener('click',checkAll);
checkboxes.forEach(x => x.addEventListener('click',checkAll));




