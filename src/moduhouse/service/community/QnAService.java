package moduhouse.service.community;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.community.ContentBean;
import moduhouse.dao.community.QnADao;

@Service
@RequiredArgsConstructor
public class QnAService {
	
	private final QnADao qnaDao;
	
	//게시글 조회
	public ContentBean getContentInfo(int content_idx) {
		return qnaDao.getContentInfo(content_idx);
	}

}
