package moduhouse.mapper.community;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import moduhouse.bean.community.CommentBean;
import moduhouse.bean.community.ContentBean;
import moduhouse.bean.keywords.KeywordsBean;

public interface QnAMapper {
	
	//전체 게시글 목록 조회
	@Select("SELECT "
			+ 		"CONTENT_IDX, "
			+ 		"CONTENT_SUBJECT, "
			+ 		"CONTENT_TEXT, "
			+ 		"CONTENT_FILE, "
			+ 		"CONTENT_WRITER_IDX, "
			+     "USER_NICKNAME AS WRITER_NICKNAME, "
			+ 		"CONTENT_DATE, "
			+ 		"READ_COUNT, "
			+ 		"CLIP_COUNT, "
			+ 		"BOARD_INFO_IDX,"
			+ 		"COMMENT_CNT "
			+  "FROM "
			+ 		"COMMUNITY_QNA_TB "
			+  "JOIN "
			+ 		"USER_TB "
			+  "ON(CONTENT_WRITER_IDX = USER_IDX)")
	ArrayList<ContentBean> getAllContent();

	//게시글 단건 조회
	@Select("SELECT "
			+ 		"CONTENT_IDX, "
			+ 		"CONTENT_SUBJECT, "
			+ 		"CONTENT_TEXT, "
			+ 		"CONTENT_FILE, "
			+ 		"USER_NICKNAME AS WRITER_NICKNAME, "
			+ 		"BOARD_INFO_IDX, "
			+ 		"TO_CHAR(CONTENT_DATE,'YYYY/MM/DD/HH24:MI:SS') AS CONTENT_DATE, "
			+ 		"READ_COUNT, "
			+ 		"CLIP_COUNT, "
			+     "COMMENT_CNT "
			+ "FROM "
			+ 		"COMMUNITY_QNA_TB "
			+ "JOIN "
			+ 		"USER_TB ON (CONTENT_WRITER_IDX = USER_IDX) "
			+ "WHERE "
			+ 		"CONTENT_IDX = #{content_idx}")
	ContentBean getContentInfo(int content_idx);
	
	//게시글 키워드 조회
	@Select("SELECT "
			+ 		"KEYWORDS_ITEM "
			+ "FROM "
			+ 		"KEYWORDS_TB "
			+ "JOIN "
			+ 		"SELECT_KEYWORDS_TB "
			+ "USING"
			+     "(KEYWORDS_IDX) "
			+ "JOIN "
			+ 		"COMMUNITY_QNA_TB "
			+ "USING"
			+     "(CONTENT_IDX) "
			+ "WHERE "
			+ 		"CONTENT_IDX = #{content_idx}")
	ArrayList<KeywordsBean> getContentKeywords(int content_idx);
	
	//게시글 덧글 조회 -- 일단 시간으로만 최신순 정렬, 답글 기능 구현 시 정렬 수정
	@Select("SELECT COMMENT_IDX, "
			+ 					"USER_NICKNAME, "
			+ 					"COMMENT_TEXT, "
			+ 					"COMMENT_DATE, "
			+ 					"CONTENT_IDX, "
			+ 					"BOARD_INFO_IDX "
			+   "FROM "
			+ 			"COMMUNITY_QNA_COMMENT_TB "
			+   "JOIN "
			+ 			"USER_TB "
			+ 	"ON"
			+ 			"(COMMENT_WRITER_IDX = USER_IDX) "
			+ 	"WHERE "
			+ 			"CONTENT_IDX = #{content_idx} "
			+ 	"ORDER BY "
			+ 			"COMMENT_DATE DESC")
	ArrayList<CommentBean> getContentComments(int content_idx);
	
	//게시글 저장
	@Insert("INSERT INTO "
			+ 			"COMMUNITY_QNA_TB"
			+ 	"("
			+ 			"CONTENT_IDX, "
			+ 			"CONTENT_SUBJECT, "
			+ 			"CONTENT_TEXT, "
			+ 			"CONTENT_FILE, "
			+ 			"CONTENT_WRITER_IDX, "
			+ 			"CONTENT_DATE, "
			+ 			"BOARD_INFO_IDX) "
			+ 	"VALUES"
			+ 	"("
			+ 			"COMMUNITY_QNA_SEQ.NEXTVAL, "
			+ 			"#{content_subject}, "
			+ 			"#{content_text}, "
			+ 			"#{content_file}, "
			+ 			"#{content_writer_idx}, "
			+ 			"SYSDATE, "
			+ 			"#{board_info_idx}"
			+ 	")")
	void addQnAContent(ContentBean writeContentBean);

	//게시글 덧글 등록
	@Select("INSERT INTO "
			+ 			"COMMUNITY_QNA_COMMENT_TB "
			+ 	"("
			+ 			"COMMENT_IDX, "
			+ 			"COMMENT_WRITER_IDX, "
			+ 			"COMMENT_TEXT, "
			+ 			"COMMENT_DATE, "
			+ 			"CONTENT_IDX, "
			+ 			"BOARD_INFO_IDX"
			+ 	") "
			+ 	"VALUES "
			+ 	"("
			+ 			"QNA_COMMENT_SEQ.NEXTVAL, "
			+ 			"#{comment_writer_idx}, "
			+ 			"#{comment_text}, "
			+ 			"SYSDATE, "
			+ 			"#{content_idx}, "
			+ 			"#{board_info_idx}"
			+ ")")
	void addQnAComment(CommentBean writeCommentBean);
	
	
	
}
