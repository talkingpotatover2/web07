<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = "pinksung";
	String pwd = "1234";
	
	String user_id = request.getParameter("id");
	String user_pwd = request.getParameter("pwd");
	String idcheck = request.getParameter("idcheck");
	
	if(user_id.equals(id) && user_pwd.equals(pwd)){
		Cookie c = new Cookie("userid",URLEncoder.encode(user_id, "UTF-8"));
		c.setMaxAge(60*60);
		response.addCookie(c);
		
		Cookie s = new Cookie("idcheck",idcheck);
		c.setMaxAge(60*60);
		response.addCookie(s);
%>
	로그인 성공
<% 	}else{%>
	로그인 실패
<%	} %>
</body>
</html>