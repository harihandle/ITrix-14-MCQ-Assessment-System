function clearRadio(cr)
{
	var ele = document.getElementsByName(cr);
   	for(var i=0;i<ele.length;i++)
      ele[i].checked = false;
}