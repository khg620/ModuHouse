package moduhouse.dao.store;

import java.util.List;

import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.store.CategoryBean;
import moduhouse.bean.store.ProductBean;
import moduhouse.mapper.store.StoreMainMapper;

@Repository
@RequiredArgsConstructor
public class StoreMainDao {
	
	private final StoreMainMapper storeMainMapper;
	
	//스토어 메인 카테고리
	public List<CategoryBean> getAllCategory() {
		return storeMainMapper.getAllCategory();
	}

	//스토어 메인 투데이딜 리스트
	public List<ProductBean> getTodayDealList() {
		return storeMainMapper.getTodayDealList();
	}
	
	//스토어 메인 인기상품 리스트
	public List<ProductBean> getPopularList() {
		return storeMainMapper.getPopularList();
	}
	
	//상품명 검색
	public List<ProductBean> SearchProduct(String word) {
		return storeMainMapper.SearchProduct(word);
	}
}
