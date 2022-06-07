<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>soul heart</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="resources/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="resources/assets/css/noscript.css" /></noscript>
	</head>
		<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper" class="fade-in">


				<!-- Header -->
					<header id="header">
						<a href="" class="logo">LoginPage</a>
					</header>

				<!-- Nav -->
					<nav id="nav">
						<ul class="links">
							<li class="active"><a href="login.jsp">로그인</a></li>
							<li><a href="register.jsp">회원가입</a></li>
						</ul>
						<ul class="icons">
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Featured Post -->
							<article class="post featured">
						<section>
							<form method="post" action="loginservice.do">
								<div class="fields">
									<div class="field">
										<label for="name">아이디를 입력하세요</label>
										<input type="text" name="id" id="id" />
									</div>
								
									<div class="field">
										<label for="email">비밀번호를 입력하세요</label>
										<input type="password" name="pw" id="password" />
									</div>

								</div>
								<ul class="actions special">
									<li><input type="submit" value="로그인" /></li>
								</ul>
							<article class="post featured">
								<header class="major">
								<label for="email">계정이 없으신가요?</label>
									<span class="date"></span>
								</header>
								<ul class="actions special">
									<li><a href="register.do" class="button large">회원가입</a></li>
								</ul>
							</article>
							</form>
						</section>
							</article>
							

					</div>

				<!-- Copyright -->
					<div id="copyright">
						<ul><li>&copy; soul heart</li><li>Design: <a href="https://html5up.net">Soul Heart</a></li></ul>
					</div>

			</div>

		<!-- Scripts -->
			<script src="resources/assets/js/jquery.min.js"></script>
			<script src="resources/assets/js/jquery.scrollex.min.js"></script>
			<script src="resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="resources/assets/js/browser.min.js"></script>
			<script src="resources/assets/js/breakpoints.min.js"></script>
			<script src="resources/assets/js/util.js"></script>
			<script src="resources/assets/js/main.js"></script>
			<script type="text/javascript"> document.getElementById("navPanelToggle").style.display="none" </script>

	</body>
</html>