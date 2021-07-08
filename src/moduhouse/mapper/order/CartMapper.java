package moduhouse.mapper.order;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import moduhouse.bean.order.OrderBean;

public interface CartMapper {
	
	//같은 상품이 장바구니에 여러 번 담기지 않도록 체크
	@Select("SELECT "
			+ "		COUNT(*)"
			+ "	 FROM "
			+ "		CART_TB"
			+ "	 WHERE "
			+ "		PRODUCT_IDX = #{product_idx}"
			+ "	 AND "
			+ "		OPTION1_IDX = #{option1_idx}"
			+ "	 AND "
			+ "		OPTION2_IDX = #{option2_idx}")
	int checkSameProduct(OrderBean cartBean);
	
	@Insert("INSERT INTO CART_TB ( "
			+ "  CART_IDX, "
			+ "  USER_IDX, "
			+ "  PRODUCT_IDX, "
			+ "  PRODUCT_BRAND, "
			+ "  PRODUCT_NAME, "
			+ "  PRODUCT_IMAGE, "
			+ "  OPTION1_IDX, "
			+ "  OPTION1_PRICE, "
			+ "  OPTION2_IDX, "
			+ "  OPTION2_PRICE, "
			+ "  EACH_PRICE, "
			+ "  OPTION_NAME, "
			+ "  ORDER_QTY, "
			+ "  TOTAL_PRICE, "
			+ "  DELIVERY_METHOD, "
			+ "  DELIVERY_COMPANY, "
			+ "  PRODUCT_SHIPPING_FEE "
			+ ") VALUES ("
			+ "	 cart_seq.nextval,"
			+ "  #{user_idx},"
			+ "  #{product_idx},"
			+ "  #{product_brand},"
			+ "  #{product_name},"
			+ "  #{product_image},"
			+ "  #{option1_idx},"
			+ "  #{option1_price},"
			+ "  #{option2_idx},"
			+ "  #{option2_price},"
			+ "  #{each_price},"
			+ "  #{option_name},"
			+ "  #{order_qty},"
			+ "  #{total_price},"
			+ "  #{delivery_method},"
			+ "  #{delivery_company},"
			+ "  #{product_shipping_fee}"
			+ ")")
	void saveCartList(OrderBean cartBean);
	
	
	
	@Select("SELECT "
			+ "  CART_IDX,"
			+ "  USER_IDX,"
			+ "  PRODUCT_IDX,"
			+ "  PRODUCT_BRAND,"
			+ "  PRODUCT_NAME,"
			+ "  PRODUCT_IMAGE,"
			+ "  OPTION1_IDX,"
			+ "  OPTION1_PRICE,"
			+ "  OPTION2_IDX,"
			+ "  OPTION2_PRICE,"
			+ "  EACH_PRICE,"
			+ "  OPTION_NAME,"
			+ "  ORDER_QTY,"
			+ "  TOTAL_PRICE,"
			+ "  DELIVERY_METHOD,"
			+ "  DELIVERY_COMPANY,"
			+ "  PRODUCT_SHIPPING_FEE "
			+ "FROM "
			+ "CART_TB")
	List<OrderBean> getAllCartList();
	
	//회원 장바구니 조회
	@Select("SELECT "
			+ "  CART_IDX,"
			+ "  USER_IDX,"
			+ "  PRODUCT_IDX,"
			+ "  PRODUCT_BRAND,"
			+ "  PRODUCT_NAME,"
			+ "  PRODUCT_IMAGE,"
			+ "  OPTION1_IDX,"
			+ "  OPTION1_PRICE,"
			+ "  OPTION2_IDX,"
			+ "  OPTION2_PRICE,"
			+ "  EACH_PRICE,"
			+ "  OPTION_NAME,"
			+ "  ORDER_QTY,"
			+ "  TOTAL_PRICE,"
			+ "  DELIVERY_METHOD,"
			+ "  DELIVERY_COMPANY,"
			+ "  PRODUCT_SHIPPING_FEE "
			+ "FROM "
			+ "	CART_TB "
			+ "WHERE "
			+ "	USER_IDX = #{user_idx}")
	List<OrderBean> getUserCartList(int user_idx);
	
	@Update("UPDATE "
			+ "		CART_TB "
			+ "	SET "
			+ "		USER_IDX = #{user_idx}")
	void updateUserInfo(int user_idx);
}
