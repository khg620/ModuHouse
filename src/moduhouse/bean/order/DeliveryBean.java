package moduhouse.bean.order;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class DeliveryBean {

	private int delivery_idx;
	private String order_number;
	private String receiver_name;
	private String receiver_hp1;
	private String receiver_hp2;
	private String delivery_zipcode;
	private String delivery_address1;
	private String delivery_address2;
	private boolean default_address_yn;
	private String delivery_method;
	private String delivery_company;
	private String delivery_message;
	private String delivery_state;
	private String tracking_number;
}
