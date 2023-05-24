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

	if (u_id == null || u_id.length() == 0) {
	%>
	<h2>잘못 로그인하셨습니다 아이디와 비밀번호를 확인해주세요</h2>
	<a href='/chap12/login.html'>돌아가기</a>
	<%
	} else {
		if (u_id.equals("admin") && u_pw.equals("admin")) {
	%>
	<h1>관리자 접속 완료</h1>
	<%
		} else {
	%>
	<h1>
	환영합니다
	</h1>
		<h2>
			아이디 :
			<%=u_id%></h2>
		<h2>
			비밀번호 :
			<%=u_pw%></h2>
	
	<%
		}
	}
	%>



</body>
<script type="text/javascript">
	
</script>
</html>