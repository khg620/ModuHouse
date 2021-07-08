package moduhouse.dao.order;

import java.util.List;

import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.order.OrderBean;
import moduhouse.mapper.order.CartMapper;

@Repository
@RequiredArgsConstructor
public class CartDao {
	
	private final CartMapper cartMapper;
	
	public int checkSameProduct(OrderBean cartBean) {
		return cartMapper.checkSameProduct(cartBean);
	}

	public void saveCartList(OrderBean cartBean) {
		cartMapper.saveCartList(cartBean);
	}
	
	public List<OrderBean> getAllCartList(){
		return cartMapper.getAllCartList();
	}
	
	public List<OrderBean> getUserCartList(int user_idx) {
		return cartMapper.getUserCartList(user_idx);
	}
	
	public void updateUserInfo(int user_idx) {
		cartMapper.updateUserInfo(user_idx);
	}
}