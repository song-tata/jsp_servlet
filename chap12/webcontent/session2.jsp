<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
//세션 객체에 name 키로 바인딩된 value값을 가지고 온다.
String name = (String) session.getAttribute("name");
//세션 객체에 age 키로 20이라는 value 바인딩
int age = (int) session.getAttribute("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
얘는 왜 html에서 안보일까?
자바 코드는 html의 코드에서는 안보임
결국 jsp도 서블릿의 일종인것
 --%>

	이름은 <%=name %> 입니다<br>
	나이는 <%=age %> 입니다
	
</body>
</html>