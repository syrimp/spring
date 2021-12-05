package web.page.domain;

import lombok.Data;

@Data
public class BoardVO {
	
private String title;
private String content;
private Long bno;
private String id;
private String regdate;
private String updatedate;

}
