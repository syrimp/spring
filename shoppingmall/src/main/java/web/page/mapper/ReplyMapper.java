package web.page.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import web.page.domain.Criteria;
import web.page.domain.ReplyVO;

public interface ReplyMapper {
	public int insert(ReplyVO vo);
	
	public ReplyVO reaad(Long rno);
	
	public int delete(Long bno);
	
	public int update(ReplyVO reply);
	
	public List<ReplyVO> getListWithPaging(@Param("cri") Criteria cri, @Param("bno") long bno);
}
