<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%!

	String name = "너굴";
	public String getName() {
		return name;
	}
%>
<%
String age = request.getParameter("age");
/*
여러줄 주석
*/
//한줄주석
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>스크립틀릿 연습</title>
</head>
<body>
	<h1>
		안녕하세요<%=getName()%>님 어서오세요
	</h1>
	<h1>
		나이는
		<%=age%>입니다
	</h1>
	<h1>
		키는
		<%="50cm"%>입니다
	</h1>
	<h1>
		성인이 될 때 까지 남은 년수는
		<%=20 - Integer.parseInt(age)%>년 입니다
	</h1>
</body>
</html>