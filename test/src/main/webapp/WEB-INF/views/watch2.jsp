<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<meta charset='utf-8'>
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>watch2</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script type="text/javascript">


</script>
<style>
.modal {
	position: absolute;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.8);
	top: 0;
	left: 0;
	display: none;
}

.modal_content {
	width: 400px;
	height: 200px;
	background: #fff;
	border-radius: 10px;
	position: relative;
	top: 50%;
	left: 50%;
	margin-top: -100px;
	margin-left: -200px;
	text-align: center;
	box-sizing: border-box;
	padding: 74px 0;
	line-height: 23px;
	cursor: pointer;
}

@font-face {
	font-family: 'EliceDigitalBaeum';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_elice@1.0/EliceDigitalBaeum.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

body {
	font-family: 'EliceDigitalBaeum';
}

* {
	margin: 0;
	padding: 0;
}

.section {
	
}

.section input[id*="slide"] {
	display: none;
}

.section .slide-wrap {
	max-width: 1200px;
	margin: 0 auto;
}

.section .slidelist {
	white-space: nowrap;
	font-size: 0;
	overflow: hidden;
}

.section .slidelist>li {
	display: inline-block;
	vertical-align: middle;
	width: 100%;
	transition: all .5s;
}

.section .slidelist>li>a {
	display: block;
	position: relative;
}

.section .slidelist>li>a img {
	width: 100%;
}

.section .slidelist label {
	position: absolute;
	z-index: 10;
	top: 50%;
	transform: translateY(-50%);
	padding: 50px;
	cursor: pointer;
}

.section .slidelist .left {
	left: 30px;
	background: url('./img/left.png') center center/100% no-repeat;
}

.section .slidelist .right {
	right: 30px;
	background: url('./img/right.png') center center/100% no-repeat;
}

.section .slidelist .textbox {
	position: absolute;
	z-index: 1;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	line-height: 1.6;
	text-align: center;
}

.section .slidelist .textbox h3 {
	font-size: 45px;
	color: #fff;
	opacity: 0;
	transform: translateY(30px);
	transition: all .5s;
}

.section .slidelist .textbox p {
	font-size: 24px;
	color: #fff;
	opacity: 0;
	transform: translateY(30px);
	transition: all .5s;
}

.section input[id="slide01"]:checked ~ .slide-wrap .slidelist>li {
	transform: translateX(0%);
}

.section input[id="slide02"]:checked ~ .slide-wrap .slidelist>li {
	transform: translateX(-100%);
}

.section input[id="slide03"]:checked ~ .slide-wrap .slidelist>li {
	transform: translateX(-200%);
}

.section input[id="slide01"]:checked ~ .slide-wrap li:nth-child(1) .textbox h3
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .2s;
}

.section input[id="slide01"]:checked ~ .slide-wrap li:nth-child(1) .textbox p
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .4s;
}

.section input[id="slide02"]:checked ~ .slide-wrap li:nth-child(2) .textbox h3
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .2s;
}

.section input[id="slide02"]:checked ~ .slide-wrap li:nth-child(2) .textbox p
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .4s;
}

.section input[id="slide03"]:checked ~ .slide-wrap li:nth-child(3) .textbox h3
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .2s;
}

.section input[id="slide03"]:checked ~ .slide-wrap li:nth-child(3) .textbox p
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .4s;
}

/*watch1 아이콘 시작 */
.slidelist {
	background-color: black;
}

.wrap {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: center;
	height: 700px;
}

.circle {
	border: 4px solid white;
	border-radius: 80%;
	width: 100%;
	height: 100%;
	max-width: 100px;
	max-height: 100px;
	position: relative;
}

/*watch1 아이콘 끝 - 수정하지 말것 */

/* watch2 List box 시작*/
#box1 {
	float: left;
	margin-right: 120px;
}

#box2 {
	margin-left: 150px;
}

/* watch2 List box 끝*/

/* 글씨 위치 */
.textbox {
	bottom: 1px;
}

/* watch2 운동 버튼 시작 */
}
.frame {
	width: 90%;
}

button {
	margin: 20px;
}

.custom-btn {
	width: 130px;
	height: 40px;
	color: #fff;
	border-radius: 5px;
	padding: 10px 25px;
	font-size: 15px;
	font-weight: 500;
	background: transparent;
	cursor: pointer;
	transition: all 0.3s ease;
	position: relative;
	display: inline-block;
	box-shadow: inset 2px 2px 2px 0px rgba(255, 255, 255, .5), 7px 7px 20px
		0px rgba(0, 0, 0, .1), 4px 4px 5px 0px rgba(0, 0, 0, .1);
	outline: none;
}

.btn-1 {
	background: rgb(6, 14, 131);
	background: linear-gradient(0deg, rgba(6, 14, 131, 1) 0%,
		rgba(12, 25, 180, 1) 100%);
	border: none;
}

.btn-1:hover {
	background: rgb(0, 3, 255);
	background: linear-gradient(0deg, rgba(0, 3, 255, 1) 0%,
		rgba(2, 126, 251, 1) 100%);
}

.btn-2 {
	background: rgb(255, 27, 0);
	background: linear-gradient(0deg, rgba(255, 27, 0, 1) 0%,
		rgba(251, 75, 2, 1) 100%);
	border: none;
}

.btn-2:hover {
	background: linear-gradient(0deg, rgba(255, 151, 0, 1) 0%,
		rgba(251, 75, 2, 1) 100%);
}

/* watch2 운동 버튼 끝 */
</style>
</head>
<body>


	<!-- 종료 모달창 -->
	<div class="modal">

		<button id="modalc">X</button>
		<form action="exerInsert.do">
			<div class="modal_content" title="클릭하면 창이 닫힙니다.">

				오늘 운동 내역은
				<div class="modalbox">
					<div id="box1">

						<!-- jstl로 반복문 사용 -> mvo 출력 -->
						<c:forEach var="name" items="${mvo}">
							<h3>${name}</h3>
						</c:forEach>
					</div>
					<div id="box2">
						<h3>시간</h3>
						<h3>칼로리</h3>
						<h3>최대/평균심박수</h3>
					</div>
					
					<div id="box2">
						<div id="exerlist" name="list" style="display: none"></div>
						<h3 id="time2" name="time2"></h3>
						<h3 id="cal2" name="cal2"></h3>
						<div> <h3 id="maxHeart" name="max"></h3> / <h3 id="minHeart" name="min"></h3>BPM </div> 
						<h3 id="strong" name="strong"></h3>
						<h3 id="age" style="display: none">${age}</h3>
						<h3 id="danger" name="danger" style="display: none">${danger}</h3>
					</div>
				</div>
				저장하시겠습니까 ?
				<button type="submit">저장하기</button>
		</form>
	</div>
	

	<script type="text/javascript">
$(function(){ 
	// 모달창 보이기
	  $("#stopbtn").click(function(){
	    $(".modal").fadeIn();
	    $(".textbox").css('display', 'none');
	   
	  });
		// 모달창 숨기기
	  $("#modalc").click(function(){
	    $(".modal").fadeOut();
	    $(".textbox").css('display', 'block');
	  });
	  
	});
</script>
	<div class="section">
		<input type="radio" name="slide" id="slide01" checked> <input
			type="radio" name="slide" id="slide02">

		<div class="slide-wrap">
			<ul class="slidelist">
				<li><a>
						<table class='table'>
							<div id="none">
								<div class="wrap">

									<label for="slide02" class="right"></label>
									<div class="textbox">
										<div id="box1">
											<!-- jstl로 반복문 사용 -> mvo 출력 -->
											<c:forEach var="name" items="${mvo}" varStatus="status">
												<h3 id="list${status.count}">${name}</h3>
											</c:forEach>

										</div>

										<div id="box2">
											<h3>10회씩</h3>
											<h3>5세트</h3>
											<h3>목표심박수</h3>
											<h3 id="targetHeart"></h3>
										</div>
									</div>

									<div class="frame" style="margin-top: 50%">


										<button class="custom-btn btn-1" id="startbtn"
											aria-hidden="true">시작하기</button>

										<button class="custom-btn btn-2" id="stopbtn">끝내기</button>
									</div>
								</div>
							</div>
						</table>

				</a></li>
				<li><a> <label for="slide01" class="left"></label>
						<div class="textbox" style="height: fit-content;">
							<h3>시간 :</h3>
							<div id='timerBox' class="timerBox">
								<h3 id="time" class="time" name="time">00:00:00</h3>
							</div>
							<h3>칼로리 :</h3>
							<h3 id="cal" class="cal" name="cal"></h3>
							<h3>현재 심박수 :</h3>
							<h3 id="todayHeart"></h3>
							<h3>최대 심박수 :</h3>
						</div>

						<div class="btnBox">
							<button id="medle" class="fa fa-play" aria-hidden="true"
								style="display: none">시작하기</button>
							<button id="pausebtn" class="fa fa-pause " aria-hidden="true">일시정지</button>
							<button id="stopbtn" class="fa fa-stop" aria-hidden="true">종료하기</button>
						</div>
		</div>



		</a>
		</li>

		</ul>
	</div>
	</div>
 <script type="text/javascript">

 function name() {
	 Swal.fire({
		  icon: 'error',
		  title: 'Oops...',
		  text: '위험 상태입니다 잠시 멈춰주세요!',
		});
}

 </script>
	<script src="resources/assets/js/stopwatch.js"></script>

</body>
</html>

</html>