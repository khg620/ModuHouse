package moduhouse.bean.order;

import javax.validation.constraints.Pattern;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderBean {

	private int order_idx;
	private int order_number;
	private int user_idx;
	private String user_name;
	@Pattern(regexp = "(^01[01679])-\\d{3,4}-\\d{4}$")
	private int orderer_hp;
	private int product_idx;
	private int option1_idx;
	private int option1_price;
	private int option2_idx;
	private String option2_name;
	private int option2_price;
	private int order_qty;
	private int order_price;
	private String order_date;
}
