<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>지도</title>
</head>
<body>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<script type='text/javascript' src='//dapi.kakao.com/v2/maps/sdk.js?appkey=c396fe0efc7b0e5f37418f17f1fd034d'></script>

		<section id="intro" class="wrapper style1 fullscreen fade-up">
			<div class="inner" style="padding: 2em !important;">
				
				<p>실시간 위치확인하기</p>
				<div id="map" style="width: 800px; height: 600px; background-color: black; margin-left: 20px;"></div>
			</section>
			</div>
 
<script src="assets/js/jquery.min.js"></script>
	 <script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>  
	<script>
   var lat_1 = 35.19444429414635;
   var lng_1 = 126.9530589614602;
   var container_1 = document.getElementById("map");
   var options_1 = {
      center: new kakao.maps.LatLng(lat_1, lng_1),
      level : 1,
      maxLevel : 1
   };
   var _kakaoMap = new kakao.maps.Map(container_1, options_1);   
	kakao.maps.event.addListener(_kakaoMap, 'click', function (mouseEvent) {
		var latlng = mouseEvent.latLng;
		console.log(latlng);
	}); 
   var coords = [ { x: 35.19450, y: 126.95300, device: 82 },  
				  { x: 35.19448, y: 126.95298, device: 83 },  
				  { x: 35.19442, y: 126.95294, device: 84 }, 
				  { x: 35.19438, y: 126.95293, device: 85 },  
				  { x: 35.19436, y: 126.95297, device: 86 },  
				  { x: 35.19435, y: 126.95300, device: 87 },  
				  { x: 35.19433, y: 126.95303, device: 88 },  
				  { x: 35.19430, y: 126.95311, device: 89 } ];  
   var tubes = new Object();
   var markerArray = new Array();   
		var total = coords.length;
		var avail = 0;
		$.each(coords, function (i, v) {
			var overlay = "<div class='tubeLabel'><span>" + v.device + "</span></div>";
			$(".tubeLabel").css("margin-top", "8px");
		    var coordinate = new kakao.maps.LatLng(v.x, v.y);
			//_kakaoMap.setCenter(coord);
		    var marker = new kakao.maps.Marker({position: coordinate});
		    marker.device = coords.device;
			marker.setMap(_kakaoMap);
			var iwContent = '<div style="padding:5px;">Hello World!</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		    iwRemoveable = true; 
			var infowindow = new kakao.maps.InfoWindow({
			    content : iwContent,
			    removable : iwRemoveable
			});
			var iwContent = '<div style="padding:5px;">Hello World!</div>';
			var infowindow = new kakao.maps.InfoWindow({
			    content : iwContent
			});

			// 마커에 마우스오버 이벤트를 등록합니다
			kakao.maps.event.addListener(marker, 'mouseover', function() {
			  // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
			    infowindow.open(map, marker);
			});

			// 마커에 마우스아웃 이벤트를 등록합니다
			kakao.maps.event.addListener(marker, 'mouseout', function() {
			    // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
			    infowindow.close();
			});
			
			var co = new kakao.maps.CustomOverlay({
				position: coordinate,
				content: overlay
			});
			co.setMap(_kakaoMap);
			markerArray.push(marker);
			
		/* 	$.ajax({
			 	data: {
			        device_id: v.device
		        },
		        url:'SelectDeviceState',
		        contentType : "application/json; charset:euc-kr",
				dataType: "JSON",
		        success: function(jsonList){
		        	if ($.trim(jsonList.state) == 'F') {
		        		avail ++;
		        	}
					$("#statediv").text(avail + "/" + total);
		        },
		        error:function(a, b, c){
		            alert("에러가 발생하였습니다.");
		    	}
			}); */
		});

		</script>
</body>
</html>