<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp" %>
	<div id="board_wrap">
	
		<h1>고객게시판</h1><br />
		<div id="list_container">	
			<table id="list_table">
				<thead>
					<tr>
						<th>글 번호</th>
						<th>제목</th>
						<th>회원 아이디</th>
						<th>작성일</th>
						<th>수정일</th>
					</tr>
				</thead>
					
				<tbody>
				
				<c:forEach var="temp" items="${list }">
					<tr class="tr_s">
						<td><c:out value="${temp.bno }" /></td>	
						<td><a href="/board/get?bno=${temp.bno}"><c:out value="${temp.title }" /></a></td>
						<td><c:out value="${temp.id }"/></td>	
						<td><c:out value="${temp.regdate }" /></td>	
						<td><c:out value="${temp.updatedate }" /></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		<form id="list_form">
			<a href="/board/register"><button type="button" id="register">글 등록</button></a>
			
		</form>
	</div>
</body>
</html>