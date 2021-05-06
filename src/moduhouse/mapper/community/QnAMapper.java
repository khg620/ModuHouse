package moduhouse.mapper.community;

import org.apache.ibatis.annotations.Select;

import moduhouse.bean.community.ContentBean;

public interface QnAMapper {

	//게시글 조회
	@Select("select "
			+ "content_idx,"
			+ "content_subject,"
			+ "content_text,"
			+ "user_nickname as writer_nickname, "
			+ "content_file,"
			+ "content_board_idx, "
			+ "to_char(content_date,'YYYY-MM-DD') as content_date,"
			+ "read_count,"
			+ "clip_count "
			+ "from "
			+ "community_qna_tb "
			+ "join "
			+ "user_tb "
			+ "on (content_writer_idx = user_idx) "
			+ "where content_idx = #{content_idx}")
	ContentBean getContentInfo(int content_idx);

}
