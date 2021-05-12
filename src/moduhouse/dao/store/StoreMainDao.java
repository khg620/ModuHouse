package moduhouse.dao.store;

import java.util.List;

import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.store.CategoryBean;
import moduhouse.mapper.store.StoreMainMapper;

@Repository
@RequiredArgsConstructor
public class StoreMainDao {
	
	private final StoreMainMapper storeMainMapper;
	
	//스토어 메인 카테고리
	public List<CategoryBean> getAllCategory() {
		return storeMainMapper.getAllCategory();
	}
}
