package web.page.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;
import org.springframework.web.client.RestTemplate;

import web.page.domain.DbitemVO;
import web.page.mapper.SearchsaveMapper;

@Service
public class GetItemApplication {
	@Autowired
	SearchsaveMapper mapper;
	
	public String search(String keyword) {
		RestTemplate rest = new RestTemplate(); //코드 단순화, RESTful방식
		HttpHeaders headers = new HttpHeaders();
		headers.add("X-Naver-Client-Id", "XmBI_U3wmI2KKJ6RZR61");
		headers.add("X-Naver-Client-Secret", "LIKlsE3FZc");
		String body = "";
	
		HttpEntity<String> requestEntity = new HttpEntity<String>(body, headers);
		ResponseEntity<String> responseEntity = 
					rest.exchange("https://openapi.naver.com/v1/search/shop.json?query="+keyword+"&display=100", 
							HttpMethod.GET, requestEntity, String.class);
		HttpStatus httpStatus = responseEntity.getStatusCode(); //http 상태코드
		int status = httpStatus.value();
		String response = responseEntity.getBody();
		System.out.println("Response status: " + status);
		System.out.println(response);
		System.out.println(response.getClass().getName());
	
		return response;
	}
	
	
	public String keyword= null;
	public int start =1;
	public String code="";
	
	public void searchResult(String keyword, String code) {
		GetItemApplication api = new GetItemApplication();
		String jsonText= api.search(keyword);
		JSONParser parser = new JSONParser();
        JSONObject obj = null;
        
        try {
             obj = (JSONObject)parser.parse(jsonText);
        } catch (ParseException e) {
             System.out.println("변환에 실패");
             e.printStackTrace();
        }
		
        List<JSONObject> arr= (ArrayList<JSONObject>)obj.get("items");
        
        List<DbitemVO> list = new ArrayList<DbitemVO>();
        for(JSONObject itemjson: arr) {
        	DbitemVO item = new DbitemVO(itemjson, code);
        	list.add(item);
        }
        mapper.searchSave(list);  
	}

	public List<DbitemVO> printhome(String temp){
		return mapper.suggestion(temp);
		
	}
	
	
	
	
	
	
	
	
}
