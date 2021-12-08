<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<%@include file="../includes/header.jsp" %>
<div class="size">
	<div class="center">
		<div class="login_container">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="/profile/login">
					<h1 style="text-align: center;">LOGIN</h1>
					<div class="form-group">
						<input type="text" id="input_id" placeholder="ID" name="id" maxlength="20">
						<input type="password" id="input_pw" placeholder="비밀번호" name="pw" maxlength="20">
					</div>
					<input type="submit" id="login_btn" class="btn btn-primary form-control"value="LOGIN">
				</form>
			</div>
		</div>
	</div>
</div>

		<script type="text/javascript">
			const login_btn = document.querySelector("#login_btn");
			const profile = "${profile}";
			const msg = "${msg}";
			
			function loginState(){
			    if(profile=='' && msg == ''){
			    	if(!success){
			    		alert("아이디나 비밀번호가 다릅니다.1");
			    	}
			    } else if(sessionStorage.getItem("profile")==null && msg == "false"){
			    	alert("아이디나 비밀번호가 다릅니다.2");
			    }
			}
			login_btn.addEventListener("click", loginState);
		</script>
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="/resources/bootstrop.js"></script>
</body>
</html>