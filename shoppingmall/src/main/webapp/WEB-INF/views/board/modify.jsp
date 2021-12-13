<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp" %>

<div id="board_wrap">
		<div id="list_container">
			<h1>Q&A</h1>
			<form action="/board/modify" method="post">
				<table class="get_table">
						<tr>
							<th>글 번호</th><td><input type="text" name="bno" value="${board.bno }" readonly></td>	
						</tr><tr>
							<th>제목</th><td><input type="text" name="title" value="${board.title }"></td>
						</tr><tr>
							<th>회원 아이디</th><td><input type="text" name="id" value="${board.id }" readonly></td>
						</tr><tr>
							<th>작성일</th><td><input type="text" name="regdate" value="${board.regdate }" readonly></td>
						</tr><tr>
							<th>수정일</th><td><input type="text" name="updatedate" value="${board.updatedate }" readonly></td>
						</tr><tr>
							<th>내용</th><td><input type="text" name="content" value="${board.content }"></td>
						</tr>
				</table>
				<button type="submit">확인</button>
			</form>
		</div>
	</div>

<%@include file="../includes/footer.jsp" %>