<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String u_id =  (String)session.getAttribute("u_id");
%>
<!DOCTYPE HTML>
<!--
	Hyperspace by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html lang="ko">
<head>
	<title>WayToUs.<%=u_id%></title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="../assets/css/main.css" />
	<noscript>
		<link rel="stylesheet" href="../assets/css/noscript.css" />
	</noscript>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=4esh0fbcti"></script>
</head>
<!-- 4esh0fbcti -->
<body class="is-preload">

	<!-- Header -->
	<jsp:include page="../common/generic_header.jsp"/>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<section id="main" class="wrapper">
			<div class="inner">
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>3</td>
							<td>0504일산호수공원일정입니다. 확인해주세요</td>
							<td>경근쓰</td>
							<td>0000-00-00</td>
						</tr>
						<tr>
							<td>2</td>
							<td>안 미웡!</td>
							<td>지은쓰</td>
							<td>0000-00-00</td>
						</tr>
						<tr>
							<td>1</td>
							<td> 미 웡 !</td>
							<td>지은쓰</td>
							<td>0000-00-00</td>
						</tr>

					</tbody>
					<tfoot>
						<tr>
							<td colspan="3"></td>
							<td><a href="textbox.jsp" class="button">글쓰기</a></td>
						</tr>
					</tfoot>
				</table>
			</div>
		</section>

	</div>

	<!-- Footer -->
	<jsp:include page="../common/generic_footer.jsp" />

	<!-- Scripts -->
	<jsp:include page="../common/generic_script.jsp"></jsp:include>

</body>

</html>