// JavaScript Document
function startTime()
{
	var currDate = new Date();
	
	var gio = currDate.getHours();
	var phut = currDate.getMinutes();
	var giay = currDate.getSeconds();
	
	phut = checkTime(phut);
	giay = checkTime(giay);
			
	$('#timer').html(gio + ":" + phut + ":" + giay);
	
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
