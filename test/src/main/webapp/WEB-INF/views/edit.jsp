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
						<a href="" class="logo">Edit Page</a>
					</header>

				<!-- Nav -->
					<nav id="nav">
						<ul class="links">
							<li><a href="login.jsp">Login Page</a></li>
							<li><a href="register.jsp">Register Page</a></li>
							<li class="active"><a href="edit.jsp">Edit Page</a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Featured Post -->
							<article class="post featured">
						<section>
							<form method="post" action="#">
								<div class="fields">
									<div class="field">
										<label for="name">수정할 ID를 입력하세요</label>
										<input type="text" name="id" id="id" />
									</div>
								
									<div class="field">
										<label for="name">수정할 NickName을 입력하세요</label>
										<input type="text" name="name" id="name" />
									</div>
								
									<div class="field">
										<label for="email">수정할 PassWord 입력하세요</label>
										<input type="text" name="password" id="password" />
									</div>
								</div>
																<hr>
								<div class="row gtr-uniform">
								<div class="col-12">
								<label>운동강도를 선택해 주세요</label>
								</div>
											<!-- Break -->
											<div class="col-4 col-12-small">
												<input type="radio" id="demo-priority-low" name="demo-priority" checked>
												<label for="demo-priority-low">Low</label>
											</div>
											<div class="col-4 col-12-small">
												<input type="radio" id="demo-priority-normal" name="demo-priority">
												<label for="demo-priority-normal">Normal</label>
											</div>
											<div class="col-4 col-12-small">
												<input type="radio" id="demo-priority-high" name="demo-priority">
												<label for="demo-priority-high">High</label>
											</div>
										</div>
								<hr>
								<ul class="actions special">
									<li><input type="submit" value="확인" /></li>
								</ul>
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