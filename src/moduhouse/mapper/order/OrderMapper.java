package moduhouse.mapper.order;

import org.apache.ibatis.annotations.Insert;

import moduhouse.bean.order.DeliveryBean;
import moduhouse.bean.order.OrderBean;

public interface OrderMapper {

	@Insert("INSERT INTO ORDER_TB ( "
			+ "  ORDER_IDX, "
			+ "  ORDER_NUMBER, "
			+ "  USER_IDX, "
			+ "  ORDERER_NAME, "
			+ "  ORDERER_HP, "
			+ "  PRODUCT_IDX, "
			+ "  PRODUCT_NAME, "
			+ "  PRODUCT_IMAGE, "
			+ "  OPTION1_IDX, "
			+ "  OPTION2_IDX, "
			+ "  ORDER_QTY, "
			+ "  ORDER_PRICE, "
			+ "  ORDER_DATE "
			+ ")  "
			+ "VALUES "
			+ "( "
			+ "  ORDER_SEQ.NEXTVAL, "
			+ "  #{order_number}, "
			+ "  #{user_idx}, "
			+ "  #{orderer_name}, "
			+ "  #{orderer_hp}, "
			+ "  #{product_idx}, "
			+ "  #{product_name}, "
			+ "  #{product_image}, "
			+ "  #{option1_idx}, "
			+ "  #{option2_idx}, "
			+ "  #{order_qty}, "
			+ "  #{order_price}, "
			+ "  SYSDATE"
			+ ")")
	void saveOrderInfo(OrderBean orderBean);
	
	@Insert("INSERT INTO DELIVERY_TB("
			+ "  DELIVERY_IDX,"
			+ "  ORDER_IDX,"
			+ "  RECEIVER_NAME,"
			+ "  RECEIVER_HP,"
			+ "  DELIVERY_ADDRESS,"
			+ "  DELIVERY_METHOD,"
			+ "  DELIVERY_MESSAGE,"
			+ "  DELIVERY_STATE,"
			+ "  TRACKING_NUMBER"
			+ ")"
			+ "VALUES ("
			+ "  DELIVERY_SEQ.NEXTVAL,"
			+ "  #{order_idx},"
			+ "  #{receiver_name},"
			+ "  #{receiver_hp},"
			+ "  #{delivery_address},"
			+ "  #{delivery_method},"
			+ "  #{delivery_message},"
			+ "  #{delivery_state},"
			+ "  #{tracking_number}"
			+ ")")
	void saveDeliveryInfo(DeliveryBean deliveryBean);
}
