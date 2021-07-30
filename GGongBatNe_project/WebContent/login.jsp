<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Eventually by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Eventually by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/login.css" />
	</head>
	<body class="is-preload">

		<!-- Header -->
		<header id="header">
			<h1><a href="index.jsp">Home</a></h1>
			<p>로그인  </p>
		</header>

		<!-- 메뉴 -->
		<header id="navigation" class="alt">
			<h1><a href="index.jsp">Home</a></h1>
			<nav id="nav">
				<ul>
					<li class="special">
						<a href="#menu" class="menuToggle"><span>회원가입</span></a>
						<style>#menu{
						background-color: #1E90ff; }
						</style>
						<form action="">
						<div id="menu">
							<ul>
							<h2>회원가입</h2>
								<li><input type="text" name="Id" id="Id" placeholder="사원번호를 입력하세요" /></li>
								<li><input type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요" /></li>
								<li><input type="text" name="name" id="name" placeholder="사원명를 입력하세요" /></li>
								<li><input type="text" name="phone" id="phone" placeholder="핸드폰번호를 입력하세요" /></li>
								<li><input type="text" name="area" id="area" placeholder="담당지역을 입력하세요" /></li>
								<li><input type = "submit" id = "subJoin" value = "회원가입" style="background-color: orange " /></li>
							</ul>
						</div>
						</form>
					</li>
				</ul>
			</nav>
		</header>

		<!-- 로그인 모듈 -->
		<div>
			<form id="signup-form" method="post" action="#">
				<input type="text" name="Id" id="Id" placeholder="사원번호를 입력하세요" />
				<input type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요" />
				<input type="submit" id = "sublogin" value="로그인" />
								
		
			</form>
		</div>

		<!-- Scripts -->
		<!-- 로그인 자바스크립트에서 로그인되면 로그인 되었습니다 추가햇는데 데이터 받아서 연동 시켜야될듯 -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>

		<script src="assets/js/login.js"></script>
		<script src="assets/js/menu.js"></script>

	</body>
</html>