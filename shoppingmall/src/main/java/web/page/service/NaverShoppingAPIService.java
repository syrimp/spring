package web.page.service;

import java.util.ArrayList;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

import web.page.domain.itemVO;

@Service
public class NaverShoppingAPIService {
	public String keyword= null;
	public int start =1;
	
	public ArrayList<itemVO> searchResult(String keyword, int start) {
		ShopApplication api = new ShopApplication();
		String jsonText= api.search(keyword, start);
		JSONParser parser = new JSONParser();
        JSONObject obj = null;
        
        try {
             obj = (JSONObject)parser.parse(jsonText);
        } catch (ParseException e) {
             System.out.println("변환에 실패");
             e.printStackTrace();
        }
		
        ArrayList<JSONObject> arr= (ArrayList<JSONObject>)obj.get("items");
        
        ArrayList<itemVO> list = new ArrayList<itemVO>();
        for(JSONObject itemjson: arr) {
        	itemVO item = new itemVO(itemjson);
        	list.add(item);
        }
		return list;
	}

}
