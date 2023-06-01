<%@page import="com.mysql.cj.protocol.a.NativeConstants.IntegerDataType"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="waytous.board.BoardBean"%>
<%@page import="waytous.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
String u_id = (String) session.getAttribute("u_id");
Integer user_num = (Integer) session.getAttribute("user_num");

BoardDAO bdao = new BoardDAO();
BoardBean boardBean = new BoardBean();
List<BoardBean> list = bdao.boardSet(user_num);
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="../assets/css/noscript.css" />
</noscript>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=4esh0fbcti"></script>
</head>
<!-- 4esh0fbcti -->
<body class="is-preload">

	<!-- Header -->
	<jsp:include page="../common/board_header.jsp" />

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
						<%
						if (user_num.equals(0)) {
						%>
						<tr>
							<td colspan="4">
								<h3>작성하신 게시글이 없네요! 첫 게시글을 작성해보세요! 데이트코스나 일기를 적어도 좋아요!</h3>
							</td>
						</tr>
						<%
						} else {
							for (int i = 0; i < list.size(); i++) {
								boardBean = list.get(i);
								int arti_num = boardBean.getArti_num();
								String arti_title = boardBean.getArti_title();
								String auther = boardBean.getAuther();
								Timestamp arti_date = boardBean.getArti_date();
								
							%>
							<tr>
							<td><%=arti_num %></td>
							<td><a href="#"><%=arti_title %></a></td>
							<td><%=auther %></td>
							<td><%=arti_date %></td>
							</tr>
							<%
							}
							
						}
						%>
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