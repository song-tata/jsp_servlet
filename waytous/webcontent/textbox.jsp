<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>WayToUs<%=request.getParameter("u_id")%></title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">

	<!-- Header -->
	<header id="header">
		<a href="index.html" class="title">WayToUs</a>
		<nav>
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="generic_1.html">멀리 떨어져있을 때</a></li>
				<li><a href="postbox.html" class="active">게시판</a></li>
			</ul>
		</nav>
	</header>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<section id="main" class="wrapper">
			<div class="inner">
					<section>
					<h2>글 쓰기</h2>
					<form method="post" action="postbox.jsp">
						<div class="row gtr-uniform">
						
							<div class="col-6 col-12-xsmall">
								<input type="text" name="u_title" id="u_title" value=""
									placeholder="제목" />
							</div>
							<div class="col-6 col-12-xsmall" >
								<input type="text" name="u_auther" id="u_auther" value=""
									placeholder="작성자" />
							</div>
						
							<div class="col-12">
								<textarea name="demo-message" id="demo-message"
									placeholder="Enter your message" rows="6"></textarea>
							</div>
							<div class="col-12" style="display: flex; justify-content: right;">
								<ul class="actions">
									<li><input type="submit" value="Send Message"
										class="primary" /></li>
									
								</ul>
							</div>
						</div>
					</form>
				</section>

			</div>
		</section>

	</div>

	<!-- Footer -->
	<footer id="footer" class="wrapper alt">
		<div class="inner">
			<ul class="menu">
				<li>&copy; Untitled. All rights reserved.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>
	</footer>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>

</html>