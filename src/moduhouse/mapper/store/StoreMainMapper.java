package moduhouse.mapper.store;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import moduhouse.bean.store.CategoryBean;

public interface StoreMainMapper {
	
	//상품 카테고리(상위카테고리)
	@Select("SELECT "
			+ 		"MAIN_CATEGORY_IDX, "
			+ 		"MAIN_CATEGORY_NAME, "
			+			"MAIN_CATEGORY_IMAGE "
			+ 	"FROM "
			+ 		"PRODUCT_MAIN_CATEGORY_TB")
	List<CategoryBean> getAllCategory();
	
}
