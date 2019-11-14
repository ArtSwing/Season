<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<title>건의사항 게시판</title>
<%@ include file="header.jsp"%>
<script>
	$(document).ready(function() {
		$("#btnWrite").click(function() {
			// 페이지 주소 변경 (이동)
			location.href = "${path}/sugwrite";
		});
	});

	function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;

		var url = "${path}/sug"
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
	function fn_paging(page, range, rangeSize) {
		var url = "${path}/sug"
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;

		var url = "${path}/sug"
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
	
	$(document).on('click', '#btnSearch', function(e){
		e.preventDefault();
		var url = "${path}/sug";
		url = url + "?searchType=" + $('#searchType').val();
		url = url + "&keyword=" + $('#keyword').val();
		location.href = url;
		console.log(url);

	});	

</script>
</head>
<body>
	<div id="Contain">
		<div style="display: inline-block;">
		<h2>건의사항</h2>
			<div style="float: left;">
				<select name="searchType"
					id="searchType">
					<option value="num">글번호</option>
					<option value="title">제목</option>
					<option value="reg_spot">작성자</option>
					<option value="reg_day">작성일</option>
				</select>
				<input type="text" name="keyword" id="keyword">
				<button name="btnSearch" id="btnSearch">검색</button>
			</div>
			<table id="sug">
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>지점</th>
					<th>작성일</th>
				</tr>
				<c:forEach var="row" items="${sug}">
					<tr>
						<td>${row.bno}</td>
						<td><a href="${path}/sugview?bno=${row.bno}" class="contents">${row.title}</a></td>
						<td>${row.spot}</td>
						<td>
							<!-- 원하는 날짜형식으로 출력 위해 fmt태그 사용 --> ${row.board_date}
						</td>
					</tr>
				</c:forEach>
			</table>
			<div id="pagingBox">
				<ul class="paging">
					<c:if test="${paging.prev}">
						<li class="pageBox"><a class="pageNum" href="#"
							onClick="fn_prev('${paging.page}','${paging.range}','${paging.rangeSize}')">이전</a></li>
					</c:if>
					<c:forEach begin="${paging.startPage}" end="${paging.endPage}"
						var="idx">
						<li class="pageBox"><a class="pageNum" href="#"
							onClick="fn_paging('${idx}','${paging.range}','${paging.rangeSize}')">${idx}</a>
						</li>
					</c:forEach>
					<c:if test="${paging.next}">
						<li class="pageBox"><a class="pageNum" href="#"
							onClick="fn_next('${paging.page}','${paging.range}','${paging.rangeSize}')">다음</a></li>
					</c:if>
				</ul>
			</div>
			<button type="button" id="btnWrite">글쓰기</button>
		</div>
	</div>
</body>
<%@ include file="footer.jsp"%>
</html>