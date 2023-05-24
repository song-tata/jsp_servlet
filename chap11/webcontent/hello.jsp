<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	String name = "racoon";//변수 선언
	public String getName(){// getter 접근자 생성
		return name;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>첫번째 JSP</title>
</head>
<body>
	<h1>드디어 JSP!!</h1>
	<img src="IMAGES/MENU.jpg">
	<img src="IMAGES/ERRORjpg.jpg">
	<h2>귀여운 <%=getName()%></h2>
	
</body>
</html>