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

	//스토어 메인 오늘의 딜 리스트
	@Select("SELECT "
			+ 		"PRODUCT_IDX, "
			+ 		"MAIN_CATEGORY_IDX, "
			+ 		"SUB_CATEGORY_IDX, "
			+ 		"PRODUCT_BRAND, "
			+ 		"PRODUCT_NAME, "
			+ 		"PRODUCT_IMAGE, "
			+ 		"PRODUCT_PRICE, "
			+ 		"PRODUCT_DISCOUNT_RATE "
			+ 	"FROM PRODUCT_TB "
			+ 	"WHERE "
			+ 		"PRODUCT_DISCOUNT_RATE >= 49 "
			+   "AND ROWNUM <=4")
	List<ProductBean> getTodayDealList();
	
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
			+ 	"FROM PRODUCT_TB "
			+ 	"ORDER BY "
			+ 		"PRODUCT_SALES_QTY DESC")
	List<ProductBean> getPopularList();
	
	
	//스토어 상품 검색
	@Select("SELECT "
			+ "PRODUCT_IDX, "
			+ "MAIN_CATEGORY_IDX, "
			+ "SUB_CATEGORY_IDX, "
			+ "PRODUCT_BRAND, "
			+ "PRODUCT_NAME, "
			+ "PRODUCT_IMAGE, "
			+ "PRODUCT_PRICE, "
			+ "PRODUCT_DISCOUNT_RATE, "
			+ "PRODUCT_POINT, "
			+ "PRODUCT_SHIPPING_FEE, "
			+ "PRODUCT_INFO, "
			+ "PRODUCT_RECEIVING_DATE, "
			+ "PRODUCT_VIEW_CNT, "
			+ "PRODUCT_SALES_QTY, "
			+ "PRODUCT_DELIVERY_METHOD "
			+ "FROM "
			+ "PRODUCT_TB "
			+ "WHERE "
			+ "PRODUCT_NAME LIKE '%#{word,jdbcType=VARCHAR}%'")
	List<ProductBean> SearchProduct(String word);
	
}
