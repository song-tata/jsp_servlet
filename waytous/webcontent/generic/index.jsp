<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<!--
	Hyperspace by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html lang="ko">

<head>
	<title>WayToUs</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="../assets/css/main.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Rubik+Wet+Paint&display=swap" rel="stylesheet">
	<noscript>
		<link rel="stylesheet" href="../assets/css/noscript.css" />
	</noscript>
</head>

<body class="is-preload">

<jsp:include page="../common/generic_sidebar.jsp"></jsp:include>
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Intro -->
		<section id="intro" class="wrapper style1 fullscreen fade-up">
			<div class="inner">
				<h1>WayToUs</h1>
				<p>
					서울 내에서 이리저리 자주 돌아다니시나요? <br>사랑하는 사람을 왔다갔다 피곤하게 하기 싫으신가요?<br> 서로 귀가시간이 신경쓰이시나요? <br>이 웹에서 제공하는 기능을 통해 데이트 코스를 짜고 추억을 쌓아보세요!
				</p>
				<ul class="actions">
					<li><a href="#one" class="button scrolly">Learn more</a></li>
				</ul>
			</div>
		</section>

		<!-- One -->
		<section id="one" class="wrapper style2 spotlights">
			<section>
				<a href="#" class="image"><img src="../images/couple1.jpg" alt="" data-position="center center" /></a>
				<div class="content">
					<div class="inner">
						<h2>멀리 떨어져있을 때</h2>
						<p>둘이 30분 이상 걸린다면 이쪽을 이용해보세요! 두분의 위치마다 각각 반경 3km의 원을 그려줍니다!
							두 원이 겹치는 부분에서 놀거리를 찾아보면 좋겠죠?</p>
						<ul class="actions">
							<li><a href="generic_1.jsp" class="button">지도 1</a></li>
						</ul>
					</div>
				</div>
			</section>
			<section>
				<a href="#" class="image"><img src="../images/couple2.jpg" alt="" data-position="top center" /></a>
				<div class="content">
					<div class="inner">
						<h2>가까운 거리일 때</h2>
						<p>만약 30분 이내로 떨어져있다면 이쪽을 이용해보세요! 둘 사이의 중간지점에서 원을 그려줍니다!
							원 안에 나타나는 놀거리를 클릭하면 주변 먹거리도 같이 소개해줄게요!</p>
						<ul class="actions">
							<li><a href="generic_2.jsp" class="button">지도 2</a></li>
						</ul>
					</div>
				</div>
			</section>
			<!-- <section>
				<a href="#" class="image"><img src="../images/pic03.jpg" alt="" data-position="25% 25%" /></a>
				<div class="content">
					<div class="inner">
						<h2>시작하기</h2>
						<p>어떤 기능들을 가질 것인지, 이후 추가될 기능을 적어놓은 페이지로 이동하시려면 아래 버튼을 눌러주세요</p>
						<ul class="actions">
							<li><a href="#two" class="button">Learn more</a></li>
						</ul>
					</div>
				</div>
			</section> -->
		</section>

		<!-- Two -->
		<section id="two" class="wrapper style3 fade-up">
			<div class="inner">
				<h2>어떻게 쓰나요?</h2>
				<p>데이트 코스 짜느라 골치아프실 때, 서로 거리가 멀어 동네 바깥에서 만나야할 때! <br> YOUNG하게 MZ하게 최적의 데이트 코스를 찾아줍니다!</p>
				<div class="features">
					<section>
						<span class="icon solid major fa-solid fa-location-dot"></span>
						<h3>두 분의 위치를 지도에서 눌러보세요!</h3>
						<p>거리에 따라 두 분의 중간 지점이 표시됩니다! 더 무언가의 설명을 블라블라 주절주절 렐렐렐렐 왈랄랄루 호이호이</p>
					</section>
					<section>

						<span class="icon solid major fa-regular fa-comments"></span>
						<h3>지도에 표시되는 원을 체크해보세요!</h3>
						<p>네이버 지도가 제공하는 마크 어쩌구 저쩌구 어떻게 기능구현 했는지 </p>
					</section>
					<section>
						<!-- <i class="fa-solid fa-gamepad"></i> -->
						<span class="icon solid major fa-solid fa-gamepad"></span>
						<h3>겹치는 부분에서 놀거리를 찾아보세요!</h3>
						<p>(추가 구현사항) 이색 데이트, 추천하는 놀거리를 지도에 표시해줍니다! 지도를 확대해보세요 그 부근의 놀거리가 표시될 거에요</p>
					</section>
					<section>
						<!-- <i class="fa-solid fa-dumpster"></i> -->
						<span class="icon solid major fa-solid fa-dumpster"></span>
						<h3>놀거리를 찾았으면 맛집도 빠질 수 없죠!</h3>
						<p>(추가 구현사항) 놀거리를 찾았다면 가까운 곳의 맛집, 카페를 표시해줍니다! 어쩌구 저쩌구 블라블라</p>
					</section>
					<section>
						<!-- <i class="fa-solid fa-train"></i> -->
						<span class="icon solid major fa-solid fa-train"></span>
						<h3>경로 탐색을 통한 이동시간 계산!</h3>
						<p>(추가 구현사항) 대중교통 시간에 따라 지하철 시간에 따라 무언가 더 어쩌구 저쩌구</p>
					</section>
					<section>

						<span class="icon solid major fa-solid fa-moon"></span>
						<h3>나이트 모드로 눈을 편안하게 해보세요!</h3>
						<p>(추가 구현사항) 눈 빠져라 데이트 코스 찾다보면 피로할 눈을 위한 다크모드! 더더더 블라블라 로렘입숨 추가추가 </p>
					</section>
				</div>
				<ul class="actions">
					<li><a href="generic_1.html" class="button">Start</a></li>
				</ul>
			</div>
		</section>

		<!-- Three -->
		<section id="three" class="wrapper style1 fade-up">
			<div class="inner">
				<h2>게시판</h2>
				<p>
					로그인을 통해 둘만의 프라이빗한 게시판을 이용해보세요! 찾아낸 놀거리, 먹거리를 적어두고 함께 확인해보세요! 관심사를 공유하고, 서로의 마음을 표현하고, 추억을 쌓아나가세요!
				</p>
				<div class="split style1">
					<section>
						<form method="post" action="indexlogined.jsp">
							<div class="fields">
								<div class="field half" style="width: 200px;"></div>
								<div class="field half">
									<label for="name">아이디</label>
									<input type="text" name="u_id" id="name" />
									<label for="name" style="margin-top: 20px;">비밀번호</label>
									<input type="password" name="u_pwd" id="name" />
									<input type="submit" class="button fit" style="margin: 20px 0; margin-top:40px;" value="로그인">
									<a href="join.jsp" class="button fit" style="margin: 10px 0;">회원가입</a>
								</div>
								<div class="field half">
									<!-- 광고이미지 -->
								</div>

								<div class="field">
									<!-- <label for="message">Message</label>
									<textarea name="message" id="message" rows="5"></textarea> -->
								</div>
							</div>
							<!-- <ul class="actions">
								<li><a href="postbox.html" class="button">작성하기</a></li>
							</ul> -->
						</form>
					</section>

					<!-- innerHtml활용 공간 -->
					<section>
						<div class="comentary"
							style="border-radius: 30px; margin-top: 10px; height: 430px; width: 430px; background-image: url(../images/background.jpg); background-repeat: no-repeat; background-size:100%;">


						</div>
					</section>
				</div>
			</div>
		</section>

	</div>

	<!-- Footer -->
	<jsp:include page="../common/generic_footer.jsp"></jsp:include>

	<!-- Scripts -->
	<jsp:include page="../common/generic_script.jsp"></jsp:include>

</body>

</html>