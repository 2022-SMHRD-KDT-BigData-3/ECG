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


				<!-- Header -->


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
					<img src="resources/assets/images/logo.png" id="logoEdit">
						<!-- Featured Post -->
							<article class="post featured">
						<section>
							<form action="updateservice.do" method="post" >
								<div class="fields">
									<div class="field">
										<label for="name">수정할 닉네임을 입력하세요</label>
										<input type="hidden" name="id" value="${vo.id}"/>
										<input type="text" name="nick" id="nick" value="${vo.nick}"/>
									</div>
								</div>
								<div class="fields">
									<div class="field">
										<label for="name">수정할 비밀번호를 입력하세요</label>
										<input type="password" name="pw" id="pw" />
									</div>
								</div>
								<div class="fields">
									<div class="field">
										<label for="name">비밀번호 확인</label>
										<input type="password" name="pw1" id="pw1" />
									</div>
								</div>
								<div class="fields">
									<div class="field">
										<label for="email">수정할 나이를 입력하세요</label>
										<input type="number" name="age" id="age" value="${vo.age}"/>
									</div>
								</div>
								<div class="fields">
									<div class="field">
										<label for="email">수정할 몸무게를 입력하세요</label>
										<input type="number" name="weight" id="weight" value="${vo.weight}"/>
									</div>
								</div>
								<div class="fields">
									<div class="field">
										<label for="email">수정할 키를 입력하세요</label>
										<input type="number" name="height" id="height" value="${vo.height}"/>
									</div>
								</div>
				
								<ul class="actions special">
									<li><input type="submit" value="확인" /></li>
								</ul>
							</form>
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