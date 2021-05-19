package moduhouse.mapper.community;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

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
			+ 		"TO_CHAR(CONTENT_DATE,'YYYY-MM-DD HH24:MI:SS') AS CONTENT_DATE, "
			+ 		"READ_COUNT, "
			+ 		"CLIP_COUNT, "
			+ 		"BOARD_INFO_IDX,"
			+ 		"COMMENT_CNT "
			+  "FROM "
			+ 		"COMMUNITY_QNA_TB "
			+  "JOIN "
			+ 		"USER_TB "
			+  "ON(CONTENT_WRITER_IDX = USER_IDX) "
			+  "ORDER BY CONTENT_DATE DESC")
	ArrayList<ContentBean> getAllContent(RowBounds rowBounds);
	
	//페이징 전체 글 개수 조회
	@Select("SELECT "
			+ 		"COUNT(*) "
			+ 	"FROM "
			+ 		"COMMUNITY_QNA_TB")
	int getContentCnt();

	//게시글 단건 조회
	@Select("SELECT "
			+ 		"CONTENT_IDX, "
			+ 		"CONTENT_SUBJECT, "
			+ 		"CONTENT_TEXT, "
			+ 		"CONTENT_FILE, "
			+ 		"USER_NICKNAME AS WRITER_NICKNAME, "
			+     "CONTENT_WRITER_IDX, "
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
	
	//게시글 덧글 수 조회
	@Select("SELECT COUNT(*) "
			+ 	"FROM "
			+   "COMMUNITY_QNA_COMMENT_TB "
			+ 	"WHERE "
			+   "CONTENT_IDX = #{content_idx}"
			)
	int getCommentCnt(int content_idx);
	
	//게시글 저장-1
	//글 작성 후 글 읽기 페이지로 돌아갈 때 빈에 content_idx를 세팅하기 위함
	@SelectKey(statement = "SELECT COMMUNITY_QNA_SEQ.NEXTVAL FROM DUAL", keyProperty="content_idx", before=true, resultType=int.class)
	//게시글 저장-2
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
			+ 			"#{content_idx}, "
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

	//게시글 수정
	@Update("UPDATE "
			+ 	"COMMUNITY_QNA_TB "
			+ 	"SET "
			+ 	"CONTENT_SUBJECT=#{content_subject}, "
			+ 	"CONTENT_TEXT=#{content_text}, "
			+ 	"CONTENT_FILE=#{content_file} "
			+ 	"WHERE CONTENT_IDX = #{content_idx} "
			+   "AND "
			+ 	"BOARD_INFO_IDX = #{board_info_idx}")
	void updateQnAContent(ContentBean editContentBean);

	//게시글 삭제
	@Delete("DELETE "
			+ 	"FROM "
			+   "COMMUNITY_QNA_TB "
			+		"WHERE "
			+   "CONTENT_IDX = #{content_idx} "
			+   "AND "
			+ 	"BOARD_INFO_IDX = #{board_info_idx}")
	void deleteContent(@Param(value = "board_info_idx") int board_info_idx, @Param(value="content_idx") int content_idx);

	
	
	
	
}
