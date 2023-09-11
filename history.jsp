<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와이파이 정보 구하기</title>
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
</head>
<body>
	<h1>위치 히스토리 목록</h1>
	<p>
		<a href='http://localhost:8080/mission11/home.jsp'>홈</a> | <a
			href='http://localhost:8080/mission11/history.jsp'>위치 히스토리 목록</a> | <a
			href='http://localhost:8080/mission11/load-wifi.jsp'>Open API
			와이파이 정보 가져오기</a>
	</p>
	<table id="customers">
		<thead>
			<tr>
				<th>ID</th>
				<th>Y좌표</th>
				<th>X좌표</th>
				<th>조회일자</th>
				<th>비고</th>
			</tr>
		</thead>
		<tbody>
			<tr>
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