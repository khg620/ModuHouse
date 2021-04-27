package moduhouse.service.include;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import moduhouse.bean.include.StoreTopMenuBean;
import moduhouse.dao.include.StoreTopMenuDao;

@Service
public class StoreTopMenuService {

	@Autowired
	private StoreTopMenuDao storeTopMenuDao;
	
	public List<StoreTopMenuBean> getStoreTopMenuList() {
		
		return storeTopMenuDao.getStoreTopMenuList();
	}

}
