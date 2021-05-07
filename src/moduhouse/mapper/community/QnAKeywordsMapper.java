package moduhouse.mapper.community;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;

import moduhouse.bean.keywords.KeywordsBean;

public interface QnAKeywordsMapper {

	//질문과 답변 메인 페이지
	@Select("SELECT "
					+ "KEYWORDS_IDX,"
					+ "KEYWORDS_CATEGORY_NAME, "
					+ "KEYWORDS_ITEM "
			  + "FROM "
					+ "KEYWORDS_TB")
	ArrayList<KeywordsBean> getAllKeywords();
}
