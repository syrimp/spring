package web.page.service;

import web.page.domain.profileVO;
import web.page.mapper.profileMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Service
public class profileServiceImpl implements profileService {
	
	private profileMapper mapper;

	@Override
	public void join(String id,String pw, String address, String email, String name, String phone) {
		log.info("가입");
		profileVO profile = new profileVO();
		profile.setId(id);
		profile.setAddress(address);
		profile.setEmail(email);
		profile.setPw(pw);
		profile.setPhone(phone);
		profile.setName(name);
		mapper.join(profile);
	}
	
	@Override
	public profileVO login(String id,String pw) {
		log.info("로그인");
		return mapper.login(id,pw);
	}

}
