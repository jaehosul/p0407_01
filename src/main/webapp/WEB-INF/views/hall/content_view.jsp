<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>웨딩수다</title>
		<link rel="stylesheet" href="/css/reset.css" type="text/css">
		<link rel="stylesheet" href="/css/main.css?ver=1" type="text/css">
		<link rel="stylesheet" href="/css/sub.css?ver=1" type="text/css">
		<link rel="stylesheet" href="/css/sub_detail.css?ver=1" type="text/css">
		<link rel="stylesheet" href="../fonts/NanumBarunGothic.css?ver=1"
			type="text/css">
		<link rel="stylesheet" type="text/css"
			href="/css/jquery-ui-1.10.4.custom.css">
		
		<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="/js/document.on.js"></script>
		<script type="text/javascript" src="/js/prog.js"></script>
		<script language="javascript" src="/js/jquery-ui-1.10.4.custom.js"></script>
		<script type="text/javascript"
			src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
			
			
		<script type="text/javascript">
		      function delete_check(){
		    	  if(confirm("삭제하시겠습니까?")){
		    		  location.href="./delete?page=${map.page}&bidding_id=${map.biddingDto.bidding_id}&search=${map.search}";
		    	  }else{
		    		  return false; 
		    	  }
		      }
		</script>		
			
			
		</head>
	</head>
	
	<body>
		<!-- header -->
		<jsp:include page="../include/header.jsp">
			<jsp:param name="category" value="product1" />
		</jsp:include>

	
	
	<div id="community_after_detail_wrap">
		<div id="after_detail_title">
			<span class="after_detail_title_txt">${map.biddingDto.bidding_title }</span>
	    </div>
	    <div id="after_detail_date">
			<span id="after_detail_date_day" style="font-size:13px;color:#000000;">• 작성자</span>
	        <span class="after_detail_date_day" style="font-size:13px;">${map.biddingDto.bidding_name }</span>
	        <span id="after_detail_date_day" style="font-size:13px;color:#000000;">• 작성일</span>
	        <span class="after_detail_date_day" style="font-size:13px;">${map.biddingDto.bidding_date }</span>
	        <span id="after_detail_date_day" style="font-size:13px;color:#000000;">• 조회수</span>
	        <span class="after_detail_date_day" style="font-size:13px;">${map.biddingDto.bidding_hit }</span>
	    </div>
	    <div id="after_detail_img" style="font-size:14px;">        	
			<p style="text-align: center;"></p>
			<p style="text-align: center;"><span style="color: rgb(0, 0, 0);"><br></span></p>
			<p style="text-align: center;"><br></p>
			<p style="text-align: center;"><span style="color: rgb(0, 0, 0); font-family: Gulim, 굴림, AppleGothic, sans-serif; font-size: 10pt;">${map.biddingDto.bidding_content }</span></p>
	    </div>
		
	    <div id="after_detail_lotation">
			<div id="after_lotation_left">
				<div class="after_lotation_left01"><a><img src="../images/up.jpg" alt="up">윗글</a>
				</div>
            	<div class="after_lotation_left02">
					<a href="./content_view?search=${map.search }&page=${map.page}&bidding_id=${map.upperDto.bidding_id }">${map.upperDto.bidding_title }</a> 
				</div>
        	</div>
        <div id="after_lotation_right">
			<div class="after_lotation_right01"><a><img src="../images/down.jpg" alt="down">아랫글</a></div>
            	<div class="after_lotation_right02">
					<a href="./content_view?search=${map.search }&page=${map.page}&bidding_id=${map.lowerDto.bidding_id }">${map.lowerDto.bidding_title }</a>
				</div>
            </div>
        </div>     
		<div id="after_return">
			<span class="after_return_txt_list"><a href="/hall/hall_bidding_list">목록으로</a></span>
			<span class="after_return_txt_edit"><a href="/hall/modify_view?page=${map.page}&bidding_id=${map.biddingDto.bidding_id}&search=${map.search }" id="edit_btn" style="cursor:pointer;" >수정</a></span>
			<span class="after_return_txt_del"><a id="del_btn" onclick="delete_check()" style="cursor:pointer;">삭제</a></span>
			<span class="after_return_txt_write"><a href="/hall/reply_view?page=${map.page}&bidding_id=${map.biddingDto.bidding_id}&search=${map.search }" id="regist_btn" style="cursor:pointer;">답글달기</a></span>
		</div>
	</div>

	
	
	
	
	
	
	<input type="text" name="keyword" id="keyword" class="name_view_wrap" value="" style="padding-left:5px;">
	
	
	
	
	
	
	
		<!-- footer -->
		<jsp:include page="../include/footer.jsp">
			<jsp:param name="category" value="product2" />
		</jsp:include>
	</body>
</html>