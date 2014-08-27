var count=3;
var alertFlag=0;
var closeFlag=0;
window.onbeforeunload = function(e) {
	if(closeFlag==0)
	{
		closeFlag=1;
		document.getElementById('test').submit();
		return "Oops!!!\nThere is nothing you can do now.\nPlease Click \"Stay on this page\" to submit the test.\nDON'T CLICK \"Leave this page\"";
	}
	else{}
};
function radioUC()
{
	$.uniform.update();
}
function do_this()
{
	alertFlag=1;
	closeFlag=1;
	window.onbeforeunload=null;
	return true;
}
$(window).blur(function(){
  	count--;
	if(count<0)
	{
		do_this();
		document.getElementById('test').submit();
	}
	if(alertFlag==0)
	{
		document.getElementById('count').innerHTML=count;
		$("#dialog").dialog({
			width:600,
			height:200,
			modal:true,
			show: {
				effect: "blind",
				duration: 1000
			},
			hide: {
				effect: "explode",
				duration: 1000
			}
		});
	 }
});
var duration=document.getElementById('duration').value;
var secs=1;
var mins=duration;
var counter=setInterval(timer, 1000); //1000 will  run it every 1 second
var m="hi";
var s="hi";
function timer()//(var count,var counter)
{
  secs=secs-1;
  if(secs<0)
  {
	  if(mins<=0)
	  {
			 clearInterval(counter);
			 //counter ended, do something here
			 do_this();
			 document.getElementById('test').submit();
			 return;
	  }
	  else
	  {
		  secs=59;
		  mins=mins-1;
	  }
  }
  m=mins;
  s=secs;
  if(mins<10) m="0"+mins;
  if(secs<10) s="0"+secs;

  //Do code for showing the number of seconds here
  document.getElementById("timer").innerHTML=m+":"+s; // watch for spelling
}