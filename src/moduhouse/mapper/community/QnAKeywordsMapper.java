package moduhouse.mapper.community;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;

import moduhouse.bean.keywords.KeywordsBean;

public interface QnAKeywordsMapper {
	
	//질문과 답변 메인 페이지 키워드 카테고리 수
	@Select("SELECT "
			+ 		"COUNT(KEYWORDS_CATEGORY_IDX) "
			+ 	"FROM "
			+ 	"KEYWORDS_CATEGORY_TB")
	int getKeywordsCategoryCnt();

	//질문과 답변 메인 페이지 키워드 - 
	@Select("SELECT "
					+ "KEYWORDS_IDX,"
					+ "KEYWORDS_CATEGORY_IDX, "
					+ "KEYWORDS_CATEGORY_NAME, "
					+ "KEYWORDS_ITEM "
			  + "FROM "
					+ "KEYWORDS_TB")
	ArrayList<KeywordsBean> getAllKeywords();

}
