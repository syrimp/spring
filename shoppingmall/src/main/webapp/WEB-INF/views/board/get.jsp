<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@include file="../includes/header.jsp" %>

	<div id="board_wrap">
		<div id="list_container">
			<h1>Q&A</h1>
			
			<table class="get_table">
					<tr>
						<th>글 번호</th><td>${board.bno }</td>	
					</tr><tr>
						<th>제목</th><td>${board.title }</td>
					</tr><tr>
						<th>회원 아이디</th><td>${board.id }</td>
					</tr><tr>
						<th>작성일</th><td>${board.regdate }</td>
					</tr><tr>
						<th>수정일</th><td>${board.updatedate }</td>
					</tr><tr>
						<th>내용</th><td>${board.content }</td>
					</tr>
			</table>
		</div>
	</div>


</body>
</html>