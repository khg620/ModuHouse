package moduhouse.service.order;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.order.DeliveryBean;
import moduhouse.bean.order.OrderBean;
import moduhouse.dao.order.OrderDao;

@Service
@RequiredArgsConstructor
public class OrderService {

	private final OrderDao orderDao;
	
	//주문정보 저장
	public void saveOrderInfo(OrderBean orderBean) {
		orderDao.saveOrderInfo(orderBean);
	}
	
	//배송정보 저장
	public void saveDeliveryInfo(DeliveryBean deliveryBean) {
		orderDao.saveDeliveryInfo(deliveryBean);
	}
}
