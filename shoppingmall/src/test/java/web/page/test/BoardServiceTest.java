package web.page.test;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import web.page.domain.BoardVO;
import web.page.domain.Criteria;
import web.page.service.BoardService;
import web.page.service.GetItemApplication;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTest {

	@Setter(onMethod_= {@Autowired})
	private BoardService service;
	
	@Setter(onMethod_= {@Autowired})
	private GetItemApplication search;
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testRegister() {
		BoardVO board = new BoardVO();
		board.setTitle("새로 작성하는 글");
		board.setContent("새로 작성하는 내용ㅇㅇㅇㅇㅇㅇ");
		board.setId("사랑과 평화");
		service.register(board);
		
		log.info("생성된 게시물의 번호: "+ board.getBno());
	}
	
	
	@Test
	public void testGetList() {
//		service.getList().forEach(board ->log.info(board));
		service.getList(new Criteria(2, 10)).forEach(board ->log.info(board));
	}
	
	@Test
	public void testGet() {
		log.info(service.get(1L));
	}
	
	@Test
	public void testDelete() {
		log.info("delete result: "+service.remove(2L));
	}
	
	@Test
	public void testUpdate() {
		BoardVO board = service.get(1L);
		
		if(board ==null) {
			return;
		}
		board.setTitle("제목 수정합니다.");
		log.info("modify result: "+service.modify(board));
	}
	
	
	@Test
	public void testsave() {
		search.searchResult("패딩", "5a");
		
	}
	
	
	
	
}
