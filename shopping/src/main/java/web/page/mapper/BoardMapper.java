package web.page.mapper;

import org.apache.ibatis.annotations.Select;

public interface BoardMapper {

	@Select("select sysdate from dual")
	public String getTime();
	public String getTime2();
	
}
