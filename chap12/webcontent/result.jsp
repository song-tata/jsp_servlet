<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String u_id = request.getParameter("user_id");
	String u_pw = request.getParameter("user_pw");
	%>
	<h1>���̵� : <%=u_id %></h1>
	<h1>��й�ȣ : <%=u_pw %></h1>
</body>
</html>