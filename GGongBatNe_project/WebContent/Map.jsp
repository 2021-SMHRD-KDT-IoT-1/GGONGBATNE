<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
</head>
<body>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<script type='text/javascript' src='//dapi.kakao.com/v2/maps/sdk.js?appkey=c396fe0efc7b0e5f37418f17f1fd034d'></script>

		<section id="intro" class="wrapper style1 fullscreen fade-up">
			<div class="inner" style="padding: 2em !important;">
				
				<p>�ǽð� ��ġȮ���ϱ�</p>
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
			var iwContent = '<div style="padding:5px;">Hello World!</div>', // ���������쿡 ǥ��� �������� HTML ���ڿ��̳� document element�� �����մϴ�
		    iwRemoveable = true; 
			var infowindow = new kakao.maps.InfoWindow({
			    content : iwContent,
			    removable : iwRemoveable
			});
			var iwContent = '<div style="padding:5px;">Hello World!</div>';
			var infowindow = new kakao.maps.InfoWindow({
			    content : iwContent
			});

			// ��Ŀ�� ���콺���� �̺�Ʈ�� ����մϴ�
			kakao.maps.event.addListener(marker, 'mouseover', function() {
			  // ��Ŀ�� ���콺���� �̺�Ʈ�� �߻��ϸ� ���������츦 ��Ŀ���� ǥ���մϴ�
			    infowindow.open(map, marker);
			});

			// ��Ŀ�� ���콺�ƿ� �̺�Ʈ�� ����մϴ�
			kakao.maps.event.addListener(marker, 'mouseout', function() {
			    // ��Ŀ�� ���콺�ƿ� �̺�Ʈ�� �߻��ϸ� ���������츦 �����մϴ�
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
		            alert("������ �߻��Ͽ����ϴ�.");
		    	}
			}); */
		});

		</script>
</body>
</html>