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
<title>ȸ�� ���</title>
</head>
<body>
	<table>
		<tr>
			<th>ȸ����ȣ</th>
			<th>�̸�</th>
			<th>��й�ȣ</th>
			<th>������</th>
		</tr>
		<%
		
		
		if(list.isEmpty()){
		%>	<h1>ȸ�������� �����ϴ�. ȸ�������� �Է����ּ���</h1>
			<a href="memberForm.html">ȸ������ �Է��ϱ�</a>	

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