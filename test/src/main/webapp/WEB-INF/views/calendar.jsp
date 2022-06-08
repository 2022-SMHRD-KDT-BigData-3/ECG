<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html lang="en">
	
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>
			Calendar
		</title>
		<link rel="stylesheet" href="resources/assets/css/calendar.css">
		<link rel="stylesheet" href="resources/assets/css/main.css" />
		<noscript>
			<link rel="stylesheet" href="resources/assets/css/noscript.css" />
		</noscript>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
	 @font-face {
    font-family: 'EliceDigitalBaeum';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_elice@1.0/EliceDigitalBaeum.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

body {
   font-family: 'EliceDigitalBaeum';
    }
</style>
	</head>
	
	<body class="light">
	
		<div class="calendar">
			<div class="calendar-header">

				<span class="year-change" id="prev-year">
					<pre><</pre>
				</span>
				<div class="month-picker" id="month-picker">February</div>
				<span class="year-change" id="next-year">
					<pre>></pre>
				</span>

				<div class="year-picker">
					<span id="year">2021</span>
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
				<div class="calendar-days"></div>
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
							<td>시간</td>
							<td>1시간</td>
						</tr>
						<tr>
							<td>최대 / 평균</td>
							<td>90 / 100</td>
						</tr>
						<tr>
							<td>운동 List</td>
							<td>프랭크</td>
						</tr>
						<tr>
							<td>운동 강도(판별)</td>
							<td>강</td>
						</tr>
						<tr>
							<td>키</td>
							<td>175</td>
						</tr>
						<tr>
							<td>몸무게</td>
							<td>62</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<script src="resources/assets/js/jquery.min.js"></script>
		<script src="resources/assets/js/jquery.scrollex.min.js"></script>
		<script src="resources/assets/js/jquery.scrolly.min.js"></script>
		<script src="resources/assets/js/browser.min.js"></script>
		<script src="resources/assets/js/breakpoints.min.js"></script>
		<script src="resources/assets/js/util.js"></script>
		<script src="resources/assets/js/main.js"></script>
		<script src="resources/assets/js/calendar.js"></script>
	</body>
	
	</html>