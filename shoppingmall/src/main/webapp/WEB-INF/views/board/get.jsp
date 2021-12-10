<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@include file="../includes/header.jsp" %>

	<!-- Modal -->
	<div class="modal" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">글 삭제</h4>
	      </div>
	      <div class="modal-body">
	      	  삭제하시겠습니까?
	      </div>
	      <div class="modal-footer">
	     	 <form action="/board/remove?bno=${board.bno}" method="post">
		     	<button type="submit" class="btn btn-primary">확인</button>
		        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
	        </form>
	      </div>
	    </div>
	  </div>
	</div>

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
			
			<a href="/board/list"><button type="button">목록</button></a>
			
			<c:if test="${profile.id == board.id }">
				<a href="/board/modify?bno=${board.bno }"><button type="button">수정</button></a><br/>
				<button id="modal_btn" type="button" data-target="#deleteModal" data-toggle="modal">삭제</button>
			</c:if>
		</div>
	</div>
	<script>
		$(document).ready(function(){
			$('#modal_btn').click(function(){
				$('#deleteModal').modal('show');
			});
		});
	</script>
	
</body>
</html>