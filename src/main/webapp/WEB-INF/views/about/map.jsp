<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="map_picwrap">
			<div class="map_img01bx" style="position:relative;">
				<p><img src="http://vgood.co.kr/admin/contentsImg/homepage/201803/map.jpg" alt="베리굿지도"></p>
				<div id="v_map" class="map" style="position:absolute;z-index:100;top:520px;text-align:center;">
					<div id="dn">
						<a id="dmap" style="cursor:pointer;"><img src="/images/15_btn1.png" alt="다음로드뷰" border="0" width="45%"></a>
						<a id="nmap" style="cursor:pointer;"><img src="/images/15_btn2.png" alt="네이버지도맵" border="0" width="45%"></a>
					</div>				
				</div>
			</div>			
			<div class="map_img02bx">
				<p>
					</p><div class="contain_map" id="map" style="width: 902px; height: 550px; position: relative; overflow: hidden; background: url(&quot;http://t1.daumcdn.net/mapjsapi/images/bg_tile.png&quot;);"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;http://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;http://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute;"><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/986/453.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -207px; top: 535px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L4/986/454.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 49px; top: 535px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L4/986/455.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 305px; top: 535px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L4/986/456.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 561px; top: 535px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/986/457.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 817px; top: 535px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/987/453.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -207px; top: 279px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L4/987/454.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 49px; top: 279px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L4/987/455.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 305px; top: 279px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L4/987/456.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 561px; top: 279px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/987/457.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 817px; top: 279px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/988/453.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -207px; top: 23px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L4/988/454.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 49px; top: 23px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L4/988/455.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 305px; top: 23px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L4/988/456.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 561px; top: 23px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/988/457.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 817px; top: 23px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/989/453.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -207px; top: -233px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L4/989/454.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 49px; top: -233px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L4/989/455.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 305px; top: -233px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L4/989/456.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 561px; top: -233px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L4/989/457.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 817px; top: -233px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 0; left: 0px; top: 0px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1975/908.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 49px; top: 279.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L3/1975/909.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 177px; top: 279.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L3/1975/910.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 305px; top: 279.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L3/1975/911.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 433px; top: 279.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1975/912.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 561px; top: 279.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1976/908.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 49px; top: 151.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L3/1976/909.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 177px; top: 151.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L3/1976/910.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 305px; top: 151.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L3/1976/911.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 433px; top: 151.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1976/912.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 561px; top: 151.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1977/908.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 49px; top: 23.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L3/1977/909.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 177px; top: 23.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L3/1977/910.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 305px; top: 23.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L3/1977/911.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 433px; top: 23.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1977/912.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 561px; top: 23.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1978/908.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 49px; top: -104.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/2103dor/L3/1978/909.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 177px; top: -104.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/2103dor/L3/1978/910.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 305px; top: -104.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map3.daumcdn.net/map_2d/2103dor/L3/1978/911.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 433px; top: -104.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/2103dor/L3/1978/912.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 561px; top: -104.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"></div><div style="position: absolute; z-index: 1;"></div><div style="width: 902px; height: 550px; position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -1804px; top: -1100px; width: 4510px; height: 2750px;" viewBox="0 0 4510 2750"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"><div style="position: absolute; margin: -42px 0px 0px -20px; z-index: 0; left: 312px; top: 182px;"><img draggable="false" src="/images/map_icon_yellowgreen.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 40px, 42px, 0px); top: 0px; left: 0px; width: 40px; height: 42px;"></div></div></div></div><div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);"><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;"><div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 46px;"></div><div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">100m</div></div><div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="http://t1.daumcdn.net/mapjsapi/images/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a><div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div></div>
					<div id="div_daum" style="display:none;"><div id="roadview" style="width:902px;height:550px;"></div></div>
				<p></p>
			</div>
			<script language="javascript">
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					mapOption = {
						center: new daum.maps.LatLng(37.5139278, 127.0336567), // 지도의 중심좌표
						level: 3, // 지도의 확대 레벨
						mapTypeId : daum.maps.MapTypeId.ROADMAP // 지도종류
					}; 

				// 지도를 생성한다 
				var map = new daum.maps.Map(mapContainer, mapOption); 

				// 지도에 확대 축소 컨트롤을 생성한다
				var zoomControl = new daum.maps.ZoomControl();

				// 마커 이미지의 주소
				var markerImageUrl = '/images/map_icon_yellowgreen.png', 
					markerImageSize = new daum.maps.Size(40, 42), // 마커 이미지의 크기
					markerImageOptions = { 
						offset : new daum.maps.Point(20, 42)// 마커 좌표에 일치시킬 이미지 안의 좌표
					};

				// 마커 이미지를 생성한다
				var markerImage = new daum.maps.MarkerImage(markerImageUrl, markerImageSize, markerImageOptions);

				// 지도에 마커를 생성하고 표시한다
				var marker = new daum.maps.Marker({
					position: new daum.maps.LatLng(37.5139278, 127.0336567), // 마커의 좌표
					image : markerImage, // 마커의 이미지
					map: map // 마커를 표시할 지도 객체
				});
		</script>
		<script type="text/javascript">
		<!--
			function load_view()
			{		
				var map_lat = 37.5139278;
				var map_lng = 127.0336567;

				var rc = new daum.maps.RoadviewClient();
				var rv = new daum.maps.Roadview(document.getElementById("roadview"));
					
				var daumLatLng = new daum.maps.LatLng(map_lat,map_lng);

				rc.getNearestPanoId
				(
					daumLatLng, 
					200, 
					function(panoid)
					{
						rv.setPanoId(panoid, daumLatLng);
					}
				);
				
				rv.setViewpoint
				(
					{
						pan: 180,
						tilt: -20,
						zoom: 0
					}
				);
			}
		//-->
		</script>
		<script type="text/javascript">
		<!--
			$(document).ready
			(
				function()
				{			
					$("#nmap").click
					(
						function()
						{					
							$("#div_daum").hide();
							$("#map").show();					
						}
					);

					$("#dmap").click
					(
						function()
						{					
							$("#map").hide();
							$("#div_daum").show();
							load_view();
						}
					);			
				}
			);
		//-->
		</script>
		</div>
</body>
</html>