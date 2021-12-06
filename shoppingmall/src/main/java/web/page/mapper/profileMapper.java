package web.page.mapper;

import org.apache.ibatis.annotations.Param;
import web.page.domain.profileVO;

public interface profileMapper {
	
	//회원가입
	public void join(profileVO profile);
	
	//로그인
	public profileVO login(@Param("id")String id,@Param("pw")String pw);
}
