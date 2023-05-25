<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    errorPage="addexception.jsp"%>
    
<%
int num = Integer.parseInt(request.getParameter("num"));
int total = 0;
for(int i = 1; i<=num;i++){
	total += i;
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>1부터 n까지 합계 구하기</title>
</head>
<body>
	<h1> 1부터 <%=num %>까지의 합은 <%=total %>입니다</h1>
</body>
</html>