package moduhouse.dao.community;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.community.CommentBean;
import moduhouse.bean.community.ContentBean;
import moduhouse.bean.keywords.KeywordsBean;
import moduhouse.mapper.community.QnAKeywordsMapper;
import moduhouse.mapper.community.QnAMapper;

@Repository
@RequiredArgsConstructor
public class QnADao {
	
	private final QnAMapper qnaMapper;
	private final QnAKeywordsMapper qnaKeywordsMapper;
	
	//커뮤니티 질문과 답변 메인페이지 - 전체 게시글 목록
	public ArrayList<ContentBean> getAllContent(RowBounds rowBounds) {
	 	return qnaMapper.getAllContent(rowBounds);
	}
	
	//페이징
	public int getContentCnt() {
		return qnaMapper.getContentCnt();
	}
	
	//커뮤니티 질문과 답변 메인페이지 - 키워드
	public ArrayList<KeywordsBean> getAllKeywords() {
		return qnaKeywordsMapper.getAllKeywords();
	}

	//게시글 조회
	public ContentBean getContentInfo(int content_idx) {
		
		return qnaMapper.getContentInfo(content_idx);
	}

	//게시글 키워드 조회
	public ArrayList<KeywordsBean> getContentKeywords(int content_idx) {
		return qnaMapper.getContentKeywords(content_idx);
	}

	//게시글 덧글 조회
	public ArrayList<CommentBean> getContentComments(int content_idx) {
		return qnaMapper.getContentComments(content_idx);
	}
	
	//게시글 덧글 수 조회
	public int getCommentCnt(int content_idx) {
		return qnaMapper.getCommentCnt(content_idx);
	}
	
	//게시글 등록
	public void addQnAContent(ContentBean writeContentBean) {
		qnaMapper.addQnAContent(writeContentBean);
	}
	
	//게시글 덧글 등록
	public void addQnAComment(CommentBean writeCommentBean) {
		qnaMapper.addQnAComment(writeCommentBean);
	}

	//게시글 수정
	public void updateQnAContent(ContentBean editContentBean) {
		qnaMapper.updateQnAContent(editContentBean);
	}

	//게시글 삭제
	public void deleteContent(int board_info_idx, int content_idx) {
		qnaMapper.deleteContent(board_info_idx,content_idx);
	}


	

}