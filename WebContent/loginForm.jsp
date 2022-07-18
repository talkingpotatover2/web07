<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	String id = null;
	String check = null;
	
	for(Cookie c : cookies){
		if(c.getName().equals("idcheck")){
			check = c.getValue();
		}
		if(c.getName().equals("userid")){
			id = c.getValue();
		}
	}
%>
	<form method="post" action="testLogin.jsp">
		<label for="userid">아이디: </label>
		<input type="text" name="id" value="<%=id%>">
		<br>
		<label for="userpwd">암&nbsp;호: </label>
		<input type="password" name="pwd">
		<br>
		<input type="checkbox" name="idcheck" checked="<%=check %>">아이디 저장
		<br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>