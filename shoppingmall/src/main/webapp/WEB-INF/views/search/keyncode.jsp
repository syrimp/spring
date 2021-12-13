<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../includes/header.jsp" %>

	 <form action="/search/saving">
         <input  type="text" placeholder="제품종류" name="keyword" required />
         <input  type="text" placeholder="제품코드"  name="code" required />
         <button type="submit"><img src="/resources/search (1).png"></button>
     </form>

 <%@include file="../includes/footer.jsp" %>