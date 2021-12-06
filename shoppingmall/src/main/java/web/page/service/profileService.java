package web.page.service;

import web.page.domain.profileVO;

public interface profileService {

	public void join(String id,String pw, String address, String email, String name, String phone);
	
	public profileVO login(String id,String pw);
	
}
