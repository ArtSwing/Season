<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<title>게시글 작성</title>
<%@ include file="header.jsp"%>
<script>
	$(document).ready(function() {
		$("#btnDelete").click(function() {
			if(confirm("삭제하시겠습니까?")){
				document.form1.action = "${path}/sugdelete";
				document.form1.submit();
			}
		});
		
		$("#btnUpdate").click(function() {
			var title = $("#title").val(); // 변수 타이틀은 아이디 타이틀의 값
			var content = $("#content").val();
			var spot = <%=(String) session.getAttribute("spot")%>;
			if (title == "") {
				alert("제목을 입력하세요.");
				document.form1.title.focus();
				return;
			}
			if (content == "") {
				alert("내용을 입력하세요");
				document.form1.content.focus();
				return;
			}
			document.form1.action = "${path}/sugupdate";
			document.form1.submit();
		});
		$("#btnList").click(function() {
			document.form1.action = "${path}/sug";
			document.form1.submit();
		});
	});
</script>
</head>
<body>
	<form name="form1" method="post">
		<div id="Contain">
			<div style="display: inline-block;">
				<h2>건의사항</h2>
				<table id="tb_sug">
					<tr>
						<td>작성자</td>
						<td>${dto.spot}</td>
						<td>작성일</td>
						<td>${dto.board_date}</td>
					</tr>
					<tr>
						<td>제목</td>
						<td colspan="3"><input name="title" id="title" size="100"
							value="${dto.title}" style="height:30px;" readonly></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="3"><textarea id="textcont" name="content"
								id="content" rows="40" cols="75" <c:if test="${identify != dto.spot}">disabled style="background-color:rgba(255, 255, 247, 0.8);"</c:if>>${dto.content}</textarea></td>
						<!--  게시글 번호를 hidden으로 처리 -->
					</tr>
					<tr>
						<td></td>
						<td colspan="3" style="text-align: right;"><input
							type="hidden" name="bno" value="${dto.bno}">
							<c:if test="${identify == dto.spot}"><button type="button" id="btnUpdate" class="btn">수정</button></c:if>
							<c:if test="${identify == dto.spot}"><button type="button" id="btnDelete" class="btn">삭제</button></c:if>
							<button type="button" id="btnList" class="btn">글목록</button></td>
					</tr>
				</table>
			</div>
		</div>
	</form>
</body>
<%@ include file="footer.jsp"%>
</html>