<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>웨딩수다의 서비스</title>

		<link rel="stylesheet" href="/css/reset.css" type="text/css">
		<link rel="stylesheet" href="/css/main.css" type="text/css">
		<link rel="stylesheet" href="/css/sub.css" type="text/css">
		<link rel="stylesheet" href="/css/sub_detail.css" type="text/css">
		<link rel="stylesheet" href="/fonts/NanumBarunGothic.css" type="text/css">
		<link rel="stylesheet" type="text/css" href="/css/jquery-ui-1.10.4.custom.css">
		<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="/js/document.on.js"></script>
		<script type="text/javascript" src="/js/prog.js"></script>
		<script language="javascript" src="/js/jquery-ui-1.10.4.custom.js"></script>
		<script type="text/javascript" src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
	
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../include/header.jsp">
    		<jsp:param name="category" value="product1" />
		</jsp:include>	
	
		<div id="contain02_text">
			<span class="title_name">웨딩수다를 선택한 이유!</span>
			<span class="title_detail">투명한 결혼 정보, 웨딩수다에서 찾을 수 있습니다!</span>
		
		<h3>웨딩수다가 제공하는 서비스</h3><br><br>
	  	<ul>
	  		<h2>예약</h2><br>
	  		<li>업체 예약 자동화</li>
	  	</ul>
	  	<hr>
	    <ul>
	    	<h2>정보</h2><br>
	  		<li>예비 부부를 위한 정보 일목요연 정리</li>
	  	</ul>
	  	<hr>
	    <ul>
	    	<h2>지식인</h2><br>
	  		<li>빅데이터를 통한 궁금증 해소</li>
	  	</ul>
	  	<hr>
	    <ul>
	    	<h2>상품권 교환</h2><br>
	  		<li>기혼자를 위한 소소한 돈벌이</li>
	  	</ul>
	  	<hr>
	    <ul>
	    	<h2>커뮤니티</h2><br>
	  		<li>웨딩 수다의 가장 큰 장점. 예비부부, 기혼자, 업체의 솔직한 정보 제공</li>
	  	</ul><br>
	  	
	  	</div>
		
		<!-- footer -->
		<jsp:include page="../include/footer.jsp">
    		<jsp:param name="category" value="product2" />
		</jsp:include>
	</body>
</html>