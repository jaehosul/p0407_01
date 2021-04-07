$(document).on
	(
		"click","img[id='date_live_reset']",
		function()
		{
			$(this).prev(".datetime").val("");
		}
	);

	$(document).on
	(
		"keyup",".onlynumber",
		function()
		{
			var temp_val = $(this).val();
			if(isNaN(temp_val))
			{
				alert("숫자만 입력하실 수 있습니다.");
				$(this).val("");
				$(this).focus();
				return;
			}
		}
	);

	$(document).on
	(
		"keyup",".onlyprice",
		function()
		{
			var temp_val = $(this).val();
			if(isNaN(temp_val.split(",").join("")))
			{
				alert("숫자만 입력하실 수 있습니다.");
				$(this).val("");
				$(this).focus();
				return;
			}
			else
			{
				SetComma(this);
			}
		}
	);
	
	$(document).on
	(
		"click",".onlyonecheck",
		function()
		{
			var obj_id = $(this).attr("id");
			$("input[id='"+obj_id+"']").not($(this)).prop("checked",false);
		}
	);
	
	$(document).on
	(
		"click",".datetime",
		function()
		{
			$(this).datepicker(datepicker_option);
		}
	);