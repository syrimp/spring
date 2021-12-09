<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../includes/header.jsp" %>
	<div id="board_wrap">
		<div id="list_container">
			<h1>글 등록</h1>
			<form action="/board/register" id="register_form" method="post">
				<table class="register_table">
						<tr>
							<th>제목</th>	&nbsp;<td><input type="text" name="title"/></td>
							
						</tr>
						<tr>
							
							<th>내용</th>&nbsp;<td><textarea name="content" rows="6" cols="40"></textarea></td>
						</tr>						
				</table>
				<input type="hidden" name="id" value="${profile.id }"/>
				<button type="submit">확인</button>
			</form>
		</div>
	</div>
</body>
</html>