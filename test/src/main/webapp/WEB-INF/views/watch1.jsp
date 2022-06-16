<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>watch1</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">


   @font-face {
    font-family: 'EliceDigitalBaeum';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_elice@1.0/EliceDigitalBaeum.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
	}
    

   * {margin:0;padding:0;}
   .section {}
   .section input[id*="slide"] {display:none;}

   .section .slide-wrap {max-width:1200px;margin:0 auto;}
   .section .slidelist {white-space:nowrap;font-size:0;overflow:hidden;}
   .section .slidelist > li {display:inline-block;vertical-align:middle;width:100%;transition:all .5s;}
   .section .slidelist > li > a {display:block;position:relative;}
   .section .slidelist > li > a img {width:100%;}
   .section .slidelist label {position:absolute;z-index:10;top:50%;transform:translateY(-50%);padding:50px;cursor:pointer;}
   .section .slidelist .left {left:30px;background:url('./img/left.png') center center / 100% no-repeat;}
   .section .slidelist .right {right:30px;background:url('./img/right.png') center center / 100% no-repeat;}
   .section .slidelist .textbox {position:absolute;z-index:1;top:50%;left:50%;transform:translate(-50%,-50%);line-height:1.6;text-align:center;}
   
   .section .slidelist .textbox h3 {font-size:68px;color:#fff;opacity:0;transform:translateY(30px);transition:all .5s;}

   .section .slidelist .textbox p {font-size:24px;color:#fff;opacity:0;transform:translateY(30px);transition:all .5s;}

   .section input[id="slide01"]:checked ~ .slide-wrap .slidelist > li {transform:translateX(0%);}
   .section input[id="slide02"]:checked ~ .slide-wrap .slidelist > li {transform:translateX(-100%);}
   .section input[id="slide03"]:checked ~ .slide-wrap .slidelist > li {transform:translateX(-200%);}
   .section input[id="slide03"]:checked ~ .slide-wrap .slidelist > li {transform:translateX(-300%);}
   .section input[id="slide03"]:checked ~ .slide-wrap .slidelist > li {transform:translateX(-400%);}
   .section input[id="slide03"]:checked ~ .slide-wrap .slidelist > li {transform:translateX(-500%);}

   .section input[id="slide01"]:checked ~ .slide-wrap li:nth-child(1) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
   .section input[id="slide01"]:checked ~ .slide-wrap li:nth-child(1) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
   .section input[id="slide02"]:checked ~ .slide-wrap li:nth-child(2) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
   .section input[id="slide02"]:checked ~ .slide-wrap li:nth-child(2) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
   .section input[id="slide03"]:checked ~ .slide-wrap li:nth-child(3) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
   .section input[id="slide03"]:checked ~ .slide-wrap li:nth-child(3) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}

   /*아이콘 시작 */

.slidelist{
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
  width: 140%;
  height: 140%;
  max-width: 250px;
  max-height: 250px;
  position: relative;
  margin-bottom: 9rem;
}
.circle:before {
  border: 4px solid white;
  border-radius: 80%;
  content: "";
  display: block;
  width: auto;
  height: auto;
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  transform: scale(0.875);
  transform-origin: center center;
  background: white;
}
.circle:after {
  border: 1px solid white;
  border-radius: 80%;
  content: "";
  display: block;
  height: auto;
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  width: 100%;
  transform: scale(1);
  transform-origin: center center;
  animation: 700ms pulse forwards infinite ease-in-out;
  opacity: 0;
}
#danger{
   font-color : white;
   margin-top: 266px;
   margin-left: 20px;
}


@keyframes pulse {
  0% {
    transform: scale(1);
    opacity: 0.5;
  }
  0% {
    opacity: 1;
  }
  100% {
    transform: scale(3);
    opacity: 0;
  }
} 
  /*아이콘 끝*/
   
   
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
.btn {
  position: relative;
  display: inline-block;
  width: auto; height: auto;
  background-color: transparent;
  border: none;
  cursor: pointer;
  margin: 0px 25px 15px;
  min-width: 528px;
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

<div class="section">
   <input type="radio" name="slide" id="slide01" checked>
   <input type="radio" name="slide" id="slide02">
  
   <div class="slide-wrap">
      <ul class="slidelist" style = "width: 700px;" >
         <li>
            <a>
                  <div>
                      <div class="wrap">
                       <div class="circle"></div>
                     </div>
                  </div>
               <label for="slide02" class="right"></label>
               <div class="textbox">
                  <h3 id="danger">50%</h3>
               </div>
            </a>
         </li>
         <li>
            <a>
               <label for="slide01" class="left"></label>
               <div class="textbox">
                  <h3>오늘은 어디</h3>
                  <h3>운동을 해볼까요?</h3>
                 
                  <div class="btn-holder">
                  
                     <button class="btn btn-1 hover-filled-slide-down">
                        <div class="back">
                         <a class="a_link" href=""> <span>상체</span></a>
                        </div>
                    </button>
                  
                 
                 
                     <button class="btn btn-1 hover-filled-slide-down">
                         <div class="back">
                             <a class="a_link" href=""> <span>하체</span></a>
                         </div>
                    </button>
                 
                 
                 
                     <button class="btn btn-1 hover-filled-slide-down">
                         <div class="back">
                             <a class="a_link" href=""> <span>전신</span></a>
                         </div>
                    </button>
                  
                 
               </div>
               <img src="">
               
            </a>
         </li>
        
      </ul>
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
	document.getElementById("danger").innerHTML = "<MARQUEE direction='up' height='60' truespeed='1'> 1%<br>2%<br>3%<br>" +
	"4%<br>5%<br>6%<br>7%<br>8%<br>9%<br> </MARQUEE>";

	$.ajax({
		url : "http://localhost:9000/flask",
		type : "GET",		
		success : function(data) {
			console.log(data);
			var result = data*100;			
			
			document.getElementById("danger").innerHTML = result+"%";
			
			if(result >= 70)
				document.getElementById("danger").style.color="red";
			else if(result >= 30)
				document.getElementById("danger").style.color="orange";
			else
				document.getElementById("danger").style.color="green";
						
			var a_tags = $("a.a_link");
			console.log("length : "+a_tags.length)
			
			a_tags.eq(0).attr("href","listpick.do?Choose=1&danger="+result+"&age="+${vo.getAge()}+"&id=${vo.getId()}&weight="+${vo.getWeight()});
			a_tags.eq(1).attr("href","listpick.do?Choose=2&danger="+result+"&age="+${vo.getAge()}+"&id=${vo.getId()}&weight="+${vo.getWeight()});
			a_tags.eq(2).attr("href","listpick.do?Choose=2&danger="+result+"&age="+${vo.getAge()}+"&id=${vo.getId()}&weight="+${vo.getWeight()});
			console.log("확인");
			var h3_tag = $("#danger");
		}		
	});
	
}
</script>
</body>
</html>