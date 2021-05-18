package moduhouse.service.store;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.store.CategoryBean;
import moduhouse.bean.store.ProductBean;
import moduhouse.dao.store.StoreMainDao;

@Service
@RequiredArgsConstructor
public class StoreMainService {

	private final StoreMainDao storeMainDao;
	
	//스토어 메인 카테고리
	public List<CategoryBean> getAllCategory() {
		return storeMainDao.getAllCategory();
	}

	//스토어 메인 인기상품 리스트
	public List<ProductBean> getProductList() {
		return storeMainDao.getProductList();
	}
}
