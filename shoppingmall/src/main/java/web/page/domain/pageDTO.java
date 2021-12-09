package web.page.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class pageDTO {
	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private int total;
	private Criteria cri;
	
	public pageDTO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		
		this.endPage = (int)(Math.ceil(cri.getPageNum()/ 10.0)) *10;//끝번호. 15페이지일때 끝번호는 20, 3페이지는 10
		this.startPage = this.endPage -9;
		
		int realEnd = (int)(Math.ceil((total*1.0) / cri.getAmount())); //전체 데이터 수를 페이지 당 데이터로 나누면 페이지 수 나옴.
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1; // 1보다 작아지지 않은 경우에만 존재.
		
		this.next = this.endPage <realEnd; //끝페이지보다 작아야 존재.
		
	}
}
