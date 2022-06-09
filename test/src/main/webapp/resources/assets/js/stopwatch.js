var time = 0;
var starFlag = true;
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

  // start btn
  $("#startbtn").click(function(){
 $("#slide02").prop("checked",true);
  $("#pausebtn").css('display','inline');		
  $("#restart").css('display','none');
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

        document.getElementById("time").innerHTML = th + ":" + tm + ":" + ts;
        document.getElementById("cal").innerHTML = 21*60*0.005*timerdd;
        
      }, 1000);
    }
  });

$("#restart").click(function(){
 $("#pausebtn").css('display','inline');		
  $("#restart").css('display','none');		
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

        document.getElementBy("time").innerHTML = th + ":" + tm + ":" + ts;
        document.getElementById("cal").innerHTML = 21*60*0.005*timerdd;

      }, 1000);
    }
  });
  // pause btn
  $("#pausebtn").click(function(){
    if(time != 0){

      clearInterval(timer);
      starFlag = true;
      
 $("#pausebtn").css('display','none');		
  $("#restart").css('display','inline');		
    }
  });



  // stop btn
  $("#stopbtn").click(function(){
    if(time != 0){

      clearInterval(timer);
      starFlag = true;
      time = 0;
      init();
    }
  });
}