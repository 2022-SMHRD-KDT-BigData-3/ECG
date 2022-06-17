<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>soul heart</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1" />
<link rel="stylesheet" href="resources/assets/css/chartBody.css" />
<link rel="stylesheet" href="resources/assets/css/chartist.min.css">
<link rel="stylesheet"
	href="resources/assets/css/chartist-plugin-tooltip.css">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>


</head>
<body class="is-preload light">

	<!-- Wrapper -->


	<!-- Main -->
	<div id="main">

		<!-- Featured Post -->

		<article class="post featured">
			<label class="name">

				<h2>부정맥 위험도</h2>
				<div class="dropdown">
					<button onclick="dp_menu()" class="button">
						<i class='bx bx-home'></i>
					</button>
					<div style="display: none;" id="drop-content">
						<div class="menuList">
							<a hreaf='logout.do'>로그아웃</a>
							 <a hreaf="editpagin?id=${vo.getId()}&age=${vo.getAge()}">회원정보수정</a>
						</div>
					</div>
				</div>
			</label>

			<div id="simple-line-chart" class="ct-chart ct-golden-section"></div>
		<div class="calendar-footer">
			<div class="toggle">
				<span>Dark Mode</span>
				<div class="dark-mode-switch">
					<div class="dark-mode-switch-ident"></div>
				</div>
			</div>
		</div>
			<footer id="footer">
				<div class="box">
					<h3>
						지난 일주일동안 운동을
						<%=3%>번 하셨어요
					</h3>

					<h3>
						지난달 보다
						<%=10%>% 감소하셨네요
					</h3>
				</div>
			</footer>
		<div class="btn-group" role="group"
			aria-label="Basic outlined example">
			<button type="button" class="btn btn-outline-secondary" id="btnLeft">
				<a hreaf="#">CHART</a>
			</button>
			<button type="button" class="btn btn-outline-secondary" id="btnRight">
				<a hreaf="diary.do">DIARY</a>
			</button>
		</div>
		</article>
	</div>




	<!-- Scripts -->
	<script src="resources/assets/js/chartist.min.js"></script>
	<script src="resources/assets/js/chartist-plugin-tooltip.min.js"></script>



	<!-- 날짜별 부정맥 위험도 -->
	<script type="text/javascript">
		new Chartist.Line('#simple-line-chart', {
			labels : [ '6/1', '6/8', '6/15', '6/22', '6/29', '' ],
			series : [ [ 15, 10, 20, 15, 30, 10 ] ]
		}, {
			fullWidth : true,
			chartPadding : {
				right : 40
			},
			plugins : [ Chartist.plugins.tooltip() ]
		});
	</script>
	<script>
		function dp_menu() {
			let click = document.getElementById("drop-content");
			if (click.style.display === "none") {
				click.style.display = "block";

			} else {
				click.style.display = "none";

			}
		}
	</script>
	<script type="text/javascript">
	let dark_mode_toggle = document.querySelector('.dark-mode-switch')

	dark_mode_toggle.onclick = () => {
	    document.querySelector('body').classList.toggle('light')
	    document.querySelector('body').classList.toggle('dark')
	}
	</script>

</body>
</html>