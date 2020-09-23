<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	div{
		width : 50%;
		height : 200px;
		border : 1px solid blue;
		padding : 10px;
	}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String area = request.getParameter("area");
	
	//엔터 \r\n 동시실행 -  \r은 커세어를 앞으로 \n은 줄 바꾸기
	area = area.replaceAll("\r", "").replaceAll("\n", "<br>");
%>
<%= name %>님이 남긴말<br>
<br>
<div><%=area %></div>
</body>
</html>