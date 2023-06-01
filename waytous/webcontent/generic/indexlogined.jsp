<%@page import="waytous.join.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
UserDAO udao = new UserDAO();

String u_id = request.getParameter("u_id");
String u_pwd = request.getParameter("u_pwd");

if(udao.loginCheck(u_pwd, u_id)){
	session.setAttribute("u_id", u_id);
	response.sendRedirect("../board/postbox.jsp");
}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>