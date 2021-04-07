function OpenWindowName(url,name, width,height) 
{
	  var window_left = (screen.width-width)/2;
	  var window_top = (screen.height-height)/2;
	  window.open(url, name, 'width=' + width + ', height=' + height + ', status=no scrollbars=yes, resizable=yes,top=' + window_top + ',left=' + window_left + ',scrollbars=yes');
}

function OpenWindowNameWidhNoScR(url,name, width,height) 
{
  var window_left = (screen.width-width)/2;
  var window_top = (screen.height-height)/2;
  window.open(url, name, 'width=' + width + ', height=' + height + ', status=no scrollbars=yes, resizable=yes,top=' + window_top + ',left=' + window_left + ',scrollbars=no');
}

function SetComma(obj) 
{
	var rtn = "";
	var val = "";
	var j = 0;

	x = $(obj).val().length;

	for(i=x; i>0; i--)
	{
		if($(obj).val().substring(i,i-1) != ",")
		{
			val = $(obj).val().substring(i,i-1)+val;
		}
	}
	
	x = val.length;
	
	for(i=x; i>0; i--)
	{
		if(j%3 == 0 && j!=0) {
		rtn = val.substring(i,i-1)+","+rtn; 
	}
	
	else
	
	{
		rtn = val.substring(i,i-1)+rtn;
	}
		j++;
	}
		$(obj).val(rtn);
}



function SetComma_val(strvalue) 
{
	strvalue = String(strvalue);
	var rtn = "";
	var val = "";
	var j = 0;
	x = strvalue.length;

	for(i=x; i>0; i--)
	{
		if(strvalue.substring(i,i-1) != ",")
		{
			val = strvalue.substring(i,i-1)+val;
		}
	}
	
	x = val.length;
	
	for(i=x; i>0; i--)
	{
		if(j%3 == 0 && j!=0) 
		{
			rtn = val.substring(i,i-1)+","+rtn; 
		}
		else
		{
			rtn = val.substring(i,i-1)+rtn;
		}

		j++;
	}
	
	strvalue = rtn;
	return strvalue;
}

function onlyNumber()
{
	if(event.keyCode >= 48 && event.keyCode <= 57) 
	{
		return true;
	} 
	else
	{
		event.returnValue = false;
	}
}

function onlyNumber2(obj) 
{
	if(/[^0123456789]/g.test(obj.value)) 
	{
		obj.value = "";
	}
}


function onlyprice(obj)
{
	var str = $(obj).val().split(",").join("");
		
	if (isNaN(str))
	{
		$(obj).val($(obj).val().substring(0,$(obj).val().length-1));
	}	
}

function onlyfloat(obj)
{
	var str = $(obj).val().split(".").join("");
		
	if (isNaN(str))
	{
		$(obj).val($(obj).val().substring(0,$(obj).val().length-1));
	}	
}

function msgset(x,y)
{ 
var text ='<table style="width:150px;height:100%;background-color:#ffffff;border:1px solid #666666;"><tr><td style="padding:5px;font-family:돋움; font-size:12px; letter-spacing:140%;">' + y + '</td></tr></table>' 
msg.innerHTML=text 
}


function msgmove()
{ 
msg.style.posLeft = event.x + 10 + document.body.scrollLeft 
msg.style.posTop = event.y + 2 + document.body.scrollTop 
} 


function msghide()
{ 
	msg.innerHTML='' 
} 


function isdate(date_str)
{		
	if (date_str != "")
	{
		var date_arry = date_str.split("-");
		var year_str = date_arry[0];
		var month_str = date_arry[1];
		var day_str = date_arry[2];
			
		if (String(month_str).length == 1)
		{
			month_str = "0"+month_str;
		}

		if (String(day_str).length == 1)
		{
			day_str = "0"+day_str;
		}
			
		var match_day = year_str+"-"+month_str+"-"+day_str;

		var year = Number(year_str);
		var month = Number(month_str)-1;
		var day = Number(day_str);
			
		var chk_d = new Date(year,month,day);

		chk_d.setYear(year);
		chk_d.setMonth(month);
		chk_d.setDate(day);
			
		var chk_year = chk_d.getFullYear();
		var chk_month = Number(chk_d.getMonth())+1;
		var chk_day = chk_d.getDate();
			
		if (String(chk_month).length==1)
		{
			chk_month = "0"+String(chk_month);
		}

		if (String(chk_day).length==1)
		{
			chk_day = "0"+String(chk_day);
		}

		var final_day = chk_year+"-"+chk_month+"-"+chk_day;
			
		if (match_day != final_day)
		{
			return false;
		}
		else
		{
			return true;
		}
	}//if (date_str != "")
	else
	{
		return false;
	}
}

function getCookie( name )
{
	var nameOfCookie = name + "=";
	var x = 0;
	while ( x <= document.cookie.length )
	{
		var y = (x+nameOfCookie.length);
		if ( document.cookie.substring( x, y ) == nameOfCookie ) 
		{
			if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
				endOfCookie = document.cookie.length;
			return unescape( document.cookie.substring( y, endOfCookie ) );
		}

		x = document.cookie.indexOf( " ", x ) + 1;
		if ( x == 0 )
			break;
	}
	return "";
}

function setCookie( name, value, expiredays )
{
	var todayDate = new Date();
	todayDate.setDate( todayDate.getDate() + expiredays );
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

function page_load(view)
{				
	if (view=="0")
	{
		var web_width = $(window).width();
		temp_width = Math.round(web_width/2);

		var web_height = $(window).scrollTop();
		var temp_height = Math.round(web_height/2);
		temp_height = web_height+Math.round( $(window).height()/2);

		$("<div id='loading' style='position:absolute;z-index:10;'><img src='/image/loading_img2.gif'></div>")
		.insertAfter("#main_wrap")
		.css("top",temp_height+"px")
		.css("left",temp_width+"px");

		$("#loading").show();
	}
	else
	{
		$("#loading").hide();
		$("#loading").remove();
	}
}

// 숫자만 입력 정규식
function validate_num(val)
{
	var pattern = new RegExp(/^[0-9]+$/);
	return pattern.test(val);
}

function selectbox_select(obj_val, real_val)
{
	var return_str = ""

	if(obj_val==real_val)
	{
		return_str = "selected='selected'"
	}

	return return_str;
}

function image_resize(image, Default_Width, Default_Height )
	{
				
		var XWidth = image.width;
		var YHeight = image.height;

		var Width = 0;
		var Height = 0;

		if((XWidth < Default_Width) && (YHeight < Default_Height))
		{
			Width = XWidth;
			Height = YHeight;
		}
		else
		{
					
			if(XWidth > YHeight)
			{
				Width = Default_Width;
				Height  = (YHeight * Width) / XWidth;
			}
			else
			{
				if(XWidth < YHeight)
				{
					Height = Default_Height;
					Width = (XWidth*Height) / YHeight;
				}
				else
				{
					if(XWidth == YHeight )
					{
						if(YHeight > Default_Height)
						{
							Height= Default_Height;
							Width = (XWidth*Height)/YHeight;
						}
						else
						{
							Width=Default_Width;
							Height=Default_Height;
						}
					}
				}
			}
		}
				
		image.width = Width;
		image.height = Height;
	}


	function get_img_size(obj, reset_x, reset_y, sep)
	{
		var x=obj.width;
		var y=obj.height;

		if (x>reset_x || y>reset_y)
		{
			if (2*x>3*y)
			{
				y=y/x*reset_x;
				x=reset_x;
			}
			else
			{
				x=x/y*reset_y;

				y=reset_y;
			}
		}
		
		if(sep=="size")
		{
			return x+","+y;
		}
		else
		{
			obj.width=x;
			obj.height=y;
		}
	}

	function wrapWindowByMask()
	{
		var maskHeight = $(document).height(); 
		var maskWidth = $(window).width(); 
		$("#wrap").css({
			"opacity": "0.2","width":maskWidth,"height":maskHeight
		});
		$("#wrap").fadeIn(0);
	}

	function login_layer(dircet_link, gubun)
	{		
		var pc_gubun = "";
		
		if (gubun==null)
		{
			pc_gubun = "";	
		}
		else
		{
			pc_gubun = gubun
		}

		$("#user_login_layer").remove();

		var layer_htm = "<div id='user_login_layer' style='width:800px;height:590px;position:absolute;background-color:#fff;border:5px solid #444;z-index:1050;'>"
			+"<iframe src='/member/login_frame.asp?p_gubun="+pc_gubun+"&dircet_link="+dircet_link+"' width='758' height='590' scrolling='no' frameborder='0'></iframe>"
			+"</div>";
			
			$("body").append(layer_htm);
			
			var left = ( $(window).scrollLeft() + ($(window).width() - $("#user_login_layer").width()) / 2 );
			var top = ( $(window).scrollTop() + ($(window).height() - $("#user_login_layer").height()) / 2 );
				
			$("#user_login_layer")
			.css("top",top)
			.css("left",left)
			.show();
	}


	var datepicker_option = 
	{
		changeMonth: true,
		changeYear: true,
		yearRange:'2012:+3',
		dateFormat: 'yy-mm-dd',
		dayNamesMin: ['<font color=red>일</font>','월','화','수','목','금','<font color=blue>토</font>'],
		weekHeader: 'Wk',
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],			
		showMonthAfterYear: true
	}
	
	

	function get_checked_obj_value(obj)
	{
		var j = 0;
		var return_value = "";
		
		$(obj).each
		(
			function(i)
			{
				if(j==0)
				{
					return_value = $(obj).eq(i).val();
				}
				else
				{
					return_value = return_value+","+$(obj).eq(i).val();
				}
				j++;
			}
		);

			return return_value;
	}