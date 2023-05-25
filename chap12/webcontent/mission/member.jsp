<%@page import="java.sql.Date"%>
<%@page import="java.util.List"%>
<%@page import="sec02.ex01.memberDAO"%>
<%@page import="sec02.ex01.memverVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file = "serch.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 정보 출력창</title>
</head>
<style>
	body {
		font-family: Arial, sans-serif;
	}

	table {
		border-collapse: collapse;
		width: 800px;
		margin: 0 auto;
	}

	th, td {
		padding: 10px;
		text-align: center;
	}

	th {
		background-color: #333;
		color: #fff;
	}

	tr:nth-child(even) {
		background-color: #f2f2f2;
	}

	tr:hover {
		background-color: #ddd;
	}
</style>
<body>
	
	<%
	request.setCharacterEncoding("utf-8");
	String _name = request.getParameter("name");
	memverVO memVo = new memverVO();
	memVo.setName(_name);
	memberDAO dao = new memberDAO();
	List<memverVO> memberlist = dao.listmembers(memVo);
	%>
	<table border="1" width="800px" align="center">
		<tr>
			<th colspan="5">회원 정보 출력</th>
		</tr>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>가입일</th>
		</tr>
		<%
		for(int i = 0; i<memberlist.size();i++){
			memverVO vo = (memverVO) memberlist.get(i);
			String id = vo.getId();
			String pwd = vo.getPwd();
			String name = vo.getName();
			String email = vo.getEmail();
			Date joindate = vo.getJoinDate();
	 %>
	 	<tr>
	 		<td><%=id %></td>
	 		<td><%=pwd %></td>
	 		<td><%=name %></td>
	 		<td><%=email %></td>
	 		<td><%=joindate %></td>
	 	</tr>	
<%
}
%>
	</table>
</body>
</html>