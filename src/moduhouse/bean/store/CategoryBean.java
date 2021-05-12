package moduhouse.bean.store;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CategoryBean {

	private int main_category_idx;
	private String main_category_name;
	private String main_category_image;
	private int sub_category_idx;
	private String sub_category_name;
}
