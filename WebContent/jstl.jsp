<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="age" value="30" scope="page"></c:set>
	나이:<c:out value="${age}">10</c:out><br>
	
	<c:remove var="age" scope="page"></c:remove>
	나이:<c:out value="${age}">10</c:out><br>
	
	<c:catch var="errmsg">
		예외 발생 전 <br>
		<%= 1/0 %><br>
		예외 발생 후 <br>
	</c:catch>
	
	<c:out value="${errmsg}"></c:out>
</body>
</html>