var time = 0;
var starFlag = true;
var todayHeart =0;  // 현재 심박수
var stabilityHeart =0; // 안정시 심박수 
var maxHeart = 0;   // 사용자의 최대심박수
var mhr = 0;   // 220-나이에 들어갈 최대심박수
var cal=0;


$(document).ready(function(){
  buttonEvt();
 
});


function init(){
  document.getElementById("time").innerHTML = "00:00:00";
}

function buttonEvt(){
  var hour = 0;
  var min = 0;
  var sec = 0;
  var timer;
	
	// 심박수 데이터 통신 해야함 ★★★★★ stabilityHeart = ??; 
	// mhr = 최대심박수-안정시 !! targetHeart = 목표심박수
	let danger = document.getElementById('danger').innerText;
	let age = document.getElementById('age').innerText;
	stabilityHeart = 60;
	mhr = 220-age-stabilityHeart ;
	let targetHeart= 0;
	
	console.log("danger : "+danger)
	
	
	// 예측 위험도가 50프로 이상이라면 운동강도를 이만큼한다.
	if(danger>50){
	targetHeart = mhr*0.50+stabilityHeart
	// parseInt() 형변환
	targetHeart = parseInt(targetHeart)

	
	// 아니라면 운동강도를 이만큼한다.
	}else { 
	targetHeart = mhr*0.70+stabilityHeart
	targetHeart = parseInt(targetHeart)

	}
	
	// j쿼리로 id값 heart의 내용을 바꿔준다
		// 목표심박수
	  document.getElementById("targetHeart").innerHTML = "목표심박수 : "+targetHeart+"BPM";
	
	
  // start btn
  $("#startbtn").click(function(){
 $("#slide02").prop("checked",true);

  
	
    if(starFlag){

      starFlag = false;

      if(time == 0){
        init();
      }
	
      timer = setInterval(function(){
        time++;
		
		   	// 안정시 심박수가 0 이라면 현재심박수는 안정시심박수이다. -> 시작할때 한번만 체크 심박수 수정!!!
   	// 심박수 데이터 통신 해야함 ★★★★★   todayHeart = ??; 
   	if(stabilityHeart==0){
		stabilityHeart = todayHeart;
	}
	// 최대심박수가 현재심박수보다 작다면 최대심박수는 현재심박수이다.
	if(maxHeart<=todayHeart){
		maxHeart=todayHeart;
	}
		
        min = Math.floor(time/60);
        hour = Math.floor(min/60);
        sec = time%60;
        min = min%60;
		timerdd = (((hour*60)+min)*60)+sec;
        var th = hour;
        var tm = min;
        var ts = sec;
       	
        if(th<10){
        th = "0" + hour;
        }
        if(tm < 10){
        tm = "0" + min;
        }
        if(ts < 10){
        ts = "0" + sec;
        }
    	var weight = document.getElementById('weight').innerText;
        let numb = 21*weight*0.005*timerdd/60;
        cal = numb.toFixed(2);
  		var strong = maxHeart/mhr*100
        var age = document.getElementById('age').innerText;
 		document.getElementById("time").innerText = th + ":" + tm + ":" + ts;
        document.getElementById("cal1").innerHTML = "소모칼로리 : "+cal+"kcal" ;
        document.getElementById("cal2").innerHTML = "소모칼로리 : "+cal+"kcal" ;
        document.getElementById("cal3").innerHTML = "소모칼로리 : "+cal+"kcal" ;
        document.getElementById("strong").value = strong;
        
  

      }, 1000);
    }
  });


  // stop btn
  $("#stopbtn").click(function(){
  var list;
  // 웹에 가져오는 값들
  var timeval = document.getElementById('time').innerText;
  var calval = document.getElementById('cal3').innerText;
  var list1 = document.getElementById('list1').innerText;
  var list2 = document.getElementById('list2').innerText;
  var list3 = document.getElementById('list3').innerText;
  console.log(timeval);
  list = list1+","+list2+","+list3;
  // DB에 넣을 강도값 int
  document.getElementById("time2").innerHTML = timeval;


	// DB에 넣을 최대,목표심박수와 사용자에게 보여줄 목표심박수
	document.getElementById("maxHeart").value = maxHeart;
	document.getElementById("minHeart").value = targetHeart;
	document.getElementById("maxmin").innerHTML = maxHeart+"/"+targetHeart+"BPM";
	document.getElementById("exlist").value = list;
	document.getElementById("time3").value = timeval;
	// db에 넣을 칼로리값 
  document.getElementById("cal5").value = cal;
  document.getElementById("cal4").innerHTML = cal+"kacl";
  // 운동리스트 합쳐서 보내기
  
   document.getElementById("exer").innerHTML = "<MARQUEE  direction='left' height='60' width='250'style='font-size: 34px;line-height: 30px;'>"+list+"</MARQUEE>";
	
    if(time != 0){

      clearInterval(timer);
      starFlag = true;
      time = 0;
      init();
    }
  });
}
$("#btn1").click(function(){
	$("#slide03").prop("checked",true);
	});
$("#btn2").click(function(){
	 $("#slide04").prop("checked",true);
		});