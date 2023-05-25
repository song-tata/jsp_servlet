<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String uu_id = request.getParameter("u_id");
	if (uu_id == null || uu_id.length() == 0) {
		String msg = "아이디를 입력해 주세요";
	%>

	<jsp:forward page="login.jsp">
		<jsp:param name="msg" value="<%=msg%>"></jsp:param>

	</jsp:forward>
	<script type="text/javascript">
		alert("아이디를 입력해주세요");
		location.href = "login.jsp";
	</script>
	<%
	}
	%>


	<h1>
		환영합니다
		<%=uu_id%></h1>
</body>
</html>