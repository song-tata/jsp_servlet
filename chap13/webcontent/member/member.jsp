<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*,sec01.ex01.*"%>
<%
request.setCharacterEncoding("EUC-KR");
Integer num_id = Integer.parseInt(request.getParameter("num_id"));
String name = request.getParameter("name");
String pwd = request.getParameter("pwd");
Timestamp join = Timestamp.valueOf(request.getParameter("joinDate"));

MemberBean mb = new MemberBean(num_id, name, pwd, join);
MemberDAO dao = new MemberDAO();
List<MemberBean> list = dao.mblist();
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<title>회원 목록</title>
</head>
<body>
	<table>
		<tr>
			<th>회원번호</th>
			<th>이름</th>
			<th>비밀번호</th>
			<th>가입일</th>
		</tr>
		<%
		
		
		if(list.isEmpty()){
		%>	<h1>회원정보가 없습니다. 회원정보를 입력해주세요</h1>
			<a href="memberForm.html">회원정보 입력하기</a>	

		<%
		}
			for(int i = 0; i < list.size();i++){
%>	
<%
			}
%>
	</table>
</body>
</html>