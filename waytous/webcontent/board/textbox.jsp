<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>WayToUs<%=session.getAttribute("u_id")%></title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="../assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">

	<!-- Header -->
	<jsp:include page="../common/generic_header.jsp"/>

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
	<jsp:include page="../common/generic_footer.jsp" />

	<!-- Scripts -->
	<jsp:include page="../common/generic_script.jsp"></jsp:include>


</body>

</html>