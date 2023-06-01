<%@page import="waytous.join.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
UserDAO udao = new UserDAO();

String u_id = request.getParameter("u_id");



String u_pwd = request.getParameter("u_pwd");
int user_num = udao.searchUser_num(u_id);

if(udao.loginCheck(u_pwd, u_id) == 2){
	out.print("로그인 실패");
}else if(udao.loginCheck(u_pwd, u_id)==1){
	out.print("로그인 실패");
}else if(udao.loginCheck(u_pwd, u_id)==0){
	session.setAttribute("u_id", u_id);
	session.setAttribute("user_num", user_num);
	response.sendRedirect("../board/postbox.jsp");
}else{
	out.print("무언가 잘못되었습니다!");
}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>