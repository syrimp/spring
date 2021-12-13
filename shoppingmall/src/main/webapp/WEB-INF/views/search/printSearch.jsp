<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../includes/header.jsp" %>
		
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

	<div id="scroll_result"></div>
	
    <%@include file="../includes/footer.jsp" %>
	<script>
	var page = 0;
   
   $(window).on("scroll", function() {
		var scrollHeight = $(document).height();
		var scrollPosition = $(window).height() + $(window).scrollTop();		

		if (scrollPosition > scrollHeight - 100) {		
			page +=1;
			$.ajax({
		           url : '/search/page',
		           type : 'POST',
		           data : {
		              'page' : page
		          },
		           dataType:"json",
		           success : function(data) {
		              var a = '';
		               a += '<div id="print_result">';
		               a += '<div class="items">';
		               a += '<c:forEach var="temp" items="'+${scroll_result }+'" >';
		               a += '<div class="item"><a href="'+${temp.link }+'">';
		               a += '<img alt="'+${temp.title }+" src="+${temp.image }+'" /><br/><span id="title">'+${temp.title }+'</span><br /><span id="price">'+${temp.lprice }+'원</span>';
		               a += "</a></div></c:forEach></div></div>";
		            }
		            $('#scroll_result').html(a);
		      });
		}
	});

	</script>
