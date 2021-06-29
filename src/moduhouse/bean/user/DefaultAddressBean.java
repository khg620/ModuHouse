package moduhouse.bean.user;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DefaultAddressBean {

	private int address_idx;
	private int user_idx;
	private String receiver_name;
	private String receiver_hp1;
	private String receiver_hp2;
	private String delivery_zipcode;
	private String delivery_address1;
	private String delivery_address2;
	private String delivery_message;
}
