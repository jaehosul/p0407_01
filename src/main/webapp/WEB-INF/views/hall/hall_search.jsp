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
<body>
		<!-- header -->
		<jsp:include page="../include/header.jsp">
    		<jsp:param name="category" value="product1" />
		</jsp:include>	
		
		<div id="contain02_text">
			<span class="title_name">웨딩홀 정보</span>
			<span class="title_detail">투명한 결혼 정보, 웨딩수다에서 찾을 수 있습니다!</span>
		<br><br>
		<웨딩 플래너><br>
		<h2>웨딩수다에서 제공하는 정보를 활용하세요</h2><br><br>
		<img src="/images/hall_search.png" alt="hall_search">
		<img ismap>
	  	</div><br>
		
		<!-- footer -->
		<jsp:include page="../include/footer.jsp">
    		<jsp:param name="category" value="product2" />
		</jsp:include>
</body>
</html>