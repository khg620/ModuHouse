package moduhouse.dao.order;

import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.order.DeliveryBean;
import moduhouse.bean.order.OrderBean;
import moduhouse.bean.user.DefaultAddressBean;
import moduhouse.bean.user.UserBean;
import moduhouse.mapper.order.OrderMapper;

@Repository
@RequiredArgsConstructor
public class OrderDao {
	
	private final OrderMapper orderMapper;
	
	//주문정보 저장
	public void saveOrderInfo(OrderBean orderBean) {
		orderMapper.saveOrderInfo(orderBean);
	}
	
	//결제 시 사용 포인트가 있다면 차감, 구매액 적립
	public void changeUserPoint(UserBean signInUserBean) {
		orderMapper.changeUserPoint(signInUserBean);
	}
	
	//배송정보 저장
	public void saveDeliveryInfo(DeliveryBean deliveryBean) {
		orderMapper.saveDeliveryInfo(deliveryBean);
	}
	
	//기본 배송 정보 조회
	public DefaultAddressBean getDefaultAddress(int user_idx) {
		return orderMapper.getDefaultAddress(user_idx);
	}
	
	//기본 배송 정보 저장
	public void saveDefaultAddress(DefaultAddressBean defaultAddressBean) {
		orderMapper.saveDefaultAddress(defaultAddressBean);
	}
	
	//기본 배송 정보 수정
	public void changeDefaultAddress(DefaultAddressBean defaultAddressBean) {
		orderMapper.changeDefaultAddress(defaultAddressBean);
	}
}
