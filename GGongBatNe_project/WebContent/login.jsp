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
			<h1>�α���</h1>
			<p>������ �α��� �԰���<br />
			����ּ������� </p>
		</header>

		<!-- �޴� -->
		<header id="navigation" class="alt">
			<h1><a href="index.jsp">Home</a></h1>
			<nav id="nav">
				<ul>
					<li class="special">
						<a href="index.jsp" class="menuToggle"><span>Home</span></a>
						<div id="menu">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><a href="generic.html">Generic</a></li>
								<li><a href="elements.html">Elements</a></li>
								<li><a href="#">Sign Up</a></li>
								<li><a href="#">Log In</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</nav>
		</header>

		<!-- �α��� ��� -->
		<div>
			<form id="signup-form" method="post" action="#">
				<input type="text" name="Id" id="Id" placeholder="�����ȣ�� �Է��ϼ���" />
				<input type="password" name="pw" id="pw" placeholder="��й�ȣ�� �Է��ϼ���" />
				<input type="submit" id = "sublogin" value="�α���" />				
		<input type = "button" id = "subJoin" value = "ȸ������" style="background-color: orange " />
			</form>
		</div>

		<!-- Scripts -->
		<!-- �α��� �ڹٽ�ũ��Ʈ���� �α��εǸ� �α��� �Ǿ����ϴ� �߰��޴µ� ������ �޾Ƽ� ���� ���Ѿߵɵ� -->
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