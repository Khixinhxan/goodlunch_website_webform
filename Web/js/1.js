// JavaScript Document
function startTime()
{
	var currDate = new Date();
	
	var h = currDate.getHours();
	var m = currDate.getMinutes();
	var s = currDate.getSeconds();
	
	m = checkTime(m);
	s = checkTime(s);
			
	$('#timer').html(h + ":" + m + ":" + s);
	
	var idx = setTimeout("startTime()", 500);
}

function checkTime(i)
{
	var kq = i;
	if( i < 10)
	{
		kq = "0" + i;
	}
	return kq;
}


