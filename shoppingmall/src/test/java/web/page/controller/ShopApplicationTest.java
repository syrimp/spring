package web.page.controller;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.junit.Test;

import web.page.domain.itemVO;
import web.page.service.NaverShoppingAPIService;
import web.page.service.ShopApplication;

public class ShopApplicationTest {

	public static void main(String[] args) {
		ShopApplication api = new ShopApplication();
		String jsonText= api.search("바지",5);
		JSONParser parser = new JSONParser();
        JSONObject obj = null;
        
        try {
             obj = (JSONObject)parser.parse(jsonText);
        } catch (ParseException e) {
             System.out.println("변환에 실패");
             e.printStackTrace();
        }
		
        ArrayList<JSONObject> arr= (ArrayList<JSONObject>)obj.get("items");
        
        for(JSONObject itemjson: arr) {
        	itemVO item = new itemVO(itemjson);
        	System.out.println(item.getTitle());
        }
		
		
	}
	
	@Test
	public void test() {
		NaverShoppingAPIService service = new NaverShoppingAPIService();
		System.out.println(service);
	}
	
	@Test
	public void test2() {
		System.out.println("dd");
	}

}
