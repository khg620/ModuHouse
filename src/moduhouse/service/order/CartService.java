package moduhouse.service.order;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.order.OrderBean;
import moduhouse.dao.order.CartDao;

@Service
@RequiredArgsConstructor
public class CartService {
	
	private final CartDao cartDao;
	
	public int checkSameProduct(OrderBean cartBean) {
		return cartDao.checkSameProduct(cartBean);
	}

	public void saveCartList(OrderBean cartBean) {
		cartDao.saveCartList(cartBean);
	}
	
	public List<OrderBean> getAllCartList(){
		return cartDao.getAllCartList();
	}
	
	public List<OrderBean> getUserCartList(int user_idx) {
		return cartDao.getUserCartList(user_idx);
	}
	
	public void updateUserInfo(int user_idx) {
		cartDao.updateUserInfo(user_idx);
	}
}
