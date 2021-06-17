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
	private String orderer_name;
	private String orderer_email1;
	private String orderer_email2;
	@Pattern(regexp = "(^01[01679])-\\d{3,4}-\\d{4}$")
	private String orderer_hp;
	private int product_idx;
	private String product_name;
	private String product_image;
	private int option1_idx;
	private int option1_price;
	private int option2_idx;
	private String option2_name;
	private int option2_price;
	private int order_qty;
	private int order_price;
	private String order_date;
	private int product_shipping_fee;
	private int product_point;
}
