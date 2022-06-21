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
				<script type="text/javascript">
	
		</script>
	</head>
		<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper" class="fade-in">


				<!-- Nav -->
					<nav id="nav">
						<ul class="links">
							<li class="active"><a href="login.jsp">Login Page</a></li>
							<li><a href="register.jsp">Register Page</a></li>
							<li><a href="edit.jsp">Edit Page</a></li>
						</ul>
						<ul class="icons">
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">
							<img src="resources/assets/images/logo.png" id="loginLogo">
						<!-- Featured Post -->
							<article class="post featured">
						<section>
							<form method="post" action="loginservice.do" style="margin: 0 0 20% 0;">
								<div class="fields" id="loginfields">
									<div class="field" id="loginId">
										<label for="name">ID를 입력하세요</label>
										<input type="text" name="id" id="id" />
									</div>
								
									<div class="field" id="loginPw">
										<label for="email">PassWord를 입력하세요</label>
										<input type="password" name="pw" id="password" />
									</div>

								</div>
								<ul class="actions special">
									<li><input type="submit" value="확인" /></li>	
								</ul>
								</form>
							<article class="post featured">
								<header class="major">
								<label for="email">계정이 없으신가요?</label>
									<span class="date"></span>
								</header>
								<ul class="actions special" style="margin: 0 0 0 0;">
									<li><a href="register.do" class="button large">회원가입</a></li>
								</ul>
							</article>
					
						</section>
							</article>
							

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