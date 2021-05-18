package moduhouse.service.community;

import java.io.File;
import java.util.ArrayList;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.community.CommentBean;
import moduhouse.bean.community.ContentBean;
import moduhouse.bean.keywords.KeywordsBean;
import moduhouse.bean.user.UserBean;
import moduhouse.dao.community.QnADao;

@Service
@RequiredArgsConstructor
@PropertySource("/WEB-INF/properties/option.properties")
public class QnAService {
	
	private final QnADao qnaDao;
	private final UserBean signInUserBean;
	
	//게시글 첨부파일 저장 경로
	@Value("${path.upload}")
	private String path_upload;
	
	//커뮤니티 질문과 답변 메인페이지 - 전체 게시글 목록
	public ArrayList<ContentBean> getAllContent() {
		return qnaDao.getAllContent();
	}
	
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
		return qnaDao.getContentComments(content_idx);
	}
	
	//게시글 덧글 수 조회
	public int getCommentCnt(int content_idx) {
		return qnaDao.getCommentCnt(content_idx);
	}
	
	//게시글 등록
	public void addQnAContent(ContentBean writeContentBean) {
		writeContentBean.setContent_writer_idx(signInUserBean.getUser_idx());
		
		//파일이 첨부되었을 경우
		if(writeContentBean.getContent_file2().getSize() > 0) {
			String content_file = uploadContentFile(writeContentBean.getContent_file2());
			writeContentBean.setContent_file(content_file);
		}
		
		qnaDao.addQnAContent(writeContentBean);
	}

	//게시글 첨부파일 저장, 파일명 반환
	private String uploadContentFile(MultipartFile upload_file) {
		//파일명 생성
		String content_file = System.currentTimeMillis() + upload_file.getOriginalFilename();
		
		//파일 저장
		try {
			upload_file.transferTo(new File(path_upload + "/" + content_file));
		} catch(Exception e) {
			e.printStackTrace();
		}
		return content_file;
	}

	//게시글 덧글 등록
	public void addQnAComment(CommentBean writeCommentBean) {
		qnaDao.addQnAComment(writeCommentBean);
	}

	//게시글 수정
	public void updateQnAContent(ContentBean editContentBean) {
		if(editContentBean.getContent_file2().getSize() > 0) {
			String content_file = uploadContentFile(editContentBean.getContent_file2());
			editContentBean.setContent_file(content_file);
		}
		
		qnaDao.updateQnAContent(editContentBean);
	}

	//게시글 삭제
	public void deleteContent(int board_info_idx, int content_idx) {
		qnaDao.deleteContent(board_info_idx,content_idx);
	}

	
}
