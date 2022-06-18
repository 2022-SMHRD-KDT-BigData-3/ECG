<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">
<title>Calendar</title>
<link rel="stylesheet" href="resources/assets/css/calendar.css">

<noscript>
	<link rel="stylesheet" href="resources/assets/css/noscript.css" />
</noscript>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body class="light">
	<div class="calendar">
		<div class="calendar-header">
			<span class="month-change" id="prev-month"> <pre><</pre>
			</span>
			<div class="month-picker" id="month-picker">February</div>
			<span class="month-change" id="next-month"> <pre>></pre>
			</span>

			<div class="year-picker">
				<span id="year">2021</span>
			</div>
			<div class="dropdown">
				<button class="button">
					<i class='bx bx-log-out'></i>
				</button>
				<div class="drop-content">
					<div class="menuList">
						<a href='logout.do'>로그아웃</a> 
						<hr id="calHr">
						<a href='editpagin.do'>회원정보수정</a>
					</div>
				</div>
			</div>
		</div>
		<div class="calendar-body">
			<div class="calendar-week-day">
				<div>Sun</div>
				<div>Mon</div>
				<div>Tue</div>
				<div>Wed</div>
				<div>Thu</div>
				<div>Fri</div>
				<div>Sat</div>
			</div>
			<div class="calendar-days" style="place-items: center;"></div>
		</div>
		<div class="calendar-footer" style="justify-content: space-between;">
			<div class="date" style="overflow:hidden;" style="text-align:left">
				<span>${dvo.getCheckdate()}</span>
			</div>
			<div class="toggle">
				<span>Dark Mode</span>
				<div class="dark-mode-switch">
					<div class="dark-mode-switch-ident"></div>
				</div>
			</div>
		</div>
		<div class="month-list"></div>
		<div class="table-wrapper">
			<table class="alt">
				<tbody>
					<tr>
						<td id="idvo" style="display: none">${vo.id}</td>
						<td>시간 </td>
						<td>${dvo.getExtime()}</td>

					</tr>
					<tr>
						<td>최대 / 평균</td>
						<td>${dvo.getMax()}/${dvo.getMin()}</td>
					</tr>
					<tr>
						<td>운동 List</td>
						<td><MARQUEE style="width: 180px" direction='left'>${dvo.getList()}</MARQUEE></td>
						
					</tr>
					<tr>
						<td>운동 강도</td>
						<td>${dvo.getStrong()}</td>
					</tr>
					<tr>
						<td>소모 칼로리</td>
						<td>${dvo.getCal()}</td>
					</tr>
					<tr>
						<td>키/몸무게</td>
						<td>${vo.height} / ${vo.weight}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="btn-group" role="group"
			aria-label="Basic outlined example">
			<button type="button" class="btn btn-outline-secondary" id="btnLeft" onclick="chart()">
				CHART
				</button>
			<button type="button" class="btn btn-outline-secondary" id="btnRight" >
				DIARY
			</button>
		</div>
	</div>

	<script src="resources/assets/js/calendar.js"></script>
	<script>
	
	function diary() {
		location.href ="diary.do"; 
	}
	
	function chart() {		  		
		location.href = "chart.do?id=${vo.getId()}";
	}
	const btn = document.querySelector('.button');
	const box = document.querySelector('.drop-content');
	btn.addEventListener('click', () => {
		  box.classList.toggle('act');
		})
	</script>

</body>

</html>