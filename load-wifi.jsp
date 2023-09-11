<%@page import="mission11.WifiDb"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와이파이 정보 구하기</title>
</head>
<body>
	<h1 style=text-align:center;>
	개의 WIFI 정보를 정상적으로 저장하였습니다.
	</h1>
	<p style=text-align:center;>
		<a href='http://localhost:8080/mission11/home.jsp'>홈으로 가기</a>
	</p>
	<%
	WifiDb aa = new WifiDb();
	String result = aa.js(1, 20);
	out.println(result);
	%>

</body>
</html>