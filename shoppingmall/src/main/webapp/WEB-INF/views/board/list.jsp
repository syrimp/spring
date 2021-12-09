<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp" %>
	<div id="board_wrap">
		<h1>고객게시판</h1><br />
		<div id="list_container">
		<form id="list_form">
			<a href="/board/register"><button type="button" id="register">글 등록</button></a>
		</form>
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
		
		<div class='list_button'>
			<ul class="list_button_ul">
				<c:if test="${pageMaker.prev}">
					<li class="list_button_li previous"><a href="${pageMaker.startPage-1 }">Previous</a></li>
				</c:if>
				
				<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
					<li class="list_button_li"><a href="${num }"><c:out value="${num }"/></a></li>				
				</c:forEach>
				
				<c:if test="${pageMaker.next}">
					<li class="list_button_li next"><a href="${pageMaker.startPage+1 }">Next</a></li>
				</c:if>
			</ul>
		</div>
		
		<form id="actionForm" action="/board/list" method="get">
			<input type="hidden" name='pageNum' value="${pageMaker.cri.pageNum }">
			<input type="hidden" name='amount' value="${pageMaker.cri.amount }">
		</form>
	</div>
	<script type="text/javascript">
		const actionForm = document.querySelector("#actionForm");
		const listButtonList = document.querySelectorAll("list_button_li");
	
		function actions(element){
		    e.preventDefault();
		    element.firstChild.setAttribute('href', 'actionForm.getElementsByName("pageNum").value');
		    actionForm.submit();
		}
	
		listButtonList.forEach(element => {
		    element.firstChild.addEventListener("click", actions(element));
		});
		
		
		
		
	</script>
</body>
</html>