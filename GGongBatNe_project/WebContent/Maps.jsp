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
				
				<p>�ǽð� ��ġȮ���ϱ�</p>
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
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = { 
        center: new kakao.maps.LatLng(35.200971, 126.8201443), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

// ��Ŀ�� ǥ���� ��ġ�Դϴ� 
var position =  new kakao.maps.LatLng(35.200971, 126.8201443);

// ��Ŀ�� �����մϴ�
var marker = new kakao.maps.Marker({
  position: position
});

// ��Ŀ�� ������ ǥ���մϴ�.
marker.setMap(map);

// ��Ŀ�� Ŀ���� �������� �� ��Ŀ ���� ǥ���� ���������츦 �����մϴ�
var iwContent = '<div style="padding:5px;">



</div>'; // ���������쿡 ǥ��� �������� HTML ���ڿ��̳� document element�� �����մϴ�

// ���������츦 �����մϴ�
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
</script>
</body>

</html>