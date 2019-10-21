<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
<%@ include file="header.jsp"%>
</head>
<body>
	<div id="main_contents"
		style="whith: 100%; background-color: rgba(255, 255, 255, 0.6); border: 1px solid #235100; margin: 70px 300px 70px 315px; padding: 30px 30px 30px 20px;">
		<p class="menu_title"
			style="font-weight: bold; color: #234200; font-size: 20px;">&nbsp;&nbsp;메뉴관리</p>
		<table>
			<tr>
				<th>번호</th>
				<th>재료명</th>
				<th>유통기한</th>
				<th>원산지</th>
				<th>가격</th>
			</tr>
			<c:forEach var="row" items="${list}">
				<tr>
					<td>${row.fid}</td>
					<td>${row.name}</td>
					<td>${row.life}</td>
					<td>${row.country}</td>
					<td>${row.price}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
<%@ include file="footer.jsp"%>
</html>
