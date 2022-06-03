<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<title>soul heart</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="resources/assets/css/main.css" />
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<noscript><link rel="stylesheet" href="resources/assets/css/noscript.css" /></noscript>
	</head>
<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper" class="fade-in">


				<!-- Header -->
					<header id="header">
						<a href="" class="logo">Register Page</a>
					</header>

				<!-- Nav -->
					<nav id="nav">
						<ul class="links">
							<li><a href="login.jsp">Login Page</a></li>
							<li class="active"><a href="register.jsp">Register Page</a></li>
							<li><a href="edit.jsp">Edit Page</a></li>
						</ul>
						<ul class="icons">
							
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Featured Post -->
							<article class="post featured">
						<section>
							<form action="memberinsert.do" method="post" >
								<div class="fields">
									<div class="field">
										<label for="id">ID를 입력하세요</label>
										<input type="text" name="id" id="id" />
									</div>
								</div>
								<div class="fields">
									<div class="field">
										<label for="name">NickName을 입력하세요</label>
										<input type="text" name="nick" id="name" />
									</div>
								</div>
								<div class="fields">
									<div class="field">
										<label for="password">PassWord를 입력하세요</label>
										<input type="text" name="pw" id="password" />
									</div>
								</div>
								<div class="fields">
									<div class="field">
										<label for="height">키를 입력하세요</label>
										<input type="text" name="height" id="height" />
									</div>
								</div>
								<div class="fields">
									<div class="field">
										<label for="weight">몸무게를 입력하세요</label>
										<input type="text" name="weight" id="weight" />
									</div>
									
								</div>
								<hr>
								<div class="row gtr-uniform">
								<div class="col-12">
								<label>운동강도를 선택해 주세요</label>
								</div>
											<!-- Break -->
											<div class="col-4 col-12-small">
												<input type="checkbox" id="demo-priority-low" name="strong" value="1" checked>
												<label for="demo-priority-low">저강도</label>
											</div>
											<div class="col-4 col-12-small">
												<input type="checkbox" id="demo-priority-normal" name="strong" value="2">
												<label for="demo-priority-normal">중강도</label>
											</div>
											<div class="col-4 col-12-small">
												<input type="checkbox" id="demo-priority-high" name="strong" value="3">
												<label for="demo-priority-high">고강도</label>
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
						<ul><li>&copy; soul heart</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li></ul>
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