package moduhouse.service.include;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import moduhouse.bean.include.TopMenuBean;
import moduhouse.dao.include.TopMenuDao;

@Service
public class TopMenuService {

	@Autowired
	private TopMenuDao topMenuDao;
	
	public List<TopMenuBean> getTopMenuList() {
		
		return topMenuDao.getTopMenuList();
	}

}
