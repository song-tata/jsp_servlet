<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	String name = "racoon";//���� ����
	public String getName(){// getter ������ ����
		return name;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ù��° JSP</title>
</head>
<body>
	<h1>���� JSP!!</h1>
	<img src="IMAGES/MENU.jpg">
	<img src="IMAGES/ERRORjpg.jpg">
	<h2>�Ϳ��� <%=getName()%></h2>
	
</body>
</html>