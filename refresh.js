document.onkeydown=function(event)
{
	//alert(event.which);
	if(event.which == 116)//F5
	{
		event.returnValue=false;
		event.which=0;
		return false;
	}
	if(event.which == 8)//BACKSPACE
	{
		//alert(document.activeElement.type);
		if(!document.activeElement.type)
		{
			event.returnValue=false;
			event.which=0;
			return false;
		}
		if(document.activeElement.type==="submit")
		{
			event.returnValue=false;
			event.which=0;
			return false;
		}
		if(document.activeElement.type==="button")
		{
			event.returnValue=false;
			event.which=0;
			return false;
		}
	}
	if(event.which == 93)//APPLICATION KEY
	{
		event.returnValue=false;
		event.which=0;
		return false;
	}
	if(event.which == 82)//CTRL+R
	{
		if (event.ctrlKey)
		{
			event.returnValue = false;
			event.which = 0;
			return false;
		}
	}
}
document.onmousedown=function()
{
  if(event.button==2)
   {
     return false;
   }
}
function closeWin()
{
	window.close();
}