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
			<p>�α���  </p>
		</header>

		<!-- �޴� -->
		<header id="navigation" class="alt">
			<h1><a href="index.jsp">Home</a></h1>
			<nav id="nav">
				<ul>
					<li class="special">
						<a href="#menu" class="menuToggle"><span>ȸ������</span></a>
						<style>#menu{
						background-color: #1E90ff; }
						</style>
						<form action="">
						<div id="menu">
							<ul>
							<h2>ȸ������</h2>
								<li><input type="text" name="Id" id="Id" placeholder="�����ȣ�� �Է��ϼ���" /></li>
								<li><input type="password" name="pw" id="pw" placeholder="��й�ȣ�� �Է��ϼ���" /></li>
								<li><input type="text" name="name" id="name" placeholder="����� �Է��ϼ���" /></li>
								<li><input type="text" name="phone" id="phone" placeholder="�ڵ�����ȣ�� �Է��ϼ���" /></li>
								<li><input type="text" name="area" id="area" placeholder="��������� �Է��ϼ���" /></li>
								<li><input type = "submit" id = "subJoin" value = "ȸ������" style="background-color: orange " /></li>
							</ul>
						</div>
						</form>
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