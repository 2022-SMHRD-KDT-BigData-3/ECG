<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
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
					<button class="button">
						<i class='bx bx-log-out'></i>
					</button>
					<div class="drop-content">
						<div class="menuList">
							<a href="logout.do">로그아웃</a>
							<hr id="calHr">
							 <a href="editpagin.do">회원정보수정</a>
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
                  <c:choose>
                        <c:when test="${dvo1.size() < dvo2.size()}" >
                       지난 일주일에 비해 이번주 운동을 ${dvo2.size() - dvo1.size()} 회
                       덜 하셨습니다.
                      </c:when> 

                      <c:when test="${dvo1.size() >= dvo2.size()}" >
                       지난 일주일에 비해 이번주 운동을 ${dvo1.size() - dvo2.size()} 회
                       더 하셨습니다. 
                      </c:when>
                      
                  </c:choose>                  
               </h3>
               <h3>
                  <c:choose>
                        <c:when test="${dvo1.get(0).getCal() < dvo2.get(0).getCal()}" >
                       지난 일주일에 비해 이번주 칼로리 소모량이 ${dvo2.get(0).getCal() - dvo1.get(0).getCal()}
                     감소 하셨습니다.
                      </c:when> 

                      <c:when test="${dvo2.get(0).getCal() < dvo1.get(0).getCal()}" >
                       지난 일주일에 비해 이번주 칼로리 소모량이 ${dvo1.get(0).getCal() - dvo2.get(0).getCal()}
                     증가 하셨습니다.
                      </c:when>                      
                  </c:choose>
               </h3>
               <h3>
                  <c:choose>
                        <c:when test="${dvo2.get(0).getDanger() < dvo1.get(0).getDanger()}" >
                       지난 일주일에 비해 이번주 부정맥 위험도가
                     ${dvo1.get(0).getDanger() - dvo2.get(0).getDanger()} 증가 하셨습니다.
                      </c:when> 

                      <c:when test="${dvo1.get(0).getDanger() < dvo2.get(0).getDanger()}" >
                       지난 일주일에 비해 이번주 부정맥 위험도가
                     ${dvo2.get(0).getDanger() - dvo1.get(0).getDanger()} 감소 하셨습니다.
                      </c:when>                      
                  </c:choose>                  
               </h3>
            </div>
         </footer>
		<div class="btn-group" role="group"
			aria-label="Basic outlined example">
			<button type="button" class="btn btn-outline-secondary" id="btnLeft" onclick="chart()">
			CHART
			</button>
			<button type="button" class="btn btn-outline-secondary" id="btnRight" onclick="diary()">
			DIARY
			</button>
		</div>
		</article>
	</div>




	<!-- Scripts -->
	<script src="resources/assets/js/chartist.min.js"></script>
	<script src="resources/assets/js/chartist-plugin-tooltip.min.js"></script>



	<!-- 날짜별 부정맥 위험도 -->
	<script type="text/javascript">
	function diary() {
		  location.href ="diary.do"; 
	}
	function chart() {
		  location.href = "/chart.do";
	}
    new Chartist.Line('#simple-line-chart', {
        labels : [ '${dvo[0].getCheckdate()}', '${dvo[1].getCheckdate()}', '${dvo[2].getCheckdate()}', '${dvo[3].getCheckdate()}', '${dvo[4].getCheckdate()}', '' ],
        series : [ [ ${dvo[0].getDanger()}, ${dvo[1].getDanger()}, ${dvo[2].getDanger()}, ${dvo[3].getDanger()}, ${dvo[4].getDanger()}, ${dvo[5].getDanger()} ] ]
     }, {
        fullWidth : true,
        chartPadding : {
           right : 40
        },
        plugins : [ Chartist.plugins.tooltip() ]
     });
	</script>
	<script type="text/javascript">
	let dark_mode_toggle = document.querySelector('.dark-mode-switch')

	dark_mode_toggle.onclick = () => {
	    document.querySelector('body').classList.toggle('light');
	    document.querySelector('body').classList.toggle('dark');
	}
	</script>
	<script>
	const btn = document.querySelector('.button');
	const box = document.querySelector('.drop-content');
	btn.addEventListener('click', () => {
		  box.classList.toggle('act');
		})
	</script>

</body>
</html>