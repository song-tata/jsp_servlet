<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="sec02.ex01.memberDAO"%>
<%@page import="sec02.ex01.memverVO"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="serch2.jsp">
		<input type="text" name="name1"> <input type="submit"
			value="ã�ƺ���">
			
	</form>
	
<%
	request.setCharacterEncoding("utf-8");
	String _name = request.getParameter("name");
	memverVO memVo = new memverVO();
	memVo.setName(_name);
	memberDAO dao = new memberDAO();
	List<memverVO> memberlist = dao.listmembers();
	String serchname = (String) request.getAttribute("name");
	%>
	<table border="1" width="800px" align="center">
		<tr>
			<th colspan="5">ȸ�� ���� ���</th>
		</tr>
		<tr>
			<th>���̵�</th>
			<th>��й�ȣ</th>
			<th>�̸�</th>
			<th>�̸���</th>
			<th>������</th>
		</tr>
		<%
		for (int i = 0; i < memberlist.size(); i++) {
			
			memverVO vo = (memverVO) memberlist.get(i);
			String id = vo.getId();
			String pwd = vo.getPwd();
			String name = vo.getName();
			String email = vo.getEmail();
			Date joindate = vo.getJoinDate();
			
			if(serchname.equals(name)){ %>
		<tr>
			<td><%=id%></td>
			<td><%=pwd%></td>
			<td><%=name%></td>
			<td><%=email%></td>
			<td><%=joindate%></td>
		</tr>
<%
			break;
			}
%>
<%
		}
%>
	</table>
</body>
</html>