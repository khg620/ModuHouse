//헤더 user 아이콘 drop-down 메뉴
const user_menu = document.querySelector('.navigation-user-menu');
const dropdown_menu = document.querySelector('.navigation-user__dropdown-menu');
const caret_icon = document.querySelector('.drop-down');

const showUserMenu = () => {
	dropdown_menu.classList.toggle('click');
	if (caret_icon.style.transform === 'rotate(180deg)') {
		caret_icon.style.transform = 'rotate(' + 0 + 'deg)';
	} else {
		caret_icon.style.transform = 'rotate(' + 180 + 'deg)';
	}
};

//navigation-drawer-button
const nav_draw_btn = document.querySelector('.navigation-draw-button');
const drawer_container = document.querySelector('.navigation-drawer-container');

nav_draw_btn.addEventListener('click', () => {
	document.body.classList.add('not-scroll');
	drawer_container.style.display = 'block';
});

drawer_container.addEventListener('click', (e) => {
	console.log(e.target);
	if (e.target.contains(drawer_container)) {
		document.body.classList.remove('not-scroll');
		drawer_container.style.display = 'none';
	}
});

//navigation-drawer-menu
const main_menu = document.getElementsByClassName('navigation-drawer__list main-list');//메인메뉴 ul(커뮤니티/스토어)

const openEvent = (e) => {
	const second_menu = e.target.parentElement.querySelector('.navigation-drawer__list.second');
	const other_second_menu = document.querySelector('.navigation-drawer__list.second.open');
	if (other_second_menu !== null) {

		if (other_second_menu !== second_menu) {
			other_second_menu.previousElementSibling.style.color = 'var(--color-black)';
			other_second_menu.classList.remove('open');
		}
	}
	second_menu.previousElementSibling.style.color = 'var(--color-skyblue)';
	second_menu.classList.toggle("open");
}

for (var i = 0; i < main_menu.length; i++) {
	main_menu[i].addEventListener('click', openEvent);
}		

//header-right 글쓰기 버튼
const write_btn = document.querySelector('.navigation-upload');
const upload_menu = document.querySelector('.upload-list-wrap');

write_btn.addEventListener('click',() => {
   upload_menu.classList.toggle('show');
})

//검색
function search() {
	let word = document.querySelector('.navigation-search+input').value;
	location.href = "/ModuHouse/search?word="+word;
	console.log(word);
}