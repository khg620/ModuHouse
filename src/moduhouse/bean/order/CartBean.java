package moduhouse.bean.order;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartBean {
	
	private int cart_idx;
	private int user_idx;
	private int product_idx;
	private String product_brand;
	private String product_name;
	private String product_image;
	private int option1_idx;
	private int option1_price;
	private int option2_idx;
	private int option2_price;
	private int each_price;
	private String option_name;
	private int order_qty;
	private int total_price;
	private String delivery_method;
	private String delivery_company;
	private int product_shipping_fee;
}
