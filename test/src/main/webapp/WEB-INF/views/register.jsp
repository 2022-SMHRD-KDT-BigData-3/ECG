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
		<script type="text/javascript">
		function checkOnlyOne(element) {
			  
			  const checkboxes 
			      = document.getElementsByName("strong");
			  
			  checkboxes.forEach((cb) => {
			    cb.checked = false;
			  })
			  
			  element.checked = true;
			}
		</script>
	</head>
<body class="is-preload">

		<div id="wrapper" class="fade-in">


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
						<img src="resources/assets/images/logo.png" style="width: 5rem; height: 4.6rem; padding: 1px;">
						<!-- Featured Post -->
							<article class="post featured">
						<section>
							<form action="memberinsert.do" method="post" >
								<div class="fields">
									<div class="field">
										<label for="id">아이디를 입력하세요</label>
										<input type="text" name="id" id="id" />
									</div>
								</div>
								<div class="fields">
									<div class="field">
										<label for="name">닉네임을 입력하세요</label>
										<input type="text" name="nick" id="name" />
									</div>
								</div>
								<div class="fields">
									<div class="field">
										<label for="password">비밀번호를 입력하세요</label>
										<input type="password" name="pw" id="password" />
									</div>
								</div>
								<div class="fields">
									<div class="field">
										<label for="weight">나이를 입력하세요</label>
										<input type="text" name="age" id="age" />
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