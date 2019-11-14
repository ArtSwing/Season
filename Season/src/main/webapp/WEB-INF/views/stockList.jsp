<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<%@ include file="header.jsp"%>
<script>
$(document).ready(function() {
   $("#btnList").click(function() {
	   var mid = document.getElementById('spotlist').value;
	   var url = "${path}/stock";
	   url = url + "?mid=" + encodeURI(encodeURIComponent(mid));
	   location.href = url;
   });
});
</script>
</head>
<body>
	<div id="Contain">
		<div id="main_contents">
			<form name="form1" method="post">
				<select name="spotlist" id="spotlist">
					<option value="all">전체보기</option>
					<c:forEach var="r" items="${spotlist}">
						<option value="${r.spot}">${r.spot}</option>

					</c:forEach>
				</select>
				<button type="button" id="btnList" class="btn">지점보기</button>
			</form>
			<p class="menu_title">&nbsp;&nbsp;재고관리</p>
			<table id="basic">
				<tr>
					<th>번호</th>
					<th>지점명</th>
					<th>재료명</th>
					<th>개수</th>
					<th>최소확보량</th>
				</tr>
				<c:forEach var="row" items="${list}">
					<tr>
						<td>${row.sid}</td>
						<td>${row.spot}</td>
						<td>${row.name}</td>
						<td>${row.count}</td>
						<td>${row.minnum}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
<%@ include file="footer.jsp"%>
</html>