package moduhouse.bean.order;

import javax.validation.constraints.Pattern;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderBean {

	private int order_idx;
	private String order_number;
	private int user_idx;
	private String orderer_name;
	private String orderer_email1;
	private String orderer_email2;
	@Pattern(regexp = "(^01[01679])-\\d{3,4}-\\d{4}$")
	private String orderer_hp1;
	private String orderer_hp2;
	private int product_idx;
	private String product_brand;
	private String product_name;
	private String product_image;
	private String option_name;
	private int each_price; //선택한 옵션 당 가격(화면에서 회색박스 하나)
	private int option1_idx;
	private int option1_price;
	private int option2_idx;
	private int option2_price;
	private int order_qty;
	private int total_price; //최종 결제 금액
	private String payment_method; //결제 수단
	private String order_date;
	private int product_shipping_fee;
	private int product_point; //적립 예정 포인트
	private int used_point; //결제 시 사용 포인트
	private String delivery_method; //배송방법(delivery_tb에 속하는 속성, 편의상 orderBean에도 추가)
	private String delivery_company; //배송사명(delivery_tb에 속하는 속성, 편의상 orderBean에도 추가)
	private int cart_idx;//cart_tb
	private String order_status;
}
