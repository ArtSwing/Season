<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>- 계절밥상 관리자 페이지 -</title>
<link href="<c:url value="/resources/css/layout.css" />" rel="stylesheet">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<style>
body {
	background-image:url("/resources/images/bg.jpg");
}
	div.center { text-align: center; }
</style>
</head>
<body>
		<div>
		<c:forEach var="member" items="${members}">
			<H3 align="right">${member.spot}님 환영합니다.</H3>
		</c:forEach>
	</div>
				<div class="logo">
				<div id ="center" class="logo_holder">
					<a href="./"> <img alt="Logo" src="resources/images/gye.JPG" width="500" height="300">
					</a>
				</div>
			</div>
	<div class="page_footer" align="center" style="color: white;">
		<hr style="border: 0.5px solid #121a23; margin: 20px 0px 20px 0px;">
		ⓒ 계절밥상.
		<hr style="border: 0.5px solid #121a23; margin: 20px 0px 20px 0px;">
	</div>
</body>

</html>
