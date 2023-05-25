<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    isErrorPage="true"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>에러 발생!</title>
</head>
<body>
	<%-- <h1><%=exception.toString() %></h1>--%>
	<h1><%=exception.getMessage() %></h1>
	<%--<h1><%=exception.printStackTrace() %></h1> --%>
	<img alt="에러에러" src="/chap12/IMAGES/ERROR.jpg">
	<a href="add.html">다시 입력하기</a>
</body>
</html>