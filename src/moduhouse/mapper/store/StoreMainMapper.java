package moduhouse.mapper.store;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import moduhouse.bean.store.CategoryBean;
import moduhouse.bean.store.ProductBean;

public interface StoreMainMapper {
	
	//상품 카테고리(상위카테고리)
	@Select("SELECT "
			+ 		"MAIN_CATEGORY_IDX, "
			+ 		"MAIN_CATEGORY_NAME, "
			+			"MAIN_CATEGORY_IMAGE "
			+ 	"FROM "
			+ 		"PRODUCT_MAIN_CATEGORY_TB")
	List<CategoryBean> getAllCategory();

	//스토어 메인 인기상품 리스트
	@Select("SELECT "
			+ 		"PRODUCT_IDX, "
			+ 		"MAIN_CATEGORY_IDX, "
			+ 		"SUB_CATEGORY_IDX, "
			+ 		"PRODUCT_BRAND, "
			+ 		"PRODUCT_NAME, "
			+ 		"PRODUCT_IMAGE, "
			+ 		"PRODUCT_PRICE, "
			+ 		"PRODUCT_DISCOUNT_RATE "
			+ 	"FROM PRODUCT_TB")
	List<ProductBean> getProductList();
	
}
