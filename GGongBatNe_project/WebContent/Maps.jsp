<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>HTML CSS Left Right Split</title>
    <style>
      div.row {
        width: 100%;
        display: flex;
        border: 1px solid #003458;
      }
      div.left {
        width: 50%;
        float: left;
        box-sizing: border-box;
        background: #8977ad;
      }
      div.right {
        width: 50%;
        float: right;
        box-sizing: border-box;
        background: #ece6cc;
      }
    </style>

<body>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<script type='text/javascript' src='//dapi.kakao.com/v2/maps/sdk.js?appkey=c396fe0efc7b0e5f37418f17f1fd034d'></script>


		<section id="intro" class="wrapper style1 fullscreen fade-up">
			<div class="left" style="padding: 2em !important;">
				
				<p>실시간 위치확인하기</p>
				<div id="map" style="width: 800px; height: 600px; background-color: black; margin-left: 20px;"></div>
			
			</div>
			</section>
 
<script src="assets/js/jquery.min.js"></script>
	 <script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script> 



<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(35.200971, 126.8201443), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커를 표시할 위치입니다 
var position =  new kakao.maps.LatLng(35.200971, 126.8201443);

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
  position: position
});

// 마커를 지도에 표시합니다.
marker.setMap(map);

// 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
var iwContent = '<div style="padding:5px;">



</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

// 인포윈도우를 생성합니다
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
</script>
</body>

</html>