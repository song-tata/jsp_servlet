<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	.form-container {
		width: 300px;
		margin: 0 auto;
		padding: 20px;
		background-color: #f2f2f2;
		border: 1px solid #ccc;
		border-radius: 5px;
	}

	.form-container label {
		display: block;
		margin-bottom: 10px;
		margin-top: 10px;
	}

	.form-container input[type="text"] {
		width: 100%;
		padding: 8px;
		border: 1px solid #ccc;
		border-radius: 5px;
	}

	.form-container input[type="submit"],
	.form-container input[type="reset"] {
		padding: 10px 20px;
		background-color: #4CAF50;
		border: none;
		border-radius: 5px;
		color: #fff;
		cursor: pointer;
		margin-top: 10px; 
	}

	.form-container input[type="submit"]:hover,
	.form-container input[type="reset"]:hover {
		background-color: #45a049;
	}
</style>
</head>
<body>
	<div class="form-container">
	<h1>회원가입</h1>
		<form action="control/joins.jsp" method="post">
			<label for="u_id">id:</label>
			<input type="text" name="u_id" placeholder="email address" required="required">
			<label for="u_pw">pw:</label>
			<input type="text" name="u_pw" value="비밀번호입력" required="required">
			<label for="u_pw_check">pw:</label>
			<input type="text" name="u_pw_check" value="비밀번호재입력" required="required">
			<label for="u_pw_check">name:</label>
			<input type="text" name="u_name" value="이름입력" required="required">
			<input type="submit" value="회원가입">
			<input type="reset" value="리셋">
		</form>
	</div>
</body>
</html>