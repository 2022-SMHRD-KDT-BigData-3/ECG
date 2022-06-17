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
				<button onclick="dp_menu()" class="button">
					<i class='bx bx-log-out'></i>
				</button>
				<div style="display: none;" id="drop-content">
					<div class="menuList">
						<a hreaf='#'>로그아웃</a>
						<hr id="calHr">
						<a hreaf='#'>회원정보수정</a>
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
		<div class="calendar-footer">
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
						<td>시간</td>
						<td>${dvo.getExtime()}</td>

					</tr>
					<tr>
						<td>최대 / 평균</td>
						<td>${dvo.getMax()}/${dvo.getMean()}</td>
					</tr>
					<tr>
						<td>운동 List</td>
						<td>${dvo.getList()}</td>
					</tr>
					<tr>
						<td>운동 강도(판별)</td>
						<td>${dvo.getStrong()}</td>
					</tr>
					<tr>
						<td>키</td>
						<td>${dvo.getHeight()}</td>
					</tr>
					<tr>
						<td>몸무게</td>
						<td>${dvo.getWeight()}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="btn-group" role="group"
			aria-label="Basic outlined example">
			<button type="button" class="btn btn-outline-secondary" id="btnLeft">
				<a hreaf="#">CHART</a>
			</button>
			<button type="button" class="btn btn-outline-secondary" id="btnRight">
				<a hreaf="#">DIARY</a>
			</button>
		</div>
	</div>

	<script src="resources/assets/js/calendar.js"></script>
	<script>
	const btn = document.querySelector('.button');
	const box = document.querySelector('.drop-content');
	btn.addEventListener('click', () => {
		  box.classList.toggle('act');
		})
	</script>

</body>

</html>