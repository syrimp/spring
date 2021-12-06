<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp" %>
	<div id="board_wrap">
		<div id="list_container">
			<h1>Q&A</h1>
			
			<table class="list_table">
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
					<tr>
						<td><c:out value="${temp.bno }" /></td>	
						<td><a href="/get/????${temp.bno}"><c:out value="${temp.title }" /></a></td>
						<td><c:out value="${temp.id }"/></td>	
						<td><c:out value="${temp.regdate }" /></td>	
						<td><c:out value="${temp.updatedate }" /></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>