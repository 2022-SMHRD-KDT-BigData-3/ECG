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
		</script>
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
							<li><a href="login.do">로그인</a></li>
							<li><a href="register.do">회원가입</a></li>
							<li class="active"><a href="edit.do">회원수정</a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Featured Post -->
							<article class="post featured">
						<section>
							<form method="post" action="UpdatService.do">
								<div class="fields">
									<div class="field">
										<label for="name">수정할 닉네임을 입력하세요</label>
										<input type="text" name="nick" id="name" value="${vo.nick}"/>
									</div>
								
									<div class="field">
										<label for="name">수정할 비밀번호를 입력하세요</label>
										<input type="password" name="nick" id="name" />
									</div>
								
									<div class="field">
										<label for="email">수정할 몸무게를 입력하세요</label>
										<input type="number" name="weight" id="name" value="${vo.weight}"/>
									</div>
									
									<div class="field">
										<label for="email">수정할 키를 입력하세요</label>
										<input type="number" name="height" id="name" value="${vo.height}"/>
									</div>
								</div>
																<hr>
								<div class="row gtr-uniform">
								<div class="col-12">
								<label>운동강도를 선택해 주세요</label>
								</div>
											<!-- Break -->
											<div class="col-4 col-12-small">
												<input type="checkbox" id="demo-priority-low" name="strong" value="1" onclick="checkOnlyOne(this)">
												<label for="demo-priority-low">저강도</label>
											</div>
											<div class="col-4 col-12-small">
												<input type="checkbox" id="demo-priority-normal" name="strong" value="2" onclick="checkOnlyOne(this)">
												<label for="demo-priority-normal">중강도</label>
											</div>
											<div class="col-4 col-12-small">
												<input type="checkbox" id="demo-priority-high" name="strong" value="3" onclick="checkOnlyOne(this)">
												<label for="demo-priority-high">고강도</label>
											</div>
										</div>
								<hr>
								<ul class="actions special">
									<li><input type="submit" value="변경하기" /></li>
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