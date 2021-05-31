package moduhouse.bean.store;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductBean {
	
	private int product_idx;
	private int main_category_idx;
	private int sub_category_idx;
	private String product_brand;
	private String product_name;
	private String product_image;
	private MultipartFile product_image2;
	private int product_price;
	private int product_discount_rate;
	private double product_point;
	private String product_shipping_company;
	private int product_shipping_fee;
	private String product_info;
	private String product_receiving_date;
	private int product_view_cnt;
	private int product_sales_qty;
	
}
