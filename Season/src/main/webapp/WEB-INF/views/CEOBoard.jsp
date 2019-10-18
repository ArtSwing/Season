<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>CEO 게시판</title>
</head>
<body>
<table class="table">
			<thead>
				<tr class="text-center" style="background: #E6E6F2;">
					<th style="width: 10%">글번호</th>
					<th style="width: 55%">제목</th>
					<th style="width: 15%">작성자</th>
					<th style="width: 15%">작성시간</th>
				</tr>
			</thead>
			<tbody>
				<c:if test='${CEOBoard.ceoBoardList.isEmpty()}'>
					<tr>
						<td colspan="4"><h3 style="text-align: center;">작성된 게시글이 없습니다.</h3></td>
					</tr>
				</c:if>
				<c:if test='${!CEOBoard.ceoBoardList.isEmpty()}'>
					<c:forEach var="CEOBoardList" items="${CEOBoard.ceoBoardList}">
						<tr>
							<td style="text-align: center;">${CEOBoardList.cboard_id}</td>
							<td><a href="${pageContext.request.contextPath}/admin/CEOBoardView/view/${CEOBoardList.cboard_id}?page=${param.page}&keyword=${param.keyword}">${CEOBoardList.cboard_title}</a></td>
							<td style="text-align: center;">${CEOBoardList.writer_cid}</td>
							<td style="text-align: center;"><fmt:formatDate	value="${CEOBoardList.cboard_date}" pattern="yyyy-MM-dd HH:mm" /></td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
</body>
</html>