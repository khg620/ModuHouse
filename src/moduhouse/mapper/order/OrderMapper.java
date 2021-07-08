package moduhouse.mapper.order;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import moduhouse.bean.order.DeliveryBean;
import moduhouse.bean.order.OrderBean;
import moduhouse.bean.user.DefaultAddressBean;
import moduhouse.bean.user.UserBean;

public interface OrderMapper {

	//주문 정보 저장
	@Insert("INSERT INTO ORDER_TB ( "
			+ "  ORDER_IDX, "
			+ "  ORDER_NUMBER, "
			+ "  USER_IDX, "
			+ "  ORDERER_EMAIL1, "
			+ "  ORDERER_EMAIL2, "
			+ "  ORDERER_NAME, "
			+ "  ORDERER_HP1, "
			+ "  ORDERER_HP2, "
			+ "  PRODUCT_IDX, "
			+ "  PRODUCT_BRAND, "
			+ "  PRODUCT_NAME, "
			+ "  PRODUCT_IMAGE, "
			+ "  OPTION_NAME, "
			+ "  EACH_PRICE, "
			+ "  OPTION1_IDX, "
			+ "  OPTION2_IDX, "
			+ "  ORDER_QTY, "
			+ "  TOTAL_PRICE, "
			+ "  PAYMENT_METHOD, "
			+ "  ORDER_DATE, "
			+ "  PRODUCT_SHIPPING_FEE, "
			+ "  PRODUCT_POINT, "
			+ "  USED_POINT"
			+ ")  "
			+ "VALUES "
			+ "( "
			+ "  ORDER_SEQ.NEXTVAL, "
			+ "  #{order_number}, "
			+ "  #{user_idx}, "
			+ "  #{orderer_email1}, "
			+ "  #{orderer_email2}, "
			+ "  #{orderer_name}, "
			+ "  #{orderer_hp1}, "
			+ "  #{orderer_hp2}, "
			+ "  #{product_idx}, "
			+ "  #{product_brand}, "
			+ "  #{product_name}, "
			+ "  #{product_image}, "
			+ "  #{option_name}, "
			+ "  #{each_price}, "
			+ "  #{option1_idx}, "
			+ "  #{option2_idx}, "
			+ "  #{order_qty}, "
			+ "  #{total_price}, "
			+ "  #{payment_method}, "
			+ "  SYSDATE, "
			+ "  #{product_shipping_fee}, "
			+ "  #{product_point}, "
			+ "  #{used_point}"
			+ ")")
	void saveOrderInfo(OrderBean orderBean);
	
	//결제 시 사용 포인트가 있다면 차감, 구매액 적립
	@Update("UPDATE "
			+ "		 USER_TB "
			+ "  SET "
			+ "    USER_POINT = #{user_point} "
			+ "  WHERE "
			+ "    USER_IDX = #{user_idx}")
	void changeUserPoint(UserBean signInUserBean);
	
	//배송정보 저장
	@Insert("INSERT INTO DELIVERY_TB("
			+ "  DELIVERY_IDX,"
			+ "  ORDER_NUMBER,"
			+ "  RECEIVER_NAME,"
			+ "  RECEIVER_HP1,"
			+ "  RECEIVER_HP2,"
			+ "  DELIVERY_ADDRESS1,"
			+ "  DELIVERY_ADDRESS2,"
			+ "  DELIVERY_METHOD, "
			+ "	 DELIVERY_COMPANY, "
			+ "  DELIVERY_MESSAGE,"
			+ "  DELIVERY_STATE,"
			+ "  TRACKING_NUMBER"
			+ ")"
			+ "VALUES ("
			+ "  DELIVERY_SEQ.NEXTVAL,"
			+ "  #{order_number},"
			+ "  #{receiver_name},"
			+ "  #{receiver_hp1},"
			+ "  #{receiver_hp2},"
			+ "  #{delivery_address1},"
			+ "  #{delivery_address2},"
			+ "  '택배 배송',"
			+ "  '대한통운',"
			+ "  #{delivery_message},"
			+ "  #{delivery_state},"
			+ "  #{tracking_number}"
			+ ")")
	void saveDeliveryInfo(DeliveryBean deliveryBean);
	
	//기본 배송지 저장
	@Insert("INSERT INTO DEFAULT_ADDRESS_TB("
			+ "ADDRESS_IDX, "
			+ "USER_IDX, "
			+ "RECEIVER_NAME, "
			+ "RECEIVER_HP1, "
			+ "RECEIVER_HP2, "
			+ "DELIVERY_ZIPCODE, "
			+ "DELIVERY_ADDRESS1, "
			+ "DELIVERY_ADDRESS2, "
			+ "DELIVERY_MESSAGE) "
			+ "VALUES("
			+ "DEFAULT_ADDRESS_SEQ.nextval, "
			+ "#{user_idx}, "
			+ "#{receiver_name}, "
			+ "#{receiver_hp1}, "
			+ "#{receiver_hp2}, "
			+ "#{delivery_zipcode}, "
			+ "#{delivery_address1}, "
			+ "#{delivery_address2}, "
			+ "#{delivery_message})")
	void saveDefaultAddress(DefaultAddressBean defaultAddressBean);
	
	//기본 배송지 조회
	@Select("SELECT "
			+ 		"RECEIVER_NAME, "
			+ 		"RECEIVER_HP1, "
			+ 		"RECEIVER_HP2, "
			+ 		"DELIVERY_ZIPCODE, "
			+ 		"DELIVERY_ADDRESS1, "
			+ 		"DELIVERY_ADDRESS2, "
			+ 		"DELIVERY_MESSAGE "
			+ 	"FROM "
			+ 		"DEFAULT_ADDRESS_TB "
			+ 	"WHERE "
			+ 		"USER_IDX = #{user_idx}")
	DefaultAddressBean getDefaultAddress(int user_idx);
	
	//기본 배송지 수정
	@Update("UPDATE "
			+ "		DEFAULT_ADDRESS_TB "
			+ "SET "
			+ "		RECEIVER_NAME = #{receiver_name}, "
			+ "		RECEIVER_HP1 = #{receiver_hp1}, "
			+ "		RECEIVER_HP2 = #{receiver_hp2}, "
			+ "		DELIVERY_ZIPCODE = #{delivery_zipcode}, "
			+ "		DELIVERY_ADDRESS1 = #{delivery_address1}, "
			+ "		DELIVERY_ADDRESS2 = #{delivery_address2}, "
			+ "		DELIVERY_MESSAGE = #{delivery_message} "
			+ "WHERE "
			+ "		USER_IDX = #{user_idx}")
	void changeDefaultAddress(DefaultAddressBean defaultAddressBean);
}
