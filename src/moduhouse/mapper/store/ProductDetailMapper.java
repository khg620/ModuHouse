package moduhouse.mapper.store;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import moduhouse.bean.order.OrderBean;
import moduhouse.bean.store.ProductBean;
import moduhouse.bean.store.ProductDetailBean;
import moduhouse.bean.store.ProductOption1Bean;
import moduhouse.bean.store.ProductOption2Bean;

public interface ProductDetailMapper {

	//상품 상세 페이지 이미지 
	@Select("SELECT "
			+ 		"PRODUCT_IMAGE_IDX, "
			+ 		"PRODUCT_IMAGE, "
			+ 		"PRODUCT_IDX "
			+ 	"FROM "
			+ 		"PRODUCT_IMAGE_TB "
			+ 	"WHERE "
			+ 		"PRODUCT_IDX=#{product_idx}")
	List<ProductDetailBean> getProductImage(int product_idx);
	
	//상품 상세 조회
	@Select("SELECT "
			+			"PRODUCT_IDX, "
			+			"MAIN_CATEGORY_IDX, "
			+			"SUB_CATEGORY_IDX, "
			+			"PRODUCT_BRAND,  "
			+			"PRODUCT_NAME, "
			+			"PRODUCT_IMAGE, "
			+			"PRODUCT_PRICE, "
			+			"PRODUCT_DISCOUNT_RATE, "
			+		  "PRODUCT_POINT, "
			+ 		"PRODUCT_DELIVERY_METHOD, "
			+     "PRODUCT_SHIPPING_COMPANY, "
			+ 		"PRODUCT_SHIPPING_FEE, "
			+     "PRODUCT_INFO, "
			+			"PRODUCT_RECEIVING_DATE "
			+		"FROM "
			+ 		"PRODUCT_TB "
			+ 	"WHERE "
			+ 		"PRODUCT_IDX=#{product_idx}")
	ProductBean getProductInfo(int product_idx);

	//상품옵션1 조회
	@Select("SELECT "
			+ 		"OPTION1_IDX, "
			+ 		"OPTION1_NAME, "
			+ 		"OPTION1_PRICE, "
			+ 		"PRODUCT_IDX "
			+ 	"FROM "
			+ 		"PRODUCT_OPTION_TB1 "
			+ 	"WHERE "
			+ 		"PRODUCT_IDX = #{product_idx}"
			+		"ORDER BY "
			+     "OPTION1_IDX")
	List<ProductOption1Bean> getProductOption1(int product_idx);
	
	//상품옵션2 존재여부 조회
	@Select("SELECT "
			+ 		"COUNT(*) "
			+ 	"FROM "
			+ 		"PRODUCT_OPTION_TB2 "
			+ 	"WHERE "
			+ 		"PRODUCT_IDX = #{product_idx} ")
	public Integer getOption2Cnt(int product_idx);

	//상품옵션2 조회
	@Select("SELECT "
			+ 		"OPTION2_IDX, "
			+ 		"OPTION2_NAME, "
			+ 		"OPTION2_PRICE, "
			+ 		"PRODUCT_IDX, "
			+ 		"OPTION1_IDX "
			+ 	"FROM "
			+ 		"PRODUCT_OPTION_TB2 "
			+ 	"WHERE "
			+ 		"PRODUCT_IDX = #{product_idx} "
			+ 	"AND "
			+ 		"OPTION1_IDX = #{option1_idx}")
	List<ProductOption2Bean> getProductOption2(@Param(value = "product_idx")int product_idx, @Param(value="option1_idx") int option1_idx);

	
	//상품 옵션 선택에 따른 가격 조회
	@Select("SELECT "
			+ "			OPTION1_PRICE "
			+ "	 FROM"
			+ "			PRODUCT_OPTION_TB1"
			+ "	 WHERE"
			+ "			OPTION1_IDX=#{option1_idx}")
	Integer getOption1Price(int option1_idx);
	
	@Select("SELECT "
			+ "			OPTION2_PRICE "
			+ "	 FROM"
			+ "			PRODUCT_OPTION_TB2"
			+ "	 WHERE"
			+ "			OPTION2_IDX=#{option2_idx}")
	Integer getOption2Price(int option2_idx);
	
	@Select("SELECT OPTION1_PRICE, OPTION2_PRICE "
			+ "FROM PRODUCT_OPTION_TB1 "
			+ "JOIN PRODUCT_OPTION_TB2 USING(OPTION1_IDX) "
			+ "WHERE OPTION1_IDX =  #{option1_idx} "
			+ "AND OPTION2_IDX = #{option2_idx}")
	OrderBean getOptionsPrice(@Param(value="option1_idx") int option1_idx, @Param(value="option2_idx") int option2_idx);
	
	
}
