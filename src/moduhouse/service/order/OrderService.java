package moduhouse.service.order;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.order.DeliveryBean;
import moduhouse.bean.order.OrderBean;
import moduhouse.bean.user.DefaultAddressBean;
import moduhouse.bean.user.UserBean;
import moduhouse.dao.order.OrderDao;

@Service
@RequiredArgsConstructor
public class OrderService {

	private final OrderDao orderDao;
	
	//주문정보 저장
	public void saveOrderInfo(OrderBean orderBean) {
		orderDao.saveOrderInfo(orderBean);
	}
	
	//결제 시 사용 포인트가 있다면 차감, 구매액 적립
	public void changeUserPoint(UserBean signInUserBean) {
		orderDao.changeUserPoint(signInUserBean);
	}
	
	//배송정보 저장
	public void saveDeliveryInfo(DeliveryBean deliveryBean) {
		deliveryBean.setDelivery_state("배송 준비 중");
		orderDao.saveDeliveryInfo(deliveryBean);
	}
	
	//기본 배송 정보 조회
	public DefaultAddressBean getDefaultAddress(int user_idx) {
		return orderDao.getDefaultAddress(user_idx);
	}
	
	//기본 배송 정보 저장
	public void saveDefaultAddress(DefaultAddressBean defaultAddressBean) {
		orderDao.saveDefaultAddress(defaultAddressBean);
	}
	
	//기본 배송 정보 수정
	public void changeDefaultAddress(DefaultAddressBean defaultAddressBean) {
		orderDao.changeDefaultAddress(defaultAddressBean);
	}
	
	//주문정보 조회(주문번호 당 한 개씩 노출)
	public List<OrderBean> getUserOrderInfo(UserBean signInUserBean) {
		List<OrderBean> list = new ArrayList<OrderBean>();
		List<OrderBean> tempList = orderDao.getUserOrderInfo(signInUserBean);
		for(int i = 0; i < tempList.size()-1;i++) {
			if(!tempList.get(i).getOrder_number().equals(tempList.get(i+1).getOrder_number())) {
				list.add(tempList.get(i));
			}
		}
		return list;
	}
	
	//배송정보 조회
	public List<DeliveryBean> getUserDeliveryInfo(UserBean signUserBean) {
		return orderDao.getUserDeliveryInfo(signUserBean);
	}
}
