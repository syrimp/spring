<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../includes/header.jsp" %>
	
	<form id="scroll" action="/search/page">
		<input type="hidden" name="scroll"  />
		<button type="submit" id ="scrollbtn" hidden="hidden"></button>
	</form>
	
	<div id="print_result">
		<div class="items">
			<c:forEach var="temp" items="${result }" >
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