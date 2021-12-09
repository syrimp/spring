package web.page.mapper;

import java.util.List;
import web.page.domain.BoardVO;
import web.page.domain.Criteria;


public interface BoardMapper {

	public List<BoardVO> getList(); //전체 목록 가져오기
	
	public List<BoardVO> getListWithPaging(Criteria cri);
	
	public void create(BoardVO board); //글 작성
	
	public BoardVO read(Long bno); //글 조회 
	
	public int update(BoardVO board); //수정
	
	public int delete(Long bno);//삭제
	
}
