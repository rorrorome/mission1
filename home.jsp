<%@page import="mission11.WifiDb"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#customers {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #04AA6D;
	color: white;
}
</style>
<title>와이파이 정보 구하기</title>
</head>
<body>
	<h1>와이파이 정보 구하기</h1>
	<p>
		<a href='http://localhost:8080/mission11/home.jsp'>홈</a> | <a
			href='http://localhost:8080/mission11/history.jsp'>위치 히스토리 목록</a> | <a
			href='http://localhost:8080/mission11/load-wifi.jsp'>Open API
			와이파이 정보 가져오기</a>
	</p>
	<p>LAT: <output id="startLat"></output>, LNT: <output id="startLon"></output> <button id="currentGeoLocation">내 위치 가져오기</button> <button id="getNearWifi">근처 WIFI 정보 보기</button></p>
	<div id="nudge"></div>
	<script>
	    (function() {
	        if('geolocation' in navigator) {
	            /* 위치정보 사용 가능 */
	        } else {
	            /* 위치정보 사용 불가능 */
	        }

	        const currentGeoLocation = document.getElementById("currentGeoLocation");

	        currentGeoLocation.onclick = function() {
	            var startPos;
	            var geoOptions = {
	                timeout: 10 * 1000
	            };
	            var element = document.getElementById("nudge");

	            var showNudgeBanner = function () {
	                nudge.style.display = "block";
	            };

	            var hideNudgeBanner = function () {
	                nudge.style.display = "none";
	            };

	            var nudgeTimeoutId = setTimeout(showNudgeBanner, 5000);

	            var geoSuccess = function (position) {
	                hideNudgeBanner();
	                // We have the location, don't display banner
	                clearTimeout(nudgeTimeoutId);

	                // Do magic with location
	                startPos = position;
	                document.getElementById('startLat').innerHTML = startPos.coords.latitude;
	                document.getElementById('startLon').innerHTML = startPos.coords.longitude;
	            };
	            var geoError = function (error) {
	                console.log('Error occurred. Error code: ' + error.code);
	                // error.code can be:
	                //   0: unknown error
	                //   1: permission denied
	                //   2: position unavailable (error response from location provider)
	                //   3: timed out
	                switch (error.code) {
	                    case error.PERMISSION_DENIED:
	                        // The user didn't accept the callout
	                        document.getElementById('nudge').innerHTML = '위치정보 허용 권한이 없습니다';
	                        showNudgeBanner();
	                        break;
	                    case error.POSITION_UNAVAILABLE:
	                        // The user didn't accept the callout
	                        document.getElementById('nudge').innerHTML = '위치 정보를 가져오지 못했습니다';
	                        showNudgeBanner();
	                        break;
	                    case error.TIMEOUT:
	                        // The user didn't accept the callout
	                        document.getElementById('nudge').innerHTML = '시간 초과';
	                        showNudgeBanner();
	                        break;
	                };
	            };

	            navigator.geolocation.getCurrentPosition(geoSuccess, geoError, geoOptions);
	        };
	    })();
    </script>
	<table id="customers">
		<thead>
			<tr>
				<th>거리</th>
				<th>관리번호</th>
				<th>자치구</th>
				<th>와이파이명</th>
				<th>도로명주소</th>
				<th>상세주소</th>
				<th>설치위치(층)</th>
				<th>설치유형</th>
				<th>설치기관</th>
				<th>서비스구분</th>
				<th>망종류</th>
				<th>설치년도</th>
				<th>실내외구분</th>
				<th>wifi접속환경</th>
				<th>Y좌표</th>
				<th>X좌표</th>
				<th>작업일자</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table>
</body>
</html>