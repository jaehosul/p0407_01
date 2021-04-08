<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<!-- 네이버 지도 api 헤더 -->
		<meta charset="utf-8">
		<title>지도 이동시키기</title>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
		<title>간단한 지도 표시하기</title>
		<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=ka87uwhh8b"></script>
		    
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
			<span class="title_name">찾아오시는길</span>
			<span class="title_detail">결혼 준비의 새로운 기준 베리굿웨딩과 함께 하세요!</span>
		
		
		<br><br>
		<div class="map_add">
		<span class="map_add_tx1">주소:</span>
		<span class="map_add_tx2" style="color:#000000;">서울 구로구 디지털로34길 27 대륭포스트타워3차 1106호(관악고용센터 건물 11층)&nbsp;웨딩수다</span></div>
		
		<br><br>
		
		<p><img src="../images/rough_map.jpg" alt="웨딩수다 약도"></p>
		<br>
		
		<!-- 카카오 지도 api -->
		<p>카카오 지도</p>
		<div id="map" style="width:100%;height:350px;"></div>
		<p>
		    <button onclick="setCenter()">지도 중심좌표 이동시키기</button> 
		    <button onclick="panTo()">지도 중심좌표 부드럽게 이동시키기</button> 
		</p>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=03c6f26c986af70915830e5e47147fe6"></script>
		<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(37.485496080025875,126.89815706016758), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
			// 마커가 표시될 위치입니다 
			var markerPosition  = new kakao.maps.LatLng(37.485496080025875,126.89815706016758); 

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);

			// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
			// marker.setMap(null);  
			
			function setCenter() {            
			    // 이동할 위도 경도 위치를 생성합니다 
			    var moveLatLon = new kakao.maps.LatLng(37.485496080025875,126.89815706016758);
			    
			    // 지도 중심을 이동 시킵니다
			    map.setCenter(moveLatLon);
			}
			
			function panTo() {
			    // 이동할 위도 경도 위치를 생성합니다 
			    var moveLatLon = new kakao.maps.LatLng(37.485496080025875,126.89815706016758);
			    
			    // 지도 중심을 부드럽게 이동시킵니다
			    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
			    map.panTo(moveLatLon);
			}        
			</script>
			
			<!-- 네이버 지도 api --> 
			<!-- <div id="map" style="width:100%;height:400px;"></div>
			<script>
			
			var mapOptions = {
			    center: new naver.maps.LatLng(37.485496080025875,126.89815706016758),
			    zoom: 10
			};
			
			var map = new naver.maps.Map('map', mapOptions);
		</script>
		 -->
		 </div>
		<br><br><br>
		<!-- footer -->
		<jsp:include page="../include/footer.jsp">
    		<jsp:param name="category" value="product2" />
		</jsp:include>
	</body>
</html>