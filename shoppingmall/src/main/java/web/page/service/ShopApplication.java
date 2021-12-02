package web.page.service;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class ShopApplication {
	public String search(String keyword, int page) {
		RestTemplate rest = new RestTemplate(); //코드 단순화, RESTful방식
		HttpHeaders headers = new HttpHeaders();
		headers.add("X-Naver-Client-Id", "XmBI_U3wmI2KKJ6RZR61");
		headers.add("X-Naver-Client-Secret", "LIKlsE3FZc");
		String body = "";
	
		HttpEntity<String> requestEntity = new HttpEntity<String>(body, headers);
		ResponseEntity<String> responseEntity = 
					rest.exchange("https://openapi.naver.com/v1/search/shop.json?query="+keyword+"&display=50&start="+page, 
							HttpMethod.GET, requestEntity, String.class);
		HttpStatus httpStatus = responseEntity.getStatusCode(); //http 상태코드
		int status = httpStatus.value();
		String response = responseEntity.getBody();
		System.out.println("Response status: " + status);
		System.out.println(response);
		System.out.println(response.getClass().getName());
	
		return response;
	}

	
}
