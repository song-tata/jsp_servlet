<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
//���� ��ü�� name Ű�� ���ε��� value���� ������ �´�.
String name = (String) session.getAttribute("name");
//���� ��ü�� age Ű�� 20�̶�� value ���ε�
int age = (int) session.getAttribute("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
��� �� html���� �Ⱥ��ϱ�?
�ڹ� �ڵ�� html�� �ڵ忡���� �Ⱥ���
�ᱹ jsp�� ������ �����ΰ�
 --%>

	�̸��� <%=name %> �Դϴ�<br>
	���̴� <%=age %> �Դϴ�
	
</body>
</html>