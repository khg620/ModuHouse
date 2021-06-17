const submit_btn = document.querySelectorAll('.submit-btn');
submit_btn.forEach(x => x.addEventListener('click', orderProc));

function orderProc() {
	let orderData = $("#orderBean").serialize();
	let deliveryData = $("#deliveryBean").serialize();

	$.ajax({
		url: "/ModuHouse/order_proc/order",
		type: "POST",
		data: orderData,deliveryData,
		success: function(result) {

		}
	});

	$.ajax({
		url: "/ModuHouse/order_proc/delivery",
		type: "POST",
		data: deliveryData,
		success: function(result) {

		}
	});
	
}