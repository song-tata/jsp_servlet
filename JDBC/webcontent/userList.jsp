<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.mycompany.dbcon.ConnectionPool" %>
<%@page import="java.sql.*" %>

<%
Connection con = ConnectionPool.get();
String sql = "SELECT id,name,ts FROM user";
PreparedStatement pstmt = con.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();

String str="";
while(rs.next()){
	
	str += "<tr><td>"+rs.getString("id")+"</td>";
	str += "<td>"+rs.getString("name")+"</td>";
	str += "<td>"+rs.getString("ts")+"</td></tr>";
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table>
	<tr>
		<th>아이디</th>
		<th>이름</th>
		<th>날짜</th>
	</tr>
	<%out.print(str); %>
	</table>
</body>
</html>