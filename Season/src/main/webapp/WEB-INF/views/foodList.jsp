<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<%@ include file="header.jsp"%>
<script>
	$(document).ready(function() {
		$("#btnNew").click(function() {
			// 페이지 주소 변경 (이동)
			location.href = "${path}/insertFood";
		});
	});
</script>
</head>
<body>
	<div id="Contain">
		<div id="main_contents">
			<p class="menu_title">&nbsp;&nbsp;메뉴관리</p>
			<c:if test="${identify == 'admin' }">
				<p style="text-align: right;">
					<button name="btnNew" id="btnNew" class="btn">메뉴 추가</button>&nbsp&nbsp&nbsp
				</p>
			</c:if>
			<table id="basic">
				<tr>
					<th>번호</th>
					<th>재료명</th>
					<th>유통기한 (제조일기준)</th>
					<th>원산지</th>
					<th>가격</th>
				</tr>
				<c:forEach var="row" items="${list}">
					<tr>
						<td>${row.fid}</td>
						<td>${row.name}</td>
						<td>${row.life}일</td>
						<td>${row.country}</td>
						<td><fmt:formatNumber value="${row.price}" pattern="￦ #,###" /></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
<%@ include file="footer.jsp"%>
</html>
