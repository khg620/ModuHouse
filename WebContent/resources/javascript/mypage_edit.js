const edit_menu = document.querySelectorAll('.edit_menu_item');
//console.log(window.location.pathname)
//console.log(edit_menu[0].firstElementChild.getAttribute('href'))
edit_menu.forEach(x => {if(x.firstElementChild.getAttribute('href') === window.location.pathname) {
		x.classList.add('selected')
	}
});

