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
	z-index: 1;
}

.modal_content {
	width: 654px;
	height: 655px;
	background: #fff;
	border-radius: 10px;
	position: relative;
	top: 50%;
	left: 32%;
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
	/* top: 50%; */
	left: 350px;
	transform: translate(-50%, -50%);
	line-height: 1.6;
	text-align: center;
	height: 460px;
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

.section input[id="slide01"]:checked ~ .slide-wrap .slidelist>li {transform: translateX(0%);}
.section input[id="slide02"]:checked ~ .slide-wrap .slidelist>li {transform: translateX(-100%);}
.section input[id="slide03"]:checked ~ .slide-wrap .slidelist>li {transform: translateX(-200%);}
.section input[id="slide04"]:checked ~ .slide-wrap .slidelist>li {transform: translateX(-300%);}
.section input[id="slide05"]:checked ~ .slide-wrap .slidelist>li {transform: translateX(-400%);}
.section input[id="slide06"]:checked ~ .slide-wrap .slidelist>li {transform: translateX(-500%);}
.section input[id="slide07"]:checked ~ .slide-wrap .slidelist>li {transform: translateX(-600%);}
.section input[id="slide01"]:checked ~ .slide-wrap li:nth-child(1) .textbox h3{opacity: 1;transform: translateY(0);transition-delay: .2s;}
.section input[id="slide01"]:checked ~ .slide-wrap li:nth-child(1) .textbox p{opacity: 1;transform: translateY(0);transition-delay: .4s;}
.section input[id="slide02"]:checked ~ .slide-wrap li:nth-child(2) .textbox h3{opacity: 1;transform: translateY(0);transition-delay: .2s;}
.section input[id="slide02"]:checked ~ .slide-wrap li:nth-child(2) .textbox p{opacity: 1;transform: translateY(0);transition-delay: .4s;}
.section input[id="slide03"]:checked ~ .slide-wrap li:nth-child(3) .textbox h3{opacity: 1;transform: translateY(0);transition-delay: .2s;}
.section input[id="slide03"]:checked ~ .slide-wrap li:nth-child(3) .textbox p{opacity: 1;transform: translateY(0);transition-delay: .4s;}
.section input[id="slide04"]:checked ~ .slide-wrap li:nth-child(4) .textbox h3{opacity: 1;transform: translateY(0);transition-delay: .2s;}
.section input[id="slide04"]:checked ~ .slide-wrap li:nth-child(4) .textbox p{opacity: 1;transform: translateY(0);transition-delay: .4s;}
.section input[id="slide05"]:checked ~ .slide-wrap li:nth-child(5) .textbox h3{opacity: 1;transform: translateY(0);transition-delay: .2s;}
.section input[id="slide05"]:checked ~ .slide-wrap li:nth-child(5) .textbox p{opacity: 1;transform: translateY(0);transition-delay: .4s;}
.section input[id="slide06"]:checked ~ .slide-wrap li:nth-child(6) .textbox h3{opacity: 1;transform: translateY(0);transition-delay: .2s;}
.section input[id="slide06"]:checked ~ .slide-wrap li:nth-child(6) .textbox p{opacity: 1;transform: translateY(0);transition-delay: .4s;}
.section input[id="slide07"]:checked ~ .slide-wrap li:nth-child(7) .textbox h3{opacity: 1;transform: translateY(0);transition-delay: .2s;}
.section input[id="slide07"]:checked ~ .slide-wrap li:nth-child(7) .textbox p{opacity: 1;transform: translateY(0);transition-delay: .4s;}

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
	z-index: 2;
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

#modal {
 width: 165%;
 height: 89%;
}

/* watch2 List box 시작*/
#box1 {
	/* float: left; */
	/* margin-right: 120px; */
	border: 10px solid #dddddd;
	background: #dddddd;
	width: 684px;
	border-radius: 10px;
};
}

#box2 {
	/* margin-left: 150px; */
	width: 165%;
}

#box3 {
	/* margin-left: 150px; */
	border: 10px solid #dddddd;
	background: #dddddd;
	width: 684px;
	border-radius: 10px;
	height: 150px;
    /* line-height: 110px; */
    margin-bottom: 1rem;
}

#box4 {
	/* margin-left: 150px; */
	border: 10px solid #dddddd;
	background: #dddddd;
	width: 684px;
	border-radius: 10px;
	height: 150px;
    /* line-height: 110px; */
    margin-bottom: 1rem;
}

#box5 {
	/* margin-left: 150px; */
	border: 10px solid #dddddd;
	background: #dddddd;
	width: 684px;
	border-radius: 10px;
	height: 150px;
    /* line-height: 110px; */
    margin-bottom: 1rem;
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
.set {
	border: 10px solid #dddddd;
	background: #dddddd;
	margin-top: 1rem;
}
.beat {
	border: 10px solid #dddddd;
	background: #dddddd;
	margin-top: 1rem;
}
/* watch2 운동 버튼 끝 */

   /* 버튼 시작  */
* {
  box-sizing: border-box;
  margin: 0; padding: 0;
}
body {
  font-family: 'EliceDigitalBaeum';
  color: rgb(85,75,85);
  background-color: rgb(255,255,255);
}
h1 {
  padding: 50px 0;
  font-size: 45px;
  text-align: center;
  color: rgb(54, 56, 55);
}
:active, :hover, :focus {
  outline: 0!important;
  outline-offset: 0;
}
::before,
::after {
  position: absolute;
  content: "";
}

.btn-holder {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  max-width: 1000px;
  margin: 50px auto -80px;
}
/* 모달창 버튼 조절가능 */
.btn {
  position: relative;
  display: inline-block;
  width: auto; height: auto;
  background-color: transparent;
  border: none;
  cursor: pointer;
  margin: 86px 25px 5px 33px;
  min-width: 495px;
  right: 4.9rem;
}
  .btn span {         
    position: relative;
    display: inline-block;
    font-size: 30px;
    font-weight: bold;
    letter-spacing: 2px;
    text-transform: uppercase;
    top: 0; left: 0;
    width: 100%;
    padding: 30px 20px;
    transition: 0.3s;
  }

/*--- btn-1 ---*/
.back{
  background-color : white;
  width: 130%;
}

.btn-1::before {
  background-color: rgb(28, 31, 30);
  transition: 0.3s ease-out;
}
.btn-1 span {
  color: rgb(255,255,255);
  border: 1px solid rgb(28, 31, 30);
  transition: 0.2s 0.1s;
}
.btn-1 span:hover {
  color: rgb(28, 31, 30);
  transition: 0.2s 0.1s;
}

/* 1.hover-filled-slide-down */
.btn.hover-filled-slide-down::before {
  bottom: 0; left: 0; right: 0; 
  height: 100%; width: 130%;
}
.btn.hover-filled-slide-down:hover::before {
  height: 0%;
}

/* 2.hover-filled-slide-up */
.btn.hover-filled-slide-up::before {
  top: 0; left: 0; right: 0;
  height: 100%; width: 100%;
}
.btn.hover-filled-slide-up:hover::before {
  height: 0%;
}

/* 3.hover-filled-slide-left */
.btn.hover-filled-slide-left::before {
  top: 0; bottom: 0; left: 0;
  height: 100%; width: 100%;
}

.btn.hover-filled-slide-left:hover::before {
  width: 0%;
}

/* 4. hover-filled-slide-right */
.btn.hover-filled-slide-right::before {
  top:0; bottom: 0; right: 0;
  height: 100%; width: 100%;
}
.btn.hover-filled-slide-right:hover::before {
  width: 0%;
}

/* 5. hover-filled-opacity */
.btn.hover-filled-opacity::before {
  top:0; bottom: 0; right: 0;
  height: 100%; width: 100%;
  opacity: 1;
}
.btn.hover-filled-opacity:hover::before {
  opacity: 0;
}
   /* 버튼 끝  */
</style>
</head>
<body>

	<!-- 종료 모달창 -->
	<div class="modal">

	
		<form action="exerInsert.do" style = "height: 245px;">
			<div class="modal_content" title="클릭하면 창이 닫힙니다.">
			
			

				<h2 style = "font-size: 70px;">오늘 운동 내역은</h2>
				<div class="modalbox" style = "margin-top: 110px;font-size: 31px;width:50%;float:left;height:39%;">
					<div id="modal1" style = "margin-bottom: 50px;">
						<h3>시간</h3>
					</div>
					<div id="modal2" style = "margin-bottom: 50px;">
						<h3>칼로리</h3>
					</div>
					<div id="modal3" style = "margin-bottom: 50px;">
						<h3>최대/평균심박수</h3>
					</div>
					<div id="modal3" style = "margin-bottom: 50px;">
						<h3>운동리스트</h3>
					</div>	
				</div>
				<div id="modal"style = "margin-top: 110px;margin-bottom: 50px;font-size: 31px;width:50%;float:left;height:39%;">
						<div id="exerlist" name="list" ></div>
						<h3 id="time2" name="time2"></h3><h3 style="margin-bottom: 50px;">time</h3>
						<h3 id="cal2" name="cal2"></h3><h3 style="margin-bottom: 50px;">kcal</h3>
						<div style="margin-bottom: 50px;"> <h3 id="maxHeart" name="maxHeart"></h3><div id="minHeart" name="min"></div><h3 style="margin-bottom: 50px;">/ BPM</h3> 
						
						<h3 id="strong" name="strong"></h3>
						<h3 id="age" style="display: none">29</h3>
						<h3 name="danger" style="display: none">${danger}</h3>
						<h3 id="exer" style="margin-bottom: 50px;"></h3>
					</div>
					
				<button class="btn btn-1 hover-filled-slide-down" style = "margin: -6px 2px 13px -316px;">
                    <div class="back">
                     <a href="listpick.do?Choose=1&num=3&type=1"> <span>저장</span></a>
                    </div>
                </button>
                
                </div>
              
		</form>
		
	</div>
	</div>

	<script type="text/javascript">
	
	$(document).ready(()=>{
	    // jquery에 만들어져 있는 함수 ==> $. 비동기식 함수
	    // $.ajax({ })-> 초기화list
	      getData();
	  });
	
	function getData(){
		// 통신 code
		document.getElementById("exer").innerHTML = "<MARQUEE direction='left' height='60' width='100'style='font-size: 34px;line-height: 30px;'> 벤치프레스 고구마먹기 닭먹기 </MARQUEE>";
	}
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
		<input type="radio" name="slide" id="slide01" checked> 
		<input type="radio" name="slide" id="slide02">
		<input type="radio" name="slide" id="slide03">
		<input type="radio" name="slide" id="slide04">
		

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
											<h3 class = "set" style="border-radius : 10px;height: 106.5px;">5세트 - 10회</h3>
											<h3 class = "beat" style="border-radius : 10px;height: 106.5px;">목표심박수</h3>
											<h3 id="targetHeart"></h3>
										</div>
									</div>

									<div class="frame" style="margin-top: 67%">


										<button class="btn btn-1 hover-filled-slide-down">
					                        <div class="back">
					                         <a href="listpick.do?Choose=1&num=3&type=1"> <span>시작하기</span></a>
					                        </div>
					                    </button>

										
									</div>
								</div>
							</div>
						</table>

				</a></li>
				<!-- 운동 중 페이지 1 -->
				<li><a>
						<table class='table'>
							<div id="none">
								<div class="wrap">

									<label for="slide01" class="left"></label>
									<div class="textbox">
										

										<div id="box3">
											<h3 class = "set" style="border-radius : 10px;font-size: 62px;line-height: center;">롱플머신</h3>
										</div>	
										<div id="box4">
											<h3 class = "set" style="border-radius : 10px">5세트 - 10회</h3>
										</div>
										<div id="box5">
											<h3 class = "beat" style="border-radius : 10px, font-size : 56px;">칼로리</h3>
											<h3 id="targetHeart"></h3>
										</div>
									</div>

									<div class="frame" style="margin-top: 67%">


										<button class="btn btn-1 hover-filled-slide-down" >
					                        <div class="back">
					                         <a href="listpick.do?Choose=1&num=3&type=1"> <span>다했어요</span></a>
					                        </div>
					                    </button>
										
										
									</div>
									<label for="slide03" class="right"></label>
								</div>
							</div>
						</table>

				</a></li>



				<!-- 운동 중 페이지 끝 -->
				
				<!-- 운동 중 페이지 2 -->
				<li><a>
						<table class='table'>
							<div id="none">
								<div class="wrap">

									<label for="slide02" class="left"></label>
									<div class="textbox">
										<div id="box3">
											<h3 class = "set" style="border-radius : 10px;font-size: 62px;line-height: center;">시티드 로우</h3>
										</div>	
										<div id="box4">
											<h3 class = "set" style="border-radius : 10px">5세트 - 10회</h3>
										</div>
										<div id="box5">
											<h3 class = "beat" style="border-radius : 10px, font-size : 56px;">칼로리</h3>
											<h3 id="targetHeart"></h3>
										</div>
									</div>

									<div class="frame" style="margin-top: 67%">


										<button class="btn btn-1 hover-filled-slide-down">
					                        <div class="back">
					                         <a href="listpick.do?Choose=1&num=3&type=1"> <span>다했어요</span></a>
					                        </div>
					                    </button>

										
									</div>
									<label for="slide04" class="right"></label>
								</div>
							</div>
						</table>

				</a></li>



				<!-- 운동 중 페이지 끝 -->
				
				<!-- 운동 중 페이지 3 -->
				<li><a>
						<table class='table'>
							<div id="none">
								<div class="wrap">

									<label for="slide03" class="left"></label>
									<div class="textbox">
										<div id="box3">
											<h3 class = "set" style=" border-radius : 10px; font-size: 62px; line-height: center;">덤벨 숄더 프레스</h3>
										</div>	
										<div id="box4">
											<h3 class = "set" style="border-radius : 10px;">5세트 - 10회</h3>
										</div>
										<div id="box5">
											<h3 class = "beat" style="border-radius : 10px, font-size : 56px;">칼로리</h3>
											<h3 id="targetHeart"></h3>
										</div>
									</div>

									<div class="frame" style="margin-top: 67%">


										<button class="btn btn-1 hover-filled-slide-down" id="stopbtn">
					                        <div class="back">
					                         <span>다했어요</span>
					                        </div>
					                    </button>

										
									</div>
									<label for="slide05" class="right"></label>
								</div>
							</div>
						</table>

				</a></li>



		




		
		</ul>
	</div>
	</div>

	<script src="resources/assets/js/stopwatch.js"></script>

</body>
</html>

</html>