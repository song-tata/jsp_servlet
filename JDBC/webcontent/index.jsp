<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
.button {
	display: inline-block;
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	text-decoration: none;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
}

.wrapper {
	margin: auto;
	width: 300px;
	height: 100px;
}
</style>
</head>

<body>
	<div class="wrapper">
		<%
		String u_id = (String) session.getAttribute("u_id");
		int flag = Integer.parseInt(request.getParameter("flag"));
		if (u_id == null && flag != 0) {
		%>
		<a href="login.jsp" class="button">�α���</a> 
		<a href="join.jsp" class="button">ȸ������</a>
		<%
		} else {
			
		%>
		<input type="button" value="�α׾ƿ�" onclick="logout()"> 
		<a href="join.jsp" class="button">ȸ��Ż��</a>
		<%
		}
		%>

	
	</div>
</body>
</html>