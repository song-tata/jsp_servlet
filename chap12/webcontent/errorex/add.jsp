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
<title>1���� n���� �հ� ���ϱ�</title>
</head>
<body>
	<h1> 1���� <%=num %>������ ���� <%=total %>�Դϴ�</h1>
</body>
</html>