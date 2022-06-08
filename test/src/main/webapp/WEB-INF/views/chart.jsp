<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>soul heart</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="resources/assets/css/main.css" />
<link rel="stylesheet" href="resources/assets/css/chartist.min.css">
<link rel="stylesheet"
	href="resources/assets/css/chartist-plugin-tooltip.css">
<noscript>
	<link rel="stylesheet" href="resources/assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper" class="fade-in">


		<!-- Header -->

		<header id="header">
			<ul class="icons alt">
				<li><a href="#" class="icon brands alt fa-dribbble">
				<span class="label">Dribbble</span></a></li>
			</ul>
			<a href="" class="logo">Main Page</a>
		</header>

		<!-- Nav -->
		<nav id="nav">
			<ul class="links">
				<li class="active"><a href="login.jsp">Main Page</a></li>
				<li><a href="register.jsp">Register Page</a></li>
				<li><a href="edit.jsp">Edit Page</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Featured Post -->

			<article class="post featured">
				<section>
					<div class="field">
						<label for="name"><h2>부정맥 위험도 chart</h2></label>
						<div id="simple-line-chart" class="ct-chart ct-golden-section"></div>
					</div>
				</section>
			</article>
		</div>
		<footer id="footer">
			<section>
				<label for="name" style="text-align: center;"><h2>날짜별 부정맥 위험도</h2></label>
				<div class="box" style="background: white;">
					<h3>
						일주일동안 운동을 <% %> 번 하셨어요
					</h3>
					<p>
						지난달 보다 <% %> % 감소하셨네요
					</p>
				</div>

			</section>
		</footer>

		<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; soul heart</li>
				<li>Design: <a href="https://html5up.net">Soul Heart</a></li>
			</ul>
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
	<script src="resources/assets/js/chartist.min.js"></script>
	<script src="resources/assets/js/chartist-plugin-tooltip.min.js"></script>
	<script src="resources/assets/js/chartist.init.js"></script>
	<script type="text/javascript">
		document.getElementById("navPanelToggle").style.display = "none"
	</script>

	<!-- 날짜별 최대 심박수 -->
	<script type="text/javascript">
		
	</script>

	<!-- 날짜별 부정맥 위험도 -->
	<script type="text/javascript">
		new Chartist.Line('#simple-line-chart', {
			labels : [ 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'sat', 'sun' ],
			series : [ [ 2, 1, 3.5, 7, 3, 3, 4 ] ]
		}, {
			fullWidth : true,
			chartPadding : {
				right : 40
			},
			plugins : [ Chartist.plugins.tooltip() ]
		});
	</script>

</body>
</html>