<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset="UTF-8">
<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet"href="/resources/bootstrap.css">
<title> 오늘 모입조 login 페이지</title>
<link rel="icon" href="https://us.louisvuitton.com/static_lvfront/favicon.ico" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<link href="/resources/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="nav_wrap">
	    <nav class="navbar navbar-expand-lg navbar-light bg-light">
	        <div class="container-fluid">
	            <a class="navbar-brand" href="index">
	                <h2>오늘 모입조?</h2>
	            </a>
	            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
	                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
	                aria-label="Toggle navigation">
	                <span class="navbar-toggler-icon"></span>
	            </button>
	            <div class="collapse navbar-collapse" id="navbarSupportedContent">
	                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	                    <li class="nav-item">
	                        <a class="nav-link" href="#">WOMENSTYLE</a>
	                    </li>
	                    <li class="nav-item dropdown">
	                        <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
	                            aria-expanded="false">
	                            MEN
	                        </a>
	                    </li>
	                </ul>
	                <div id="smallNav">
	                    <a href="/search/join"><span class="bef_login">Join</span></a>
	                    <a href="/search/login"><span class="bef_login">Login</span></a>
	                    <a href="#"><span class="af_login">Cart</span></a>
	                </div>
	                <form class="d-flex" action="/search/submit">
	                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="keyword" required />
	                    <button class="btn btn-outline-success" type="submit"><img src="/resources/search (1).png"></button>
	                </form>
	            </div>
	        </div>
	    </nav>
    </div>
	<div class="join_container">
		<div class="size">
			<form id="join_form" method="post" action="joinAction.jsp">
				<h1>회원가입</h1> <!-- 아이디, 비밀번호, 이름, 휴대폰번호, 주소, 이메일 -->
				<div class="form-group">
					<input type="text"  placeholder="아이디" name="ID" maxlength="20" required/><br />
					<input type="password"  placeholder="비밀번호" name="Password" maxlength="20" required/><br />
					<input type="text" placeholder="이름" name="Name" maxlength="20" required/><br />
					<input type="tel"  placeholder="휴대폰 번호" name="phone" maxlength="20" required/><br />
					<input type="email"  placeholder="이메일" name="Email" maxlength="20" required/><br />
					<input type="text"  placeholder="주소" name="address" required/><br />
					<input type="submit" class="btn btn-primary" value="회원가입">
				</div>
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="/resources/bootstrop.js"></script>
</body>
</html>