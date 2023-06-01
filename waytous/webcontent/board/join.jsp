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
<script>
        function validateForm() {
            

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
            return true;
        }
    </script>
</head>
<body class="is-preload">

<jsp:include page="../common/generic_header.jsp"/>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<section id="main" class="wrapper">
			<div class="inner123">
				<div class="inner">
				<h1>회원가입</h1>
				</div>
				<form method="post" action="joincomplete.jsp" onsubmit="return validateForm()">
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
									class="primary"/></li>
								<li><input type="reset" value="Reset" /></li>
							</ul>
						</div>
					</div>
				</form>
			</div>
		</section>

	</div>

<jsp:include page="../common/generic_footer.jsp" />
	<!-- Scripts -->
<jsp:include page="../common/generic_script.jsp"></jsp:include>

</body>

</html>