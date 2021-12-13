<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="modal" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close" aria-hidden="true">&times;</button>
	        <h4 class="modal-title" id="myModalLabel">글 삭제</h4>
	      </div>
	      <div class="modal-body">
	      	  삭제하시겠습니까?
	      </div>
	      <div class="modal-footer">
		     	<button type="button" class="btn btn-primary" id="delete_y">확인</button>
		        <button type="button" class="btn btn-default" id="delete_n">취소</button>
	      </div>
	    </div>
	  </div>
	</div>
	
<%@include file="../includes/header.jsp" %>

	<!-- Modal -->
	

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
				<button id="modal_btn" type="button" >삭제</button>
			</c:if>
			<form id="hidden_del_form" method="post" action="/board/remove?bno=${board.bno }">
				<input type="hidden"/>
			</form>
		</div>
	</div>
	
	<%@include file="../includes/footer.jsp" %>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$('#modal_btn').on("click", function(){
				$('#deleteModal').modal('show');
			});
			$("#delete_y").on("click", function(){
				$("#hidden_del_form").submit();
			});
			$("#delete_n, .close").on("click", function(){
				$('#deleteModal').modal('hide');
			});
		});
	</script>
</body>
</html>