<%@page
	import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
int dan = Integer.parseInt(request.getParameter("gugu"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
table tr, td {
	width: 200px;
	height: 20px;
	text-align : center;
	background-color: yellow;
	border-radius: 10px; 
	
}
</style>
</head>
<body>
	<h1>
		<%=dan%>단 출력
	</h1>
	<table border=1px>

		<%
		for (int i = 1; i < 10; i++) {
		%>
		<tr>
			<td><%=dan%>곱하기<%=i%></td>
			<td><%=dan * i%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>