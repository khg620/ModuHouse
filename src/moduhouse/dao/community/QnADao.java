package moduhouse.dao.community;

import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.community.ContentBean;
import moduhouse.mapper.community.QnAMapper;

@Repository
@RequiredArgsConstructor
public class QnADao {
	
	private final QnAMapper qnaMapper;
	
	public ContentBean getContentInfo(int content_idx) {
		System.out.println(qnaMapper.getContentInfo(content_idx));
		return qnaMapper.getContentInfo(content_idx);
	}

}
