package web.page.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {  //검색기준
	private int pageNum;
	private int amount;
	
	public Criteria() {
		this(1, 20); //기본값 1페이지, 20개
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
