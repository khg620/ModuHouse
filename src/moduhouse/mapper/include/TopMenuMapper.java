package moduhouse.mapper.include;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import moduhouse.bean.include.TopMenuBean;

public interface TopMenuMapper{

	@Select("select main_menu_idx, main_menu_name from main_menu_tb order by main_menu_idx")
	List<TopMenuBean> getTopMenuList();
}
