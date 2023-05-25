<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>로그인</title>
<style>
body {
	background-color: #FCE4EC;
	color: #333333;
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 20px;
}

form {
	max-width: 300px;
	margin: 0 auto;
}

label {
	display: block;
	margin-bottom: 10px;
	font-weight: bold;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 8px;
	margin-bottom: 10px;
	border: 1px solid #FF80AB;
	border-radius: 4px;
}

input[type="submit"] {
	background-color: #FF4081;
	color: #FFFFFF;
	border: none;
	padding: 10px 16px;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;
	border-radius: 4px;
	width: 100%;
}
</style>
</head>
<body>
	<%
	String msg = request.getParameter("msg");
	%>
	<h1><%=msg%></h1>
	<form action="result.jsp" method="post">
		<label for="u_id">아이디:</label> <input type="text" name="u_id">
		<br> <label for="u_pw">비밀번호:</label> <input type="password"
			name="u_pw"> <br> <input type="submit" value="로그인">
	</form>

</body>
</html>
