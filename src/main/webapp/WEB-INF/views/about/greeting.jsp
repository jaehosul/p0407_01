<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>웨딩 수다 소개</title>

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
		
		<h3>왜 웨딩수다일까요?</h3><br>
	  	<ul>
	  		<h2>예비 부부 입장</h2>
	  		<li>예비부부와 기혼자의 쌍방 대화</li>
	  		<li>업체의 광고성 정보가 아닌 업체의 장단점 소개</li>
	  		<li>정보의 수도권 쏠림 현상의 분산화 지향</li>
	  	</ul>
	  	<hr>
	    <ul>
	    	<h2>기혼자 입장</h2><br>
	  		<li>경험 공유를 통한 아쉬움 해소</li>
	  		<li>경험 공유를 통한 소소한 경제적 이득</li>
	  		<li>건강한 결혼 문화에 대한 갈망 현실화</li>
	  	</ul>
	  	<hr>
	    <ul>
	    	<h2>업체 입장</h2><br>
	  		<li>범람하는 정보 홍수에서 장점 어필</li>
	  		<li>결혼 정보 독점 사이트(카페)의 횡포 완화</li>
	  	</ul><br>
	  	
	  	</div>
		
		<!-- footer -->
		<jsp:include page="../include/footer.jsp">
    		<jsp:param name="category" value="product2" />
		</jsp:include>
	</body>
</html>