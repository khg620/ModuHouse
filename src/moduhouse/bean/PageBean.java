package moduhouse.bean;

import lombok.Getter;

@Getter
public class PageBean {

	private int min; //최소 페이지번호
	private int max; //최대 페이지번호
	private int prev; //이전버튼
	private int next; //다음버튼
	private int pageCnt; //총 페이지 개수
	private int currentPage; //현재 페이지번호
	
	/*
	 * contentCnt : 전체 글 개수
	 * currentPage : 현재 페이지
	 * contentListCnt : 페이지 당 글 개수
	 * paginationCnt : 페이지네이션 개수
	 * */
	public PageBean(int contentCnt, int currentPage, int contentListCnt, int paginationCnt) {
		this.currentPage = currentPage;
		
		pageCnt = contentCnt/contentListCnt;
		if(pageCnt % contentListCnt > 0) {
			pageCnt++;
		}
		
		min = ((currentPage - 1)/paginationCnt) * paginationCnt +1;
		
		max = min + (paginationCnt -1);
		if(max > pageCnt) {
			max = pageCnt;
		}
		
		prev = min - 1;
		next = max + 1;
		if(next > pageCnt) {
			next = pageCnt;
		}
	}
}
