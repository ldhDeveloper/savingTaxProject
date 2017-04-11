<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
    .wrap {position: absolute;left: 75px;bottom: 40px;width: 143px;height: 62px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #000;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 1px 0 0 10px;height: 20px;background: #eee;border-bottom: 1px solid #ddd;font-size: 12px;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 133px;height: 50px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>

<title>Insert title here</title>
</head>
<body>
	<%@ include file="/views/common/main1/menubar.jsp"%>
	<!-- PC  -->
	<div class="middle hidden-xs">
	<img src="/jsmi/images/main1/intro3-1.png">
	<br><br><br>
		<div id="map" style="width:500px;height:400px;margin-left:auto;margin-right:auto;"></div>
		<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=9935be2b8876eed1b9c40f64bc3e06e5"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new daum.maps.LatLng(37.49900997016431, 127.03285210080828),
			level: 2
		};

		var map = new daum.maps.Map(container, options);
		
		// 지도에 마커를 표시합니다 
		var marker = new daum.maps.Marker({
		    map: map, 
		    position: new daum.maps.LatLng(37.49900997016431, 127.03285210080828)
		});
		
		var content = '<div class="wrap">' + 
        '    <div class="info">' + 
        '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
        '        <div class="body">' + 
        '            <div class="img">' +
        '                <img src="/jsmi/images/logo4.png" width="143" height="50">' +
        '           </div>' + 
        '            <div class="desc">' + 
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
        '</div>';
		
        var overlay = new daum.maps.CustomOverlay({
            content: content,
            map: map,
            position: marker.getPosition()       
        });

     // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
        var mapTypeControl = new daum.maps.MapTypeControl();

        // 지도 타입 컨트롤을 지도에 표시합니다
        map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

     // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
        var zoomControl = new daum.maps.ZoomControl();
        map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

       
	</script>
	<br><br><br>
		<img src="/jsmi/images/main1/intro3-2.png">
	</div>
	<hr>
	
	<!-- Moblie -->
	<div class="container-fulid hidden-sm hidden-md hidden-lg">
	<div class="row">
	<div class="col-xs-12">
	  <br><br>
	  
	  <img src="/jsmi/images/main1/introxs3-3.png" class="hidden-sm hidden-md hidden-lg" style="margin: 20px;">
	  <div id="map2" style="width:350px;height:350px;margin-left:auto;margin-right:auto;"></div>
		<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=9935be2b8876eed1b9c40f64bc3e06e5"></script>

<script>
		var container = document.getElementById('map2');
		var options = {
			center: new daum.maps.LatLng(37.49900997016431, 127.03285210080828),
			level: 2
		};

		var map = new daum.maps.Map(container, options);
		
		// 지도에 마커를 표시합니다 
		var marker = new daum.maps.Marker({
		    map: map, 
		    position: new daum.maps.LatLng(37.49900997016431, 127.03285210080828)
		});
		
		var content = '<div class="wrap">' + 
        '    <div class="info">' + 
        '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
        '        <div class="body">' + 
        '            <div class="img">' +
        '                <img src="/jsmi/images/logo4.png" width="143" height="50">' +
        '           </div>' + 
        '            <div class="desc">' + 
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
        '</div>';
		
        var overlay = new daum.maps.CustomOverlay({
            content: content,
            map: map,
            position: marker.getPosition()       
        });

     // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
        var mapTypeControl = new daum.maps.MapTypeControl();

        // 지도 타입 컨트롤을 지도에 표시합니다
        map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

     // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
        var zoomControl = new daum.maps.ZoomControl();
        map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

       
	</script>
	<img src="/jsmi/images/main1/introxs3-4.png" class="hidden-sm hidden-md hidden-lg" style="margin: 20px;">
		<img src="/jsmi/images/main1/introxs3-5.png" class="hidden-sm hidden-md hidden-lg" style="margin: 20px;">
		<hr>
	</div>
	</div>
	</div>
	<hr>
	<%@ include file="/views/common/main1/footer.jsp"%>
</body>
</html>