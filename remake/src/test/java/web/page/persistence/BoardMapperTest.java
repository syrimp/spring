package web.page.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import web.page.mapper.BoardMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTest {

	@Setter(onMethod_= @Autowired)
	private BoardMapper mapper;
	
	@Test
	public void testGetTime() {
		log.info(mapper.getClass().getName());
		log.info(mapper.getTime());
	}
	@Test
	public void testGetTime2() {
		log.info("getTime2");
		log.info(mapper.getTime2());
	}
	
	
}
