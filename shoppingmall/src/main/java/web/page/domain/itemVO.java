package web.page.domain;

import org.json.simple.JSONObject;

import lombok.Getter;

@Getter
public class itemVO {
	private String title="";
	private String link="";
	private String image="";
	private int lprice=0;
	
	public itemVO(JSONObject itemjson) {
		this.title = (String)itemjson.get("title");
		this.link = (String)itemjson.get("link");
        this.image = (String)itemjson.get("image");
        this.lprice = Integer.parseInt((String)itemjson.get("lprice"));	
	}
}
