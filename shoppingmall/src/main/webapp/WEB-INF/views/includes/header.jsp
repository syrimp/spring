<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W#C DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오늘 날씨 어때?</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="icon" href="https://us.louisvuitton.com/static_lvfront/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
	<link href="/resources/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="nav_wrap">
	    <nav class="navbar navbar-expand-lg navbar-light bg-light">
	        <div class="container-fluid">
	            <a class="navbar-brand" href="/">
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
	                        <a class="nav-link" href="#">STYLE</a>
	                    </li>
	                    <li class="nav-item dropdown">
	                    <c:if test="${profile == null}">
	                        <a class="nav-link bo_beflog" href="">고객게시판</a>
	                     </c:if>
	                     <c:if test="${profile != null}">
	                        <a class="nav-link a_aflog" href="../board/list">고객게시판</a>
	                     </c:if>
	                    </li>
	                </ul>
	                <div id="smallNav">
	                	<c:if test="${profile == null}">
		                    <a href="/profile/join"><span>Join</span></a>
		                    <a href="/profile/login"><span>Login</span></a>
		                    <a href="" class="a_beflog"><span>Book</span></a>
	                    </c:if>
	                    <c:if test="${profile != null}">
	                    	<span>${profile.id }님 환영합니다.</span>
		                    <a href="/profile/logout"><span>Logout</span></a>
		                    <a href="/search/book" class="a_aflog"><span>Book</span></a>
	                    </c:if>
	                </div>
	                <form class="d-flex" action="/search/submit">
	                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="keyword" required />
	                    <button class="btn btn-outline-success" type="submit"><img src="/resources/search (1).png"></button>
	                </form>
	            </div>
	        </div>
	    </nav>
    </div>

    <script>
    	const board_a = document.querySelector(".bo_beflog");
    	const book_a = document.querySelector(".a_beflog");
    	function notMember(){
    		alert("로그인 후 이용가능한 기능입니다.");
    	}
    	
    	board_a.addEventListener("click", notMember);
    	book_a.addEventListener("click", notMember);
    </script>
   
    