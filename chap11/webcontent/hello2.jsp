<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%!

	String name = "�ʱ�";
	public String getName() {
		return name;
	}
%>
<%
String age = request.getParameter("age");
/*
������ �ּ�
*/
//�����ּ�
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ũ��Ʋ�� ����</title>
</head>
<body>
	<h1>
		�ȳ��ϼ���<%=getName()%>�� �������
	</h1>
	<h1>
		���̴�
		<%=age%>�Դϴ�
	</h1>
	<h1>
		Ű��
		<%="50cm"%>�Դϴ�
	</h1>
	<h1>
		������ �� �� ���� ���� �����
		<%=20 - Integer.parseInt(age)%>�� �Դϴ�
	</h1>
</body>
</html>