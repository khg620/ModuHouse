package moduhouse.bean.community;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CommentBean {
	
	private int comment_idx;
	private int comment_writer_idx;
	private String comment_text;
	private String comment_date;
	private int content_idx;
	private int board_info_idx;
	private String user_nickname;
	private int read_cnt;
}
