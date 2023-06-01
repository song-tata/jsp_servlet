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
				<h1 class="major">멀리 떨어져있을때</h1>
				<div id="map" style="width: 100%; height: 600px; border: 1px solid black;"></div>
				<p>30분 이상의 거리에 있을 때 이쪽을 이용해보세요. 반경 10km의 원을 통해 겹치는 부분을 알 수 있어요 <br>
					<strong>추가 구현사항</strong> <br> 겹치는 부분에 마스크를 씌워 지도를 확대하면 놀거리를 지도에 마크를 통해 표시해줄거에요. <br>
					 그 중 하나를 고르면 1km직경안에 갈 수 있는 맛집을 한번 더 띄워줄거에요 
				</p>
				<p>이거보다 가까운 거리라면 위 메뉴에서 다른맵보기를 선택해주세요! 중간거리만 표시해줄거에요</p>
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
<!-- <script>


	 var mapOptions = {
        center: new naver.maps.LatLng(37.5666805, 126.9784147),
        zoom: 5
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
                radius: 3000,
                fillColor: '#00f',
                fillOpacity: 0.3,
                strokeColor: '#00f',
                strokeOpacity: 0.8,
                strokeWeight: 2
            });
        }
    });

	
</script> -->

<!-- 두점 사이의 중간점에 원그리는 코드 -->

<script>
	var map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(37.5666805, 126.9784147),
    zoom: 12
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
</script>
<!-- <script>
	var map = new naver.maps.Map('map', {
			center: new naver.maps.LatLng(37.5666805, 126.9784147),
			zoom: 5
	});

	var markers = [];

	naver.maps.Event.addListener(map, 'click', function (e) {
			var marker = new naver.maps.Marker({
					position: e.latlng,
					map: map
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
							radius: 3000,
							fillColor: '#00f',
							fillOpacity: 0.3,
							strokeColor: '#00f',
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