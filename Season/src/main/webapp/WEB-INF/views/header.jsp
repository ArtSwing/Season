<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<link href="<c:url value="/resources/css/header.css" />"
	rel="stylesheet">
<script type="text/javascript">
	function load() {

		document.getElementById('load_css').style.opacity = 1.0;
	}
</script>
<title>::: 계절밥상 - Supply Chain Management :::</title>
</head>
<body id="m" onload="load()">
	<div id="load_css">

		<div id="header_head">
			<img src="/resources/images/logo.png" style="height: 100%"> <br>
			<br>
			<hr>
		</div>
		<div style="float: right;" class="logout">
			<c:if test="${identify != null}">
					${spot}님이 로그인 중입니다. &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<a href="${path}/logout"
					style="text-decoration: none; color: #000000;"><strong>로그아웃</strong></a>
			</c:if>
		</div>

		<div id="header_main">
			<ul class="menu_hover">
				<li><a href="#"><strong>매출관리</strong></a></li>
				<li><a href="food"><strong>메뉴관리</strong></a></li>
				<li><a href="#"><strong>재고관리</strong></a></li>
				<li><a href="#"><strong>발주관리</strong></a></li>
				<li><a href="#"><strong>요청사항</strong></a></li>
			</ul>
		</div>
	</div>
</body>
</html>
