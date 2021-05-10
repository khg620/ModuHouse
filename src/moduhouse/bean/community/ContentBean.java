package moduhouse.bean.community;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ContentBean {
	
	private int content_idx;
	@NotBlank
	private String content_subject;
	@NotBlank
	private String content_text;
	private String content_file;
	private MultipartFile content_file2;
	private int content_writer_idx;
	private int board_info_idx;
	private String content_date;
	private int read_count; //조회수
	private int clip_count; //좋아요수
	private String writer_nickname;
	private String keywords_item;
	private int comment_cnt; //게시글에 달린 댓글 수 
}
