package moduhouse.dao.include;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import moduhouse.bean.include.StoreTopMenuBean;
import moduhouse.mapper.include.StoreTopMenuMapper;

@Repository
public class StoreTopMenuDao {

	@Autowired
	private StoreTopMenuMapper storeTopMenuMapper;
	
	public List<StoreTopMenuBean> getStoreTopMenuList() {
		 
		return storeTopMenuMapper.getStoreTopMenuList();
	}

}
