<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>오늘 날씨 어때?</title>

    <link rel="icon" href="https://us.louisvuitton.com/static_lvfront/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link href="/resources/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="nav_wrap">
		 <nav class="navbar navbar-expand-lg navbar-light bg-light">
	        <div class="container-fluid">
	            <a class="navbar-brand" href="#">
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
	                    <a href="#"><span class="bef_login">Join</span></a>
	                    <a href="#"><span class="bef_login">Login</span></a>
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
	
	<form id="scroll" action="/search/page">
		<input type="hidden" name="scroll"  />
		<button type="submit" id ="scrollbtn" hidden="hidden"></button>
	</form>
	
	<div id="print_result">
		<div class="items">
			<c:forEach var="temp" items="${list }" >
				<div class="item">
					<a href="${temp.link }">
						<img alt="${temp.title }" src="${temp.image }" /><br/>
						<span id="title">${temp.title }</span><br />
						<span id="price">${temp.lprice }원</span>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
        crossorigin="anonymous"></script>
    <script src="/resources/weather.js"></script>
    <script>
    	function handleScroll(){
        	const scroll = document.getElementById("scrollbtn");
	        scroll.onclick();
	    }
	    document.addEventListener("scroll", handleScroll);
    </script>
</body>
</html>