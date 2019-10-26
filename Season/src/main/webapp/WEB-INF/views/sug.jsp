<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<title>건의사항 게시판</title>
<%@ include file="header.jsp" %>
<script>
	$(document).ready(function(){
		$("#btnWrite").click(function(){
		// 페이지 주소 변경 (이동)
		location.href = "${path}/sugwrite";
		});
	});
</script>
</head>
<body>

<div id="sugContain">
<table id="sug">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>지점</th>
		<th>작성일</th>
	</tr>
	<c:forEach var="row" items="${sug}">
	<tr>
		<td>${row.bno}</td>
		<td><a href="${path}/sugview?bno=${row.bno}">${row.title}</a></td>
		<td>${row.spot}</td>
		<td>
			<!-- 원하는 날짜형식으로 출력 위해 fmt태그 사용 -->
			${row.board_date}
		</td>
		</tr>
	</c:forEach>
</table>
</div>
<button type="button" id="btnWrite">글쓰기</button>

</body>
<%@ include file="footer.jsp" %>
</html>