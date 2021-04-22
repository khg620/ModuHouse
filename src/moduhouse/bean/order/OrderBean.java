package moduhouse.bean.order;

import javax.validation.constraints.Pattern;

public class OrderBean {

	@Pattern(regexp = "(^01[01679])-\\d{3,4}-\\d{4}$")
	private String user_phone;
}
