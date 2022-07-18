<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String idcheck = "";
	String userid = "";
	String cookie = request.getHeader("Cookie");
	
	if(cookie != null) {
		Cookie cookies[] = request.getCookies();
		
		for(int i=0; i<cookies.length; i++) {
			if(cookies[i].getName().equals("idcheck")){
				idcheck = cookies[i].getValue();
			}
			
			if(cookies[i].getName().equals("userid")){
				userid = cookies[i].getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%
	Cookie[] cookies = request.getCookies();
	String id = "";
	String check = null;
	
	for(Cookie c : cookies){
		if(c.getName().equals("idcheck")){
			if(c.getValue().equals("on")){
				check = "checked";
			} else{
				check = null;
			}
		}
		if(c.getName().equals("userid")){
			id = c.getValue();
		}
	}
%> --%>
	<form method="post" action="testLogin.jsp">
		<label for="userid">아이디: </label>
		<input type="text" name="id" value="<%=idcheck != "" ? userid : ""%>">
		<br>
		<label for="userpwd">암&nbsp;호: </label>
		<input type="password" name="pwd">
		<br>
		<input type="checkbox" name="idcheck" <%=idcheck != "" ? "checked" : "" %>>아이디 저장
		<br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>