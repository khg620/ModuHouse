package moduhouse.dao.order;

import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.order.DeliveryBean;
import moduhouse.bean.order.OrderBean;
import moduhouse.mapper.order.OrderMapper;

@Repository
@RequiredArgsConstructor
public class OrderDao {
	
	private final OrderMapper orderMapper;
	
	//주문정보 저장
	public void saveOrderInfo(OrderBean orderBean) {
		orderMapper.saveOrderInfo(orderBean);
	}
	
	//배송정보 저장
	public void saveDeliveryInfo(DeliveryBean deliveryBean) {
		orderMapper.saveDeliveryInfo(deliveryBean);
	}
}
