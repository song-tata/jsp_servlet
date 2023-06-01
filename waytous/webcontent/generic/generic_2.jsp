<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<!--
	Hyperspace by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html lang="ko">

<head>
	<title>WayToUs</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="../assets/css/main.css" />
	<noscript>
		<link rel="stylesheet" href="../assets/css/noscript.css" />
	</noscript>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=4esh0fbcti"></script>
</head>
<!-- 4esh0fbcti -->
<body class="is-preload">

	<!-- Header -->
	<jsp:include page="../common/generic_header.jsp"></jsp:include>
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<section id="main" class="wrapper">
			<div class="inner">
				<h1 class="major">가까운 거리일때</h1>
				<div id="map" style="width: 100%; height: 600px; border: 1px solid black;"></div>
				<p>
					중간 거리를 계산할 때 이 페이지를 이용해보세요! <br>
					<strong>추가 구현사항</strong> <br>중간지점 원을 확대하면 원 안에 놀거리와 먹거리를 마커를 통해 보여줄거에요! 놀거리와 먹거리를 다른 마커로 한눈에 구분할 수 있도록 할 예정입니다.
				</p>
				<p>
					이 프로그램을 이용하면 두 지점 사이의 거리와 중간 지점을 쉽게 구할 수 있습니다. 특히, 여행 계획을 세울 때나, 위치 정보를 활용해 광고를 노출시킬 때 유용하게 활용할 수 있을 것입니다.
				</p>
			</div>
		</section>

	</div>

<!-- Footer -->
	<jsp:include page="../common/generic_footer.jsp"></jsp:include>

	<!-- Scripts -->
	<jsp:include page="../common/generic_script.jsp"></jsp:include>

	<!-- <script>
		var mapOptions = {
			center: new naver.maps.LatLng(37.5670135, 126.9783740),
			zoom: 15
		};
		var map = new naver.maps.Map('map', mapOptions);

		var center1 = new naver.maps.LatLng(37.5670135, 126.9783740); // 첫 번째 지점 좌표
		var center2 = new naver.maps.LatLng(37.5666102, 126.9756603); // 두 번째 지점 좌표
		var radius = naver.maps.TransCoord.getDistance(center1, center2); // 두 지점 간의 거리를 구합니다.
		var circle = new naver.maps.Circle({
			map: map,
			center: center1,
			radius: radius,
			fillColor: 'rgba(255, 0, 0, 0.3)',
			strokeColor: 'red',
			strokeWeight: 2
		});

	</script> -->

	<!-- 여긴 잘 작동함! -->
<script>


	 var mapOptions = {
        center: new naver.maps.LatLng(37.5666805, 126.9784147),
        zoom: 12
    };
    var map = new naver.maps.Map('map', mapOptions);

    var markers = [];

    naver.maps.Event.addListener(map, 'click', function (e) {
        if (markers.length == 2) {
            alert('두 개의 마커만 선택 가능합니다.');
            return;
        }

        var marker = new naver.maps.Marker({
            position: e.latlng,
            map: map,
			radius: 10000,
    		fillColor: '#ff0000',
   			fillOpacity: 0.3,
    		strokeColor: '#ff0000',
    		strokeOpacity: 0.8,
    		strokeWeight: 2
        });

        markers.push(marker);

        if (markers.length == 2) {
            var lat1 = markers[0].getPosition().lat();
            var lng1 = markers[0].getPosition().lng();
            var lat2 = markers[1].getPosition().lat();
            var lng2 = markers[1].getPosition().lng();

            var centerLat = (lat1 + lat2) / 2;
            var centerLng = (lng1 + lng2) / 2;

            var circle = new naver.maps.Circle({
                map: map,
                center: new naver.maps.LatLng(centerLat, centerLng),
                radius: 300,
                fillColor: '#00f',
                fillOpacity: 0.3,
                strokeColor: '#00f',
                strokeOpacity: 0.8,
                strokeWeight: 2
            });
        }
    });

	
</script>

<!-- 두점 사이의 중간점에 원그리는 코드 -->

<!-- <script>
	var map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(37.3595704, 127.105399),
    zoom: 10
});

var markers = [];

naver.maps.Event.addListener(map, 'click', function(e) {
    var marker = new naver.maps.Marker({
        position: e.coord,
        map: map
    });

    markers.push(marker);

    if (markers.length > 1) {
        var circle = new naver.maps.Circle({
            map: map,
            center: markers[0].getPosition(),
            radius: 10000,
            fillColor: '#ff0000',
            fillOpacity: 0.3,
            strokeColor: '#ff0000',
            strokeOpacity: 0.8,
            strokeWeight: 2
        });

        var circle2 = new naver.maps.Circle({
            map: map,
            center: markers[1].getPosition(),
            radius: 10000,
            fillColor: '#ff0000',
            fillOpacity: 0.3,
            strokeColor: '#ff0000',
            strokeOpacity: 0.8,
            strokeWeight: 2
        });

        var bounds = new naver.maps.LatLngBounds(
            markers[0].getPosition(),
            markers[1].getPosition()
        );

        map.fitBounds(bounds);
    }
});
</script> -->

</body>

</html>