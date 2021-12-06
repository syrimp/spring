<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../includes/header.jsp" %>
	<div id="board_wrap">
		<div id="list_container">
			<h1>Q&A 등록</h1>
			
			<table class="register_table">
				<form id="register_form">
					<tr>
						<th>제목</th>	<td><input type="text" name="title"/></td>
						<th>내용</th><td><input type="text" name="content"/></td>
					</tr>
				</form>
			</table>
</body>
</html>