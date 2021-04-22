package moduhouse.dao.include;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import moduhouse.bean.include.TopMenuBean;
import moduhouse.mapper.include.TopMenuMapper;

@Repository
public class TopMenuDao {

	@Autowired
	private TopMenuMapper topMenuMapper;
	
	public List<TopMenuBean> getTopMenuList() {
		 
		return topMenuMapper.getTopMenuList();
	}

}
