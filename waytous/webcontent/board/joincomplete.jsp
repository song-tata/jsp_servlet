<%@page import="waytous.join.UserDAO"%>
<%@page import="waytous.join.JoinBean"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>WayToUs</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="../assets/css/noscript.css" />
</noscript>
<style type="text/css">
label {
	margin-top: 20px;
}

.inner123 {
	width: 40%;
	margin: auto;
}
</style>
</head>
<body class="is-preload">

	<!-- Header -->
	<jsp:include page="../common/generic_header.jsp"/>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<section id="main" class="wrapper">
			<div class="inner123">
				<div class="inner">
					<%
					UserDAO udao = new UserDAO();

					String u_id = request.getParameter("u_id");
					String u_pwd = request.getParameter("u_pwd");
					String u_email = request.getParameter("u_email");

					
					if (udao.idCheck(u_id)) {
						JoinBean jbean = new JoinBean(u_id, u_pwd, u_email);
						udao.AddAccount(jbean);
					%>
					<h1>
						회원가입이 완료되었습니다 환영합니다
						<%=u_id%>님
					</h1>
					<%
					} else {
					%>
					<h1>같은 아이디가 존재합니다 다시 시도해주세요</h1>
					<a href="join.jsp" class="button large">돌아가기</a>

					<%
					}
					%>
				</div>
			</div>
		</section>

	</div>

	<!-- Footer -->
	<jsp:include page="../common/generic_footer.jsp" />

	<!-- Scripts -->
	<jsp:include page="../common/generic_script.jsp"></jsp:include>

</body>

</html>