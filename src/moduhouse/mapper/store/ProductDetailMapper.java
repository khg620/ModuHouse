package moduhouse.mapper.store;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import moduhouse.bean.store.ProductBean;
import moduhouse.bean.store.ProductDetailBean;

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
			+     "PRODUCT_SHIPPING_COMPANY, "
			+ 		"PRODUCT_SHIPPING_FEE, "
			+     "PRODUCT_INFO, "
			+			"PRODUCT_RECEIVING_DATE "
			+		"FROM "
			+ 		"PRODUCT_TB "
			+ 	"WHERE "
			+ 		"PRODUCT_IDX=#{product_idx}")
	ProductBean getProductInfo(int product_idx);
}
