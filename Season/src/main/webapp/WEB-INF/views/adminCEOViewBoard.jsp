<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խñ� ����</title>
</head>
<body>
<!-- �Խñ�  -->
	<table class="container">
		<thead>
			<tr class="row">
				<th colspan="3" style="width: 600px; padding-left: 15px;">
					<h3 style="color: #1e1e1e; width: 80%; padding-bottom : 15px">
						<strong style="width: 100%;">${CEOBoard_view.cboard_title}</strong>
					</h3>
				</th>
			</tr>
			<tr class="userBoardView_con">
				<th style="padding-left: 20px;">�۹�ȣ : ${CEOBoard_view.cboard_id}</th>
				<th style="width: 60%; text-align: center;">�ۼ��� : ${CEOBoard_view.writer_cid }</th>
				<th style="width: 100%; text-align: right; padding-right: 20px;">��Ͻð� : <fmt:formatDate
						value="${CEOBoard_view.cboard_date}" pattern="yyyy-MM-dd HH:mm" /></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td colspan="3" class="col-sm-9" >
					<hr> ${CEOBoard_view.cboard_con}
					<hr>
				</td>
			</tr>
		</tbody>
	</table>
	<div class="container">
		<div class="buttonsLeft">
			<c:choose>
				<c:when test="${preNum == -1}">
					<!-- <button type="button" class="btn btn-outline-elegant waves-effect">����</button> -->
				</c:when>
				<c:otherwise>
					<button type="button" class="btn btn-outline-elegant waves-effect"
						onclick="location.href='${pageContext.request.contextPath}/admin/CEOBoardView/view/${preNum}?page=${param.page}&keyword=${param.keyword}'">����</button>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${nextNum == -1}">
					<!-- <button type="button" class="btn btn-outline-elegant waves-effect">����</button> -->
				</c:when>
				<c:otherwise>
					<button type="button" class="btn btn-outline-elegant waves-effect"
						onclick="location.href='${pageContext.request.contextPath}/admin/CEOBoardView/view/${nextNum}?page=${param.page}&keyword=${param.keyword}'">����</button>
				</c:otherwise>
			</c:choose>
		</div>
	<div class="buttonsRight">
			<c:if test="${sessionScope.adminSession.admin_id == CEOBoard_view.writer_cid}">
				<button type="button" class="btn btn-dark" data-toggle="modal"	data-target="#CEOBoardDelete">����</button>
				<button type="button" class="btn btn-dark" onclick="location.href='${pageContext.request.contextPath}/admin/CEOBoard/modify/${CEOBoard_view.cboard_id}?page=${param.page }&keyword=${param.keyword }'">����</button>
			</c:if>
			<button type="button" class="btn btn-dark" onclick="location.href='${pageContext.request.contextPath}/admin/CEOBoard?page=${param.page }&keyword=${param.keyword }'">���</button>
	</div>
</body>
</html>