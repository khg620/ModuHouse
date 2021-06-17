package moduhouse.bean.order;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DeliveryBean {

	private int delivery_idx;
	private int order_idx;
	private String receiver_name;
	private String receiver_hp;
	private String delivery_zipcode;
	private String delivery_address;
	private String delivery_method;
	private String delivery_message;
	private String delivery_state;
	private String tracking_number;
}
