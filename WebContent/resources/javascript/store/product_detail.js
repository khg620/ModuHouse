//닫기버튼
/*
const close_btn = document.querySelectorAll('.close-btn');
close_btn.forEach(x => x.addEventListener('click', (e) => {
   e.target.parentElement.parentElement.parentElement.parentElement.remove();
}));*/

function deleteOption(event){
	event.target.parentElement.parentElement.parentElement.remove();
}