package web.page.controller;

import java.util.ArrayList;

import org.junit.Test;

import web.page.domain.itemVO;
import web.page.service.NaverShoppingAPIService;

public class Aaa {

	@Test
	public void test() {
		//NaverShoppingAPIService service = new NaverShoppingAPIService();
		//System.out.println(service);
	}
	
	@Test
	public void test2() {
		System.out.println("dd");
	}
	
	@Test
	public void test3() {
		System.out.println("dd");
	}
	
	@Test
	public void testserv() {
		NaverShoppingAPIService ser = new NaverShoppingAPIService();
		ArrayList<itemVO> list = ser.searchResult("flower",3);
		System.out.println(list);
		
	}
	
	
}
