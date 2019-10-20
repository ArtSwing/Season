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
			var spot =  '<%=(String) session.getAttribute("spot")%>';
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
	});
</script>
</head>
<body>
	<h2>게시글 보기</h2>
	<form name="form1" method="post">
		<div>
			작성일자 :
			<fmt:formatDate value="${dto.board_date}"
				pattern="yyyy-MM-dd a HH:mm:ss" />
		</div>
		<div style="float: right">이름 : ${dto.spot}</div>
		<div>
			제목 <input name="title" id="title" size="80" value="${dto.title}"
				placeholder="제목을 입력해주세요">
		</div>
		<div>
			내용
			<textarea name="content" id="content" rows="4" cols="80"
				placeholder="내용을 입력해주세요">${dto.content}</textarea>
		</div>
		<div style="width: 650px; text-align: center;">
			<!--  게시글 번호를 hidden으로 처리 -->
			<input type="hidden" name="bno" value="${dto.bno}">
			<button type="button" id="btnUpdate">수정</button>
			<button type="button" id="btnDelete">삭제</button>
		</div>
	</form>
</body>
<%@ include file="footer.jsp"%>
</html>