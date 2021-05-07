package moduhouse.service.community;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.community.CommentBean;
import moduhouse.bean.community.ContentBean;
import moduhouse.bean.keywords.KeywordsBean;
import moduhouse.dao.community.QnADao;

@Service
@RequiredArgsConstructor
public class QnAService {
	
	private final QnADao qnaDao;
	
	//커뮤니티 질문과 답변 메인페이지 - 키워드
	public ArrayList<KeywordsBean> getAllKeywords() {
		return qnaDao.getAllKeywords();
	}
	
	//게시글 조회
	public ContentBean getContentInfo(int content_idx) {
		return qnaDao.getContentInfo(content_idx);
	}
	
	//게시글 키워드 조회
	public ArrayList<KeywordsBean> getContentKeywords(int content_idx) {
		return qnaDao.getContentKeywords(content_idx);
	}
	
	//게시글 덧글 조회
	public ArrayList<CommentBean> getContentComments(int content_idx) {
		System.out.println(qnaDao.getContentComments(content_idx));
		return qnaDao.getContentComments(content_idx);
	}


}
