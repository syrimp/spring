package web.page.domain;

import lombok.Data;

@Data
public class ReplyVO {

	private Long bno;
	private Long rno;
	private String reply;
	private String replyer;
	private String replydate;
	private String updatedate;
}
