<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>WayToUs</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
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
<script>
        function validateForm(event) {
            event.preventDefault();

            var u_id = document.getElementById("demo-name").value;
            var u_pwd = document.getElementById("demo-password").value;
            var u_pwd_check = document.getElementById("demo-pwdcheck").value;
            var u_email = document.getElementById("demo-email").value;
            var u_human = document.getElementById("demo-human").checked;

            if (u_id === "" || u_pwd === "" || u_pwd_check === "" || u_email === "") {
                alert("아이디, 비밀번호, 이메일은 필수 입력 사항입니다.");
                return false;
            }

            if (!u_human) {
                alert("로봇이 아닙니다를 체크해야 합니다.");
                return false;
            }
            if (u_pwd !== u_pwd_check) {
                alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
                return false;
            }


            // Submit the form if all validations pass
            event.target.submit();
        }
    </script>
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
			<div class="inner123">
				<div class="inner">
				<h1>회원가입</h1>
				</div>
				<form method="post" action="index.html">
					<div class="row gtr-uniform">
						<div class="col-12">
							<label name="u_id">아이디</label> <input type="text" name="u_id"
								id="demo-name" value="" placeholder="아이디" />
						</div>
						<div class="col-6 col-12-xsmall">
							<label name="u_pwd">비밀번호</label> <input type="password"
								name="u_pwd" id="demo-password" value="" placeholder="비밀번호 입력" />
						</div>
						<div class="col-6 col-12-xsmall">
							<label name="u_pwd_check">비밀번호 확인</label> <input type="password"
								name="u_pwd_check" id="demo-pwdcheck" value=""
								placeholder="비밀번호 재입력" />
						</div>
						<div class="col-12">
							<label name="u_email">이메일 입력</label> <input type="email"
								name="u_email" id="demo-email" value="" placeholder="이메일" />
						</div>
						<div class="col-6 col-12-small">
							<input type="checkbox" id="demo-human" name="demo-human">
							<label for="demo-human">로봇이 아닙니다</label>
						</div>
						
						<div class="col-12"  style="display: flex; justify-content: right;">
							<ul class="actions">
								<li><input type="submit" value="회원가입"
									class="primary" /></li>
								<li><input type="reset" value="Reset" /></li>
							</ul>
						</div>
					</div>
				</form>
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