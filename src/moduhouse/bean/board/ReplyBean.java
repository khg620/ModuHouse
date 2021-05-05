package moduhouse.bean.board;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReplyBean {
	
	private int reply_idx;
	private int reply_writer_idx;
	private String reply_text;
	private String reply_date;
	private int content_idx;
	private int board_info_idx;
}
