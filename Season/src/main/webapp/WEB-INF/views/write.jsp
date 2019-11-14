<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<title>건의사항 게시판 글 작성</title>
<%@ include file="header.jsp"%>
<script>
	$(document).ready(function() {
		$("#btnSave").click(function() {

			var title = $("#title").val(); // 변수 타이틀은 아이디 타이틀의 값
			var content = $("#content").val();
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
			document.form1.submit();
		});
		$("#btnCancel").click(function() {
			location.href = "${path}/sug";
		});
		$("#btnSave").click(function() {
			location.href = "${path}/sug";
		});

	});
	$("#btnSave").click(function() {
		location.href = "${path}/sug";
	});
</script>
</head>
<body>
	<form name="form1" method="post" action="${path}/suginsert">
		<div id="Contain">
			<div style="display: inline-block;">
				<h2>건의사항</h2>
				<table id="tb_sug">
					<tr>
						<td>작성자</td>
						<td><%=(String) session.getAttribute("spot")%> <input
							type="hidden" id="spot" name="spot"
							value=<%=(String) session.getAttribute("spot")%>></td>
					</tr>
					<tr>
						<td>제목</td>
						<td colspan="2"><input name="title" id="title" size="100"
							placeholder="제목을 입력해주세요." style="height: 30px;"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2"><textarea name="content" id="content"
								rows="40" cols="75" placeholder="내용을 입력해주세요"></textarea></td>
					</tr>
					<tr>
						<td colspan="3" style="text-align: right">
							<button type="button" id="btnSave" class="btn">확인</button>
							<button type="button" id="btnCancel" class="btn">취소</button>
						</td>
				</table>
			</div>
		</div>
	</form>
</body>
<%@ include file="footer.jsp"%>
</html>