<%@page import="com.mysql.cj.jdbc.ha.ReplicationMySQLConnection"%>
<%@page import="com.mycompany.dao.userDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
request.setCharacterEncoding("utf-8");
response.setContentType("text/html; charset=utf-8");

String u_id = request.getParameter("u_id");
String u_pw = request.getParameter("u_pw");

userDAO dao = new userDAO();

int code = dao.login(u_id, u_pw);
if(code == 1){
	out.print("존재하지않는 아이디입니다.");
}else if(code==2){
	out.print("비밀번호가 일치하지 않습니다.");
}else{
	int data = 0;
	session.setAttribute("u_id", u_id);
	response.sendRedirect("../index.jsp?flag"+data);
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