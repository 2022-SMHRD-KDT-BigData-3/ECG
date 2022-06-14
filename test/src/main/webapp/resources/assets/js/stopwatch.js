var time = 0;
var starFlag = true;
var todayHeart =0;  // 현재 심박수
var stabilityHeart =0; // 안정시 심박수 
var maxHeart = 0;   // 운동하기전 최대심박수
var mhr = 0;   // 220-나이에 들어갈 최대심박수
var maxHeart2 =0; // 운동했을때 목표심박수
$(document).ready(function(){
  buttonEvt();
   targetHeart();
});

// 목표심박수 구하는 펑션
function targetHeart() {
	// maxHeart = 최대심박수 ,min = 최소목표심박수, max = 최대목표심박수  수정해야함 !!
	let maxHeart = 220-21+60 ;
	let min= 0;
	let max = 0;
	let pre = 60;
	let ter = 220-21;
	if(pre>50){
	min = maxHeart*0.60+60
	max = maxHeart*0.70+60
	// parseInt() 형변환
	min = parseInt(min)
	max = parseInt(max)
	}else { 
	min = maxHeart*0.70+60
	max = maxHeart*0.80+60
	min = parseInt(min)
	max = parseInt(max)
	}
	// j쿼리로 id값 heart의 내용을 바꿔준다
		// 목표심박수
	  document.getElementById("targetHeart").innerHTML = min+"~"+max;
	  // 공식의 최소목표심박수
	   document.getElementById("minHeart").innerHTML = min;
}


function init(){
  document.getElementById("time").innerHTML = "00:00:00";
}

function buttonEvt(){
  var hour = 0;
  var min = 0;
  var sec = 0;
  var timer;

  // start btn
  $("#startbtn").click(function(){
 $("#slide02").prop("checked",true);
  $("#pausebtn").css('display','inline');		
  $("#medle").css('display','none');
   	// 안정시 심박수가 0 이라면 현재심박수는 안정시심박수이다. -> 시작할때 한번만 체크 심박수 수정!!!
   	if(stabilityHeart==0){
		stabilityHeart = todayHeart;
	}
	// 최대심박수가 현재심박수보다 작다면 최대심박수는 현재심박수이다.
	if(maxHeart2<=todayHeart){
		maxHeart2=todayHeart;
	}
	
    if(starFlag){

      starFlag = false;

      if(time == 0){
        init();
      }
	console.log("확인1");
      timer = setInterval(function(){
        time++;

        min = Math.floor(time/60);
        hour = Math.floor(min/60);
        sec = time%60;
        min = min%60;
		timerdd = (hour*60)+min;
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
        var age = document.getElementById('age').innerText;
 		document.getElementById("time").innerText = th + ":" + tm + ":" + ts;
        document.getElementById("cal").innerHTML = 21*60*0.005*timerdd;
         document.getElementById("strong").innerHTML = maxHeart2/(220-age-stabilityHeart)-stabilityHeart;
        
      }, 1000);
    }
  });

$("#medle").click(function(){
 $("#pausebtn").css('display','inline');		
  $("#medle").css('display','none');		
    if(starFlag){
		
      starFlag = false;

      if(time == 0){
        init();
      }

      timer = setInterval(function(){
        time++;
	
        min = Math.floor(time/60);
        hour = Math.floor(min/60);
        sec = time%60;
        min = min%60;
		timerdd = (hour*60)+min;
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
        // 타이머
 		document.getElementById("time").innerText = th + ":" + tm + ":" + ts;
		// 칼로리 계산뿌려주기
        document.getElementById("cal").innerHTML = 21*60*0.005*timerdd;

      }, 1000);
    }
  });
  // pause btn
  $("#pausebtn").click(function(){
   	console.log("확인5");
    if(time != 0){

      clearInterval(timer);
      starFlag = true;

       }
       	console.log("확인3");
          $("#medle").css('display','inline');		
 $("#pausebtn").css('display','none');		

			
 	console.log("확인4");
  });



  // stop btn
  $("#stopbtn").click(function(){
  
  // 웹에 가져오는 값들
  var timeval = document.getElementById('time').innerText;
  var calval = document.getElementById('cal').innerText;
  var list1 = document.getElementById('list1').innerText;
  var list2 = document.getElementById('list2').innerText;
  var list3 = document.getElementById('list3').innerText;
  console.log(timeval);
  // db에 넣을 타이머값
  document.getElementById("time2").innerHTML = timeval;
	// db에 넣을 칼로리값 
  document.getElementById("cal2").innerHTML = calval;
  // 운동리스트 합쳐서 보내기
   document.getElementById("exerlist").innerHTML = list1+","+list2+","+list3;
    if(time != 0){

      clearInterval(timer);
      starFlag = true;
      time = 0;
      init();
    }
  });
}