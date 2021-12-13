package web.page.domain;

import org.json.simple.JSONObject;

import lombok.Data;

@Data
public class DbitemVO {
	private String pcode="";
	private String pname="";
	private String link="";
	private String image="";
	private int price=0;
	
	public DbitemVO(JSONObject itemjson, String code) {
		this.pcode = code;
		this.pname = (String)itemjson.get("title");
		this.link = (String)itemjson.get("link");
        this.image = (String)itemjson.get("image");
        this.price = Integer.parseInt((String)itemjson.get("lprice"));	
	}
}
