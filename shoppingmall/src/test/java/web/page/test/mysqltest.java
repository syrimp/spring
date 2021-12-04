package web.page.test;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.Data;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
@Data
public class mysqltest {
	@Inject
	private SqlSessionFactory sqlFactory;
	@Inject
	private DataSource ds;
	
	@Test
	 public void testFactory(){
	     System.out.println("\n >>>>>>>>>> sqlFactory 출력 : "+sqlFactory);
	 }
	 
	 @Test
	 public void testSession() throws Exception{
	     
	     try(SqlSession session = sqlFactory.openSession()){
	         
	         System.out.println(" >>>>>>>>>> session 출력 : "+session+"\n");
	         
	     } catch (Exception e) {
	         e.printStackTrace();
	     }
	 }
	
	
	@Test
	 public void testConnection() throws Exception {

	     try (Connection con = ds.getConnection()) {

	         System.out.println("\n >>>>>>>>>> Connection 출력 : " + con + "\n");

	     } catch (Exception e) {
	         e.printStackTrace();
	     }
	 }
	
	
}
