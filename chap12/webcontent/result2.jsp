<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String u_id = request.getParameter("user_id");
	String u_pw = request.getParameter("user_pw");

	if (u_id == null || u_id.length() == 0) {
	%>
	<h2>�߸� �α����ϼ̽��ϴ� ���̵�� ��й�ȣ�� Ȯ�����ּ���</h2>
	<a href='/chap12/login.html'>���ư���</a>
	<%
	} else {
		if (u_id.equals("admin") && u_pw.equals("admin")) {
	%>
	<h1>������ ���� �Ϸ�</h1>
	<%
		} else {
	%>
	<h1>
	ȯ���մϴ�
	</h1>
		<h2>
			���̵� :
			<%=u_id%></h2>
		<h2>
			��й�ȣ :
			<%=u_pw%></h2>
	
	<%
		}
	}
	%>



</body>
<script type="text/javascript">
	
</script>
</html>