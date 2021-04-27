package moduhouse.mapper.include;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import moduhouse.bean.include.StoreTopMenuBean;

public interface StoreTopMenuMapper{

	@Select("select main_menu_idx, main_menu_name from main_menu_tb order by main_menu_idx")
	List<StoreTopMenuBean> getStoreTopMenuList();
}
