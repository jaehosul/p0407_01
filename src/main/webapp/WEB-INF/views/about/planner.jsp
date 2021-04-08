<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>플래너</title>

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
		<br><br>
		<웨딩 플래너><br>
		<h2>웨딩수다 소속의 플래너는 동행 플래너가 아닌 원격 플래너. 동시에 언제나 방문 가능</h2><br><br>
		<img src="/images/planner_img.png" alt="planner_list">
		<img ismap>
	  	</div><br>
		
		<!-- footer -->
		<jsp:include page="../include/footer.jsp">
    		<jsp:param name="category" value="product2" />
		</jsp:include>
	</body>
</html>