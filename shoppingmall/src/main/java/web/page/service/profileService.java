package web.page.service;

import web.page.domain.profileVO;

public interface profileService {

	public void join(profileVO profile);
	
	public profileVO login(String id,String pw);
	
}
