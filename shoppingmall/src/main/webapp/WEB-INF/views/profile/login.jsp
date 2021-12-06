<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp" %>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="/login">
					<h1 style="text-align: center;">LOGIN</h1>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="ID" name="id" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="pw" maxlength="20">
					</div>
					<input type="submit"class="btn btn-primary form-control"value="login">
				</form>
			</div>
		</div>
	</div>
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="/resources/bootstrop.js"></script>
</body>
</html>